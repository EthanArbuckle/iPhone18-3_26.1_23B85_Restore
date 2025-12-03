@interface PLPersistedFolderMetadata
+ (BOOL)isValidPath:(id)path;
+ (void)updateChildrenOrderingInFolder:(id)folder usingChildUUIDs:(id)ds sourceDescription:(id)description includePendingChanges:(BOOL)changes;
- (BOOL)_readMetadata;
- (BOOL)isProjectAlbumRootFolder;
- (BOOL)isRootFolder;
- (PLPersistedFolderMetadata)init;
- (PLPersistedFolderMetadata)initWithPLManagedFolder:(id)folder pathManager:(id)manager;
- (PLPersistedFolderMetadata)initWithPersistedDataAtURL:(id)l;
- (id)description;
- (id)insertFolderFromDataInManagedObjectContext:(id)context;
- (void)_saveMetadata;
- (void)removePersistedData;
- (void)updateChildrenOrderingInFolder:(id)folder includePendingChanges:(BOOL)changes;
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

  title = [folder title];
  if (title)
  {
    [v4 encodeObject:title forKey:@"title"];
  }

  if (self->_folder)
  {
    selfCopy = self->_folder;
  }

  else
  {
    selfCopy = self;
  }

  kind = [selfCopy kind];
  if (kind)
  {
    [v4 encodeObject:kind forKey:@"kind"];
  }

  if (self->_folder)
  {
    selfCopy2 = self->_folder;
  }

  else
  {
    selfCopy2 = self;
  }

  uuid = [selfCopy2 uuid];
  if (uuid)
  {
    [v4 encodeObject:uuid forKey:@"uuid"];
  }

  v58 = uuid;
  v59 = kind;
  if (self->_folder)
  {
    selfCopy3 = self->_folder;
  }

  else
  {
    selfCopy3 = self;
  }

  cloudGUID = [selfCopy3 cloudGUID];
  if (cloudGUID)
  {
    [v4 encodeObject:cloudGUID forKey:@"cloudGUID"];
  }

  v57 = cloudGUID;
  if (self->_folder)
  {
    selfCopy4 = self->_folder;
  }

  else
  {
    selfCopy4 = self;
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy4, "isPinned")}];
  if (v14)
  {
    [v4 encodeObject:v14 forKey:@"isPinned"];
  }

  v56 = v14;
  if (self->_folder)
  {
    selfCopy5 = self->_folder;
  }

  else
  {
    selfCopy5 = self;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy5, "isPrototype")}];
  if (v16)
  {
    [v4 encodeObject:v16 forKey:@"isPrototype"];
  }

  v55 = v16;
  if (self->_folder)
  {
    selfCopy6 = self->_folder;
  }

  else
  {
    selfCopy6 = self;
  }

  v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy6, "isInTrash")}];
  if (v18)
  {
    [v4 encodeObject:v18 forKey:@"isInTrash"];
  }

  v54 = v18;
  if (self->_folder)
  {
    selfCopy7 = self->_folder;
  }

  else
  {
    selfCopy7 = self;
  }

  v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(selfCopy7, "customSortAscending")}];
  if (v20)
  {
    [v4 encodeObject:v20 forKey:@"customSortAscending"];
  }

  if (self->_folder)
  {
    selfCopy8 = self->_folder;
  }

  else
  {
    selfCopy8 = self;
  }

  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(selfCopy8, "customSortKey")}];
  if (v22)
  {
    [v4 encodeObject:v22 forKey:@"customSortKey"];
  }

  if (self->_folder)
  {
    selfCopy9 = self->_folder;
  }

  else
  {
    selfCopy9 = self;
  }

  lastModifiedDate = [selfCopy9 lastModifiedDate];
  if (lastModifiedDate)
  {
    [v4 encodeObject:lastModifiedDate forKey:@"lastModifiedDate"];
  }

  v53 = v20;
  v25 = self->_folder;
  if (v25)
  {
    v50 = lastModifiedDate;
    v51 = v22;
    v52 = title;
    v49 = v3;
    albums = [(PLManagedFolder *)v25 albums];
    v27 = [albums count];
    v60 = malloc_type_malloc(16 * v27, 0x603215ACuLL);
    if (v27)
    {
      v28 = 0;
      v29 = v60;
      do
      {
        v30 = MEMORY[0x1E69BF320];
        v31 = [albums objectAtIndex:v28];
        uuid2 = [v31 uuid];
        [v30 parseUUIDString:uuid2 uuidBuffer:v29];

        ++v28;
        v29 += 16;
      }

      while (v27 != v28);
    }

    v3 = v49;
  }

  else
  {
    childUUIDs = [(PLPersistedFolderMetadata *)self childUUIDs];
    v27 = [childUUIDs count];

    v34 = malloc_type_malloc(16 * v27, 0xD9E20C35uLL);
    v35 = v34;
    if (!v27)
    {
      goto LABEL_61;
    }

    v50 = lastModifiedDate;
    v51 = v22;
    v52 = title;
    v36 = v3;
    v37 = 0;
    v60 = v34;
    v38 = v34;
    do
    {
      v39 = MEMORY[0x1E69BF320];
      childUUIDs2 = [(PLPersistedFolderMetadata *)self childUUIDs];
      v41 = [childUUIDs2 objectAtIndex:v37];
      [v39 parseUUIDString:v41 uuidBuffer:v38];

      ++v37;
      v38 += 16;
    }

    while (v27 != v37);
    v3 = v36;
  }

  v22 = v51;
  title = v52;
  lastModifiedDate = v50;
  v35 = v60;
LABEL_61:
  v42 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v35 length:16 * v27 freeWhenDone:1];
  [v4 encodeObject:v42 forKey:@"assetUUIDs"];

  v43 = MEMORY[0x1E69BF230];
  encodedData = [v4 encodedData];
  metadataURL = [(PLPersistedFolderMetadata *)self metadataURL];
  [v43 persistMetadata:encodedData fileURL:metadataURL];

  v46 = MEMORY[0x1E69BF238];
  metadataURL2 = [(PLPersistedFolderMetadata *)self metadataURL];
  path = [metadataURL2 path];
  [v46 changeFileOwnerToMobileAtPath:path error:0];

  objc_autoreleasePoolPop(v3);
}

- (BOOL)_readMetadata
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DEF0];
  metadataURL = [(PLPersistedFolderMetadata *)self metadataURL];
  v5 = [v3 dataWithContentsOfURL:metadataURL];

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

      bytes = [v18 bytes];
      if (v19 >= 0x10)
      {
        v23 = bytes;
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
  selfCopy = self;
  if (self->_folder)
  {
    self = self->_folder;
  }

  title = [(PLPersistedFolderMetadata *)self title];
  if (selfCopy->_folder)
  {
    folder = selfCopy->_folder;
  }

  else
  {
    folder = selfCopy;
  }

  kind = [folder kind];
  if (selfCopy->_folder)
  {
    v4 = selfCopy->_folder;
  }

  else
  {
    v4 = selfCopy;
  }

  uuid = [v4 uuid];
  if (selfCopy->_folder)
  {
    v5 = selfCopy->_folder;
  }

  else
  {
    v5 = selfCopy;
  }

  cloudGUID = [v5 cloudGUID];
  if (selfCopy->_folder)
  {
    v6 = selfCopy->_folder;
  }

  else
  {
    v6 = selfCopy;
  }

  v7 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v6, "isPinned")}];
  if (selfCopy->_folder)
  {
    v8 = selfCopy->_folder;
  }

  else
  {
    v8 = selfCopy;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "isPrototype")}];
  if (selfCopy->_folder)
  {
    v10 = selfCopy->_folder;
  }

  else
  {
    v10 = selfCopy;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v10, "isInTrash")}];
  if (selfCopy->_folder)
  {
    v12 = selfCopy->_folder;
  }

  else
  {
    v12 = selfCopy;
  }

  lastModifiedDate = [v12 lastModifiedDate];
  if (selfCopy->_folder)
  {
    v14 = selfCopy->_folder;
  }

  else
  {
    v14 = selfCopy;
  }

  v15 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v14, "customSortAscending")}];
  if (selfCopy->_folder)
  {
    v16 = selfCopy->_folder;
  }

  else
  {
    v16 = selfCopy;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v16, "customSortKey")}];
  v18 = selfCopy->_folder;
  if (v18)
  {
    isFolder = [(PLGenericAlbum *)v18 isFolder];
    v20 = selfCopy->_folder;
    if (isFolder)
    {
      [(PLManagedFolder *)v20 albums];
    }

    else
    {
      [(PLManagedFolder *)v20 assets];
    }
    childUUIDs = ;
  }

  else
  {
    childUUIDs = [(PLPersistedFolderMetadata *)selfCopy childUUIDs];
  }

  v22 = childUUIDs;
  v23 = [childUUIDs count];

  v32.receiver = selfCopy;
  v32.super_class = PLPersistedFolderMetadata;
  v24 = [(PLPersistedFolderMetadata *)&v32 description];
  objectID = [(PLManagedFolder *)selfCopy->_folder objectID];
  v27 = [v24 stringByAppendingFormat:@" album %@ : title:%@, uuid:%@, cloudGUID:%@, kind:%@, pin:%@, prototype:%@, trash:%@, sort:%@ asc:%@, lastModifiedDate:%@, childCount:%lu", objectID, title, uuid, cloudGUID, kind, v7, v9, v11, v15, v17, lastModifiedDate, v23];

  return v27;
}

- (void)updateChildrenOrderingInFolder:(id)folder includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  folderCopy = folder;
  v7 = objc_opt_class();
  childUUIDs = [(PLPersistedFolderMetadata *)self childUUIDs];
  metadataURL = [(PLPersistedFolderMetadata *)self metadataURL];
  path = [metadataURL path];
  [v7 updateChildrenOrderingInFolder:folderCopy usingChildUUIDs:childUUIDs sourceDescription:path includePendingChanges:changesCopy];
}

- (id)insertFolderFromDataInManagedObjectContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  intValue = [(NSNumber *)self->_kind intValue];
  if ((intValue - 3998) < 2)
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
    if (intValue == 1553)
    {
      title = self->_title;
      photoLibrary = [contextCopy photoLibrary];
      v8 = title;
      v9 = 1553;
      goto LABEL_8;
    }

    if (intValue == 4000)
    {
      v6 = self->_title;
      photoLibrary = [contextCopy photoLibrary];
      v8 = v6;
      v9 = 4000;
LABEL_8:
      v12 = [PLManagedFolder insertNewFolderWithTitle:v8 kind:v9 intoLibrary:photoLibrary];

      goto LABEL_12;
    }

    v10 = PLMigrationGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      kind = self->_kind;
      path = [(NSURL *)self->_metadataURL path];
      v16 = 138412546;
      v17 = kind;
      v18 = 2112;
      v19 = path;
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
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  metadataURL = self->_metadataURL;
  v11 = 0;
  v5 = [defaultManager removeItemAtURL:metadataURL error:&v11];
  v6 = v11;

  if ((v5 & 1) == 0)
  {
    v7 = PLUnderlyingPOSIXError();
    code = [v7 code];

    if (code != 2)
    {
      v9 = PLMigrationGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        path = [(NSURL *)self->_metadataURL path];
        *buf = 138412546;
        v13 = path;
        v14 = 2112;
        v15 = v6;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Failed to remove persisted folder metadata %@ %@", buf, 0x16u);
      }
    }
  }
}

- (BOOL)isProjectAlbumRootFolder
{
  kind = [(PLPersistedFolderMetadata *)self kind];
  v3 = [kind intValue] == 3998;

  return v3;
}

- (BOOL)isRootFolder
{
  kind = [(PLPersistedFolderMetadata *)self kind];
  v3 = [kind intValue] == 3999;

  return v3;
}

- (PLPersistedFolderMetadata)initWithPersistedDataAtURL:(id)l
{
  lCopy = l;
  v9.receiver = self;
  v9.super_class = PLPersistedFolderMetadata;
  v5 = [(PLPersistedFolderMetadata *)&v9 init];
  v6 = v5;
  if (v5 && ([(PLPersistedFolderMetadata *)v5 setMetadataURL:lCopy], ![(PLPersistedFolderMetadata *)v6 _readMetadata]))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

- (PLPersistedFolderMetadata)initWithPLManagedFolder:(id)folder pathManager:(id)manager
{
  folderCopy = folder;
  managerCopy = manager;
  v19.receiver = self;
  v19.super_class = PLPersistedFolderMetadata;
  v9 = [(PLPersistedFolderMetadata *)&v19 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_folder, folder);
    [(PLPersistedFolderMetadata *)v10 setInTrash:0];
    v11 = MEMORY[0x1E695DFF8];
    v12 = [managerCopy privateDirectoryWithSubType:4 createIfNeeded:1 error:0];
    v13 = [v11 fileURLWithPath:v12 isDirectory:1];

    v14 = MEMORY[0x1E696AEC0];
    uuid = [(PLManagedFolder *)v10->_folder uuid];
    pLFolderMetadataExtension = [v14 stringWithFormat:@"%@.%@", uuid, PLFolderMetadataExtension];

    v17 = [v13 URLByAppendingPathComponent:pLFolderMetadataExtension];
    [(PLPersistedFolderMetadata *)v10 setMetadataURL:v17];
  }

  return v10;
}

- (PLPersistedFolderMetadata)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PLPersistedFolderMetadata.m" lineNumber:69 description:@"Can't initialize a PLPersistedFolderMetadata object using -init."];

  return 0;
}

+ (void)updateChildrenOrderingInFolder:(id)folder usingChildUUIDs:(id)ds sourceDescription:(id)description includePendingChanges:(BOOL)changes
{
  changesCopy = changes;
  v35 = *MEMORY[0x1E69E9840];
  folderCopy = folder;
  dsCopy = ds;
  descriptionCopy = description;
  childCollections = [folderCopy childCollections];
  v13 = [childCollections valueForKey:@"uuid"];

  v14 = [dsCopy isEqual:v13];
  v15 = PLMigrationGetLog();
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (v14)
  {
    if (v16)
    {
      v17 = [v13 count];
      uuid = [folderCopy uuid];
      *buf = 67109378;
      *v34 = v17;
      *&v34[4] = 2112;
      *&v34[6] = uuid;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Persisted child collection UUIDs (%d total) match database ordering for folder %@", buf, 0x12u);
    }
  }

  else
  {
    if (v16)
    {
      uuid2 = [folderCopy uuid];
      *buf = 138412546;
      *v34 = uuid2;
      *&v34[8] = 2112;
      *&v34[10] = descriptionCopy;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_INFO, "Updating children in folder %@ to match persisted UUID ordering from %@", buf, 0x16u);
    }

    v20 = MEMORY[0x1E695D5E0];
    v21 = +[PLGenericAlbum entityName];
    v15 = [v20 fetchRequestWithEntityName:v21];

    v22 = MEMORY[0x1E696AE18];
    array = [dsCopy array];
    v24 = [v22 predicateWithFormat:@"uuid in %@", array];
    [v15 setPredicate:v24];

    if (changesCopy)
    {
      [v15 setIncludesPendingChanges:1];
    }

    managedObjectContext = [folderCopy managedObjectContext];
    v32 = 0;
    v26 = [managedObjectContext executeFetchRequest:v15 error:&v32];
    v27 = v32;

    if (v26)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __116__PLPersistedFolderMetadata_updateChildrenOrderingInFolder_usingChildUUIDs_sourceDescription_includePendingChanges___block_invoke;
      v30[3] = &unk_1E756EF00;
      v31 = dsCopy;
      v28 = [v26 sortedArrayUsingComparator:v30];

      v29 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v28];
      [folderCopy addChildCollections:v29];
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

+ (BOOL)isValidPath:(id)path
{
  pathExtension = [path pathExtension];
  v4 = [pathExtension isEqualToString:PLFolderMetadataExtension];

  return v4;
}

@end