@interface PLQuestion
+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d;
- (void)delete;
@end

@implementation PLQuestion

+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d
{
  dCopy = d;
  managedObjectContext = [library managedObjectContext];
  entityName = [self entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  if (v9)
  {
    [v9 setUuid:dCopy];
  }

  return v9;
}

- (void)delete
{
  managedObjectContext = [(PLQuestion *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

@end