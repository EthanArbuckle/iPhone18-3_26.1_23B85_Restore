@interface MOContextTimeMetaDataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOContextTimeMetaDataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOContextTimeMetaDataMO alloc] initWithContext:contextCopy];

  timeReferenceString = [objectCopy timeReferenceString];

  [(MOContextTimeMetaDataMO *)v7 setTimeReferenceString:timeReferenceString];

  return v7;
}

@end