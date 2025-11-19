@interface PLQuestion
+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4;
- (void)delete;
@end

@implementation PLQuestion

+ (id)insertIntoPhotoLibrary:(id)a3 withUUID:(id)a4
{
  v6 = a4;
  v7 = [a3 managedObjectContext];
  v8 = [a1 entityName];
  v9 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v8, v7, 0);

  if (v9)
  {
    [v9 setUuid:v6];
  }

  return v9;
}

- (void)delete
{
  v3 = [(PLQuestion *)self managedObjectContext];
  [v3 deleteObject:self];
}

@end