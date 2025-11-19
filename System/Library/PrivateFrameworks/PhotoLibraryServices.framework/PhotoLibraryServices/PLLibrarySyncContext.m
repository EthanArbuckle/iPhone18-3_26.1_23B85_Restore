@interface PLLibrarySyncContext
- (BOOL)personUUIDIsDeleted:(id)a3;
- (PLLibrarySyncContext)initWithPhotoLibrary:(id)a3;
- (id)makeFace;
- (id)personForUUID:(id)a3;
- (void)deleteFaces:(id)a3;
- (void)setAssetAdjustmentState:(id)a3 forCloudIdentifier:(id)a4;
@end

@implementation PLLibrarySyncContext

- (void)setAssetAdjustmentState:(id)a3 forCloudIdentifier:(id)a4
{
  assetAdjustmentStatesByCloudIdentifier = self->_assetAdjustmentStatesByCloudIdentifier;
  if (a3)
  {
    [(NSMutableDictionary *)assetAdjustmentStatesByCloudIdentifier setObject:a3 forKey:a4];
  }

  else
  {
    [(NSMutableDictionary *)assetAdjustmentStatesByCloudIdentifier removeObjectForKey:a4];
  }
}

- (BOOL)personUUIDIsDeleted:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = MEMORY[0x1E6994BB8];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [(PLLibrarySyncContext *)self photoLibrary];
  v8 = [v7 mainScopeIdentifier];
  v9 = [v6 initWithScopeIdentifier:v8 identifier:v5];

  v10 = [(PLCloudRecordOrganizer *)self->_recordOrganizer deletePersonRecords];
  LOBYTE(v5) = [PLCloudRecordOrganizer records:v10 containsScopedIdentifier:v9];

  return v5;
}

- (id)personForUUID:(id)a3
{
  photoLibrary = self->_photoLibrary;
  v4 = a3;
  v5 = [(PLPhotoLibrary *)photoLibrary managedObjectContext];
  v6 = [PLPerson personWithUUID:v4 inManagedObjectContext:v5];

  return v6;
}

- (void)deleteFaces:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLPhotoLibrary *)self->_photoLibrary managedObjectContext];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 deleteObject:{v11, v12}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (id)makeFace
{
  v2 = [(PLPhotoLibrary *)self->_photoLibrary managedObjectContext];
  v3 = [(PLManagedObject *)PLDetectedFace insertInManagedObjectContext:v2];

  return v3;
}

- (PLLibrarySyncContext)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = PLLibrarySyncContext;
  v6 = [(PLLibrarySyncContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    v8 = [[PLCloudRecordOrganizer alloc] initWithPhotoLibrary:v5];
    recordOrganizer = v7->_recordOrganizer;
    v7->_recordOrganizer = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    assetAdjustmentStatesByCloudIdentifier = v7->_assetAdjustmentStatesByCloudIdentifier;
    v7->_assetAdjustmentStatesByCloudIdentifier = v10;

    v12 = v7;
  }

  return v7;
}

@end