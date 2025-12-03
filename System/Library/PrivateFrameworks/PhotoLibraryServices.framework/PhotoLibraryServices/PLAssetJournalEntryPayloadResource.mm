@interface PLAssetJournalEntryPayloadResource
+ (void)_applyLargeVideoRecipeRefactorFixToExternalResource:(id)resource withAsset:(id)asset;
- (BOOL)isEqualToPayloadResource:(id)resource;
- (BOOL)isOriginalResource;
- (BOOL)isPrimaryResource;
- (BOOL)isReferenceResource;
- (BOOL)isValidForPersistence;
- (NSString)volumeUuidString;
- (PLAssetJournalEntryPayloadResource)initWithPayloadAttributes:(id)attributes payload:(id)payload;
- (PLUniformTypeIdentifier)uniformTypeIdentifier;
- (id)validatedExternalResourceWithAsset:(id)asset isCPLEnabled:(BOOL)enabled;
- (signed)trashedState;
- (unint64_t)cplType;
- (unsigned)dataStoreClassID;
- (unsigned)recipeID;
- (unsigned)resourceType;
- (unsigned)version;
- (void)appendToDescriptionBuilder:(id)builder;
- (void)mergePayloadResource:(id)resource nilAttributes:(id)attributes;
- (void)updateStoredResource:(id)resource;
@end

@implementation PLAssetJournalEntryPayloadResource

- (BOOL)isValidForPersistence
{
  v3 = objc_opt_class();
  recipeID = [(PLAssetJournalEntryPayloadResource *)self recipeID];

  return [v3 isValidForPersistenceWithRecipeID:recipeID];
}

- (BOOL)isReferenceResource
{
  bookmarkData = [(PLAssetJournalEntryPayloadResource *)self bookmarkData];
  if (bookmarkData)
  {
    v4 = 1;
  }

  else
  {
    bookmarkPath = [(PLAssetJournalEntryPayloadResource *)self bookmarkPath];
    v4 = bookmarkPath != 0;
  }

  return v4;
}

- (BOOL)isPrimaryResource
{
  if ([(PLAssetJournalEntryPayloadResource *)self resourceType])
  {
    resourceType = [(PLAssetJournalEntryPayloadResource *)self resourceType];
    if (resourceType != 1)
    {
      LOBYTE(resourceType) = [(PLAssetJournalEntryPayloadResource *)self resourceType]== 2;
    }
  }

  else
  {
    LOBYTE(resourceType) = 1;
  }

  return resourceType;
}

- (BOOL)isOriginalResource
{
  selfCopy = self;
  if ([(PLAssetJournalEntryPayloadResource *)selfCopy version])
  {
    v3 = 0;
  }

  else
  {
    v3 = ([(PLAssetJournalEntryPayloadResource *)selfCopy recipeID]& 1) == 0;
  }

  return v3;
}

- (signed)trashedState
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"inTrash"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
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
  uniformTypeIdentifierString = [(PLAssetJournalEntryPayloadResource *)self uniformTypeIdentifierString];
  v3 = [PLUniformTypeIdentifier utiWithIdentifier:uniformTypeIdentifierString];

  return v3;
}

- (unsigned)recipeID
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"recipeID"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unsigned)version
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"version"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)resourceType
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"type"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (unsigned)dataStoreClassID
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"storeID"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (unint64_t)cplType
{
  v2 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"subType"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)mergePayloadResource:(id)resource nilAttributes:(id)attributes
{
  attributesCopy = attributes;
  v6 = MEMORY[0x1E695DF90];
  resourceCopy = resource;
  v8 = [[v6 alloc] initWithDictionary:self->_payloadAttributes];
  payloadAttributes = [resourceCopy payloadAttributes];

  [(NSDictionary *)v8 addEntriesFromDictionary:payloadAttributes];
  if ([attributesCopy count])
  {
    allObjects = [attributesCopy allObjects];
    [(NSDictionary *)v8 removeObjectsForKeys:allObjects];
  }

  payloadAttributes = self->_payloadAttributes;
  self->_payloadAttributes = v8;
}

- (BOOL)isEqualToPayloadResource:(id)resource
{
  resourceCopy = resource;
  if ([resourceCopy cplType] && objc_msgSend(resourceCopy, "resourceType") != 5 && (v5 = objc_msgSend(resourceCopy, "cplType"), v5 == -[PLAssetJournalEntryPayloadResource cplType](self, "cplType")) && (v6 = objc_msgSend(resourceCopy, "version"), v6 == -[PLAssetJournalEntryPayloadResource version](self, "version")))
  {
    v7 = 1;
  }

  else
  {
    resourceType = [resourceCopy resourceType];
    if (resourceType == -[PLAssetJournalEntryPayloadResource resourceType](self, "resourceType") && (v9 = [resourceCopy version], v9 == -[PLAssetJournalEntryPayloadResource version](self, "version")) && (v10 = objc_msgSend(resourceCopy, "recipeID"), v10 == -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID")))
    {
      uniformTypeIdentifierString = [resourceCopy uniformTypeIdentifierString];
      uniformTypeIdentifierString2 = [(PLAssetJournalEntryPayloadResource *)self uniformTypeIdentifierString];
      v7 = [uniformTypeIdentifierString isEqualToString:uniformTypeIdentifierString2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)appendToDescriptionBuilder:(id)builder
{
  v33 = *MEMORY[0x1E69E9840];
  builderCopy = builder;
  allKeys = [(NSDictionary *)self->_payloadAttributes allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_compare_];

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
          volumeUuidString = [(PLAssetJournalEntryPayloadResource *)self volumeUuidString];
LABEL_8:
          v13 = volumeUuidString;
          [builderCopy appendName:v11 object:volumeUuidString];
          goto LABEL_19;
        }

        if ([v11 isEqualToString:@"type"])
        {
          v14 = MEMORY[0x1E696AEC0];
          resourceType = [(PLAssetJournalEntryPayloadResource *)self resourceType];
          v16 = @"invalid";
          if (resourceType <= 0x1F)
          {
            v16 = off_1E75663B0[resourceType];
          }

          v13 = v16;
          resourceType2 = [(PLAssetJournalEntryPayloadResource *)self resourceType];
          goto LABEL_17;
        }

        if ([v11 isEqualToString:@"version"])
        {
          v14 = MEMORY[0x1E696AEC0];
          version = [(PLAssetJournalEntryPayloadResource *)self version];
          v19 = @"cur";
          if (version <= 2)
          {
            v19 = off_1E75664B0[version];
          }

          v13 = v19;
          resourceType2 = [(PLAssetJournalEntryPayloadResource *)self version];
LABEL_17:
          [v14 stringWithFormat:@"%@ (%d)", v13, resourceType2];
          v20 = LABEL_18:;
          [builderCopy appendName:v11 object:v20];

          goto LABEL_19;
        }

        if (![v11 isEqualToString:@"recipeID"])
        {
          if (![v11 isEqualToString:@"subType"])
          {
            volumeUuidString = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:v11];
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
          [builderCopy appendName:v11 object:v24];
        }

        else
        {
          v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"None (%d)", -[PLAssetJournalEntryPayloadResource recipeID](self, "recipeID")];
          [builderCopy appendName:v11 object:v23];
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

- (void)updateStoredResource:(id)resource
{
  resourceCopy = resource;
  volumeUuidString = [(PLAssetJournalEntryPayloadResource *)self volumeUuidString];

  if (volumeUuidString)
  {
    volumeUuidString2 = [(PLAssetJournalEntryPayloadResource *)self volumeUuidString];
    managedObjectContext = [resourceCopy managedObjectContext];
    v7 = [PLFileSystemVolume volumeForObjectUUID:volumeUuidString2 context:managedObjectContext];
    [resourceCopy setFileSystemVolume:v7];
  }

  if ([(PLAssetJournalEntryPayloadResource *)self isReferenceResource])
  {
    managedObjectContext2 = [resourceCopy managedObjectContext];
    v9 = [(PLManagedObject *)PLFileSystemBookmark insertInManagedObjectContext:managedObjectContext2];

    bookmarkData = [(PLAssetJournalEntryPayloadResource *)self bookmarkData];
    [v9 setBookmarkData:bookmarkData];

    bookmarkPath = [(PLAssetJournalEntryPayloadResource *)self bookmarkPath];
    [v9 setPathRelativeToVolume:bookmarkPath];

    [resourceCopy setFileSystemBookmark:v9];
    v12 = [[PLPrimaryResourceDataStoreReferenceFileKey alloc] initWithResourceType:[(PLAssetJournalEntryPayloadResource *)self resourceType]];
    keyData = [(PLPrimaryResourceDataStoreReferenceFileKey *)v12 keyData];
    [resourceCopy setDataStoreKeyData:keyData];

    [resourceCopy setLocalAvailability:1];
  }

  trashedState = [(PLAssetJournalEntryPayloadResource *)self trashedState];
  v15 = resourceCopy;
  if (trashedState)
  {
    [resourceCopy setTrashedState:{-[PLAssetJournalEntryPayloadResource trashedState](self, "trashedState")}];
    date = [MEMORY[0x1E695DF00] date];
    [resourceCopy setTrashedDate:date];

    v15 = resourceCopy;
  }
}

- (id)validatedExternalResourceWithAsset:(id)asset isCPLEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v55 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
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

  uniformTypeIdentifierString = [(PLAssetJournalEntryPayloadResource *)self uniformTypeIdentifierString];
  v13 = [PLUniformTypeIdentifier utiWithIdentifier:uniformTypeIdentifierString];

  [(PLValidatedExternalResource *)v8 setUniformTypeIdentifier:v13];
  fourCharCodeName = [(PLAssetJournalEntryPayloadResource *)self fourCharCodeName];

  if (fourCharCodeName)
  {
    fourCharCodeName2 = [(PLAssetJournalEntryPayloadResource *)self fourCharCodeName];
    [(PLValidatedExternalResource *)v8 setCodecFourCharCode:fourCharCodeName2];
  }

  [(PLValidatedExternalCloudResource *)v8 setCplType:[(PLAssetJournalEntryPayloadResource *)self cplType]];
  v16 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"fingerprint"];
  [(PLValidatedExternalCloudResource *)v8 setFingerprint:v16];

  v17 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"stableHash"];
  [(PLValidatedExternalCloudResource *)v8 setStableHash:v17];

  if (enabledCopy && [(PLValidatedExternalCloudResource *)v8 cplType])
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

  master = [assetCopy master];
  creationDate = [master creationDate];
  [(PLValidatedExternalCloudResource *)v8 setMasterDateCreated:creationDate];

  v22 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"ptpTrashedState"];
  -[PLValidatedExternalResource setPtpTrashedState:](v8, "setPtpTrashedState:", [v22 integerValue]);

  v23 = [(NSDictionary *)self->_payloadAttributes objectForKeyedSubscript:@"sidecarIndex"];
  [(PLValidatedExternalResource *)v8 setSidecarIndex:v23];

  if (![(PLAssetJournalEntryPayloadResource *)self isReferenceResource])
  {
    [objc_opt_class() _applyLargeVideoRecipeRefactorFixToExternalResource:v8 withAsset:assetCopy];
    if ([(PLAssetJournalEntryPayloadResource *)self cplType]== 1)
    {
      mainFileURL = [assetCopy mainFileURL];
      [(PLValidatedExternalResource *)v8 setFileURL:mainFileURL];
    }

    else
    {
      pathManager = [assetCopy pathManager];
      if ([pathManager isUBF])
      {
        if (v13)
        {
          if ([(PLValidatedExternalResource *)v8 resourceType]== 16)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetJournalEntryPayload.m" lineNumber:455 description:{@"Invalid parameter not satisfying: %@", @"externalResource.resourceType != PLResourceTypeContextualVideoThumbnail"}];
          }

          v26 = objc_alloc(MEMORY[0x1E69BF298]);
          uuid = [assetCopy uuid];
          identifier = [v13 identifier];
          v29 = [v26 initWithAssetUuid:uuid bundleScope:0 uti:identifier resourceVersion:-[PLValidatedExternalResource version](v8 resourceType:"version") recipeID:-[PLValidatedExternalResource resourceType](v8 originalFilename:"resourceType") customSuffix:{-[PLValidatedExternalResource recipeID](v8, "recipeID"), 0, 0}];

          v30 = [pathManager readOnlyUrlWithIdentifier:v29];
          [(PLValidatedExternalResource *)v8 setFileURL:v30];
        }

        else
        {
          v39 = PLMigrationGetLog();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            uuid2 = [assetCopy uuid];
            *buf = 138412546;
            v52 = uuid2;
            v53 = 2112;
            selfCopy = self;
            _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Resource payload has nil UTI, cannot derive resource URL, assetUUID: %@, payload: %@", buf, 0x16u);
          }
        }
      }

      else
      {
        identifier2 = [v13 identifier];
        v50 = [PLManagedAsset preferredFileExtensionForType:identifier2];

        [v50 UTF8String];
        [(PLValidatedExternalResource *)v8 version];
        [(PLValidatedExternalResource *)v8 recipeID];
        [(PLValidatedExternalResource *)v8 resourceType];
        filename = [assetCopy filename];
        directory = [assetCopy directory];
        v49 = [pathManager photoDirectoryWithType:1];
        [v49 UTF8String];
        v48 = [pathManager photoDirectoryWithType:4];
        [v48 UTF8String];
        v32 = [pathManager photoDirectoryWithType:9];
        uTF8String = [v32 UTF8String];
        v33 = [pathManager photoDirectoryWithType:10];
        uTF8String2 = [v33 UTF8String];
        v35 = [pathManager photoDirectoryWithType:19];
        uTF8String3 = [v35 UTF8String];
        v37 = [pathManager photoDirectoryWithType:12];
        uTF8String4 = [v37 UTF8String];
        v43 = uTF8String3;
        v38 = PLDCIMURLForResourceProperties();
        [(PLValidatedExternalResource *)v8 setFileURL:v38, uTF8String, uTF8String2, v43, uTF8String4, ""];
      }
    }
  }

  return v8;
}

- (PLAssetJournalEntryPayloadResource)initWithPayloadAttributes:(id)attributes payload:(id)payload
{
  attributesCopy = attributes;
  payloadCopy = payload;
  v12.receiver = self;
  v12.super_class = PLAssetJournalEntryPayloadResource;
  v9 = [(PLAssetJournalEntryPayloadResource *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_payloadAttributes, attributes);
    objc_storeStrong(&v10->_payload, payload);
  }

  return v10;
}

+ (void)_applyLargeVideoRecipeRefactorFixToExternalResource:(id)resource withAsset:(id)asset
{
  v27 = *MEMORY[0x1E69E9840];
  resourceCopy = resource;
  assetCopy = asset;
  if ([resourceCopy recipeID] == 131473)
  {
    pathManager = [assetCopy pathManager];
    if ([pathManager isUBF])
    {
      uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
      identifier = [uniformTypeIdentifier identifier];

      if (identifier)
      {
        if ([resourceCopy resourceType] == 16)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PLAssetJournalEntryPayload.m" lineNumber:387 description:{@"Invalid parameter not satisfying: %@", @"externalResource.resourceType != PLResourceTypeContextualVideoThumbnail"}];
        }

        v12 = objc_alloc(MEMORY[0x1E69BF298]);
        uuid = [assetCopy uuid];
        v14 = [v12 initWithAssetUuid:uuid bundleScope:0 uti:identifier resourceVersion:objc_msgSend(resourceCopy resourceType:"version") recipeID:objc_msgSend(resourceCopy originalFilename:"resourceType") customSuffix:{objc_msgSend(resourceCopy, "recipeID"), 0, 0}];

        v15 = [pathManager readOnlyUrlWithIdentifier:v14];
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
            fileSystemRepresentation = [v15 fileSystemRepresentation];
            _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "unlink failed with errno %d (%{public}s) for path %{public}s", buf, 0x1Cu);
          }
        }
      }
    }

    [resourceCopy setRecipeID:131077];
  }
}

@end