@interface PLLibrarySyncContext
- (BOOL)personUUIDIsDeleted:(id)deleted;
- (PLLibrarySyncContext)initWithPhotoLibrary:(id)library;
- (id)makeFace;
- (id)personForUUID:(id)d;
- (void)deleteFaces:(id)faces;
- (void)setAssetAdjustmentState:(id)state forCloudIdentifier:(id)identifier;
@end

@implementation PLLibrarySyncContext

- (void)setAssetAdjustmentState:(id)state forCloudIdentifier:(id)identifier
{
  assetAdjustmentStatesByCloudIdentifier = self->_assetAdjustmentStatesByCloudIdentifier;
  if (state)
  {
    [(NSMutableDictionary *)assetAdjustmentStatesByCloudIdentifier setObject:state forKey:identifier];
  }

  else
  {
    [(NSMutableDictionary *)assetAdjustmentStatesByCloudIdentifier removeObjectForKey:identifier];
  }
}

- (BOOL)personUUIDIsDeleted:(id)deleted
{
  if (!deleted)
  {
    return 0;
  }

  v4 = MEMORY[0x1E6994BB8];
  deletedCopy = deleted;
  v6 = [v4 alloc];
  photoLibrary = [(PLLibrarySyncContext *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];
  v9 = [v6 initWithScopeIdentifier:mainScopeIdentifier identifier:deletedCopy];

  deletePersonRecords = [(PLCloudRecordOrganizer *)self->_recordOrganizer deletePersonRecords];
  LOBYTE(deletedCopy) = [PLCloudRecordOrganizer records:deletePersonRecords containsScopedIdentifier:v9];

  return deletedCopy;
}

- (id)personForUUID:(id)d
{
  photoLibrary = self->_photoLibrary;
  dCopy = d;
  managedObjectContext = [(PLPhotoLibrary *)photoLibrary managedObjectContext];
  v6 = [PLPerson personWithUUID:dCopy inManagedObjectContext:managedObjectContext];

  return v6;
}

- (void)deleteFaces:(id)faces
{
  v17 = *MEMORY[0x1E69E9840];
  facesCopy = faces;
  managedObjectContext = [(PLPhotoLibrary *)self->_photoLibrary managedObjectContext];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = facesCopy;
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
          [managedObjectContext deleteObject:{v11, v12}];
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
  managedObjectContext = [(PLPhotoLibrary *)self->_photoLibrary managedObjectContext];
  v3 = [(PLManagedObject *)PLDetectedFace insertInManagedObjectContext:managedObjectContext];

  return v3;
}

- (PLLibrarySyncContext)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v14.receiver = self;
  v14.super_class = PLLibrarySyncContext;
  v6 = [(PLLibrarySyncContext *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, library);
    v8 = [[PLCloudRecordOrganizer alloc] initWithPhotoLibrary:libraryCopy];
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