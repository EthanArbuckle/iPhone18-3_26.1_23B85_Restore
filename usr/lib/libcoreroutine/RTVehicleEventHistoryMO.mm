@interface RTVehicleEventHistoryMO
+ (id)managedObjectWithVehicleEvent:(id)event inManagedObjectContext:(id)context;
@end

@implementation RTVehicleEventHistoryMO

+ (id)managedObjectWithVehicleEvent:(id)event inManagedObjectContext:(id)context
{
  v5 = MEMORY[0x277CBE408];
  contextCopy = context;
  eventCopy = event;
  v8 = +[(NSManagedObject *)RTVehicleEventHistoryMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:contextCopy];

  date = [eventCopy date];
  [v9 setDate:date];

  v11 = MEMORY[0x277CCABB0];
  location = [eventCopy location];
  [location latitude];
  v13 = [v11 numberWithDouble:?];
  [v9 setLocLatitude:v13];

  v14 = MEMORY[0x277CCABB0];
  location2 = [eventCopy location];
  [location2 longitude];
  v16 = [v14 numberWithDouble:?];
  [v9 setLocLongitude:v16];

  v17 = MEMORY[0x277CCABB0];
  location3 = [eventCopy location];
  [location3 horizontalUncertainty];
  v19 = [v17 numberWithDouble:?];
  [v9 setLocUncertainty:v19];

  location4 = [eventCopy location];
  date2 = [location4 date];
  [v9 setLocDate:date2];

  identifier = [eventCopy identifier];

  uUIDString = [identifier UUIDString];
  [v9 setIdentifier:uUIDString];

  return v9;
}

@end