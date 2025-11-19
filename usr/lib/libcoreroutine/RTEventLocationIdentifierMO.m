@interface RTEventLocationIdentifierMO
+ (id)managedObjectWithEventLocationIdentifier:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation RTEventLocationIdentifierMO

+ (id)managedObjectWithEventLocationIdentifier:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = MEMORY[0x277CBE408];
  v6 = a4;
  v7 = a3;
  v8 = +[(NSManagedObject *)RTEventLocationIdentifierMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:v6];

  v10 = [v7 name];
  [v9 setName:v10];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "source")}];
  [v9 setSource:v11];

  v12 = [v7 calendarIdentifier];

  [v9 setCalendarIdentifier:v12];

  return v9;
}

@end