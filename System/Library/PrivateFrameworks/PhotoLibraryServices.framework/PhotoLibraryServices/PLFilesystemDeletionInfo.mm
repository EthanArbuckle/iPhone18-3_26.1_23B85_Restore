@interface PLFilesystemDeletionInfo
+ (id)deletionInfoWithAsset:(id)a3;
- (PLFilesystemDeletionInfo)initWithObjectIDURI:(id)a3 directory:(id)a4 filename:(id)a5 fileURLs:(id)a6 thumbnailIndex:(unint64_t)a7 thumbnailIdentifier:(id)a8 uuid:(id)a9 timestamp:(unint64_t)a10;
- (id)description;
@end

@implementation PLFilesystemDeletionInfo

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PLFilesystemDeletionInfo;
  v4 = [(PLFilesystemDeletionInfo *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: %@, %@, [%lu, %@] %@ %llu", v4, self->_objectIDURI, self->_fileURLs, self->_thumbnailIndex, self->_thumbnailIdentifier, self->_uuid, self->_timestamp];

  return v5;
}

- (PLFilesystemDeletionInfo)initWithObjectIDURI:(id)a3 directory:(id)a4 filename:(id)a5 fileURLs:(id)a6 thumbnailIndex:(unint64_t)a7 thumbnailIdentifier:(id)a8 uuid:(id)a9 timestamp:(unint64_t)a10
{
  v30 = a3;
  v32 = a4;
  v31 = a5;
  v17 = a6;
  v18 = a8;
  v19 = a9;
  v38.receiver = self;
  v38.super_class = PLFilesystemDeletionInfo;
  v20 = [(PLFilesystemDeletionInfo *)&v38 init];
  if (!v20)
  {
    goto LABEL_11;
  }

  if (a7 != 0x7FFFFFFFFFFFFFFFLL || v18)
  {
    if (!v19)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v21 = [v17 count];
  v22 = 0;
  if (v19 && v21)
  {
LABEL_8:
    if (!PLIsAssetsd() || (v34 = 0, v35 = &v34, v36 = 0x2020000000, v37 = 1, pl_dispatch_once(), v33 = v30, pl_dispatch_sync(), v23 = *(v35 + 24), v33, _Block_object_dispose(&v34, 8), (v23 & 1) != 0))
    {
      v24 = [v32 copy];
      directory = v20->_directory;
      v20->_directory = v24;

      v26 = [v31 copy];
      filename = v20->_filename;
      v20->_filename = v26;

      objc_storeStrong(&v20->_objectIDURI, a3);
      objc_storeStrong(&v20->_fileURLs, a6);
      v20->_thumbnailIndex = v29;
      objc_storeStrong(&v20->_thumbnailIdentifier, a8);
      objc_storeStrong(&v20->_uuid, a9);
      v20->_timestamp = a10;
LABEL_11:
      v22 = v20;
      goto LABEL_13;
    }

LABEL_12:
    v22 = 0;
  }

LABEL_13:

  return v22;
}

uint64_t __126__PLFilesystemDeletionInfo_initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp___block_invoke_2(uint64_t a1)
{
  result = [initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp__processedDeletions containsObject:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v3 = initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp__processedDeletions;
    v4 = *(a1 + 32);

    return [v3 addObject:v4];
  }

  return result;
}

void __126__PLFilesystemDeletionInfo_initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.assetsd.filesystemDeletionInfo.isolation", 0);
  v1 = initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp__filesystemDeletionInfoIsolation;
  initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp__filesystemDeletionInfoIsolation = v0;

  v2 = objc_opt_new();
  v3 = initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp__processedDeletions;
  initWithObjectIDURI_directory_filename_fileURLs_thumbnailIndex_thumbnailIdentifier_uuid_timestamp__processedDeletions = v2;
}

+ (id)deletionInfoWithAsset:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v16 = 0;
    goto LABEL_22;
  }

  v5 = [v3 directory];
  v6 = [v4 filename];
  v7 = [v4 thumbnailIdentifier];
  if ([v6 length] && objc_msgSend(v5, "length"))
  {
    v8 = [v4 allFileURLs];
    if (([v5 hasPrefix:@"DCIM"] & 1) == 0)
    {
      v28 = v7;

      v6 = 0;
      v5 = 0;
LABEL_20:
      v17 = [PLFilesystemDeletionInfo alloc];
      v18 = [v4 objectID];
      v19 = [v18 URIRepresentation];
      v20 = [v8 allObjects];
      v21 = [v4 effectiveThumbnailIndex];
      v22 = [v4 uuid];
      v23 = mach_absolute_time();
      v24 = v21;
      v7 = v28;
      v16 = [(PLFilesystemDeletionInfo *)v17 initWithObjectIDURI:v19 directory:v5 filename:v6 fileURLs:v20 thumbnailIndex:v24 thumbnailIdentifier:v28 uuid:v22 timestamp:v23];

      goto LABEL_21;
    }

    if ([v8 count])
    {
      if (PLIsAssetsd())
      {
        v9 = MEMORY[0x1E695D5E0];
        v10 = +[PLManagedAsset entityName];
        v11 = [v9 fetchRequestWithEntityName:v10];

        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"directory = %@ AND filename = %@", v5, v6];
        [v11 setPredicate:v12];

        [v11 setIncludesPropertyValues:0];
        [v11 setIncludesPendingChanges:0];
        v13 = [v4 managedObjectContext];
        v14 = [v13 executeFetchRequest:v11 error:0];

        if ([v14 count] && objc_msgSend(v14, "indexOfObjectIdenticalTo:", v4) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = PLBackendGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v30 = v8;
            v31 = 2112;
            v32 = v4;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Denying attempt to delete file paths %@ from %@ since we found duplicates %@", buf, 0x20u);
          }

          v8 = 0;
          v7 = 0;
        }
      }
    }

    else
    {

      v5 = 0;
      v6 = 0;
    }

    if ([v4 couldBeStoredInDCIM])
    {
      v28 = v7;
      goto LABEL_20;
    }

    v26 = PLBackendGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [v4 mainFileURL];
      *buf = 138412546;
      v30 = v4;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Denying attempt to delete %@ from %@", buf, 0x16u);
    }
  }

  else
  {
  }

  v16 = 0;
LABEL_21:

LABEL_22:

  return v16;
}

@end