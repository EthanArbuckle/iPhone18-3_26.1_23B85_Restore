@interface PLPersistedAlbumMetadata
+ (BOOL)isValidPath:(id)path;
- (BOOL)_readMetadata;
- (PLPersistedAlbumMetadata)init;
- (PLPersistedAlbumMetadata)initWithPLGenericAlbum:(id)album pathManager:(id)manager;
- (PLPersistedAlbumMetadata)initWithPersistedDataAtURL:(id)l;
- (PLPersistedAlbumMetadata)initWithTitle:(id)title uuid:(id)uuid cloudGUID:(id)d kind:(id)kind assetUUIDs:(id)ds persistedAlbumDataDirectory:(id)directory;
- (id)_fetchChildUUIDs;
- (id)description;
- (id)insertAlbumFromDataInManagedObjectContext:(id)context;
- (void)_saveMetadata;
- (void)removePersistedAlbumData;
- (void)updateChildrenOrderingInAlbum:(id)album includePendingAssetChanges:(BOOL)changes;
@end

@implementation PLPersistedAlbumMetadata

- (void)_saveMetadata
{
  v89 = *MEMORY[0x1E69E9840];
  if (-[PLPersistedAlbumMetadata allowsOverwrite](self, "allowsOverwrite") || ([MEMORY[0x1E696AC08] defaultManager], v3 = objc_claimAutoreleasedReturnValue(), -[PLPersistedAlbumMetadata metadataURL](self, "metadataURL"), v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "path"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v3, "fileExistsAtPath:", v5), v5, v4, v3, (v6 & 1) == 0))
  {
    context = objc_autoreleasePoolPush();
    v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
    [v7 encodeInteger:1 forKey:@"version"];
    if (self->_genericAlbum)
    {
      genericAlbum = self->_genericAlbum;
    }

    else
    {
      genericAlbum = self;
    }

    title = [genericAlbum title];
    if (title)
    {
      [v7 encodeObject:title forKey:@"title"];
    }

    if (self->_genericAlbum)
    {
      selfCopy = self->_genericAlbum;
    }

    else
    {
      selfCopy = self;
    }

    kind = [selfCopy kind];
    if (kind)
    {
      [v7 encodeObject:kind forKey:@"kind"];
    }

    if (self->_genericAlbum)
    {
      selfCopy2 = self->_genericAlbum;
    }

    else
    {
      selfCopy2 = self;
    }

    uuid = [selfCopy2 uuid];
    if (uuid)
    {
      [v7 encodeObject:uuid forKey:@"uuid"];
    }

    if (self->_genericAlbum)
    {
      selfCopy3 = self->_genericAlbum;
    }

    else
    {
      selfCopy3 = self;
    }

    cloudGUID = [selfCopy3 cloudGUID];
    if (cloudGUID)
    {
      [v7 encodeObject:cloudGUID forKey:@"cloudGUID"];
    }

    if (self->_genericAlbum)
    {
      selfCopy4 = self->_genericAlbum;
    }

    else
    {
      selfCopy4 = self;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy4, "isPinned")}];
    if (v17)
    {
      [v7 encodeObject:v17 forKey:@"isPinned"];
    }

    v82 = v17;
    if (self->_genericAlbum)
    {
      selfCopy5 = self->_genericAlbum;
    }

    else
    {
      selfCopy5 = self;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy5, "isPrototype")}];
    if (v19)
    {
      [v7 encodeObject:v19 forKey:@"isPrototype"];
    }

    v81 = v19;
    if (self->_genericAlbum)
    {
      selfCopy6 = self->_genericAlbum;
    }

    else
    {
      selfCopy6 = self;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy6, "isInTrash")}];
    if (v21)
    {
      [v7 encodeObject:v21 forKey:@"isInTrash"];
    }

    v80 = v21;
    if (self->_genericAlbum)
    {
      selfCopy7 = self->_genericAlbum;
    }

    else
    {
      selfCopy7 = self;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy7, "customSortAscending")}];
    if (v23)
    {
      [v7 encodeObject:v23 forKey:@"customSortAscending"];
    }

    v79 = v23;
    if (self->_genericAlbum)
    {
      selfCopy8 = self->_genericAlbum;
    }

    else
    {
      selfCopy8 = self;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(selfCopy8, "customSortKey")}];
    if (v25)
    {
      [v7 encodeObject:v25 forKey:@"customSortKey"];
    }

    v26 = self->_genericAlbum;
    if (v26)
    {
      customKeyAsset = [(PLGenericAlbum *)v26 customKeyAsset];
      uuid2 = [customKeyAsset uuid];

      customKeyAssetUUID = uuid2;
      if (!uuid2)
      {
LABEL_51:
        if (self->_genericAlbum)
        {
          selfCopy9 = self->_genericAlbum;
        }

        else
        {
          selfCopy9 = self;
        }

        lastModifiedDate = [selfCopy9 lastModifiedDate];
        if (lastModifiedDate)
        {
          [v7 encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];
        }

        if (self->_genericAlbum)
        {
          selfCopy10 = self->_genericAlbum;
        }

        else
        {
          selfCopy10 = self;
        }

        importSessionID = [selfCopy10 importSessionID];
        if (importSessionID)
        {
          [v7 encodeObject:importSessionID forKey:@"importSessionID"];
        }

        v75 = importSessionID;
        v77 = customKeyAssetUUID;
        if (self->_genericAlbum)
        {
          selfCopy11 = self->_genericAlbum;
        }

        else
        {
          selfCopy11 = self;
        }

        importedByBundleIdentifier = [selfCopy11 importedByBundleIdentifier];
        if (importedByBundleIdentifier)
        {
          [v7 encodeObject:importedByBundleIdentifier forKey:@"importedByBundleIdentifier"];
        }

        v36 = self->_genericAlbum;
        v78 = v25;
        v76 = lastModifiedDate;
        if (!v36)
        {
          goto LABEL_83;
        }

        userQueryData = [(PLGenericAlbum *)v36 userQueryData];

        v38 = self->_genericAlbum;
        if (userQueryData)
        {
          userQueryData2 = [(PLGenericAlbum *)v38 userQueryData];
          [v7 encodeObject:userQueryData2 forKey:@"userQueryData"];

LABEL_89:
          v62 = MEMORY[0x1E69BF230];
          encodedData = [v7 encodedData];
          metadataURL = [(PLPersistedAlbumMetadata *)self metadataURL];
          [v62 persistMetadata:encodedData fileURL:metadataURL];

          v65 = MEMORY[0x1E69BF238];
          metadataURL2 = [(PLPersistedAlbumMetadata *)self metadataURL];
          path = [metadataURL2 path];
          [v65 changeFileOwnerToMobileAtPath:path error:0];

          objc_autoreleasePoolPop(context);
          return;
        }

        if (v38)
        {
          _fetchChildUUIDs = [(PLPersistedAlbumMetadata *)self _fetchChildUUIDs];
          if (!_fetchChildUUIDs)
          {
            goto LABEL_89;
          }

          v41 = _fetchChildUUIDs;
          v69 = v7;
          v70 = cloudGUID;
          v72 = kind;
          v74 = importedByBundleIdentifier;
          v68 = title;
          v42 = [_fetchChildUUIDs count];
          v43 = malloc_type_malloc(16 * v42, 0xCC167836uLL);
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v44 = v41;
          v45 = [v44 countByEnumeratingWithState:&v84 objects:v88 count:16];
          if (v45)
          {
            v46 = v45;
            v47 = 0;
            v48 = *v85;
            do
            {
              v49 = 0;
              v50 = v43;
              v51 = &v43[16 * v47];
              v47 += v46;
              do
              {
                if (*v85 != v48)
                {
                  objc_enumerationMutation(v44);
                }

                [MEMORY[0x1E69BF320] parseUUIDString:*(*(&v84 + 1) + 8 * v49++) uuidBuffer:v51];
                v51 += 16;
              }

              while (v46 != v49);
              v46 = [v44 countByEnumeratingWithState:&v84 objects:v88 count:16];
              v43 = v50;
            }

            while (v46);
          }

          if (v42 == 0x7FFFFFFFFFFFFFFFLL)
          {
            title = v68;
            v7 = v69;
            kind = v72;
            cloudGUID = v70;
            importedByBundleIdentifier = v74;
            if (v43)
            {
              free(v43);
            }

            goto LABEL_89;
          }

          title = v68;
          kind = v72;
          cloudGUID = v70;
        }

        else
        {
LABEL_83:
          v74 = importedByBundleIdentifier;
          assetUUIDs = [(PLPersistedAlbumMetadata *)self assetUUIDs];
          v42 = [assetUUIDs count];

          v53 = malloc_type_malloc(16 * v42, 0x7ED28B99uLL);
          v43 = v53;
          if (!v42)
          {
LABEL_88:
            v61 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v43 length:16 * v42 freeWhenDone:1];
            [v7 encodeObject:v61 forKey:@"assetUUIDs"];

            importedByBundleIdentifier = v74;
            goto LABEL_89;
          }

          v69 = v7;
          v71 = cloudGUID;
          v73 = kind;
          v54 = title;
          v55 = 0;
          v56 = v53;
          v57 = v53;
          do
          {
            v58 = MEMORY[0x1E69BF320];
            assetUUIDs2 = [(PLPersistedAlbumMetadata *)self assetUUIDs];
            v60 = [assetUUIDs2 objectAtIndex:v55];
            [v58 parseUUIDString:v60 uuidBuffer:v57];

            ++v55;
            v57 += 16;
          }

          while (v42 != v55);
          title = v54;
          kind = v73;
          cloudGUID = v71;
          v43 = v56;
        }

        v7 = v69;
        goto LABEL_88;
      }
    }

    else
    {
      customKeyAssetUUID = [(PLPersistedAlbumMetadata *)self customKeyAssetUUID];
      if (!customKeyAssetUUID)
      {
        goto LABEL_51;
      }
    }

    [v7 encodeObject:customKeyAssetUUID forKey:@"customKeyAssetUUID"];
    goto LABEL_51;
  }
}

- (id)_fetchChildUUIDs
{
  v41[1] = *MEMORY[0x1E69E9840];
  managedObjectContext = [(PLGenericAlbum *)self->_genericAlbum managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLManagedAlbum entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:managedObjectContext];

  v11 = MEMORY[0x1E695D5B8];
  v12 = +[PLImportSession entityName];
  v13 = [v11 entityForName:v12 inManagedObjectContext:managedObjectContext];

  entity = [(PLGenericAlbum *)self->_genericAlbum entity];
  v15 = [entity isKindOfEntity:v10];

  if (v15)
  {
    v16 = MEMORY[0x1E696AE18];
    objectID = [(PLGenericAlbum *)self->_genericAlbum objectID];
    v18 = [v16 predicateWithFormat:@"%K CONTAINS %@", @"albums", objectID];
    [v7 setPredicate:v18];

    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"albums" ascending:1];
    v41[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    [v7 setSortDescriptors:v20];
  }

  else
  {
    entity2 = [(PLGenericAlbum *)self->_genericAlbum entity];
    v22 = [entity2 isKindOfEntity:v13];

    if (v22)
    {
      v23 = MEMORY[0x1E696AE18];
      objectID2 = [(PLGenericAlbum *)self->_genericAlbum objectID];
      v25 = [v23 predicateWithFormat:@"%K == %@", @"importSession", objectID2];
      [v7 setPredicate:v25];
    }

    else
    {
      objectID2 = [MEMORY[0x1E696AAA8] currentHandler];
      entity3 = [(PLGenericAlbum *)self->_genericAlbum entity];
      [objectID2 handleFailureInMethod:a2 object:self file:@"PLPersistedAlbumMetadata.m" lineNumber:433 description:{@"Unsupported entity type: %@", entity3}];
    }
  }

  [v7 setResultType:2];
  v40 = @"uuid";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  [v7 setPropertiesToFetch:v27];

  [v7 setAllocationType:2];
  managedObjectContext2 = [(PLGenericAlbum *)self->_genericAlbum managedObjectContext];
  v35 = 0;
  v29 = [managedObjectContext2 executeFetchRequest:v7 error:&v35];
  v30 = v35;

  if (v29)
  {
    v31 = [v29 _pl_map:&__block_literal_global_55585];
  }

  else
  {
    v32 = PLBackendGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      objectID3 = [(PLGenericAlbum *)self->_genericAlbum objectID];
      *buf = 138543618;
      v37 = objectID3;
      v38 = 2112;
      v39 = v30;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Failed to fetch uuids in album ID: %{public}@, error: %@", buf, 0x16u);
    }

    v31 = 0;
  }

  return v31;
}

- (BOOL)_readMetadata
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  metadataURL = [(PLPersistedAlbumMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:metadataURL];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) pl_safeInitForReadingFromData:v5];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      [(PLPersistedAlbumMetadata *)self setTitle:v8];

      v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
      [(PLPersistedAlbumMetadata *)self setKind:v9];

      v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
      [(PLPersistedAlbumMetadata *)self setUuid:v10];

      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"cloudGUID"];
      [(PLPersistedAlbumMetadata *)self setCloudGUID:v11];

      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isPinned"];
      -[PLPersistedAlbumMetadata setPinned:](self, "setPinned:", [v12 BOOLValue]);

      v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isPrototype"];
      -[PLPersistedAlbumMetadata setPrototype:](self, "setPrototype:", [v13 BOOLValue]);

      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isInTrash"];
      -[PLPersistedAlbumMetadata setInTrash:](self, "setInTrash:", [v14 BOOLValue]);

      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"customSortAscending"];
      -[PLPersistedAlbumMetadata setCustomSortAscending:](self, "setCustomSortAscending:", [v15 BOOLValue]);

      v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"customSortKey"];
      -[PLPersistedAlbumMetadata setCustomSortKey:](self, "setCustomSortKey:", [v16 intValue]);

      v17 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"customKeyAssetUUID"];
      [(PLPersistedAlbumMetadata *)self setCustomKeyAssetUUID:v17];

      v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"importSessionID"];
      [(PLPersistedAlbumMetadata *)self setImportSessionID:v18];

      v19 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"importedByBundleIdentifier"];
      [(PLPersistedAlbumMetadata *)self setImportedByBundleIdentifier:v19];

      v20 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
      [(PLPersistedAlbumMetadata *)self setLastModifiedDate:v20];

      v21 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"userQueryData"];
      [(PLPersistedAlbumMetadata *)self setUserQueryData:v21];
      userQueryData = [(PLPersistedAlbumMetadata *)self userQueryData];

      if (!userQueryData)
      {
        v23 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"assetUUIDs"];
        v24 = [v23 length];
        v25 = v24 >> 4;
        v26 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v24 >> 4];
        [(PLPersistedAlbumMetadata *)self setAssetUUIDs:v26];

        bytes = [v23 bytes];
        if (v24 >= 0x10)
        {
          v28 = bytes;
          v29 = 0;
          v30 = 1;
          do
          {
            memset(out, 0, 37);
            uuid_unparse((v28 + 16 * v29), out);
            v31 = [MEMORY[0x1E696AEC0] stringWithCString:out encoding:4];
            [(NSMutableOrderedSet *)self->_assetUUIDs addObject:v31];

            v29 = v30;
          }

          while (v25 > v30++);
        }

        v7 = v6 != 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  selfCopy = self;
  if (self->_genericAlbum)
  {
    self = self->_genericAlbum;
  }

  title = [(PLPersistedAlbumMetadata *)self title];
  if (selfCopy->_genericAlbum)
  {
    genericAlbum = selfCopy->_genericAlbum;
  }

  else
  {
    genericAlbum = selfCopy;
  }

  kind = [genericAlbum kind];
  if (selfCopy->_genericAlbum)
  {
    v4 = selfCopy->_genericAlbum;
  }

  else
  {
    v4 = selfCopy;
  }

  uuid = [v4 uuid];
  if (selfCopy->_genericAlbum)
  {
    v6 = selfCopy->_genericAlbum;
  }

  else
  {
    v6 = selfCopy;
  }

  cloudGUID = [v6 cloudGUID];
  if (selfCopy->_genericAlbum)
  {
    v8 = selfCopy->_genericAlbum;
  }

  else
  {
    v8 = selfCopy;
  }

  isPinned = [v8 isPinned];
  if (selfCopy->_genericAlbum)
  {
    v9 = selfCopy->_genericAlbum;
  }

  else
  {
    v9 = selfCopy;
  }

  isPrototype = [v9 isPrototype];
  if (selfCopy->_genericAlbum)
  {
    v10 = selfCopy->_genericAlbum;
  }

  else
  {
    v10 = selfCopy;
  }

  isInTrash = [v10 isInTrash];
  if (selfCopy->_genericAlbum)
  {
    v11 = selfCopy->_genericAlbum;
  }

  else
  {
    v11 = selfCopy;
  }

  customSortAscending = [v11 customSortAscending];
  if (selfCopy->_genericAlbum)
  {
    v12 = selfCopy->_genericAlbum;
  }

  else
  {
    v12 = selfCopy;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v12, "customSortKey")}];
  v13 = selfCopy->_genericAlbum;
  if (v13)
  {
    customKeyAsset = [(PLGenericAlbum *)v13 customKeyAsset];
    uuid2 = [customKeyAsset uuid];
  }

  else
  {
    uuid2 = [(PLPersistedAlbumMetadata *)selfCopy customKeyAssetUUID];
  }

  if (selfCopy->_genericAlbum)
  {
    v16 = selfCopy->_genericAlbum;
  }

  else
  {
    v16 = selfCopy;
  }

  importSessionID = [v16 importSessionID];
  if (selfCopy->_genericAlbum)
  {
    v18 = selfCopy->_genericAlbum;
  }

  else
  {
    v18 = selfCopy;
  }

  importedByBundleIdentifier = [v18 importedByBundleIdentifier];
  if (selfCopy->_genericAlbum)
  {
    v20 = selfCopy->_genericAlbum;
  }

  else
  {
    v20 = selfCopy;
  }

  lastModifiedDate = [v20 lastModifiedDate];
  if (selfCopy->_genericAlbum)
  {
    v22 = selfCopy->_genericAlbum;
  }

  else
  {
    v22 = selfCopy;
  }

  userQueryData = [v22 userQueryData];
  v23 = [objc_alloc(MEMORY[0x1E69BF2B8]) initWithData:userQueryData];
  if (v23)
  {
    v24 = selfCopy->_genericAlbum;
    if (v24)
    {
      [(PLGenericAlbum *)v24 assets];
    }

    else
    {
      [(PLPersistedAlbumMetadata *)selfCopy assetUUIDs];
    }
    v26 = ;
    v25 = [v26 count];
  }

  else
  {
    v25 = 0;
  }

  v39.receiver = selfCopy;
  v39.super_class = PLPersistedAlbumMetadata;
  v27 = [(PLPersistedAlbumMetadata *)&v39 description];
  objectID = [(PLGenericAlbum *)selfCopy->_genericAlbum objectID];
  v35 = [v27 stringByAppendingFormat:@" album %@ : title:%@, uuid:%@, cloudGUID:%@, importSessionID:%@, kind:%@, pin:%d, prototype:%d, trash:%d, sort:%d, asc:%@, lastModifiedDate:%@, keyAsset:%@, childCount:%lu, userQuery:%@ importedByBundleIdentifier:%@", objectID, title, uuid, cloudGUID, importSessionID, kind, isPinned, isPrototype, isInTrash, customSortAscending, v36, lastModifiedDate, uuid2, v25, v23, importedByBundleIdentifier];

  return v35;
}

- (void)updateChildrenOrderingInAlbum:(id)album includePendingAssetChanges:(BOOL)changes
{
  changesCopy = changes;
  v26 = *MEMORY[0x1E69E9840];
  albumCopy = album;
  assetUUIDs = [(PLPersistedAlbumMetadata *)self assetUUIDs];
  assets = [albumCopy assets];
  v9 = [assets valueForKey:@"uuid"];

  v10 = [assetUUIDs isEqual:v9];
  v11 = PLMigrationGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v9 count];
      uuid = [albumCopy uuid];
      *buf = 67109378;
      *v25 = v13;
      *&v25[4] = 2112;
      *&v25[6] = uuid;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Persisted asset UUIDs (%d total) match database ordering for album %@", buf, 0x12u);
    }
  }

  else
  {
    if (v12)
    {
      uuid2 = [albumCopy uuid];
      metadataURL = [(PLPersistedAlbumMetadata *)self metadataURL];
      path = [metadataURL path];
      *buf = 138412546;
      *v25 = uuid2;
      *&v25[8] = 2112;
      *&v25[10] = path;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Updating assets in album %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    array = [assetUUIDs array];
    photoLibrary = [albumCopy photoLibrary];
    v20 = [PLManagedAsset assetsWithUUIDs:array options:changesCopy inLibrary:photoLibrary];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__PLPersistedAlbumMetadata_updateChildrenOrderingInAlbum_includePendingAssetChanges___block_invoke;
    v22[3] = &unk_1E756EF00;
    v23 = assetUUIDs;
    v11 = [v20 sortedArrayUsingComparator:v22];

    mutableAssets = [albumCopy mutableAssets];
    [mutableAssets addObjectsFromArray:v11];
  }
}

uint64_t __85__PLPersistedAlbumMetadata_updateChildrenOrderingInAlbum_includePendingAssetChanges___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 uuid];
  v8 = [v5 indexOfObject:v7];

  v9 = *(a1 + 32);
  v10 = [v6 uuid];

  v11 = [v9 indexOfObject:v10];
  if (v8 < v11)
  {
    return -1;
  }

  else
  {
    return v8 > v11;
  }
}

- (id)insertAlbumFromDataInManagedObjectContext:(id)context
{
  v26 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  intValue = [(NSNumber *)self->_kind intValue];
  v6 = 0;
  if (intValue > 1599)
  {
    v7 = (intValue - 1600) > 0x2A || ((1 << (intValue - 64)) & 0x7BDFFFFFFFFLL) == 0;
    if (v7 && (intValue - 3998) >= 9 && (intValue - 3571) >= 3)
    {
      goto LABEL_43;
    }

    goto LABEL_6;
  }

  if (intValue <= 1504)
  {
    if (intValue > 1099)
    {
      if ((intValue - 1500) >= 4 && intValue != 1100)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = intValue > 0x10 || ((1 << intValue) & 0x19004) == 0;
      if (v13 && intValue != 1000)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_6;
  }

  v14 = intValue + 29;
  if ((intValue - 1507) <= 0x2E)
  {
    if (((1 << v14) & 0x780000000002) != 0)
    {
LABEL_6:
      intValue2 = [(NSNumber *)self->_kind intValue];
      title = self->_title;
      photoLibrary = [contextCopy photoLibrary];
      v6 = [PLGenericAlbum insertNewAlbumWithKind:intValue2 title:title intoLibrary:photoLibrary];

      goto LABEL_7;
    }

    if (((1 << v14) & 0xC) != 0)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = PLStringFromPLAlbumKind(intValue);
      v6 = [v15 stringWithFormat:@"%@ Album is not supported for persistence", v16];

      goto LABEL_43;
    }

    if (intValue == 1507)
    {
      if (!self->_userQueryData)
      {
        v6 = @"User Smart Album missing userQueryData";
        goto LABEL_43;
      }

      photoLibrary2 = [contextCopy photoLibrary];
      v6 = [PLGenericAlbum insertNewSmartAlbumIntoLibrary:photoLibrary2];

      [(__CFString *)v6 setTitle:self->_title];
      goto LABEL_7;
    }
  }

  if (intValue == 1505)
  {
    goto LABEL_6;
  }

  if (intValue != 1506)
  {
    goto LABEL_43;
  }

  importSessionID = self->_importSessionID;
  if (!importSessionID)
  {
    v6 = @"ImportSession missing importSessionID";
    goto LABEL_43;
  }

  v6 = [PLImportSession insertNewImportSessionAlbumWithImportSessionID:importSessionID inManagedObjectContext:contextCopy];
LABEL_7:
  if (!v6)
  {
LABEL_43:
    v17 = PLMigrationGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      uuid = self->_uuid;
      *buf = 138412546;
      v23 = uuid;
      v24 = 2112;
      v25 = v6;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to create album %@: %@", buf, 0x16u);
    }

    v6 = 0;
    goto LABEL_46;
  }

  [(__CFString *)v6 setUuid:self->_uuid];
  if (self->_cloudGUID)
  {
    [(__CFString *)v6 setCloudGUID:?];
  }

  if (self->_inTrash && [(__CFString *)v6 canMoveToTrash])
  {
    [(__CFString *)v6 applyTrashedState:1 cascade:1];
  }

  if (self->_pinned)
  {
    [(__CFString *)v6 setIsPinned:1];
  }

  if (self->_prototype)
  {
    [(__CFString *)v6 setIsPrototype:1];
  }

  [(__CFString *)v6 setCustomSortAscending:self->_customSortAscending];
  [(__CFString *)v6 setCustomSortKey:self->_customSortKey];
  customKeyAssetUUID = self->_customKeyAssetUUID;
  if (customKeyAssetUUID)
  {
    v12 = [PLManagedAsset assetWithUUID:customKeyAssetUUID inManagedObjectContext:contextCopy];
    if (v12)
    {
      [(__CFString *)v6 setCustomKeyAsset:v12];
    }
  }

  if (self->_userQueryData)
  {
    [(__CFString *)v6 setUserQueryData:?];
  }

  if (self->_importedByBundleIdentifier)
  {
    [(__CFString *)v6 setImportedByBundleIdentifier:?];
  }

  if (self->_lastModifiedDate)
  {
    [(__CFString *)v6 setLastModifiedDate:?];
  }

LABEL_46:

  return v6;
}

- (void)removePersistedAlbumData
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager removeItemAtURL:self->_metadataURL error:0];
}

- (PLPersistedAlbumMetadata)initWithTitle:(id)title uuid:(id)uuid cloudGUID:(id)d kind:(id)kind assetUUIDs:(id)ds persistedAlbumDataDirectory:(id)directory
{
  titleCopy = title;
  uuidCopy = uuid;
  dCopy = d;
  kindCopy = kind;
  dsCopy = ds;
  directoryCopy = directory;
  v26.receiver = self;
  v26.super_class = PLPersistedAlbumMetadata;
  v20 = [(PLPersistedAlbumMetadata *)&v26 init];
  v21 = v20;
  if (v20)
  {
    [(PLPersistedAlbumMetadata *)v20 setAllowsOverwrite:1];
    pLPersistedAlbumExtension = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", uuidCopy, PLPersistedAlbumExtension];
    v23 = [directoryCopy URLByAppendingPathComponent:pLPersistedAlbumExtension];
    [(PLPersistedAlbumMetadata *)v21 setMetadataURL:v23];

    [(PLPersistedAlbumMetadata *)v21 setTitle:titleCopy];
    [(PLPersistedAlbumMetadata *)v21 setUuid:uuidCopy];
    if (dCopy)
    {
      [(PLPersistedAlbumMetadata *)v21 setCloudGUID:dCopy];
    }

    [(PLPersistedAlbumMetadata *)v21 setKind:kindCopy];
    v24 = [MEMORY[0x1E695DFA0] orderedSetWithArray:dsCopy];
    [(PLPersistedAlbumMetadata *)v21 setAssetUUIDs:v24];
  }

  return v21;
}

- (PLPersistedAlbumMetadata)initWithPersistedDataAtURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PLPersistedAlbumMetadata;
  v5 = [(PLPersistedAlbumMetadata *)&v9 init];
  v6 = v5;
  if (v5 && ([(PLPersistedAlbumMetadata *)v5 setAllowsOverwrite:1], [(PLPersistedAlbumMetadata *)v6 setMetadataURL:lCopy], ![(PLPersistedAlbumMetadata *)v6 _readMetadata]))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (PLPersistedAlbumMetadata)initWithPLGenericAlbum:(id)album pathManager:(id)manager
{
  albumCopy = album;
  v19.receiver = self;
  v19.super_class = PLPersistedAlbumMetadata;
  v7 = [(PLPersistedAlbumMetadata *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_genericAlbum, album);
    [(PLPersistedAlbumMetadata *)v8 setAllowsOverwrite:1];
    [(PLPersistedAlbumMetadata *)v8 setInTrash:0];
    managedObjectContext = [albumCopy managedObjectContext];
    pathManager = [managedObjectContext pathManager];

    v11 = MEMORY[0x1E695DFF8];
    v12 = [pathManager privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];

    v14 = MEMORY[0x1E696AEC0];
    uuid = [(PLGenericAlbum *)v8->_genericAlbum uuid];
    pLPersistedAlbumExtension = [v14 stringWithFormat:@"%@.%@", uuid, PLPersistedAlbumExtension];

    v17 = [v13 URLByAppendingPathComponent:pLPersistedAlbumExtension];
    [(PLPersistedAlbumMetadata *)v8 setMetadataURL:v17];
  }

  return v8;
}

- (PLPersistedAlbumMetadata)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersistedAlbumMetadata.m" lineNumber:88 description:@"Can't initialize a PLPersistedAlbumMetadata object using -init."];

  return 0;
}

+ (BOOL)isValidPath:(id)path
{
  pathExtension = [path pathExtension];
  v4 = [pathExtension isEqualToString:PLPersistedAlbumExtension];

  return v4;
}

@end