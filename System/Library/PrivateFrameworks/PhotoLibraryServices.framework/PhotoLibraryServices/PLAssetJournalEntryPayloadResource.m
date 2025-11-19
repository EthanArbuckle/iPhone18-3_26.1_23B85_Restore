@interface PLAssetJournalEntryPayloadResource
+ (void)_applyLargeVideoRecipeRefactorFixToExternalResource:(id)a3 withAsset:(id)a4;
- (BOOL)isEqualToPayloadResource:(id)a3;
- (BOOL)isOriginalResource;
- (BOOL)isPrimaryResource;
- (BOOL)isReferenceResource;
- (BOOL)isValidForPersistence;
- (NSString)volumeUuidString;
- (PLAssetJournalEntryPayloadResource)initWithPayloadAttributes:(id)a3 payload:(id)a4;
- (PLUniformTypeIdentifier)uniformTypeIdentifier;
- (id)validatedExternalResourceWithAsset:(id)a3 isCPLEnabled:(BOOL)a4;
- (signed)trashedState;
- (unint64_t)cplType;
- (unsigned)dataStoreClassID;
- (unsigned)recipeID;
- (unsigned)resourceType;
- (unsigned)version;
- (void)appendToDescriptionBuilder:(id)a3;
- (void)mergePayloadResource:(id)a3 nilAttributes:(id)a4;
- (void)updateStoredResource:(id)a3;
@end

@implementation PLAssetJournalEntryPayloadResource

- (BOOL)isValidForPersistence
{
  v3 = objc_opt_class();
  v4 = [(PLAssetJournalEntryPayloadResource *)self recipeID];

  return [v3 isValidForPersistenceWithRecipeID:v4];
}

- (BOOL)isReferenceResource
{
  v3 = [(PLAssetJournalEntryPayloadResource *)self bookmarkData];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PLAssetJournalEntryPayloadResource *)self bookmarkPath];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)isPrimaryResource
{
  if ([(PLAssetJournalEntryPayloadResource *)self resourceType])
  {
    v3 = [(PLAssetJournalEntryPayloadResource *)self resourceType];
    if (v3 != 1)
    {
      LOBYTE(v3) = [(PLAssetJournalEntryPayloadResource *)self resourceType]== 2;
    }
  }

  else
  {
    LOBYTE(v3) = 1;
  }

  return v3;
}

- (BOOL)isOriginalResource
{
  v2 = self;
  if ([(PLAssetJournalEntryPayloadResource *)v2 version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLAssetJournalEntryPayloadResource *)v2 recipeID]& 1) == 0;
  }

  return v3;
}

- (signed)trashedState
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"inTrash"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (NSString)volumeUuidString
{
  payload = self->_payload;
  v3 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"volume"];
  v4 = [(PLManagedObjectJournalEntryPayload *)payload UUIDStringForData:v3];

  return v4;
}

- (PLUniformTypeIdentifier)uniformTypeIdentifier
{
  v2 = [(PLAssetJournalEntryPayloadResource *)self uniformTypeIdentifierString];
  v3 = [PLUniformTypeIdentifier utiWithIdentifier:v2];

  return v3;
}

- (unsigned)recipeID
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"recipeID"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (unsigned)version
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"version"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unsigned)resourceType
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"type"];
  v3 = [v2 unsignedShortValue];

  return v3;
}

- (unsigned)dataStoreClassID
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"storeID"];
  v3 = [v2 unsignedIntValue];

  return v3;
}

- (unint64_t)cplType
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"subType"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)mergePayloadResource:(id)a3 nilAttributes:(id)a4
{
  v12 = a4;
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [[v6 alloc] initWithDictionary:self->_payloadAttributes];
  v9 = [v7 payloadAttributes];

  [(NSDictionary *)v8 addEntriesFromDictionary:v9];
  if ([v12 count])
  {
    v10 = [v12 allObjects];
    [(NSDictionary *)v8 removeObjectsForKeys:v10];
  }

  payloadAttributes = self->_payloadAttributes;
  self->_payloadAttributes = v8;
}

- (BOOL)isEqualToPayloadResource:(id)a3
{
  v4 = a3;
  if ([v4 cplType] && objc_msgSend(v4, "resourceType") != 5 && (v5 = objc_msgSend(v4, "cplType"), v5 == -[PLAssetJournalEntryPayloadResource cplType](self, "cplType")) && (v6 = objc_msgSend(v4, "version"), v6 == -[PLAssetJournalEntryPayloadResource version](self, "version")))
  {
    v7 = 1;
  }

  else
  {
    v8 = [v4 resourceType];
    if (v8 == -[PLAssetJournalEntryPayloadResource resourceType](self, "resourceType") && (v9 = [v4 version], v9 == -[PLAssetJournalEntryPayloadResource version](self, "version")) && (v10 = objc_msgSend(v4, "recipeID"), v10 == -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID")))
    {
      v11 = [v4 uniformTypeIdentifierString];
      v12 = [(PLAssetJournalEntryPayloadResource *)self uniformTypeIdentifierString];
      v7 = [v11 isEqualToString:v12];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)appendToDescriptionBuilder:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSDictionary *)self->_payloadAttributes allKeys];
  v6 = [v5 sortedArrayUsingSelector:sel_compare_];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      v10 = 0;
      do
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * v10);
        if ([v11 isEqualToString:@"volume"])
        {
          v12 = [(PLAssetJournalEntryPayloadResource *)self volumeUuidString];
LABEL_8:
          v13 = v12;
          [v4 appendName:v11 object:v12];
          goto LABEL_19;
        }

        if ([v11 isEqualToString:@"type"])
        {
          v14 = MEMORY[0x1E696AEC0];
          v15 = [(PLAssetJournalEntryPayloadResource *)self resourceType];
          v16 = @"invalid";
          if (v15 <= 0x1F)
          {
            v16 = off_1E75663B0[v15];
          }

          v13 = v16;
          v17 = [(PLAssetJournalEntryPayloadResource *)self resourceType];
          goto LABEL_17;
        }

        if ([v11 isEqualToString:@"version"])
        {
          v14 = MEMORY[0x1E696AEC0];
          v18 = [(PLAssetJournalEntryPayloadResource *)self version];
          v19 = @"cur";
          if (v18 <= 2)
          {
            v19 = off_1E75664B0[v18];
          }

          v13 = v19;
          v17 = [(PLAssetJournalEntryPayloadResource *)self version];
LABEL_17:
          [v14 stringWithFormat:@"%@ (%d)", v13, v17];
          v20 = LABEL_18:;
          [v4 appendName:v11 object:v20];

          goto LABEL_19;
        }

        if (![v11 isEqualToString:@"recipeID"])
        {
          if (![v11 isEqualToString:@"subType"])
          {
            v12 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:v11];
            goto LABEL_8;
          }

          v25 = MEMORY[0x1E696AEC0];
          v13 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:{-[PLAssetJournalEntryPayloadResource cplType](self, "cplType")}];
          [v25 stringWithFormat:@"%@ (%lu)", v13, -[PLAssetJournalEntryPayloadResource cplType](self, "cplType")];
          goto LABEL_18;
        }

        v21 = [PLResourceRecipe recipeFromID:[(PLAssetJournalEntryPayloadResource *)self recipeID]];
        v13 = v21;
        v22 = MEMORY[0x1E696AEC0];
        if (v21)
        {
          v23 = [(__CFString *)v21 description];
          v24 = [v22 stringWithFormat:@"%@ (%d_%d, %d)", v23, -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID") >> 16, -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID") >> 1, -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID")];
          [v4 appendName:v11 object:v24];
        }

        else
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"None (%d)", -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID")];
          [v4 appendName:v11 object:v23];
        }

LABEL_19:
        ++v10;
      }

      while (v8 != v10);
      v26 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      v8 = v26;
    }

    while (v26);
  }
}

- (void)updateStoredResource:(id)a3
{
  v17 = a3;
  v4 = [(PLAssetJournalEntryPayloadResource *)self volumeUuidString];

  if (v4)
  {
    v5 = [(PLAssetJournalEntryPayloadResource *)self volumeUuidString];
    v6 = [v17 managedObjectContext];
    v7 = [PLFileSystemVolume volumeForObjectUUID:v5 context:v6];
    [v17 setFileSystemVolume:v7];
  }

  if ([(PLAssetJournalEntryPayloadResource *)self isReferenceResource])
  {
    v8 = [v17 managedObjectContext];
    v9 = [(PLManagedObject *)PLFileSystemBookmark insertInManagedObjectContext:v8];

    v10 = [(PLAssetJournalEntryPayloadResource *)self bookmarkData];
    [v9 setBookmarkData:v10];

    v11 = [(PLAssetJournalEntryPayloadResource *)self bookmarkPath];
    [v9 setPathRelativeToVolume:v11];

    [v17 setFileSystemBookmark:v9];
    v12 = [[PLPrimaryResourceDataStoreReferenceFileKey alloc] initWithResourceType:[(PLAssetJournalEntryPayloadResource *)self resourceType]];
    v13 = [(PLPrimaryResourceDataStoreReferenceFileKey *)v12 keyData];
    [v17 setDataStoreKeyData:v13];

    [v17 setLocalAvailability:1];
  }

  v14 = [(PLAssetJournalEntryPayloadResource *)self trashedState];
  v15 = v17;
  if (v14)
  {
    [v17 setTrashedState:{-[PLAssetJournalEntryPayloadResource trashedState](self, "trashedState")}];
    v16 = [MEMORY[0x1E695DF00] date];
    [v17 setTrashedDate:v16];

    v15 = v17;
  }
}

- (id)validatedExternalResourceWithAsset:(id)a3 isCPLEnabled:(BOOL)a4
{
  v4 = a4;
  v55 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(PLValidatedExternalCloudResource);
  [(PLValidatedExternalResource *)v8 setResourceType:[(PLAssetJournalEntryPayloadResource *)self resourceType]];
  [(PLValidatedExternalResource *)v8 setVersion:[(PLAssetJournalEntryPayloadResource *)self version]];
  [(PLValidatedExternalResource *)v8 setRecipeID:[(PLAssetJournalEntryPayloadResource *)self recipeID]];
  v9 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"length"];
  -[PLValidatedExternalResource setDataLength:](v8, "setDataLength:", [v9 longLongValue]);

  v10 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"uwidth"];
  -[PLValidatedExternalResource setUnorientedWidth:](v8, "setUnorientedWidth:", [v10 longLongValue]);

  v11 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"uheight"];
  -[PLValidatedExternalResource setUnorientedHeight:](v8, "setUnorientedHeight:", [v11 longLongValue]);

  v12 = [(PLAssetJournalEntryPayloadResource *)self uniformTypeIdentifierString];
  v13 = [PLUniformTypeIdentifier utiWithIdentifier:v12];

  [(PLValidatedExternalResource *)v8 setUniformTypeIdentifier:v13];
  v14 = [(PLAssetJournalEntryPayloadResource *)self fourCharCodeName];

  if (v14)
  {
    v15 = [(PLAssetJournalEntryPayloadResource *)self fourCharCodeName];
    [(PLValidatedExternalResource *)v8 setCodecFourCharCode:v15];
  }

  [(PLValidatedExternalCloudResource *)v8 setCplType:[(PLAssetJournalEntryPayloadResource *)self cplType]];
  v16 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"fingerprint"];
  [(PLValidatedExternalCloudResource *)v8 setFingerprint:v16];

  v17 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"stableHash"];
  [(PLValidatedExternalCloudResource *)v8 setStableHash:v17];

  if (v4 && [(PLValidatedExternalCloudResource *)v8 cplType])
  {
    v18 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"remoteAvailability"];
    -[PLValidatedExternalCloudResource setRemoteAvailability:](v8, "setRemoteAvailability:", [v18 integerValue]);

    v19 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"cloudLocalState"];
    -[PLValidatedExternalCloudResource setCloudLocalState:](v8, "setCloudLocalState:", [v19 integerValue]);
  }

  else
  {
    [(PLValidatedExternalCloudResource *)v8 setRemoteAvailability:0];
    [(PLValidatedExternalCloudResource *)v8 setCloudLocalState:0];
  }

  v20 = [v7 master];
  v21 = [v20 creationDate];
  [(PLValidatedExternalCloudResource *)v8 setMasterDateCreated:v21];

  v22 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"ptpTrashedState"];
  -[PLValidatedExternalResource setPtpTrashedState:](v8, "setPtpTrashedState:", [v22 integerValue]);

  v23 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"sidecarIndex"];
  [(PLValidatedExternalResource *)v8 setSidecarIndex:v23];

  if (![(PLAssetJournalEntryPayloadResource *)self isReferenceResource])
  {
    [objc_opt_class() _applyLargeVideoRecipeRefactorFixToExternalResource:v8 withAsset:v7];
    if ([(PLAssetJournalEntryPayloadResource *)self cplType]== 1)
    {
      v24 = [v7 mainFileURL];
      [(PLValidatedExternalResource *)v8 setFileURL:v24];
    }

    else
    {
      v25 = [v7 pathManager];
      if ([v25 isUBF])
      {
        if (v13)
        {
          if ([(PLValidatedExternalResource *)v8 resourceType]== 16)
          {
            v42 = [MEMORY[0x1E696AAA8] currentHandler];
            [v42 handleFailureInMethod:a2 object:self file:@"PLAssetJournalEntryPayload.m" lineNumber:455 description:{@"Invalid parameter not satisfying: %@", @"externalResource.resourceType != PLResourceTypeContextualVideoThumbnail"}];
          }

          v26 = objc_alloc(MEMORY[0x1E69BF298]);
          v27 = [v7 uuid];
          v28 = [v13 identifier];
          v29 = [v26 initWithAssetUuid:v27 bundleScope:0 uti:v28 resourceVersion:-[PLValidatedExternalResource version](v8 resourceType:"version") recipeID:-[PLValidatedExternalResource resourceType](v8 originalFilename:"resourceType") customSuffix:{-[PLValidatedExternalResource recipeID](v8, "recipeID"), 0, 0}];

          v30 = [v25 readOnlyUrlWithIdentifier:v29];
          [(PLValidatedExternalResource *)v8 setFileURL:v30];
        }

        else
        {
          v39 = PLMigrationGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = [v7 uuid];
            *buf = 138412546;
            v52 = v40;
            v53 = 2112;
            v54 = self;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Resource payload has nil UTI, cannot derive resource URL, assetUUID: %@, payload: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v31 = [v13 identifier];
        v50 = [PLManagedAsset preferredFileExtensionForType:v31];

        [v50 UTF8String];
        [(PLValidatedExternalResource *)v8 version];
        [(PLValidatedExternalResource *)v8 recipeID];
        [(PLValidatedExternalResource *)v8 resourceType];
        v47 = [v7 filename];
        v46 = [v7 directory];
        v49 = [v25 photoDirectoryWithType:1];
        [v49 UTF8String];
        v48 = [v25 photoDirectoryWithType:4];
        [v48 UTF8String];
        v32 = [v25 photoDirectoryWithType:9];
        v45 = [v32 UTF8String];
        v33 = [v25 photoDirectoryWithType:10];
        v34 = [v33 UTF8String];
        v35 = [v25 photoDirectoryWithType:19];
        v36 = [v35 UTF8String];
        v37 = [v25 photoDirectoryWithType:12];
        v44 = [v37 UTF8String];
        v43 = v36;
        v38 = PLDCIMURLForResourceProperties();
        [(PLValidatedExternalResource *)v8 setFileURL:v38, v45, v34, v43, v44, ""];
      }
    }
  }

  return v8;
}

- (PLAssetJournalEntryPayloadResource)initWithPayloadAttributes:(id)a3 payload:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PLAssetJournalEntryPayloadResource;
  v9 = [(PLAssetJournalEntryPayloadResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payloadAttributes, a3);
    objc_storeStrong(&v10->_payload, a4);
  }

  return v10;
}

+ (void)_applyLargeVideoRecipeRefactorFixToExternalResource:(id)a3 withAsset:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v7 recipeID] == 131473)
  {
    v9 = [v8 pathManager];
    if ([v9 isUBF])
    {
      v10 = [v7 uniformTypeIdentifier];
      v11 = [v10 identifier];

      if (v11)
      {
        if ([v7 resourceType] == 16)
        {
          v20 = [MEMORY[0x1E696AAA8] currentHandler];
          [v20 handleFailureInMethod:a2 object:a1 file:@"PLAssetJournalEntryPayload.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"externalResource.resourceType != PLResourceTypeContextualVideoThumbnail"}];
        }

        v12 = objc_alloc(MEMORY[0x1E69BF298]);
        v13 = [v8 uuid];
        v14 = [v12 initWithAssetUuid:v13 bundleScope:0 uti:v11 resourceVersion:objc_msgSend(v7 resourceType:"version") recipeID:objc_msgSend(v7 originalFilename:"resourceType") customSuffix:{objc_msgSend(v7, "recipeID"), 0, 0}];

        v15 = [v9 readOnlyUrlWithIdentifier:v14];
        if (unlink([v15 fileSystemRepresentation]) && *__error() != 2)
        {
          v16 = PLMigrationGetLog();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = *__error();
            v18 = __error();
            v19 = strerror(*v18);
            *buf = 67109634;
            v22 = v17;
            v23 = 2082;
            v24 = v19;
            v25 = 2082;
            v26 = [v15 fileSystemRepresentation];
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "unlink failed with errno %d (%{public}s) for path %{public}s", buf, 0x1Cu);
          }
        }
      }
    }

    [v7 setRecipeID:131077];
  }
}

@end