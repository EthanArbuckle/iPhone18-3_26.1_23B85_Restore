@interface MOGlobalTraitMO
+ (id)managedObjectWithGlobalTrait:(id)trait inManagedObjectContext:(id)context;
+ (void)updateManagedObject:(id)object globalTrait:(id)trait inManagedObjectContext:(id)context;
@end

@implementation MOGlobalTraitMO

+ (id)managedObjectWithGlobalTrait:(id)trait inManagedObjectContext:(id)context
{
  contextCopy = context;
  traitCopy = trait;
  v7 = [[MOGlobalTraitMO alloc] initWithContext:contextCopy];
  [MOGlobalTraitMO updateManagedObject:v7 globalTrait:traitCopy inManagedObjectContext:contextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object globalTrait:(id)trait inManagedObjectContext:(id)context
{
  objectCopy = object;
  title = [trait title];
  [objectCopy setTitle:title];
}

@end