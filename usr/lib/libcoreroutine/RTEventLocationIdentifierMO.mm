@interface RTEventLocationIdentifierMO
+ (id)managedObjectWithEventLocationIdentifier:(id)identifier inManagedObjectContext:(id)context;
@end

@implementation RTEventLocationIdentifierMO

+ (id)managedObjectWithEventLocationIdentifier:(id)identifier inManagedObjectContext:(id)context
{
  v5 = MEMORY[0x277CBE408];
  contextCopy = context;
  identifierCopy = identifier;
  v8 = +[(NSManagedObject *)RTEventLocationIdentifierMO];
  v9 = [v5 insertNewObjectForEntityForName:v8 inManagedObjectContext:contextCopy];

  name = [identifierCopy name];
  [v9 setName:name];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(identifierCopy, "source")}];
  [v9 setSource:v11];

  calendarIdentifier = [identifierCopy calendarIdentifier];

  [v9 setCalendarIdentifier:calendarIdentifier];

  return v9;
}

@end