@interface RTLOIHistogramItemMO
+ (id)managedObjectWithLOIHistogramItem:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTLOIHistogramItemMO

+ (id)managedObjectWithLOIHistogramItem:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = MEMORY[0x277CBE408];
  v6 = a4;
  v7 = a3;
  v8 = +[(NSManagedObject *)RTLOIHistogramItemMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:v6];

  v10 = [v7 locationOfInterest];
  v11 = [v10 identifier];
  v12 = [v11 UUIDString];
  [v9 setLocationOfInterestIdentifier:v12];

  v13 = MEMORY[0x277CCABB0];
  [v7 timeOfStay];
  v14 = [v13 numberWithDouble:?];
  [v9 setTimeOfStay:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "numOfEvents")}];
  [v9 setNumOfEvents:v15];

  v16 = MEMORY[0x277CCABB0];
  [v7 probability];
  v18 = v17;

  v19 = [v16 numberWithDouble:v18];
  [v9 setProbability:v19];

  return v9;
}

@end