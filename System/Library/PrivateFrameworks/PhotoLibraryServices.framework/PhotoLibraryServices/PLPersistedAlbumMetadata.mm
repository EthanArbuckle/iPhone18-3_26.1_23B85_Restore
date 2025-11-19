@interface PLPersistedAlbumMetadata
+ (BOOL)isValidPath:(id)a3;
- (BOOL)_readMetadata;
- (PLPersistedAlbumMetadata)init;
- (PLPersistedAlbumMetadata)initWithPLGenericAlbum:(id)a3 pathManager:(id)a4;
- (PLPersistedAlbumMetadata)initWithPersistedDataAtURL:(id)a3;
- (PLPersistedAlbumMetadata)initWithTitle:(id)a3 uuid:(id)a4 cloudGUID:(id)a5 kind:(id)a6 assetUUIDs:(id)a7 persistedAlbumDataDirectory:(id)a8;
- (id)_fetchChildUUIDs;
- (id)description;
- (id)insertAlbumFromDataInManagedObjectContext:(id)a3;
- (void)_saveMetadata;
- (void)removePersistedAlbumData;
- (void)updateChildrenOrderingInAlbum:(id)a3 includePendingAssetChanges:(BOOL)a4;
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

    v9 = [genericAlbum title];
    if (v9)
    {
      [v7 encodeObject:v9 forKey:@"title"];
    }

    if (self->_genericAlbum)
    {
      v10 = self->_genericAlbum;
    }

    else
    {
      v10 = self;
    }

    v11 = [v10 kind];
    if (v11)
    {
      [v7 encodeObject:v11 forKey:@"kind"];
    }

    if (self->_genericAlbum)
    {
      v12 = self->_genericAlbum;
    }

    else
    {
      v12 = self;
    }

    v13 = [v12 uuid];
    if (v13)
    {
      [v7 encodeObject:v13 forKey:@"uuid"];
    }

    if (self->_genericAlbum)
    {
      v14 = self->_genericAlbum;
    }

    else
    {
      v14 = self;
    }

    v15 = [v14 cloudGUID];
    if (v15)
    {
      [v7 encodeObject:v15 forKey:@"cloudGUID"];
    }

    if (self->_genericAlbum)
    {
      v16 = self->_genericAlbum;
    }

    else
    {
      v16 = self;
    }

    v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v16, "isPinned")}];
    if (v17)
    {
      [v7 encodeObject:v17 forKey:@"isPinned"];
    }

    v82 = v17;
    if (self->_genericAlbum)
    {
      v18 = self->_genericAlbum;
    }

    else
    {
      v18 = self;
    }

    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "isPrototype")}];
    if (v19)
    {
      [v7 encodeObject:v19 forKey:@"isPrototype"];
    }

    v81 = v19;
    if (self->_genericAlbum)
    {
      v20 = self->_genericAlbum;
    }

    else
    {
      v20 = self;
    }

    v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v20, "isInTrash")}];
    if (v21)
    {
      [v7 encodeObject:v21 forKey:@"isInTrash"];
    }

    v80 = v21;
    if (self->_genericAlbum)
    {
      v22 = self->_genericAlbum;
    }

    else
    {
      v22 = self;
    }

    v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v22, "customSortAscending")}];
    if (v23)
    {
      [v7 encodeObject:v23 forKey:@"customSortAscending"];
    }

    v79 = v23;
    if (self->_genericAlbum)
    {
      v24 = self->_genericAlbum;
    }

    else
    {
      v24 = self;
    }

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v24, "customSortKey")}];
    if (v25)
    {
      [v7 encodeObject:v25 forKey:@"customSortKey"];
    }

    v26 = self->_genericAlbum;
    if (v26)
    {
      v27 = [(PLGenericAlbum *)v26 customKeyAsset];
      v28 = [v27 uuid];

      v29 = v28;
      if (!v28)
      {
LABEL_51:
        if (self->_genericAlbum)
        {
          v30 = self->_genericAlbum;
        }

        else
        {
          v30 = self;
        }

        v31 = [v30 lastModifiedDate];
        if (v31)
        {
          [v7 encodeObject:v31 forKey:@"lastModifiedDate"];
        }

        if (self->_genericAlbum)
        {
          v32 = self->_genericAlbum;
        }

        else
        {
          v32 = self;
        }

        v33 = [v32 importSessionID];
        if (v33)
        {
          [v7 encodeObject:v33 forKey:@"importSessionID"];
        }

        v75 = v33;
        v77 = v29;
        if (self->_genericAlbum)
        {
          v34 = self->_genericAlbum;
        }

        else
        {
          v34 = self;
        }

        v35 = [v34 importedByBundleIdentifier];
        if (v35)
        {
          [v7 encodeObject:v35 forKey:@"importedByBundleIdentifier"];
        }

        v36 = self->_genericAlbum;
        v78 = v25;
        v76 = v31;
        if (!v36)
        {
          goto LABEL_83;
        }

        v37 = [(PLGenericAlbum *)v36 userQueryData];

        v38 = self->_genericAlbum;
        if (v37)
        {
          v39 = [(PLGenericAlbum *)v38 userQueryData];
          [v7 encodeObject:v39 forKey:@"userQueryData"];

LABEL_89:
          v62 = MEMORY[0x1E69BF230];
          v63 = [v7 encodedData];
          v64 = [(PLPersistedAlbumMetadata *)self metadataURL];
          [v62 persistMetadata:v63 fileURL:v64];

          v65 = MEMORY[0x1E69BF238];
          v66 = [(PLPersistedAlbumMetadata *)self metadataURL];
          v67 = [v66 path];
          [v65 changeFileOwnerToMobileAtPath:v67 error:0];

          objc_autoreleasePoolPop(context);
          return;
        }

        if (v38)
        {
          v40 = [(PLPersistedAlbumMetadata *)self _fetchChildUUIDs];
          if (!v40)
          {
            goto LABEL_89;
          }

          v41 = v40;
          v69 = v7;
          v70 = v15;
          v72 = v11;
          v74 = v35;
          v68 = v9;
          v42 = [v40 count];
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
            v9 = v68;
            v7 = v69;
            v11 = v72;
            v15 = v70;
            v35 = v74;
            if (v43)
            {
              free(v43);
            }

            goto LABEL_89;
          }

          v9 = v68;
          v11 = v72;
          v15 = v70;
        }

        else
        {
LABEL_83:
          v74 = v35;
          v52 = [(PLPersistedAlbumMetadata *)self assetUUIDs];
          v42 = [v52 count];

          v53 = malloc_type_malloc(16 * v42, 0x7ED28B99uLL);
          v43 = v53;
          if (!v42)
          {
LABEL_88:
            v61 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v43 length:16 * v42 freeWhenDone:1];
            [v7 encodeObject:v61 forKey:@"assetUUIDs"];

            v35 = v74;
            goto LABEL_89;
          }

          v69 = v7;
          v71 = v15;
          v73 = v11;
          v54 = v9;
          v55 = 0;
          v56 = v53;
          v57 = v53;
          do
          {
            v58 = MEMORY[0x1E69BF320];
            v59 = [(PLPersistedAlbumMetadata *)self assetUUIDs];
            v60 = [v59 objectAtIndex:v55];
            [v58 parseUUIDString:v60 uuidBuffer:v57];

            ++v55;
            v57 += 16;
          }

          while (v42 != v55);
          v9 = v54;
          v11 = v73;
          v15 = v71;
          v43 = v56;
        }

        v7 = v69;
        goto LABEL_88;
      }
    }

    else
    {
      v29 = [(PLPersistedAlbumMetadata *)self customKeyAssetUUID];
      if (!v29)
      {
        goto LABEL_51;
      }
    }

    [v7 encodeObject:v29 forKey:@"customKeyAssetUUID"];
    goto LABEL_51;
  }
}

- (id)_fetchChildUUIDs
{
  v41[1] = *MEMORY[0x1E69E9840];
  v4 = [(PLGenericAlbum *)self->_genericAlbum managedObjectContext];
  v5 = MEMORY[0x1E695D5E0];
  v6 = +[PLManagedAsset entityName];
  v7 = [v5 fetchRequestWithEntityName:v6];

  v8 = MEMORY[0x1E695D5B8];
  v9 = +[PLManagedAlbum entityName];
  v10 = [v8 entityForName:v9 inManagedObjectContext:v4];

  v11 = MEMORY[0x1E695D5B8];
  v12 = +[PLImportSession entityName];
  v13 = [v11 entityForName:v12 inManagedObjectContext:v4];

  v14 = [(PLGenericAlbum *)self->_genericAlbum entity];
  v15 = [v14 isKindOfEntity:v10];

  if (v15)
  {
    v16 = MEMORY[0x1E696AE18];
    v17 = [(PLGenericAlbum *)self->_genericAlbum objectID];
    v18 = [v16 predicateWithFormat:@"%K CONTAINS %@", @"albums", v17];
    [v7 setPredicate:v18];

    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"albums" ascending:1];
    v41[0] = v19;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:1];
    [v7 setSortDescriptors:v20];
  }

  else
  {
    v21 = [(PLGenericAlbum *)self->_genericAlbum entity];
    v22 = [v21 isKindOfEntity:v13];

    if (v22)
    {
      v23 = MEMORY[0x1E696AE18];
      v24 = [(PLGenericAlbum *)self->_genericAlbum objectID];
      v25 = [v23 predicateWithFormat:@"%K == %@", @"importSession", v24];
      [v7 setPredicate:v25];
    }

    else
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [(PLGenericAlbum *)self->_genericAlbum entity];
      [v24 handleFailureInMethod:a2 object:self file:@"PLPersistedAlbumMetadata.m" lineNumber:433 description:{@"Unsupported entity type: %@", v26}];
    }
  }

  [v7 setResultType:2];
  v40 = @"uuid";
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  [v7 setPropertiesToFetch:v27];

  [v7 setAllocationType:2];
  v28 = [(PLGenericAlbum *)self->_genericAlbum managedObjectContext];
  v35 = 0;
  v29 = [v28 executeFetchRequest:v7 error:&v35];
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
      v33 = [(PLGenericAlbum *)self->_genericAlbum objectID];
      *buf = 138543618;
      v37 = v33;
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
  v4 = [(PLPersistedAlbumMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:v4];

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
      v22 = [(PLPersistedAlbumMetadata *)self userQueryData];

      if (!v22)
      {
        v23 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"assetUUIDs"];
        v24 = [v23 length];
        v25 = v24 >> 4;
        v26 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v24 >> 4];
        [(PLPersistedAlbumMetadata *)self setAssetUUIDs:v26];

        v27 = [v23 bytes];
        if (v24 >= 0x10)
        {
          v28 = v27;
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
  v2 = self;
  if (self->_genericAlbum)
  {
    self = self->_genericAlbum;
  }

  v37 = [(PLPersistedAlbumMetadata *)self title];
  if (v2->_genericAlbum)
  {
    genericAlbum = v2->_genericAlbum;
  }

  else
  {
    genericAlbum = v2;
  }

  v38 = [genericAlbum kind];
  if (v2->_genericAlbum)
  {
    v4 = v2->_genericAlbum;
  }

  else
  {
    v4 = v2;
  }

  v5 = [v4 uuid];
  if (v2->_genericAlbum)
  {
    v6 = v2->_genericAlbum;
  }

  else
  {
    v6 = v2;
  }

  v7 = [v6 cloudGUID];
  if (v2->_genericAlbum)
  {
    v8 = v2->_genericAlbum;
  }

  else
  {
    v8 = v2;
  }

  v34 = [v8 isPinned];
  if (v2->_genericAlbum)
  {
    v9 = v2->_genericAlbum;
  }

  else
  {
    v9 = v2;
  }

  v33 = [v9 isPrototype];
  if (v2->_genericAlbum)
  {
    v10 = v2->_genericAlbum;
  }

  else
  {
    v10 = v2;
  }

  v32 = [v10 isInTrash];
  if (v2->_genericAlbum)
  {
    v11 = v2->_genericAlbum;
  }

  else
  {
    v11 = v2;
  }

  v31 = [v11 customSortAscending];
  if (v2->_genericAlbum)
  {
    v12 = v2->_genericAlbum;
  }

  else
  {
    v12 = v2;
  }

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v12, "customSortKey")}];
  v13 = v2->_genericAlbum;
  if (v13)
  {
    v14 = [(PLGenericAlbum *)v13 customKeyAsset];
    v15 = [v14 uuid];
  }

  else
  {
    v15 = [(PLPersistedAlbumMetadata *)v2 customKeyAssetUUID];
  }

  if (v2->_genericAlbum)
  {
    v16 = v2->_genericAlbum;
  }

  else
  {
    v16 = v2;
  }

  v17 = [v16 importSessionID];
  if (v2->_genericAlbum)
  {
    v18 = v2->_genericAlbum;
  }

  else
  {
    v18 = v2;
  }

  v19 = [v18 importedByBundleIdentifier];
  if (v2->_genericAlbum)
  {
    v20 = v2->_genericAlbum;
  }

  else
  {
    v20 = v2;
  }

  v21 = [v20 lastModifiedDate];
  if (v2->_genericAlbum)
  {
    v22 = v2->_genericAlbum;
  }

  else
  {
    v22 = v2;
  }

  v30 = [v22 userQueryData];
  v23 = [objc_alloc(MEMORY[0x1E69BF2B8]) initWithData:v30];
  if (v23)
  {
    v24 = v2->_genericAlbum;
    if (v24)
    {
      [(PLGenericAlbum *)v24 assets];
    }

    else
    {
      [(PLPersistedAlbumMetadata *)v2 assetUUIDs];
    }
    v26 = ;
    v25 = [v26 count];
  }

  else
  {
    v25 = 0;
  }

  v39.receiver = v2;
  v39.super_class = PLPersistedAlbumMetadata;
  v27 = [(PLPersistedAlbumMetadata *)&v39 description];
  v28 = [(PLGenericAlbum *)v2->_genericAlbum objectID];
  v35 = [v27 stringByAppendingFormat:@" album %@ : title:%@, uuid:%@, cloudGUID:%@, importSessionID:%@, kind:%@, pin:%d, prototype:%d, trash:%d, sort:%d, asc:%@, lastModifiedDate:%@, keyAsset:%@, childCount:%lu, userQuery:%@ importedByBundleIdentifier:%@", v28, v37, v5, v7, v17, v38, v34, v33, v32, v31, v36, v21, v15, v25, v23, v19];

  return v35;
}

- (void)updateChildrenOrderingInAlbum:(id)a3 includePendingAssetChanges:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(PLPersistedAlbumMetadata *)self assetUUIDs];
  v8 = [v6 assets];
  v9 = [v8 valueForKey:@"uuid"];

  v10 = [v7 isEqual:v9];
  v11 = PLMigrationGetLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    if (v12)
    {
      v13 = [v9 count];
      v14 = [v6 uuid];
      *buf = 67109378;
      *v25 = v13;
      *&v25[4] = 2112;
      *&v25[6] = v14;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Persisted asset UUIDs (%d total) match database ordering for album %@", buf, 0x12u);
    }
  }

  else
  {
    if (v12)
    {
      v15 = [v6 uuid];
      v16 = [(PLPersistedAlbumMetadata *)self metadataURL];
      v17 = [v16 path];
      *buf = 138412546;
      *v25 = v15;
      *&v25[8] = 2112;
      *&v25[10] = v17;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Updating assets in album %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    v18 = [v7 array];
    v19 = [v6 photoLibrary];
    v20 = [PLManagedAsset assetsWithUUIDs:v18 options:v4 inLibrary:v19];

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __85__PLPersistedAlbumMetadata_updateChildrenOrderingInAlbum_includePendingAssetChanges___block_invoke;
    v22[3] = &unk_1E756EF00;
    v23 = v7;
    v11 = [v20 sortedArrayUsingComparator:v22];

    v21 = [v6 mutableAssets];
    [v21 addObjectsFromArray:v11];
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

- (id)insertAlbumFromDataInManagedObjectContext:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSNumber *)self->_kind intValue];
  v6 = 0;
  if (v5 > 1599)
  {
    v7 = (v5 - 1600) > 0x2A || ((1 << (v5 - 64)) & 0x7BDFFFFFFFFLL) == 0;
    if (v7 && (v5 - 3998) >= 9 && (v5 - 3571) >= 3)
    {
      goto LABEL_43;
    }

    goto LABEL_6;
  }

  if (v5 <= 1504)
  {
    if (v5 > 1099)
    {
      if ((v5 - 1500) >= 4 && v5 != 1100)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v13 = v5 > 0x10 || ((1 << v5) & 0x19004) == 0;
      if (v13 && v5 != 1000)
      {
        goto LABEL_43;
      }
    }

    goto LABEL_6;
  }

  v14 = v5 + 29;
  if ((v5 - 1507) <= 0x2E)
  {
    if (((1 << v14) & 0x780000000002) != 0)
    {
LABEL_6:
      v8 = [(NSNumber *)self->_kind intValue];
      title = self->_title;
      v10 = [v4 photoLibrary];
      v6 = [PLGenericAlbum insertNewAlbumWithKind:v8 title:title intoLibrary:v10];

      goto LABEL_7;
    }

    if (((1 << v14) & 0xC) != 0)
    {
      v15 = MEMORY[0x1E696AEC0];
      v16 = PLStringFromPLAlbumKind(v5);
      v6 = [v15 stringWithFormat:@"%@ Album is not supported for persistence", v16];

      goto LABEL_43;
    }

    if (v5 == 1507)
    {
      if (!self->_userQueryData)
      {
        v6 = @"User Smart Album missing userQueryData";
        goto LABEL_43;
      }

      v20 = [v4 photoLibrary];
      v6 = [PLGenericAlbum insertNewSmartAlbumIntoLibrary:v20];

      [(__CFString *)v6 setTitle:self->_title];
      goto LABEL_7;
    }
  }

  if (v5 == 1505)
  {
    goto LABEL_6;
  }

  if (v5 != 1506)
  {
    goto LABEL_43;
  }

  importSessionID = self->_importSessionID;
  if (!importSessionID)
  {
    v6 = @"ImportSession missing importSessionID";
    goto LABEL_43;
  }

  v6 = [PLImportSession insertNewImportSessionAlbumWithImportSessionID:importSessionID inManagedObjectContext:v4];
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
    v12 = [PLManagedAsset assetWithUUID:customKeyAssetUUID inManagedObjectContext:v4];
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
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  [v3 removeItemAtURL:self->_metadataURL error:0];
}

- (PLPersistedAlbumMetadata)initWithTitle:(id)a3 uuid:(id)a4 cloudGUID:(id)a5 kind:(id)a6 assetUUIDs:(id)a7 persistedAlbumDataDirectory:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v26.receiver = self;
  v26.super_class = PLPersistedAlbumMetadata;
  v20 = [(PLPersistedAlbumMetadata *)&v26 init];
  v21 = v20;
  if (v20)
  {
    [(PLPersistedAlbumMetadata *)v20 setAllowsOverwrite:1];
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v15, PLPersistedAlbumExtension];
    v23 = [v19 URLByAppendingPathComponent:v22];
    [(PLPersistedAlbumMetadata *)v21 setMetadataURL:v23];

    [(PLPersistedAlbumMetadata *)v21 setTitle:v14];
    [(PLPersistedAlbumMetadata *)v21 setUuid:v15];
    if (v16)
    {
      [(PLPersistedAlbumMetadata *)v21 setCloudGUID:v16];
    }

    [(PLPersistedAlbumMetadata *)v21 setKind:v17];
    v24 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v18];
    [(PLPersistedAlbumMetadata *)v21 setAssetUUIDs:v24];
  }

  return v21;
}

- (PLPersistedAlbumMetadata)initWithPersistedDataAtURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLPersistedAlbumMetadata;
  v5 = [(PLPersistedAlbumMetadata *)&v9 init];
  v6 = v5;
  if (v5 && ([(PLPersistedAlbumMetadata *)v5 setAllowsOverwrite:1], [(PLPersistedAlbumMetadata *)v6 setMetadataURL:v4], ![(PLPersistedAlbumMetadata *)v6 _readMetadata]))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (PLPersistedAlbumMetadata)initWithPLGenericAlbum:(id)a3 pathManager:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PLPersistedAlbumMetadata;
  v7 = [(PLPersistedAlbumMetadata *)&v19 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_genericAlbum, a3);
    [(PLPersistedAlbumMetadata *)v8 setAllowsOverwrite:1];
    [(PLPersistedAlbumMetadata *)v8 setInTrash:0];
    v9 = [v6 managedObjectContext];
    v10 = [v9 pathManager];

    v11 = MEMORY[0x1E695DFF8];
    v12 = [v10 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];

    v14 = MEMORY[0x1E696AEC0];
    v15 = [(PLGenericAlbum *)v8->_genericAlbum uuid];
    v16 = [v14 stringWithFormat:@"%@.%@", v15, PLPersistedAlbumExtension];

    v17 = [v13 URLByAppendingPathComponent:v16];
    [(PLPersistedAlbumMetadata *)v8 setMetadataURL:v17];
  }

  return v8;
}

- (PLPersistedAlbumMetadata)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLPersistedAlbumMetadata.m" lineNumber:88 description:@"Can't initialize a PLPersistedAlbumMetadata object using -init."];

  return 0;
}

+ (BOOL)isValidPath:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 isEqualToString:PLPersistedAlbumExtension];

  return v4;
}

@end