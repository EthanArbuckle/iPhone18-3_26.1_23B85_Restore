@interface MOContextContactMetaDataMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOContextContactMetaDataMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextContactMetaDataMO alloc] initWithContext:v5];

  v8 = [v6 contactName];

  [(MOContextContactMetaDataMO *)v7 setContactName:v8];

  return v7;
}

@end