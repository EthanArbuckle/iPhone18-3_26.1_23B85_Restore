@interface MOContextPhotoMetaDataMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOContextPhotoMetaDataMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOContextPhotoMetaDataMO alloc] initWithContext:v5];

  v8 = [v6 photoAssetIdentifier];

  [(MOContextPhotoMetaDataMO *)v7 setPhotoAssetIdentifier:v8];

  return v7;
}

@end