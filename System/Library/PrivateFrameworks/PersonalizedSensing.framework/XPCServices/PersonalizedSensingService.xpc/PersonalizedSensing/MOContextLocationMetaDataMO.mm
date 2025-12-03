@interface MOContextLocationMetaDataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOContextLocationMetaDataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOContextLocationMetaDataMO alloc] initWithContext:contextCopy];

  place = [objectCopy place];
  [(MOContextLocationMetaDataMO *)v7 setPlace:place];

  city = [objectCopy city];

  [(MOContextLocationMetaDataMO *)v7 setCity:city];

  return v7;
}

@end