@interface MOContextDimensionMO
+ (id)managedObjectWithContextDimension:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 withContextDimension:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOContextDimensionMO

+ (id)managedObjectWithContextDimension:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextDimensionMO alloc] initWithContext:v5];
  [MOContextDimensionMO updateManagedObject:v7 withContextDimension:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 withContextDimension:(id)a4 inManagedObjectContext:(id)a5
{
  v6 = a3;
  v7 = [a4 name];
  [v6 setName:v7];
}

@end