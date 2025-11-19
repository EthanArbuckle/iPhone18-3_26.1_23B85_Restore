@interface DB_R151297099
+ (id)insertNewObjectInManagedObjectContext:(id)a3;
@end

@implementation DB_R151297099

+ (id)insertNewObjectInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [a1 entityName];
  v6 = [NSEntityDescription insertNewObjectForEntityForName:v5 inManagedObjectContext:v4];

  return v6;
}

@end