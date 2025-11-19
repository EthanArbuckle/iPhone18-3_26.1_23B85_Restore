@interface MOContextTimeMetaDataMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOContextTimeMetaDataMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextTimeMetaDataMO alloc] initWithContext:v5];

  v8 = [v6 timeReferenceString];

  [(MOContextTimeMetaDataMO *)v7 setTimeReferenceString:v8];

  return v7;
}

@end