@interface PLPersistedFolderMetadata
+ (BOOL)isValidPath:(id)a3;
+ (void)updateChildrenOrderingInFolder:(id)a3 usingChildUUIDs:(id)a4 sourceDescription:(id)a5 includePendingChanges:(BOOL)a6;
- (BOOL)_readMetadata;
- (BOOL)isProjectAlbumRootFolder;
- (BOOL)isRootFolder;
- (PLPersistedFolderMetadata)init;
- (PLPersistedFolderMetadata)initWithPLManagedFolder:(id)a3 pathManager:(id)a4;
- (PLPersistedFolderMetadata)initWithPersistedDataAtURL:(id)a3;
- (id)description;
- (id)insertFolderFromDataInManagedObjectContext:(id)a3;
- (void)_saveMetadata;
- (void)removePersistedData;
- (void)updateChildrenOrderingInFolder:(id)a3 includePendingChanges:(BOOL)a4;
@end

@implementation PLPersistedFolderMetadata

- (void)_saveMetadata
{
  v3 = objc_autoreleasePoolPush();
  v4 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [v4 encodeInteger:1 forKey:@"version"];
  if (self->_folder)
  {
    folder = self->_folder;
  }

  else
  {
    folder = self;
  }

  v6 = [folder title];
  if (v6)
  {
    [v4 encodeObject:v6 forKey:@"title"];
  }

  if (self->_folder)
  {
    v7 = self->_folder;
  }

  else
  {
    v7 = self;
  }

  v8 = [v7 kind];
  if (v8)
  {
    [v4 encodeObject:v8 forKey:@"kind"];
  }

  if (self->_folder)
  {
    v9 = self->_folder;
  }

  else
  {
    v9 = self;
  }

  v10 = [v9 uuid];
  if (v10)
  {
    [v4 encodeObject:v10 forKey:@"uuid"];
  }

  v58 = v10;
  v59 = v8;
  if (self->_folder)
  {
    v11 = self->_folder;
  }

  else
  {
    v11 = self;
  }

  v12 = [v11 cloudGUID];
  if (v12)
  {
    [v4 encodeObject:v12 forKey:@"cloudGUID"];
  }

  v57 = v12;
  if (self->_folder)
  {
    v13 = self->_folder;
  }

  else
  {
    v13 = self;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v13, "isPinned")}];
  if (v14)
  {
    [v4 encodeObject:v14 forKey:@"isPinned"];
  }

  v56 = v14;
  if (self->_folder)
  {
    v15 = self->_folder;
  }

  else
  {
    v15 = self;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "isPrototype")}];
  if (v16)
  {
    [v4 encodeObject:v16 forKey:@"isPrototype"];
  }

  v55 = v16;
  if (self->_folder)
  {
    v17 = self->_folder;
  }

  else
  {
    v17 = self;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "isInTrash")}];
  if (v18)
  {
    [v4 encodeObject:v18 forKey:@"isInTrash"];
  }

  v54 = v18;
  if (self->_folder)
  {
    v19 = self->_folder;
  }

  else
  {
    v19 = self;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "customSortAscending")}];
  if (v20)
  {
    [v4 encodeObject:v20 forKey:@"customSortAscending"];
  }

  if (self->_folder)
  {
    v21 = self->_folder;
  }

  else
  {
    v21 = self;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v21, "customSortKey")}];
  if (v22)
  {
    [v4 encodeObject:v22 forKey:@"customSortKey"];
  }

  if (self->_folder)
  {
    v23 = self->_folder;
  }

  else
  {
    v23 = self;
  }

  v24 = [v23 lastModifiedDate];
  if (v24)
  {
    [v4 encodeObject:v24 forKey:@"lastModifiedDate"];
  }

  v53 = v20;
  v25 = self->_folder;
  if (v25)
  {
    v50 = v24;
    v51 = v22;
    v52 = v6;
    v49 = v3;
    v26 = [(PLManagedFolder *)v25 albums];
    v27 = [v26 count];
    v60 = malloc_type_malloc(16 * v27, 0x603215ACuLL);
    if (v27)
    {
      v28 = 0;
      v29 = v60;
      do
      {
        v30 = MEMORY[0x1E69BF320];
        v31 = [v26 objectAtIndex:v28];
        v32 = [v31 uuid];
        [v30 parseUUIDString:v32 uuidBuffer:v29];

        ++v28;
        v29 += 16;
      }

      while (v27 != v28);
    }

    v3 = v49;
  }

  else
  {
    v33 = [(PLPersistedFolderMetadata *)self childUUIDs];
    v27 = [v33 count];

    v34 = malloc_type_malloc(16 * v27, 0xD9E20C35uLL);
    v35 = v34;
    if (!v27)
    {
      goto LABEL_61;
    }

    v50 = v24;
    v51 = v22;
    v52 = v6;
    v36 = v3;
    v37 = 0;
    v60 = v34;
    v38 = v34;
    do
    {
      v39 = MEMORY[0x1E69BF320];
      v40 = [(PLPersistedFolderMetadata *)self childUUIDs];
      v41 = [v40 objectAtIndex:v37];
      [v39 parseUUIDString:v41 uuidBuffer:v38];

      ++v37;
      v38 += 16;
    }

    while (v27 != v37);
    v3 = v36;
  }

  v22 = v51;
  v6 = v52;
  v24 = v50;
  v35 = v60;
LABEL_61:
  v42 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v35 length:16 * v27 freeWhenDone:1];
  [v4 encodeObject:v42 forKey:@"assetUUIDs"];

  v43 = MEMORY[0x1E69BF230];
  v44 = [v4 encodedData];
  v45 = [(PLPersistedFolderMetadata *)self metadataURL];
  [v43 persistMetadata:v44 fileURL:v45];

  v46 = MEMORY[0x1E69BF238];
  v47 = [(PLPersistedFolderMetadata *)self metadataURL];
  v48 = [v47 path];
  [v46 changeFileOwnerToMobileAtPath:v48 error:0];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)_readMetadata
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  v4 = [(PLPersistedFolderMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:v4];

  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) pl_safeInitForReadingFromData:v5];
    v7 = v6 != 0;
    if (v6)
    {
      v8 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
      [(PLPersistedFolderMetadata *)self setTitle:v8];

      v9 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"kind"];
      [(PLPersistedFolderMetadata *)self setKind:v9];

      v10 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
      [(PLPersistedFolderMetadata *)self setUuid:v10];

      v11 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"cloudGUID"];
      [(PLPersistedFolderMetadata *)self setCloudGUID:v11];

      v12 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isPinned"];
      -[PLPersistedFolderMetadata setPinned:](self, "setPinned:", [v12 BOOLValue]);

      v13 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isPrototype"];
      -[PLPersistedFolderMetadata setPrototype:](self, "setPrototype:", [v13 BOOLValue]);

      v14 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"isInTrash"];
      -[PLPersistedFolderMetadata setInTrash:](self, "setInTrash:", [v14 BOOLValue]);

      v15 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"customSortAscending"];
      -[PLPersistedFolderMetadata setCustomSortAscending:](self, "setCustomSortAscending:", [v15 BOOLValue]);

      v16 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"customSortKey"];
      -[PLPersistedFolderMetadata setCustomSortKey:](self, "setCustomSortKey:", [v16 intValue]);

      v17 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"lastModifiedDate"];
      [(PLPersistedFolderMetadata *)self setLastModifiedDate:v17];

      v18 = [v6 decodeObjectOfClass:objc_opt_class() forKey:@"assetUUIDs"];
      v19 = [v18 length];
      v20 = v19 >> 4;
      v21 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:v19 >> 4];
      [(PLPersistedFolderMetadata *)self setChildUUIDs:v21];

      v22 = [v18 bytes];
      if (v19 >= 0x10)
      {
        v23 = v22;
        v24 = 0;
        v25 = 1;
        do
        {
          memset(v29, 0, sizeof(v29));
          uuid_unparse((v23 + 16 * v24), v29);
          v26 = [MEMORY[0x1E696AEC0] stringWithCString:v29 encoding:4];
          [(NSMutableOrderedSet *)self->_childUUIDs addObject:v26];

          v24 = v25;
        }

        while (v20 > v25++);
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
  if (self->_folder)
  {
    self = self->_folder;
  }

  v29 = [(PLPersistedFolderMetadata *)self title];
  if (v2->_folder)
  {
    folder = v2->_folder;
  }

  else
  {
    folder = v2;
  }

  v31 = [folder kind];
  if (v2->_folder)
  {
    v4 = v2->_folder;
  }

  else
  {
    v4 = v2;
  }

  v30 = [v4 uuid];
  if (v2->_folder)
  {
    v5 = v2->_folder;
  }

  else
  {
    v5 = v2;
  }

  v28 = [v5 cloudGUID];
  if (v2->_folder)
  {
    v6 = v2->_folder;
  }

  else
  {
    v6 = v2;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "isPinned")}];
  if (v2->_folder)
  {
    v8 = v2->_folder;
  }

  else
  {
    v8 = v2;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "isPrototype")}];
  if (v2->_folder)
  {
    v10 = v2->_folder;
  }

  else
  {
    v10 = v2;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "isInTrash")}];
  if (v2->_folder)
  {
    v12 = v2->_folder;
  }

  else
  {
    v12 = v2;
  }

  v13 = [v12 lastModifiedDate];
  if (v2->_folder)
  {
    v14 = v2->_folder;
  }

  else
  {
    v14 = v2;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "customSortAscending")}];
  if (v2->_folder)
  {
    v16 = v2->_folder;
  }

  else
  {
    v16 = v2;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v16, "customSortKey")}];
  v18 = v2->_folder;
  if (v18)
  {
    v19 = [(PLGenericAlbum *)v18 isFolder];
    v20 = v2->_folder;
    if (v19)
    {
      [(PLManagedFolder *)v20 albums];
    }

    else
    {
      [(PLManagedFolder *)v20 assets];
    }
    v21 = ;
  }

  else
  {
    v21 = [(PLPersistedFolderMetadata *)v2 childUUIDs];
  }

  v22 = v21;
  v23 = [v21 count];

  v32.receiver = v2;
  v32.super_class = PLPersistedFolderMetadata;
  v24 = [(PLPersistedFolderMetadata *)&v32 description];
  v25 = [(PLManagedFolder *)v2->_folder objectID];
  v27 = [v24 stringByAppendingFormat:@" album %@ : title:%@, uuid:%@, cloudGUID:%@, kind:%@, pin:%@, prototype:%@, trash:%@, sort:%@ asc:%@, lastModifiedDate:%@, childCount:%lu", v25, v29, v30, v28, v31, v7, v9, v11, v15, v17, v13, v23];

  return v27;
}

- (void)updateChildrenOrderingInFolder:(id)a3 includePendingChanges:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = objc_opt_class();
  v10 = [(PLPersistedFolderMetadata *)self childUUIDs];
  v8 = [(PLPersistedFolderMetadata *)self metadataURL];
  v9 = [v8 path];
  [v7 updateChildrenOrderingInFolder:v6 usingChildUUIDs:v10 sourceDescription:v9 includePendingChanges:v4];
}

- (id)insertFolderFromDataInManagedObjectContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(NSNumber *)self->_kind intValue];
  if ((v5 - 3998) < 2)
  {
    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Can't replace singleton root folder from metadata", &v16, 2u);
    }
  }

  else
  {
    if (v5 == 1553)
    {
      title = self->_title;
      v7 = [v4 photoLibrary];
      v8 = title;
      v9 = 1553;
      goto LABEL_8;
    }

    if (v5 == 4000)
    {
      v6 = self->_title;
      v7 = [v4 photoLibrary];
      v8 = v6;
      v9 = 4000;
LABEL_8:
      v12 = [PLManagedFolder insertNewFolderWithTitle:v8 kind:v9 intoLibrary:v7];

      goto LABEL_12;
    }

    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      kind = self->_kind;
      v14 = [(NSURL *)self->_metadataURL path];
      v16 = 138412546;
      v17 = kind;
      v18 = 2112;
      v19 = v14;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unknown Folder Kind %@ at %@", &v16, 0x16u);
    }
  }

  v12 = 0;
LABEL_12:
  [v12 setUuid:self->_uuid];
  if (self->_cloudGUID)
  {
    [v12 setCloudGUID:?];
  }

  if (self->_inTrash && [v12 canMoveToTrash])
  {
    [v12 applyTrashedState:1 cascade:1];
  }

  if (self->_pinned)
  {
    [v12 setIsPinned:1];
  }

  if (self->_prototype)
  {
    [v12 setIsPrototype:1];
  }

  if (self->_lastModifiedDate)
  {
    [v12 setLastModifiedDate:?];
  }

  [v12 setCustomSortAscending:self->_customSortAscending];
  [v12 setCustomSortKey:self->_customSortKey];

  return v12;
}

- (void)removePersistedData
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  metadataURL = self->_metadataURL;
  v11 = 0;
  v5 = [v3 removeItemAtURL:metadataURL error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = PLUnderlyingPOSIXError();
    v8 = [v7 code];

    if (v8 != 2)
    {
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = [(NSURL *)self->_metadataURL path];
        *buf = 138412546;
        v13 = v10;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to remove persisted folder metadata %@ %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)isProjectAlbumRootFolder
{
  v2 = [(PLPersistedFolderMetadata *)self kind];
  v3 = [v2 intValue] == 3998;

  return v3;
}

- (BOOL)isRootFolder
{
  v2 = [(PLPersistedFolderMetadata *)self kind];
  v3 = [v2 intValue] == 3999;

  return v3;
}

- (PLPersistedFolderMetadata)initWithPersistedDataAtURL:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PLPersistedFolderMetadata;
  v5 = [(PLPersistedFolderMetadata *)&v9 init];
  v6 = v5;
  if (v5 && ([(PLPersistedFolderMetadata *)v5 setMetadataURL:v4], ![(PLPersistedFolderMetadata *)v6 _readMetadata]))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (PLPersistedFolderMetadata)initWithPLManagedFolder:(id)a3 pathManager:(id)a4
{
  v7 = a3;
  v8 = a4;
  v19.receiver = self;
  v19.super_class = PLPersistedFolderMetadata;
  v9 = [(PLPersistedFolderMetadata *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, a3);
    [(PLPersistedFolderMetadata *)v10 setInTrash:0];
    v11 = MEMORY[0x1E695DFF8];
    v12 = [v8 privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];

    v14 = MEMORY[0x1E696AEC0];
    v15 = [(PLManagedFolder *)v10->_folder uuid];
    v16 = [v14 stringWithFormat:@"%@.%@", v15, PLFolderMetadataExtension];

    v17 = [v13 URLByAppendingPathComponent:v16];
    [(PLPersistedFolderMetadata *)v10 setMetadataURL:v17];
  }

  return v10;
}

- (PLPersistedFolderMetadata)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLPersistedFolderMetadata.m" lineNumber:69 description:@"Can't initialize a PLPersistedFolderMetadata object using -init."];

  return 0;
}

+ (void)updateChildrenOrderingInFolder:(id)a3 usingChildUUIDs:(id)a4 sourceDescription:(id)a5 includePendingChanges:(BOOL)a6
{
  v6 = a6;
  v35 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v9 childCollections];
  v13 = [v12 valueForKey:@"uuid"];

  v14 = [v10 isEqual:v13];
  v15 = PLMigrationGetLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      v17 = [v13 count];
      v18 = [v9 uuid];
      *buf = 67109378;
      *v34 = v17;
      *&v34[4] = 2112;
      *&v34[6] = v18;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Persisted child collection UUIDs (%d total) match database ordering for folder %@", buf, 0x12u);
    }
  }

  else
  {
    if (v16)
    {
      v19 = [v9 uuid];
      *buf = 138412546;
      *v34 = v19;
      *&v34[8] = 2112;
      *&v34[10] = v11;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Updating children in folder %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    v20 = MEMORY[0x1E695D5E0];
    v21 = +[PLGenericAlbum entityName];
    v15 = [v20 fetchRequestWithEntityName:v21];

    v22 = MEMORY[0x1E696AE18];
    v23 = [v10 array];
    v24 = [v22 predicateWithFormat:@"uuid in %@", v23];
    [v15 setPredicate:v24];

    if (v6)
    {
      [v15 setIncludesPendingChanges:1];
    }

    v25 = [v9 managedObjectContext];
    v32 = 0;
    v26 = [v25 executeFetchRequest:v15 error:&v32];
    v27 = v32;

    if (v26)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __116__PLPersistedFolderMetadata_updateChildrenOrderingInFolder_usingChildUUIDs_sourceDescription_includePendingChanges___block_invoke;
      v30[3] = &unk_1E756EF00;
      v31 = v10;
      v28 = [v26 sortedArrayUsingComparator:v30];

      v29 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v28];
      [v9 addChildCollections:v29];
    }
  }
}

uint64_t __116__PLPersistedFolderMetadata_updateChildrenOrderingInFolder_usingChildUUIDs_sourceDescription_includePendingChanges___block_invoke(uint64_t a1, void *a2, void *a3)
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

+ (BOOL)isValidPath:(id)a3
{
  v3 = [a3 pathExtension];
  v4 = [v3 isEqualToString:PLFolderMetadataExtension];

  return v4;
}

@end