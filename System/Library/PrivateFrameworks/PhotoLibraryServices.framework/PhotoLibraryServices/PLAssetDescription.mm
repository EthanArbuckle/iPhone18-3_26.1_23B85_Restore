@interface PLAssetDescription
+ (id)listOfSyncedProperties;
- (BOOL)isSyncableChange;
- (id)duplicateSortPropertyNames;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (void)prepareForDeletion;
- (void)willSave;
@end

@implementation PLAssetDescription

- (id)duplicateSortPropertyNames
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"longDescription";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  assetAttributes = [(PLAssetDescription *)self assetAttributes];
  asset = [assetAttributes asset];
  if ([asset isValidForJournalPersistence])
  {
    v7 = [[PLAssetJournalEntryPayload alloc] initWithAssetDescription:self changedKeys:keysCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)payloadID
{
  assetAttributes = [(PLAssetDescription *)self assetAttributes];
  asset = [assetAttributes asset];
  uuid = [asset uuid];
  v5 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v5;
}

- (void)willSave
{
  v16.receiver = self;
  v16.super_class = PLAssetDescription;
  [(PLManagedObject *)&v16 willSave];
  managedObjectContext = [(PLAssetDescription *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  assetAttributes = [(PLAssetDescription *)self assetAttributes];
  asset = [assetAttributes asset];

  if (([asset isDeleted] & 1) == 0 && (-[PLAssetDescription isDeleted](self, "isDeleted") & 1) == 0)
  {
    changedValues = [(PLAssetDescription *)self changedValues];
    isSyncableChange = [(PLAssetDescription *)self isSyncableChange];
    changedValues2 = [asset changedValues];
    v9 = [changedValues2 objectForKeyedSubscript:@"modificationDate"];

    if (!v9 && isSyncableChange)
    {
      date = [MEMORY[0x1E695DF00] date];
      [asset setModificationDate:date];
    }

    if (![asset isValidTypeForPersistence])
    {
      goto LABEL_14;
    }

    persistedFileSystemAttributesFileURL = [asset persistedFileSystemAttributesFileURL];
    if (persistedFileSystemAttributesFileURL)
    {
      v12 = [changedValues objectForKeyedSubscript:@"longDescription"];
      if (v12)
      {

LABEL_12:
        v13 = MEMORY[0x1E69BF230];
        longDescription = [(PLAssetDescription *)self longDescription];
        [v13 persistString:longDescription forKey:*MEMORY[0x1E69BFD70] fileURL:persistedFileSystemAttributesFileURL];

        goto LABEL_13;
      }

      if (([(PLAssetDescription *)self isInserted]& 1) != 0)
      {
        goto LABEL_12;
      }
    }

LABEL_13:

LABEL_14:
    if ([PLDuplicateAsset isDuplicateAssetSortChangedObject:self])
    {
      duplicateAlbum = [asset duplicateAlbum];
      [duplicateAlbum sortAssets];
    }
  }

  if (([(PLAssetDescription *)self isDeleted]& 1) == 0)
  {
    [PLDelayedSearchIndexUpdates recordAssetDescriptionIfNeeded:self];
  }

LABEL_20:
}

- (void)prepareForDeletion
{
  v7.receiver = self;
  v7.super_class = PLAssetDescription;
  [(PLAssetDescription *)&v7 prepareForDeletion];
  managedObjectContext = [(PLAssetDescription *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordAssetDescriptionIfNeeded:self];
    assetAttributes = [(PLAssetDescription *)self assetAttributes];
    asset = [assetAttributes asset];

    if (([asset isDeleted] & 1) == 0 && objc_msgSend(asset, "isValidTypeForPersistence"))
    {
      persistedFileSystemAttributesFileURL = [asset persistedFileSystemAttributesFileURL];
      if (persistedFileSystemAttributesFileURL)
      {
        [MEMORY[0x1E69BF230] persistString:0 forKey:*MEMORY[0x1E69BFD70] fileURL:persistedFileSystemAttributesFileURL];
      }
    }
  }
}

- (BOOL)isSyncableChange
{
  v17 = *MEMORY[0x1E69E9840];
  assetAttributes = [(PLAssetDescription *)self assetAttributes];
  asset = [assetAttributes asset];

  if ([asset savedAssetTypeIsSupportedForUpload])
  {
    changedValues = [(PLAssetDescription *)self changedValues];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = +[PLAssetDescription listOfSyncedProperties];
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = [changedValues objectForKey:*(*(&v12 + 1) + 8 * i)];

          if (v10)
          {
            LOBYTE(v7) = 1;
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (id)listOfSyncedProperties
{
  pl_dispatch_once();
  v2 = listOfSyncedProperties_result_110354;

  return v2;
}

void __44__PLAssetDescription_listOfSyncedProperties__block_invoke()
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"longDescription";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];
  v1 = listOfSyncedProperties_result_110354;
  listOfSyncedProperties_result_110354 = v0;
}

@end