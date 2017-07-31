//: Playground - noun: a place where people can play

import UIKit

class Giant {
    var name: String
    var weight: Double
    var homePlanet: String
    
    init(name: String, weight: Double, homePlanet: String) {
        self.name = name
        self.weight = weight
        self.homePlanet = homePlanet
    }
}

let fred = Giant(name: "Fred", weight: 340.0, homePlanet: "Earth")

fred.name = "Brick"
fred.weight = 999.2
fred.homePlanet = "Mars"


//Question 1:
//It will not run. homePlanet is a let in the class

//Question 2:
//Change the property to var

//Question 3:
struct Alien {
    var name: String
    var height: Double
    var homePlanet: String
}

var bilbo = Alien(name: "Bilbo", height: 1.67, homePlanet: "Venus")

bilbo.name = "Jake"
bilbo.height = 1.42
bilbo.homePlanet = "Saturn"

//It will not run. Because it is let.

//Question 4: Change them to Var

//Question 5:
let edgar = Giant(name: "Edgar", weight: 520.0, homePlanet: "Earth")
let jason = edgar
jason.name = "Jason"
print(edgar.name)
print(jason.name)

//Edgar's name is changed to jason. Because both Jason and Edgar points to the same class definition

//Question 6:
var charles = Alien(name: "Charles", height: 2.25, homePlanet: "Pluto")
var charlesFromJupiter = charles
charlesFromJupiter.homePlanet = "Jupiter"
print(charles.homePlanet)
print(charlesFromJupiter.homePlanet)
//The home planet for Charles does not change. struct is value. charlesFromJupiter is a copy of charles

//Question 7:
struct BankAccount {
    var owner: String
    var balance: Double
    
    mutating func deposit(_ amount: Double) {
        balance += amount
    }
    
    mutating func withdraw(_ amount: Double) {
        balance -= amount
    }
}


//Question 8: Need to make the functions mutating

//Question 9:
var joeAccount = BankAccount(owner: "Joe", balance: 100.0)
var joeOtherAccount = joeAccount
joeAccount.withdraw(50.0)
//50 joeAccount and 100 for joeOtherAccount. Struct is copy instead of reference
print(joeAccount.balance)
print(joeOtherAccount.balance)

//Question 10: they are the same. they reference the same memory block
class MusicLibrary {
    var tracks: [String]
    
    init() {
        tracks = [String]()
    }
    
    func add(track: String) {
        tracks.append(track)
    }
}

let library1 = MusicLibrary()
library1.add(track: "Michelle")
library1.add(track: "Voodoo Child")
let library2 = library1
library2.add(track: "Come As You Are")

//it will have all 3 of the tracks
for it in library2.tracks {
    print(it)
}

for it in library1.tracks {
    print(it)
}

