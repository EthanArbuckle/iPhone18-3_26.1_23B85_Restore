@interface DB_R151297099
+ (id)insertNewObjectInManagedObjectContext:(id)context;
@end

@implementation DB_R151297099

+ (id)insertNewObjectInManagedObjectContext:(id)context
{
  contextCopy = context;
  entityName = [self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];

  return v6;
}

@end