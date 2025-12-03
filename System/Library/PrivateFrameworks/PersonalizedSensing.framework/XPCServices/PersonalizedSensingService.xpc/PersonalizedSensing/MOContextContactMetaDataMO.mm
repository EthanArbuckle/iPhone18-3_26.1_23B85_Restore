@interface MOContextContactMetaDataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOContextContactMetaDataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOContextContactMetaDataMO alloc] initWithContext:contextCopy];

  contactName = [objectCopy contactName];

  [(MOContextContactMetaDataMO *)v7 setContactName:contactName];

  return v7;
}

@end