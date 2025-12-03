@interface MOContextDimensionMO
+ (id)managedObjectWithContextDimension:(id)dimension inManagedObjectContext:(id)context;
+ (void)updateManagedObject:(id)object withContextDimension:(id)dimension inManagedObjectContext:(id)context;
@end

@implementation MOContextDimensionMO

+ (id)managedObjectWithContextDimension:(id)dimension inManagedObjectContext:(id)context
{
  contextCopy = context;
  dimensionCopy = dimension;
  v7 = [[MOContextDimensionMO alloc] initWithContext:contextCopy];
  [MOContextDimensionMO updateManagedObject:v7 withContextDimension:dimensionCopy inManagedObjectContext:contextCopy];

  return v7;
}

+ (void)updateManagedObject:(id)object withContextDimension:(id)dimension inManagedObjectContext:(id)context
{
  objectCopy = object;
  name = [dimension name];
  [objectCopy setName:name];
}

@end