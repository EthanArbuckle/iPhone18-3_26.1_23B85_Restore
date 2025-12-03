@interface PLProjectAlbum
+ (BOOL)cleanupOrphanedProjectPreviewImagesInLibrary:(id)library error:(id *)error;
+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d documentType:(id)type projectExtensionIdentifier:(id)identifier;
+ (id)validKindsForPersistence;
- (BOOL)setProjectPreviewImageData:(id)data error:(id *)error;
- (id)_previewImageFilename;
- (id)duplicateProjectPreviewImageData:(id)data error:(id *)error;
- (id)payloadForChangedKeys:(id)keys;
- (id)projectPreviewImageData;
- (void)awakeFromInsert;
- (void)prepareForDeletion;
- (void)willSave;
@end

@implementation PLProjectAlbum

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLManagedAlbum *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLProjectAlbumJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_previewImageFilename
{
  projectRenderUuid = [(PLProjectAlbum *)self projectRenderUuid];
  v3 = [projectRenderUuid stringByAppendingPathExtension:@"tiff"];

  return v3;
}

- (BOOL)setProjectPreviewImageData:(id)data error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  pathManager = [photoLibrary pathManager];
  v39 = 0;
  v9 = 1;
  v10 = [pathManager photoDirectoryWithType:16 createIfNeeded:1 error:&v39];
  v11 = v39;

  if (!v10)
  {
LABEL_23:
    if (!error)
    {
      goto LABEL_25;
    }

LABEL_24:
    v36 = v11;
    *error = v11;
    goto LABEL_25;
  }

  if (!dataCopy)
  {
    goto LABEL_14;
  }

  v12 = CGImageSourceCreateWithData(dataCopy, 0);
  if (!v12)
  {
    v31 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v41 = @"Unable to read image data";
    v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v33 = [v31 errorWithDomain:@"com.apple.photos.backend" code:0 userInfo:v32];

LABEL_22:
    v9 = 0;
    v11 = v33;
    goto LABEL_23;
  }

  v13 = v12;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(v12, 0, 0);
  if (!ImageAtIndex)
  {
    v34 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v43 = @"Unable to read image data";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v33 = [v34 errorWithDomain:@"com.apple.photos.backend" code:0 userInfo:v35];

    CFRelease(v13);
    goto LABEL_22;
  }

  v15 = ImageAtIndex;
  Width = CGImageGetWidth(ImageAtIndex);
  Height = CGImageGetHeight(v15);
  v18 = Width == 1024 && Height == 1024;
  v19 = v18;
  if (!v18)
  {
    v38 = v19;
    v20 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A578];
    1024 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid image size, project preview images must be %ld x %ld", 1024, 1024];
    v45[0] = 1024;
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v23 = [v20 errorWithDomain:@"com.apple.photos.backend" code:0 userInfo:v22];

    v11 = v23;
    v19 = v38;
  }

  CGImageRelease(v15);
  CFRelease(v13);
  if (!v19)
  {
    v9 = 0;
    if (!error)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_14:
  projectRenderUuid = [(PLProjectAlbum *)self projectRenderUuid];

  if (projectRenderUuid)
  {
    _previewImageFilename = [(PLProjectAlbum *)self _previewImageFilename];
    v26 = [v10 stringByAppendingPathComponent:_previewImageFilename];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtPath:v26 error:0];

    [(PLProjectAlbum *)self setProjectRenderUuid:0];
  }

  if (dataCopy)
  {
    uUIDString = [MEMORY[0x1E69BF320] UUIDString];
    [(PLProjectAlbum *)self setProjectRenderUuid:uUIDString];

    _previewImageFilename2 = [(PLProjectAlbum *)self _previewImageFilename];
    v30 = [v10 stringByAppendingPathComponent:_previewImageFilename2];

    [(__CFData *)dataCopy writeToFile:v30 atomically:0];
  }

  v9 = 1;
  if (error)
  {
    goto LABEL_24;
  }

LABEL_25:

  return v9;
}

- (id)duplicateProjectPreviewImageData:(id)data error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  _previewImageFilename = [(PLProjectAlbum *)self _previewImageFilename];
  if (_previewImageFilename)
  {
    v8 = dataCopy;
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    v11 = [pathManager photoDirectoryWithType:16 createIfNeeded:1 error:error];

    if (v11)
    {
      v12 = [v11 stringByAppendingPathComponent:_previewImageFilename];
      pathExtension = [v12 pathExtension];
      v14 = [v8 stringByAppendingPathExtension:pathExtension];
      v15 = [v11 stringByAppendingPathComponent:v14];

      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v23 = 0;
      v17 = [defaultManager copyItemAtPath:v12 toPath:v15 error:&v23];
      v18 = v23;

      if ((v17 & 1) == 0)
      {
        v19 = PLBackendGetLog();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v25 = v18;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Unable to copy rendered preview data with error %@", buf, 0xCu);
        }

        if (error)
        {
          v20 = v18;
          v8 = 0;
          *error = v18;
        }

        else
        {
          v8 = 0;
        }
      }

      v8 = v8;
      v21 = v8;
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)projectPreviewImageData
{
  projectRenderUuid = [(PLProjectAlbum *)self projectRenderUuid];

  if (projectRenderUuid)
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    v6 = [pathManager photoDirectoryWithType:16];

    _previewImageFilename = [(PLProjectAlbum *)self _previewImageFilename];
    v8 = [v6 stringByAppendingPathComponent:_previewImageFilename];

    v9 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)prepareForDeletion
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [(PLProjectAlbum *)self setProjectPreviewImageData:0 error:&v8];
  v4 = v8;
  if (!v3)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      uuid = [(PLProjectAlbum *)self uuid];
      *buf = 138412546;
      v10 = uuid;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Clean up project preview image failed for project %@, error %@", buf, 0x16u);
    }
  }

  v7.receiver = self;
  v7.super_class = PLProjectAlbum;
  [(PLManagedAlbum *)&v7 prepareForDeletion];
}

- (void)willSave
{
  v9.receiver = self;
  v9.super_class = PLProjectAlbum;
  [(PLManagedAlbum *)&v9 willSave];
  managedObjectContext = [(PLProjectAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_class();
    photoLibrary = [managedObjectContext photoLibrary];
    v6 = [v4 projectAlbumRootFolderInLibrary:photoLibrary];

    if ([(PLProjectAlbum *)self isInserted])
    {
      childCollections = [v6 childCollections];
      v8 = [childCollections containsObject:self];

      if ((v8 & 1) == 0)
      {
        [v6 addChildCollectionsObject:self];
      }
    }
  }
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = PLProjectAlbum;
  [(PLGenericAlbum *)&v3 awakeFromInsert];
  [(PLGenericAlbum *)self setKindValue:1508];
}

+ (id)validKindsForPersistence
{
  pl_dispatch_once();
  v2 = validKindsForPersistence_pl_once_object_21;

  return v2;
}

void __42__PLProjectAlbum_validKindsForPersistence__block_invoke()
{
  v0 = [MEMORY[0x1E695E0F0] copy];
  v1 = validKindsForPersistence_pl_once_object_21;
  validKindsForPersistence_pl_once_object_21 = v0;
}

+ (BOOL)cleanupOrphanedProjectPreviewImagesInLibrary:(id)library error:(id *)error
{
  v82[5] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  pathManager = [libraryCopy pathManager];
  v7 = [pathManager photoDirectoryWithType:16 createIfNeeded:0 error:0];

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v76 = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Running maintenance on project render directory: %@", buf, 0xCu);
  }

  v73 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:v7 isDirectory:&v73];

  if (!v10)
  {
    v22 = 0;
    v43 = 1;
    if (!error)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  if (v73 == 1)
  {
    v11 = +[PLProjectAlbum fetchRequest];
    v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != nil", @"projectRenderUuid"];
    v13 = MEMORY[0x1E696AE18];
    v82[0] = @"com.apple.photos.projects.legacy.calendar";
    v82[1] = @"com.apple.photos.projects.legacy.prints";
    v82[2] = @"com.apple.photos.projects.legacy.card";
    v82[3] = @"com.apple.photos.projects.legacy.book";
    v82[4] = @"com.apple.photos.projects.slideshow";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:5];
    v15 = [v13 predicateWithFormat:@"NOT %K IN %@", @"projectDocumentType", v14];

    v16 = MEMORY[0x1E696AB28];
    v81[0] = v12;
    v81[1] = v15;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v81 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];
    [v11 setPredicate:v18];

    v80 = @"projectRenderUuid";
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];
    [v11 setPropertiesToFetch:v19];

    [v11 setFetchBatchSize:100];
    managedObjectContext = [libraryCopy managedObjectContext];
    v72 = 0;
    v21 = [managedObjectContext executeFetchRequest:v11 error:&v72];
    v22 = v72;

    v58 = v12;
    v59 = v21;
    v57 = v15;
    if (v21)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v71 = v22;
      v24 = [defaultManager2 contentsOfDirectoryAtPath:v7 error:&v71];
      v25 = v71;

      v26 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v24];
      if (v24)
      {
        v53 = v25;
        v54 = v11;
        v61 = v7;
        errorCopy = error;
        v56 = libraryCopy;
        v69 = 0u;
        v70 = 0u;
        v67 = 0u;
        v68 = 0u;
        v27 = v59;
        v28 = [v27 countByEnumeratingWithState:&v67 objects:v79 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v68;
          v60 = v26;
          do
          {
            for (i = 0; i != v29; ++i)
            {
              if (*v68 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = *(*(&v67 + 1) + 8 * i);
              v33 = objc_autoreleasePoolPush();
              _previewImageFilename = [v32 _previewImageFilename];
              if ([v26 containsObject:_previewImageFilename])
              {
                [v26 removeObject:_previewImageFilename];
              }

              else
              {
                v35 = PLBackendGetLog();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  [v32 uuid];
                  v37 = v36 = v27;
                  [v32 projectRenderUuid];
                  v39 = v38 = v30;
                  *buf = 138412546;
                  v76 = v37;
                  v77 = 2112;
                  v78 = v39;
                  _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Project %@ has a render uuid (%@) but is missing corresponding image file, resetting render uuid", buf, 0x16u);

                  v30 = v38;
                  v27 = v36;
                  v26 = v60;
                }

                [v32 setProjectRenderUuid:0];
              }

              objc_autoreleasePoolPop(v33);
            }

            v29 = [v27 countByEnumeratingWithState:&v67 objects:v79 count:16];
          }

          while (v29);
        }

        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v26 = v26;
        v40 = [v26 countByEnumeratingWithState:&v63 objects:v74 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v64;
          v43 = 1;
          v44 = v53;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v64 != v42)
              {
                objc_enumerationMutation(v26);
              }

              v46 = *(*(&v63 + 1) + 8 * j);
              if (([v46 hasPrefix:@"."] & 1) == 0)
              {
                v47 = [v61 stringByAppendingPathComponent:v46];
                v48 = PLBackendGetLog();
                if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v76 = v46;
                  _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_DEFAULT, "Removing orphaned project render image: %@", buf, 0xCu);
                }

                defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
                v62 = v44;
                v43 = [defaultManager3 removeItemAtPath:v47 error:&v62];
                v50 = v62;

                v44 = v50;
              }
            }

            v41 = [v26 countByEnumeratingWithState:&v63 objects:v74 count:16];
          }

          while (v41);
        }

        else
        {
          v43 = 1;
          v44 = v53;
        }

        v22 = v44;
        error = errorCopy;
        libraryCopy = v56;
        v11 = v54;
        v7 = v61;
        goto LABEL_41;
      }

      v22 = v25;
    }

    else
    {
      v26 = 0;
    }

    v43 = 0;
LABEL_41:

    goto LABEL_42;
  }

  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v76 = v7;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Project data directory path points to a file: %@", buf, 0xCu);
  }

  v22 = 0;
  v43 = 1;
LABEL_42:

  if (error)
  {
LABEL_43:
    v51 = v22;
    *error = v22;
  }

LABEL_44:

  return v43 & 1;
}

+ (id)insertIntoPhotoLibrary:(id)library withUUID:(id)d documentType:(id)type projectExtensionIdentifier:(id)identifier
{
  dCopy = d;
  typeCopy = type;
  identifierCopy = identifier;
  managedObjectContext = [library managedObjectContext];
  v13 = [(PLManagedObject *)PLProjectAlbum insertInManagedObjectContext:managedObjectContext];

  if (v13)
  {
    [v13 setUuid:dCopy];
    [v13 setProjectDocumentType:typeCopy];
    [v13 setProjectExtensionIdentifier:identifierCopy];
  }

  return v13;
}

@end