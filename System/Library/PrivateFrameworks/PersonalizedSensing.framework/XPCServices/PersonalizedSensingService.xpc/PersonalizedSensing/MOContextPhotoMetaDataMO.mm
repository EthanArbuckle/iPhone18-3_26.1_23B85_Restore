@interface MOContextPhotoMetaDataMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOContextPhotoMetaDataMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOContextPhotoMetaDataMO alloc] initWithContext:contextCopy];

  photoAssetIdentifier = [objectCopy photoAssetIdentifier];

  [(MOContextPhotoMetaDataMO *)v7 setPhotoAssetIdentifier:photoAssetIdentifier];

  return v7;
}

@end