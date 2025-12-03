@interface PLCloudSharingViewedStateChangeJob
+ (void)markAlbum:(id)album asHavingUnseenContent:(BOOL)content;
+ (void)markAssetCollection:(id)collection asHavingUnreadComments:(BOOL)comments inAlbum:(id)album;
+ (void)setLastViewedCommentDate:(id)date forAssetCollection:(id)collection inAlbum:(id)album;
+ (void)updateUnviewedAssetCollectionCount:(int)count forAlbum:(id)album;
- (id)description;
- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager;
- (void)_executeAlbumUnviewedAssetCountChangedWithGroup;
- (void)_executeAlbumViewedStateChanged;
- (void)_executeAssetCommentsReadStateChangedWithGroup;
- (void)_executeAssetLastViewedCommentDateChangedWithGroup;
- (void)encodeToXPCObject:(id)object;
- (void)runDaemonSide;
@end

@implementation PLCloudSharingViewedStateChangeJob

- (void)_executeAssetLastViewedCommentDateChangedWithGroup
{
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __88__PLCloudSharingViewedStateChangeJob__executeAssetLastViewedCommentDateChangedWithGroup__block_invoke;
  v5[3] = &unk_1E7578848;
  v5[4] = self;
  v6 = transientPhotoLibrary;
  v4 = transientPhotoLibrary;
  [v4 performTransactionAndWait:v5];
}

void __88__PLCloudSharingViewedStateChangeJob__executeAssetLastViewedCommentDateChangedWithGroup__block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DEC8];
  v3 = [*(a1 + 32) assetCollectionGUID];
  v4 = [v2 arrayWithObject:v3];
  v5 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v4 inLibrary:*(a1 + 40)];

  if ([v5 count] >= 2)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) assetCollectionGUID];
      v18 = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one asset with cloudAssetGUID %@, returning last one in array %@", &v18, 0x16u);
    }
  }

  v8 = [v5 lastObject];
  if (!v8)
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = *(a1 + 32);
      v12 = v10;
      v13 = [v11 assetCollectionGUID];
      v18 = 138412546;
      v19 = v10;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "ERROR %@:couldn't find asset %@", &v18, 0x16u);
    }
  }

  v14 = [*(a1 + 32) assetCollectionLastViewedCommentDate];
  if (v8)
  {
    v15 = [v8 cloudLastViewedCommentDate];
    [v15 timeIntervalSinceDate:v14];
    v17 = fabs(v16);

    if (v17 > 1.0)
    {
      [v8 setCloudLastViewedCommentDate:v14];
    }
  }
}

- (void)_executeAssetCommentsReadStateChangedWithGroup
{
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__PLCloudSharingViewedStateChangeJob__executeAssetCommentsReadStateChangedWithGroup__block_invoke;
  v5[3] = &unk_1E7578848;
  v5[4] = self;
  v6 = transientPhotoLibrary;
  v4 = transientPhotoLibrary;
  [v4 performTransactionAndWait:v5];
}

void __84__PLCloudSharingViewedStateChangeJob__executeAssetCommentsReadStateChangedWithGroup__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DEC8];
  v3 = [*(a1 + 32) assetCollectionGUID];
  v4 = [v2 arrayWithObject:v3];
  v5 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v4 inLibrary:*(a1 + 40)];

  if ([v5 count] >= 2)
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 32) assetCollectionGUID];
      v16 = 138412546;
      v17 = v7;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "WARNING: Found more than one asset with cloudAssetGUID %@, returning last one in array %@", &v16, 0x16u);
    }
  }

  v8 = [v5 lastObject];
  if (v8)
  {
    v9 = [*(a1 + 32) assetCollectionHasUnreadComments];
    if (v9 != [v8 cloudHasUnseenComments])
    {
      [v8 setCloudHasUnseenComments:v9];
      v10 = +[PLNotificationManager sharedManager];
      [v10 noteSharedAssetCommentsUnreadStatusDidChange:v8];
    }
  }

  else
  {
    v11 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = *(a1 + 32);
      v14 = v12;
      v15 = [v13 assetCollectionGUID];
      v16 = 138412546;
      v17 = v12;
      v18 = 2112;
      v19 = v15;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "ERROR %@:couldn't find asset %@", &v16, 0x16u);
    }

    [*(a1 + 32) assetCollectionHasUnreadComments];
  }
}

- (void)_executeAlbumUnviewedAssetCountChangedWithGroup
{
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PLCloudSharingViewedStateChangeJob__executeAlbumUnviewedAssetCountChangedWithGroup__block_invoke;
  v5[3] = &unk_1E7578848;
  v5[4] = self;
  v6 = transientPhotoLibrary;
  v4 = transientPhotoLibrary;
  [v4 performTransactionAndWait:v5];
}

void __85__PLCloudSharingViewedStateChangeJob__executeAlbumUnviewedAssetCountChangedWithGroup__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) albumGUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) albumUnviewedAssetCount];
    if (v5 != [v4 unseenAssetsCount])
    {
      [v4 setUnseenAssetsCount:v5];
    }
  }

  else
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 albumGUID];
      v11 = 138412546;
      v12 = v7;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "ERROR %@:couldn't find sharedstream collection share %@", &v11, 0x16u);
    }

    [*(a1 + 32) albumUnviewedAssetCount];
  }
}

- (void)_executeAlbumViewedStateChanged
{
  transientPhotoLibrary = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x3032000000;
  v10[3] = __Block_byref_object_copy__91511;
  v10[4] = __Block_byref_object_dispose__91512;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PLCloudSharingViewedStateChangeJob__executeAlbumViewedStateChanged__block_invoke;
  v6[3] = &unk_1E7578898;
  v8 = v10;
  v6[4] = self;
  v4 = transientPhotoLibrary;
  v7 = v4;
  v9 = v12;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__PLCloudSharingViewedStateChangeJob__executeAlbumViewedStateChanged__block_invoke_61;
  v5[3] = &unk_1E7575650;
  v5[4] = v12;
  v5[5] = v10;
  [v4 performTransactionAndWait:v6 completionHandler:v5];

  _Block_object_dispose(v10, 8);
  _Block_object_dispose(v12, 8);
}

void *__69__PLCloudSharingViewedStateChangeJob__executeAlbumViewedStateChanged__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) albumGUID];
  v3 = [*(a1 + 40) managedObjectContext];
  v4 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v2 includeTrashed:0 inManagedObjectContext:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      v10 = v8;
      v11 = [v9 albumGUID];
      v22 = 138412546;
      v23 = v8;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "ERROR %@:couldn't find sharedstream collection share %@", &v22, 0x16u);
    }
  }

  v12 = [*(a1 + 32) albumHasUnseenContent];
  if (v12)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  result = *(*(*(a1 + 48) + 8) + 40);
  if (result)
  {
    result = [result unseenContentState];
    if (result != v13)
    {
      v15 = PLPhotoSharingGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = objc_opt_class();
        v17 = *(*(*(a1 + 48) + 8) + 40);
        v18 = v16;
        v19 = [v17 title];
        v20 = v19;
        v21 = @"NO";
        v22 = 138412802;
        v23 = v16;
        v24 = 2112;
        if (v12)
        {
          v21 = @"YES";
        }

        v25 = v19;
        v26 = 2112;
        v27 = v21;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "%@ : _executeAlbumViewedStateChanged marking album %@ setUnseenContentState:%@", &v22, 0x20u);
      }

      result = [*(*(*(a1 + 48) + 8) + 40) setUnseenContentState:v13];
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }

  return result;
}

void __69__PLCloudSharingViewedStateChangeJob__executeAlbumViewedStateChanged__block_invoke_61(uint64_t a1)
{
  if (*(*(*(a1 + 32) + 8) + 24) == 1)
  {
    v3 = +[PLNotificationManager sharedManager];
    [v3 noteCollectionShareUnseenStatusDidChange:*(*(*(a1 + 40) + 8) + 40)];
  }
}

- (void)runDaemonSide
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    selfCopy = self;
    v4 = v11;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharingViewedStateChangeJob runDaemonSide]"];
  lowPriorityOperationQueue = [objc_opt_class() lowPriorityOperationQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__PLCloudSharingViewedStateChangeJob_runDaemonSide__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [lowPriorityOperationQueue addOperationWithBlock:v8];
}

void __51__PLCloudSharingViewedStateChangeJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) jobType];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      [*(a1 + 32) _executeAssetCommentsReadStateChangedWithGroup];
      goto LABEL_13;
    }

    if (v3 == 4)
    {
      [*(a1 + 32) _executeAssetLastViewedCommentDateChangedWithGroup];
      goto LABEL_13;
    }
  }

  else
  {
    if (v3 == 1)
    {
      [*(a1 + 32) _executeAlbumViewedStateChanged];
      goto LABEL_13;
    }

    if (v3 == 2)
    {
      [*(a1 + 32) _executeAlbumUnviewedAssetCountChangedWithGroup];
      goto LABEL_13;
    }
  }

  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = *(a1 + 32);
    v7 = v5;
    *buf = 138412546;
    v10 = v5;
    v11 = 2048;
    v12 = [v6 jobType];
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "ERROR %@:invalid job type: %lld", buf, 0x16u);
  }

LABEL_13:
  v8.receiver = *(a1 + 32);
  v8.super_class = PLCloudSharingViewedStateChangeJob;
  objc_msgSendSuper2(&v8, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (id)description
{
  jobType = [(PLCloudSharingViewedStateChangeJob *)self jobType];
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (jobType > 2)
  {
    if (jobType == 3)
    {
      albumGUID = [(PLCloudSharingViewedStateChangeJob *)self albumGUID];
      assetCollectionGUID = [(PLCloudSharingViewedStateChangeJob *)self assetCollectionGUID];
      assetCollectionHasUnreadComments = [(PLCloudSharingViewedStateChangeJob *)self assetCollectionHasUnreadComments];
      v13 = @"NO";
      if (assetCollectionHasUnreadComments)
      {
        v13 = @"YES";
      }

      v9 = [v4 stringWithFormat:@"%@ (PLViewedStateChangeAssetCommentsReadState albumGUID=%@ collectionGUID=%@ hasUnreadComments=%@) ", v5, albumGUID, assetCollectionGUID, v13];
    }

    else
    {
      if (jobType != 4)
      {
        goto LABEL_8;
      }

      albumGUID = [(PLCloudSharingViewedStateChangeJob *)self albumGUID];
      assetCollectionGUID = [(PLCloudSharingViewedStateChangeJob *)self assetCollectionGUID];
      assetCollectionLastViewedCommentDate = [(PLCloudSharingViewedStateChangeJob *)self assetCollectionLastViewedCommentDate];
      v9 = [v4 stringWithFormat:@"%@ (PLViewedStateChangeAssetLastViewedCommentDate albumGUID=%@ collectionGUID=%@ lasViewedCommentDate=%@) ", v5, albumGUID, assetCollectionGUID, assetCollectionLastViewedCommentDate];
    }

    goto LABEL_17;
  }

  if (jobType == 1)
  {
    albumGUID = [(PLCloudSharingViewedStateChangeJob *)self albumGUID];
    albumHasUnseenContent = [(PLCloudSharingViewedStateChangeJob *)self albumHasUnseenContent];
    v11 = @"NO";
    if (albumHasUnseenContent)
    {
      v11 = @"YES";
    }

    [v4 stringWithFormat:@"%@ (PLViewedStateChangeAlbumReadState albumGUID=%@ hasUnseenContent=%@) ", v5, albumGUID, v11];
    goto LABEL_12;
  }

  if (jobType != 2)
  {
LABEL_8:
    v9 = [v4 stringWithFormat:@"%@ unknown job type %lld ", v5, -[PLCloudSharingViewedStateChangeJob jobType](self, "jobType")];
    goto LABEL_18;
  }

  albumGUID = [(PLCloudSharingViewedStateChangeJob *)self albumGUID];
  [v4 stringWithFormat:@"%@ (PLViewedStateChangeAlbumUnviewedAssetCount albumGUID=%@ unviewedAssetCollectionCount=%lld) ", v5, albumGUID, -[PLCloudSharingViewedStateChangeJob albumUnviewedAssetCount](self, "albumUnviewedAssetCount")];
  v9 = LABEL_12:;
LABEL_17:

LABEL_18:

  return v9;
}

- (id)initFromXPCObject:(id)object libraryServicesManager:(id)manager
{
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = PLCloudSharingViewedStateChangeJob;
  v7 = [(PLCloudSharingJob *)&v12 initFromXPCObject:objectCopy libraryServicesManager:manager];
  if (v7)
  {
    [v7 setJobType:{xpc_dictionary_get_int64(objectCopy, propertyKeyViewStateChangeJobType)}];
    v8 = PLStringFromXPCDictionary();
    [v7 setAlbumGUID:v8];

    [v7 setAlbumHasUnseenContent:{xpc_dictionary_get_BOOL(objectCopy, propertyKeyAlbumHasUnseenContent)}];
    [v7 setAlbumUnviewedAssetCount:{xpc_dictionary_get_int64(objectCopy, propertyKeyAlbumUnviewedAssetCount)}];
    v9 = PLStringFromXPCDictionary();
    [v7 setAssetCollectionGUID:v9];

    [v7 setAssetCollectionHasUnreadComments:{xpc_dictionary_get_BOOL(objectCopy, propertyKeyAssetCollectionHasUnreadComments)}];
    v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:{xpc_dictionary_get_date(objectCopy, propertyKeyAssetCollectionLastViewedCommentDate)}];
    [v7 setAssetCollectionLastViewedCommentDate:v10];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)object
{
  v10.receiver = self;
  v10.super_class = PLCloudSharingViewedStateChangeJob;
  objectCopy = object;
  [(PLDaemonJob *)&v10 encodeToXPCObject:objectCopy];
  xpc_dictionary_set_int64(objectCopy, propertyKeyViewStateChangeJobType, [(PLCloudSharingViewedStateChangeJob *)self jobType:v10.receiver]);
  albumGUID = [(PLCloudSharingViewedStateChangeJob *)self albumGUID];
  PLXPCDictionarySetString();

  xpc_dictionary_set_BOOL(objectCopy, propertyKeyAlbumHasUnseenContent, [(PLCloudSharingViewedStateChangeJob *)self albumHasUnseenContent]);
  xpc_dictionary_set_int64(objectCopy, propertyKeyAlbumUnviewedAssetCount, [(PLCloudSharingViewedStateChangeJob *)self albumUnviewedAssetCount]);
  assetCollectionGUID = [(PLCloudSharingViewedStateChangeJob *)self assetCollectionGUID];
  PLXPCDictionarySetString();

  xpc_dictionary_set_BOOL(objectCopy, propertyKeyAssetCollectionHasUnreadComments, [(PLCloudSharingViewedStateChangeJob *)self assetCollectionHasUnreadComments]);
  v7 = propertyKeyAssetCollectionLastViewedCommentDate;
  assetCollectionLastViewedCommentDate = [(PLCloudSharingViewedStateChangeJob *)self assetCollectionLastViewedCommentDate];
  [assetCollectionLastViewedCommentDate timeIntervalSinceReferenceDate];
  xpc_dictionary_set_date(objectCopy, v7, v9);
}

+ (void)setLastViewedCommentDate:(id)date forAssetCollection:(id)collection inAlbum:(id)album
{
  albumCopy = album;
  collectionCopy = collection;
  dateCopy = date;
  v12 = objc_alloc_init(objc_opt_class());
  [v12 setJobType:4];
  [v12 setAssetCollectionLastViewedCommentDate:dateCopy];

  gUID = [collectionCopy GUID];

  [v12 setAssetCollectionGUID:gUID];
  gUID2 = [albumCopy GUID];

  [v12 setAlbumGUID:gUID2];
  [v12 run];
}

+ (void)markAssetCollection:(id)collection asHavingUnreadComments:(BOOL)comments inAlbum:(id)album
{
  commentsCopy = comments;
  albumCopy = album;
  collectionCopy = collection;
  v11 = objc_alloc_init(objc_opt_class());
  [v11 setJobType:3];
  gUID = [collectionCopy GUID];

  [v11 setAssetCollectionGUID:gUID];
  [v11 setAssetCollectionHasUnreadComments:commentsCopy];
  gUID2 = [albumCopy GUID];

  [v11 setAlbumGUID:gUID2];
  [v11 run];
}

+ (void)updateUnviewedAssetCollectionCount:(int)count forAlbum:(id)album
{
  albumCopy = album;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setJobType:2];
  gUID = [albumCopy GUID];

  [v7 setAlbumGUID:gUID];
  [v7 setAlbumUnviewedAssetCount:count];
  [v7 run];
}

+ (void)markAlbum:(id)album asHavingUnseenContent:(BOOL)content
{
  contentCopy = content;
  albumCopy = album;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setJobType:1];
  gUID = [albumCopy GUID];

  [v7 setAlbumGUID:gUID];
  [v7 setAlbumHasUnseenContent:contentCopy];
  [v7 run];
}

@end