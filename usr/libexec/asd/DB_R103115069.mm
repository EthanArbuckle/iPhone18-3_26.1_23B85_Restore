@interface DB_R103115069
+ (id)insertNewObjectInManagedObjectContext:(id)context;
@end

@implementation DB_R103115069

+ (id)insertNewObjectInManagedObjectContext:(id)context
{
  contextCopy = context;
  entityName = [self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];

  return v6;
}

@end