@interface RTLOIHistogramItemMO
+ (id)managedObjectWithLOIHistogramItem:(id)item inManagedObjectContext:(id)context;
@end

@implementation RTLOIHistogramItemMO

+ (id)managedObjectWithLOIHistogramItem:(id)item inManagedObjectContext:(id)context
{
  v5 = MEMORY[0x277CBE408];
  contextCopy = context;
  itemCopy = item;
  v8 = +[(NSManagedObject *)RTLOIHistogramItemMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:contextCopy];

  locationOfInterest = [itemCopy locationOfInterest];
  identifier = [locationOfInterest identifier];
  uUIDString = [identifier UUIDString];
  [v9 setLocationOfInterestIdentifier:uUIDString];

  v13 = MEMORY[0x277CCABB0];
  [itemCopy timeOfStay];
  v14 = [v13 numberWithDouble:?];
  [v9 setTimeOfStay:v14];

  v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(itemCopy, "numOfEvents")}];
  [v9 setNumOfEvents:v15];

  v16 = MEMORY[0x277CCABB0];
  [itemCopy probability];
  v18 = v17;

  v19 = [v16 numberWithDouble:v18];
  [v9 setProbability:v19];

  return v9;
}

@end