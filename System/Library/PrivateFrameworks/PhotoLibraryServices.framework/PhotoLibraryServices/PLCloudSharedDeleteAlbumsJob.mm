@interface PLCloudSharedDeleteAlbumsJob
+ (void)deleteLocalAlbumForMSASAlbumGUID:(id)d inviterAddress:(id)address;
+ (void)deleteLocalAlbumsForMSASAlbumGUIDs:(id)ds;
- (id)description;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (void)encodeToXPCObject:(id)object;
- (void)runDaemonSide;
@end

@implementation PLCloudSharedDeleteAlbumsJob

- (void)runDaemonSide
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharedDeleteAlbumsJob runDaemonSide]"];
  highPriorityOperationQueue = [objc_opt_class() highPriorityOperationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PLCloudSharedDeleteAlbumsJob_runDaemonSide__block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [highPriorityOperationQueue addOperationWithBlock:v6];
}

void __45__PLCloudSharedDeleteAlbumsJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) transientPhotoLibrary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PLCloudSharedDeleteAlbumsJob_runDaemonSide__block_invoke_2;
  v6[3] = &unk_1E7578848;
  v6[4] = *(a1 + 32);
  v7 = v3;
  v4 = v3;
  [v4 performTransactionAndWait:v6];
  v5.receiver = *(a1 + 32);
  v5.super_class = PLCloudSharedDeleteAlbumsJob;
  objc_msgSendSuper2(&v5, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];

  objc_autoreleasePoolPop(v2);
}

void __45__PLCloudSharedDeleteAlbumsJob_runDaemonSide__block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = +[PLNotificationManager sharedManager];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [*(a1 + 32) albumCloudGUIDsToDelete];
    *buf = 138412290;
    v32 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "PLCloudSharedDeleteAlbumsJob will delete locally shared albums with UUIDS %@", buf, 0xCu);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [*(a1 + 32) albumCloudGUIDsToDelete];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v28;
    v9 = 0x1E755F000uLL;
    *&v6 = 138412290;
    v24 = v6;
    do
    {
      v10 = 0;
      v25 = v7;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * v10);
        v12 = *(v9 + 2776);
        v13 = [*(a1 + 40) managedObjectContext];
        v14 = [v12 shareWithScopeIdentifier:v11 includeTrashed:0 inManagedObjectContext:v13];

        v15 = PLPhotoSharingGetLog();
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        if (v14)
        {
          if (v16)
          {
            v17 = [v14 title];
            [v14 collectionShareAssets];
            v18 = v8;
            v19 = a1;
            v20 = v9;
            v22 = v21 = v2;
            v23 = [v22 count];
            *buf = 138412802;
            v32 = v17;
            v33 = 2112;
            v34 = v11;
            v35 = 2048;
            v36 = v23;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "PLCloudSharedDeleteAlbumsJob will delete local sharedstream collectionshare with title %@, UUID %@, and %lu assets", buf, 0x20u);

            v2 = v21;
            v9 = v20;
            a1 = v19;
            v8 = v18;
            v7 = v25;
          }

          [v2 noteDidDeleteCollectionShare:v14];
          [v14 locallyIncrementallyDeleteAndSaveWithError:0];
        }

        else
        {
          if (v16)
          {
            *buf = v24;
            v32 = v11;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "PLCloudSharedDeleteAlbumsJob did not find local sharedstream collectionshare with uuid %@ to delete", buf, 0xCu);
          }
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v7);
  }
}

- (id)description
{
  v8.receiver = self;
  v8.super_class = PLCloudSharedDeleteAlbumsJob;
  v3 = [(PLDaemonJob *)&v8 description];
  albumCloudGUIDsToDelete = [(PLCloudSharedDeleteAlbumsJob *)self albumCloudGUIDsToDelete];
  inviterAddress = [(PLCloudSharedDeleteAlbumsJob *)self inviterAddress];
  v6 = [v3 stringByAppendingFormat:@" albumCloudGUIDsToDelete %@ inviter %@", albumCloudGUIDsToDelete, inviterAddress];

  return v6;
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = PLCloudSharedDeleteAlbumsJob;
  v7 = [(PLCloudSharingJob *)&v11 initFromXPCObject:objectCopy libraryServicesManager:manager];
  if (v7)
  {
    v8 = PLArrayFromXPCDictionary();
    [v7 setAlbumCloudGUIDsToDelete:v8];

    v9 = PLStringFromXPCDictionary();
    [v7 setInviterAddress:v9];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)object
{
  v7.receiver = self;
  v7.super_class = PLCloudSharedDeleteAlbumsJob;
  objectCopy = object;
  [(PLDaemonJob *)&v7 encodeToXPCObject:objectCopy];
  v5 = [(PLCloudSharedDeleteAlbumsJob *)self albumCloudGUIDsToDelete:v7.receiver];
  PLXPCDictionarySetArray();

  inviterAddress = [(PLCloudSharedDeleteAlbumsJob *)self inviterAddress];
  PLXPCDictionarySetString();
}

+ (void)deleteLocalAlbumForMSASAlbumGUID:(id)d inviterAddress:(id)address
{
  v9[1] = *MEMORY[0x1E69E9840];
  addressCopy = address;
  dCopy = d;
  v7 = objc_opt_new();
  v9[0] = dCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [v7 setAlbumCloudGUIDsToDelete:v8];
  [v7 setInviterAddress:addressCopy];

  [v7 runAndWaitForMessageToBeSent];
}

+ (void)deleteLocalAlbumsForMSASAlbumGUIDs:(id)ds
{
  dsCopy = ds;
  if ([dsCopy count])
  {
    v3 = objc_opt_new();
    [v3 setAlbumCloudGUIDsToDelete:dsCopy];
    [v3 runAndWaitForMessageToBeSent];
  }
}

@end