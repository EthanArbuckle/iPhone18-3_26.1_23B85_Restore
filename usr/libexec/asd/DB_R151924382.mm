@interface DB_R151924382
+ (id)fetchRequest;
+ (id)insertNewObjectInManagedObjectContext:(id)context;
@end

@implementation DB_R151924382

+ (id)insertNewObjectInManagedObjectContext:(id)context
{
  contextCopy = context;
  entityName = [self entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];

  return v6;
}

+ (id)fetchRequest
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R151924382"];
  [v2 setResultType:0];

  return v2;
}

@end