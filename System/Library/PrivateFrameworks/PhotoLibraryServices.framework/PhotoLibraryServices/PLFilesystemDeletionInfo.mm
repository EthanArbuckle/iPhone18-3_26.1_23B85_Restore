@interface PLFilesystemDeletionInfo
+ (id)deletionInfoWithAsset:(id)asset;
- (PLFilesystemDeletionInfo)initWithObjectIDURI:(id)i directory:(id)directory filename:(id)filename fileURLs:(id)ls thumbnailIndex:(unint64_t)index thumbnailIdentifier:(id)identifier uuid:(id)uuid timestamp:(unint64_t)self0;
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

- (PLFilesystemDeletionInfo)initWithObjectIDURI:(id)i directory:(id)directory filename:(id)filename fileURLs:(id)ls thumbnailIndex:(unint64_t)index thumbnailIdentifier:(id)identifier uuid:(id)uuid timestamp:(unint64_t)self0
{
  iCopy = i;
  directoryCopy = directory;
  filenameCopy = filename;
  lsCopy = ls;
  identifierCopy = identifier;
  uuidCopy = uuid;
  v38.receiver = self;
  v38.super_class = PLFilesystemDeletionInfo;
  v20 = [(PLFilesystemDeletionInfo *)&v38 init];
  if (!v20)
  {
    goto LABEL_11;
  }

  if (index != 0x7FFFFFFFFFFFFFFFLL || identifierCopy)
  {
    if (!uuidCopy)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v21 = [lsCopy count];
  v22 = 0;
  if (uuidCopy && v21)
  {
LABEL_8:
    if (!PLIsAssetsd() || (v34 = 0, v35 = &v34, v36 = 0x2020000000, v37 = 1, pl_dispatch_once(), v33 = iCopy, pl_dispatch_sync(), v23 = *(v35 + 24), v33, _Block_object_dispose(&v34, 8), (v23 & 1) != 0))
    {
      v24 = [directoryCopy copy];
      directory = v20->_directory;
      v20->_directory = v24;

      v26 = [filenameCopy copy];
      filename = v20->_filename;
      v20->_filename = v26;

      objc_storeStrong(&v20->_objectIDURI, i);
      objc_storeStrong(&v20->_fileURLs, ls);
      v20->_thumbnailIndex = v29;
      objc_storeStrong(&v20->_thumbnailIdentifier, identifier);
      objc_storeStrong(&v20->_uuid, uuid);
      v20->_timestamp = timestamp;
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

+ (id)deletionInfoWithAsset:(id)asset
{
  v35 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v4 = assetCopy;
  if (!assetCopy)
  {
    v16 = 0;
    goto LABEL_22;
  }

  directory = [assetCopy directory];
  filename = [v4 filename];
  thumbnailIdentifier = [v4 thumbnailIdentifier];
  if ([filename length] && objc_msgSend(directory, "length"))
  {
    allFileURLs = [v4 allFileURLs];
    if (([directory hasPrefix:@"DCIM"] & 1) == 0)
    {
      v28 = thumbnailIdentifier;

      filename = 0;
      directory = 0;
LABEL_20:
      v17 = [PLFilesystemDeletionInfo alloc];
      objectID = [v4 objectID];
      uRIRepresentation = [objectID URIRepresentation];
      allObjects = [allFileURLs allObjects];
      effectiveThumbnailIndex = [v4 effectiveThumbnailIndex];
      uuid = [v4 uuid];
      v23 = mach_absolute_time();
      v24 = effectiveThumbnailIndex;
      thumbnailIdentifier = v28;
      v16 = [(PLFilesystemDeletionInfo *)v17 initWithObjectIDURI:uRIRepresentation directory:directory filename:filename fileURLs:allObjects thumbnailIndex:v24 thumbnailIdentifier:v28 uuid:uuid timestamp:v23];

      goto LABEL_21;
    }

    if ([allFileURLs count])
    {
      if (PLIsAssetsd())
      {
        v9 = MEMORY[0x1E695D5E0];
        v10 = +[PLManagedAsset entityName];
        v11 = [v9 fetchRequestWithEntityName:v10];

        v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"directory = %@ AND filename = %@", directory, filename];
        [v11 setPredicate:v12];

        [v11 setIncludesPropertyValues:0];
        [v11 setIncludesPendingChanges:0];
        managedObjectContext = [v4 managedObjectContext];
        v14 = [managedObjectContext executeFetchRequest:v11 error:0];

        if ([v14 count] && objc_msgSend(v14, "indexOfObjectIdenticalTo:", v4) == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = PLBackendGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v30 = allFileURLs;
            v31 = 2112;
            v32 = v4;
            v33 = 2112;
            v34 = v14;
            _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Denying attempt to delete file paths %@ from %@ since we found duplicates %@", buf, 0x20u);
          }

          allFileURLs = 0;
          thumbnailIdentifier = 0;
        }
      }
    }

    else
    {

      directory = 0;
      filename = 0;
    }

    if ([v4 couldBeStoredInDCIM])
    {
      v28 = thumbnailIdentifier;
      goto LABEL_20;
    }

    v26 = PLBackendGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      mainFileURL = [v4 mainFileURL];
      *buf = 138412546;
      v30 = v4;
      v31 = 2112;
      v32 = mainFileURL;
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