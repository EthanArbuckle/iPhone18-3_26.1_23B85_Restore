@interface RTVehicleEventHistoryMO
+ (id)managedObjectWithVehicleEvent:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTVehicleEventHistoryMO

+ (id)managedObjectWithVehicleEvent:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = MEMORY[0x277CBE408];
  v6 = a4;
  v7 = a3;
  v8 = +[(NSManagedObject *)RTVehicleEventHistoryMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:v6];

  v10 = [v7 date];
  [v9 setDate:v10];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v7 location];
  [v12 latitude];
  v13 = [v11 numberWithDouble:?];
  [v9 setLocLatitude:v13];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v7 location];
  [v15 longitude];
  v16 = [v14 numberWithDouble:?];
  [v9 setLocLongitude:v16];

  v17 = MEMORY[0x277CCABB0];
  v18 = [v7 location];
  [v18 horizontalUncertainty];
  v19 = [v17 numberWithDouble:?];
  [v9 setLocUncertainty:v19];

  v20 = [v7 location];
  v21 = [v20 date];
  [v9 setLocDate:v21];

  v22 = [v7 identifier];

  v23 = [v22 UUIDString];
  [v9 setIdentifier:v23];

  return v9;
}

@end