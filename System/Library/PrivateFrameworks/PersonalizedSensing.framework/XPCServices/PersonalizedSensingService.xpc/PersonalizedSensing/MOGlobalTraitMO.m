@interface MOGlobalTraitMO
+ (id)managedObjectWithGlobalTrait:(id)a3 inManagedObjectContext:(id)a4;
+ (void)updateManagedObject:(id)a3 globalTrait:(id)a4 inManagedObjectContext:(id)a5;
@end

@implementation MOGlobalTraitMO

+ (id)managedObjectWithGlobalTrait:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOGlobalTraitMO alloc] initWithContext:v5];
  [MOGlobalTraitMO updateManagedObject:v7 globalTrait:v6 inManagedObjectContext:v5];

  return v7;
}

+ (void)updateManagedObject:(id)a3 globalTrait:(id)a4 inManagedObjectContext:(id)a5
{
  v6 = a3;
  v7 = [a4 title];
  [v6 setTitle:v7];
}

@end