@interface DB_R151924382
+ (id)fetchRequest;
+ (id)insertNewObjectInManagedObjectContext:(id)a3;
@end

@implementation DB_R151924382

+ (id)insertNewObjectInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [a1 entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:v5 inManagedObjectContext:v4];

  return v6;
}

+ (id)fetchRequest
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"DB_R151924382"];
  [v2 setResultType:0];

  return v2;
}

@end