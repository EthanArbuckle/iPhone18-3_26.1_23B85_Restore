@interface PLCloudSharedCommentsJob
+ (void)assetsdLocallyProcessAddedComments:(id)a3 assetGUID:(id)a4 albumGUID:(id)a5 info:(id)a6 libraryServicesManager:(id)a7;
+ (void)deleteSharedCommentFromServer:(id)a3;
+ (void)locallyProcessAddedComments:(id)a3 assetGUID:(id)a4 albumGUID:(id)a5 info:(id)a6;
+ (void)locallyProcessDeletedComments:(id)a3 info:(id)a4;
+ (void)publishCommentToServer:(id)a3;
- (BOOL)shouldArchiveXPCToDisk;
- (id)_operationQueueForJob;
- (id)description;
- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4;
- (void)encodeToXPCObject:(id)a3;
- (void)executeDeleteCommentFromServer;
- (void)executeProcessServerNotificationOfCommentChanges;
- (void)executePublishCommentToServer;
- (void)runDaemonSide;
@end

@implementation PLCloudSharedCommentsJob

- (void)executeDeleteCommentFromServer
{
  v2 = [(PLCloudSharedCommentsJob *)self commentGUID];
  [PLPhotoSharingHelper deleteCommentWithGUIDFromServer:v2];
}

- (void)executePublishCommentToServer
{
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "executePublishCommentToServer", buf, 2u);
  }

  v4 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v5 = [(PLCloudSharedCommentsJob *)self commentGUID];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __57__PLCloudSharedCommentsJob_executePublishCommentToServer__block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [v6 performTransactionAndWait:v8];
}

void __57__PLCloudSharedCommentsJob_executePublishCommentToServer__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = [PLCloudSharedComment cloudSharedCommentWithGUID:*(a1 + 32) inLibrary:*(a1 + 40)];
  if (!v2)
  {
    v3 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_ERROR, "ERROR: did not find comment with GUID %@ to publish", &v7, 0xCu);
    }

    goto LABEL_6;
  }

  [PLPhotoSharingHelper publishCloudSharedCommentToServer:v2];
  if ([v2 isInterestingForAlbumsSorting])
  {
    v3 = [v2 asset];
    v4 = [v3 collectionShare];
    v5 = [v2 commentDate];
    [v4 setLastModifiedDate:v5];

LABEL_6:
  }
}

- (void)executeProcessServerNotificationOfCommentChanges
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(PLCloudSharedCommentsJob *)self msASComments];
    *buf = 138412290;
    v14 = v4;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "executeProcessServerNotificationOfCommentAdditions %@", buf, 0xCu);
  }

  v5 = [(PLCloudSharingJob *)self transientPhotoLibrary];
  v6 = [(PLCloudSharedCommentsJob *)self jobType]== 1;
  v7 = [(PLCloudSharedCommentsJob *)self jobType];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __76__PLCloudSharedCommentsJob_executeProcessServerNotificationOfCommentChanges__block_invoke;
  v9[3] = &unk_1E7573260;
  v9[4] = self;
  v10 = v5;
  v11 = v6;
  v12 = v7 == 2;
  v8 = v5;
  [v8 performTransactionAndWait:v9];
}

void __76__PLCloudSharedCommentsJob_executeProcessServerNotificationOfCommentChanges__block_invoke(uint64_t a1)
{
  v86 = *MEMORY[0x1E69E9840];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = [*(a1 + 32) msASComments];
  v69 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
  if (v69)
  {
    v3 = 0x1E755F000uLL;
    v68 = *v75;
    *&v2 = 138412802;
    v66 = v2;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v75 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v74 + 1) + 8 * i);
        v6 = *(v3 + 2672);
        v7 = [v5 GUID];
        v8 = [v6 cloudSharedCommentWithGUID:v7 inLibrary:*(a1 + 40)];

        if (!v8)
        {
          v9 = [v5 content];
          v10 = [v5 isLike];
          v11 = *(v3 + 2672);
          v12 = [v5 timestamp];
          v13 = [*(a1 + 40) managedObjectContext];
          v14 = [v11 cloudSharedCommentsWithCommentDate:v12 inManagedObjectContext:v13];

          v72 = 0u;
          v73 = 0u;
          v70 = 0u;
          v71 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v70 objects:v84 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v71;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v71 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v70 + 1) + 8 * j);
                if ([v20 matchesCommentText:v9 isLike:v10])
                {
                  v8 = v20;
                  goto LABEL_17;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v70 objects:v84 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }

            v8 = 0;
LABEL_17:
            v3 = 0x1E755F000;
          }

          else
          {
            v8 = 0;
          }
        }

        if (*(a1 + 48) != 1)
        {
          if (*(a1 + 49) == 1)
          {
            v30 = [v8 asset];

            if (v30)
            {
              v25 = [v8 asset];
              [v25 deleteComment:v8];
            }

            else
            {
              v25 = [v8 managedObjectContext];
              [v25 deleteObject:v8];
            }
          }

          else
          {
            v25 = PLPhotoSharingGetLog();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              v31 = [*(a1 + 32) jobType];
              *buf = 134217984;
              v79 = v31;
              _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "ERROR: unknown comment change job type %lld", buf, 0xCu);
            }
          }

          goto LABEL_62;
        }

        v21 = MEMORY[0x1E695DEC8];
        v22 = [*(a1 + 32) assetGUID];
        v23 = [v21 arrayWithObject:v22];
        v24 = [PLManagedAsset cloudSharedAssetsWithGUIDs:v23 inLibrary:*(a1 + 40)];
        v25 = [v24 lastObject];

        if (v25)
        {
          if (v8)
          {
            goto LABEL_40;
          }

LABEL_23:
          v26 = *(v3 + 2672);
          v27 = [v5 timestamp];
          v28 = [v5 content];
          v8 = [v26 insertNewCommentIntoAsset:v25 commentDate:v27 withText:v28 isLike:objc_msgSend(v5 isMyComment:"isLike") inLibrary:{objc_msgSend(v5, "isMine"), *(a1 + 40)}];

          v29 = PLPhotoSharingGetLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v79 = v8;
            _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEFAULT, "inserting new PLCloudSharedComment %@", buf, 0xCu);
          }

          v3 = 0x1E755F000;
          goto LABEL_40;
        }

        v32 = [*(a1 + 40) pathManager];
        v33 = [v32 directoryPathForInFlightComments:1];
        v34 = [*(a1 + 32) assetGUID];
        v35 = [v33 stringByAppendingPathComponent:v34];

        if (v35)
        {
          v36 = [MEMORY[0x1E695DF70] arrayWithContentsOfFile:v35];
          if (!v36)
          {
            v36 = [MEMORY[0x1E695DF70] array];
          }
        }

        else
        {
          v36 = 0;
        }

        v37 = [v5 GUID];
        [v36 addObject:v37];

        v38 = [MEMORY[0x1E696AC08] defaultManager];
        [v38 removeItemAtPath:v35 error:0];

        v39 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = [v5 GUID];
          v41 = [*(a1 + 32) assetGUID];
          v42 = [v36 count];
          *buf = v66;
          v79 = v40;
          v80 = 2112;
          v81 = v41;
          v82 = 2048;
          v83 = v42;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "saving inflight comment GUID %@ for asset %@, total inflight count for this asset %lu", buf, 0x20u);
        }

        v43 = [MEMORY[0x1E696AE40] dataWithPropertyList:v36 format:100 options:0 error:0];
        if (([v43 writeToFile:v35 options:1073741825 error:0] & 1) == 0)
        {
          v59 = PLPhotoSharingGetLog();
          v3 = 0x1E755F000;
          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v79 = v35;
            _os_log_impl(&dword_19BF1F000, v59, OS_LOG_TYPE_ERROR, "could not write asset inflight comment to path %@, skipping adding comment", buf, 0xCu);
          }

          goto LABEL_61;
        }

        v3 = 0x1E755F000;
        if (!v8)
        {
          goto LABEL_23;
        }

LABEL_40:
        v44 = [v5 GUID];
        [v8 setCloudGUID:v44];

        v45 = [v5 personID];
        [v8 setCommenterHashedPersonID:v45];

        v46 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isDeletable")}];
        [v8 setIsDeletable:v46];

        v47 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isLike")}];
        [v8 setIsLike:v47];

        v48 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isCaption")}];
        [v8 setIsCaption:v48];

        v49 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isBatchComment")}];
        [v8 setIsBatchComment:v49];

        v50 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isMine")}];
        [v8 setIsMyComment:v50];

        v51 = [v5 content];
        [v8 setCommentText:v51];

        v52 = [v5 clientTimestamp];
        [v8 setCommentClientDate:v52];

        v53 = [v8 asset];

        if (!v25 || v53)
        {
          if (!v25)
          {
            goto LABEL_53;
          }
        }

        else
        {
          [v25 addComment:v8];
        }

        v54 = [v8 shareParticipant];

        if (!v54)
        {
          v55 = [v8 commenterHashedPersonID];

          if (v55)
          {
            v56 = [v8 commenterHashedPersonID];
            v57 = [v25 collectionShare];
            v58 = [PLShareParticipant participantWithHashedPersonID:v56 inCollectionShare:v57];

            v3 = 0x1E755F000;
            [v8 setShareParticipant:v58];
          }

          else
          {
            v60 = [v8 isMyComment];

            if (!v60)
            {
              goto LABEL_53;
            }

            v58 = [v25 collectionShare];
            v61 = [v58 currentUserParticipant];
            [v8 setShareParticipant:v61];
          }
        }

LABEL_53:
        v62 = PLPhotoSharingGetLog();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v79 = v8;
          v80 = 2112;
          v81 = v5;
          _os_log_impl(&dword_19BF1F000, v62, OS_LOG_TYPE_DEFAULT, "resulting comment %@ for MSASComment %@", buf, 0x16u);
        }

        if (v25)
        {
          v63 = [v8 isLikeBoolValue];
          v64 = +[PLNotificationManager sharedManager];
          v65 = [*(a1 + 32) mstreamdInfoDictionary];
          if (v63)
          {
            [v64 noteDidReceiveLike:v8 mstreamdInfo:v65];
          }

          else
          {
            [v64 noteDidReceiveComment:v8 mstreamdInfo:v65];
          }

          if ([v8 isInterestingForAlbumsSorting])
          {
            v36 = [v25 collectionShare];
            v35 = [v8 commentDate];
            [v36 setLastModifiedDate:v35];
LABEL_61:
          }
        }

LABEL_62:
      }

      v69 = [obj countByEnumeratingWithState:&v74 objects:v85 count:16];
    }

    while (v69);
  }
}

- (id)_operationQueueForJob
{
  v2 = [(PLCloudSharedCommentsJob *)self jobType];
  if ((v2 - 1) >= 3)
  {
    if ((v2 - 4) < 2)
    {
      v2 = [objc_opt_class() highPriorityOperationQueue];
    }
  }

  else
  {
    v2 = [objc_opt_class() lowPriorityOperationQueue];
  }

  return v2;
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
    v13 = self;
    v4 = v11;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "%@ : runDaemonSide %@", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharedCommentsJob runDaemonSide]"];
  v6 = [(PLCloudSharedCommentsJob *)self _operationQueueForJob];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__PLCloudSharedCommentsJob_runDaemonSide__block_invoke;
  v8[3] = &unk_1E7578848;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 addOperationWithBlock:v8];
}

void __41__PLCloudSharedCommentsJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) jobType];
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      [*(a1 + 32) executePublishCommentToServer];
      goto LABEL_12;
    }

    if (v3 == 5)
    {
      [*(a1 + 32) executeDeleteCommentFromServer];
      goto LABEL_12;
    }
  }

  else if (v3 == 1 || v3 == 2)
  {
    [*(a1 + 32) executeProcessServerNotificationOfCommentChanges];
    goto LABEL_12;
  }

  v4 = PLPhotoSharingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v8 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Error: unknown job type for %@", buf, 0xCu);
  }

LABEL_12:
  v6.receiver = *(a1 + 32);
  v6.super_class = PLCloudSharedCommentsJob;
  objc_msgSendSuper2(&v6, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];
  objc_autoreleasePoolPop(v2);
}

- (BOOL)shouldArchiveXPCToDisk
{
  v2 = [(PLCloudSharedCommentsJob *)self mstreamdInfoDictionary];
  v3 = v2 != 0;

  return v3;
}

- (id)description
{
  v3 = [(PLCloudSharedCommentsJob *)self jobType]- 1;
  if (v3 < 5 && ((0x1Bu >> v3) & 1) != 0)
  {
    v4 = off_1E7573280[v3];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown job type %lld", -[PLCloudSharedCommentsJob jobType](self, "jobType")];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  v7 = [(PLCloudSharedCommentsJob *)self msASComments];
  v8 = [(PLCloudSharedCommentsJob *)self commentGUID];
  v9 = [(PLCloudSharedCommentsJob *)self assetGUID];
  v10 = [(PLCloudSharedCommentsJob *)self albumGUID];
  v11 = [(PLCloudSharedCommentsJob *)self mstreamdInfoDictionary];
  v12 = [v5 stringWithFormat:@"%@ (%@ MSASComments=%@ commmentGUID=%@ assetGUID=%@ albumGUID=%@ info=%@) ", v6, v4, v7, v8, v9, v10, v11];

  return v12;
}

- (id)initFromXPCObject:(id)a3 libraryServicesManager:(id)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PLCloudSharedCommentsJob;
  v7 = [(PLCloudSharingJob *)&v19 initFromXPCObject:v6 libraryServicesManager:a4];
  if (v7)
  {
    v8 = PLDataFromXPCDictionary();
    v9 = MEMORY[0x1E696ACD0];
    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
    v13 = [v9 pl_safeUnarchiveObjectFromData:v8 classes:v12];

    if (v13)
    {
      [v7 setMsASComments:v13];
    }

    v14 = PLStringFromXPCDictionary();
    [v7 setCommentGUID:v14];

    v15 = PLStringFromXPCDictionary();
    [v7 setAssetGUID:v15];

    v16 = PLStringFromXPCDictionary();
    [v7 setAlbumGUID:v16];

    v17 = PLDictionaryFromXPCDictionary();
    [v7 setMstreamdInfoDictionary:v17];

    [v7 setJobType:{xpc_dictionary_get_int64(v6, propertyKeyCommentJobType)}];
  }

  return v7;
}

- (void)encodeToXPCObject:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = PLCloudSharedCommentsJob;
  v4 = a3;
  [(PLDaemonJob *)&v15 encodeToXPCObject:v4];
  v5 = MEMORY[0x1E696ACC8];
  v6 = [(PLCloudSharedCommentsJob *)self msASComments];
  v14 = 0;
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v14];
  v8 = v14;

  if (!v7)
  {
    v9 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to archive msASCommentsData, error: %@", buf, 0xCu);
    }
  }

  PLXPCDictionarySetData();
  v10 = [(PLCloudSharedCommentsJob *)self commentGUID];
  PLXPCDictionarySetString();

  v11 = [(PLCloudSharedCommentsJob *)self assetGUID];
  PLXPCDictionarySetString();

  v12 = [(PLCloudSharedCommentsJob *)self albumGUID];
  PLXPCDictionarySetString();

  v13 = [(PLCloudSharedCommentsJob *)self mstreamdInfoDictionary];
  PLXPCDictionarySetDictionary();

  xpc_dictionary_set_int64(v4, propertyKeyCommentJobType, [(PLCloudSharedCommentsJob *)self jobType]);
}

+ (void)locallyProcessDeletedComments:(id)a3 info:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setJobType:2];
  [v7 setMsASComments:v6];

  [v7 setMstreamdInfoDictionary:v5];
  [v7 runAndWaitForMessageToBeSent];
}

+ (void)assetsdLocallyProcessAddedComments:(id)a3 assetGUID:(id)a4 albumGUID:(id)a5 info:(id)a6 libraryServicesManager:(id)a7
{
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  if (PLIsAssetsd())
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharedCommentsJob.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"PLIsAssetsd()"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  [v19 handleFailureInMethod:a2 object:a1 file:@"PLCloudSharedCommentsJob.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];

LABEL_3:
  v20 = objc_alloc_init(objc_opt_class());
  [v20 setJobType:1];
  [v20 setMsASComments:v17];

  [v20 setAssetGUID:v16];
  [v20 setAlbumGUID:v15];

  [v20 setMstreamdInfoDictionary:v14];
  [v20 setLibraryServicesManager:v13];

  [v20 runDaemonSide];
}

+ (void)locallyProcessAddedComments:(id)a3 assetGUID:(id)a4 albumGUID:(id)a5 info:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_alloc_init(objc_opt_class());
  [v13 setJobType:1];
  [v13 setMsASComments:v12];

  [v13 setAssetGUID:v11];
  [v13 setAlbumGUID:v10];

  [v13 setMstreamdInfoDictionary:v9];
  [v13 runAndWaitForMessageToBeSent];
}

+ (void)deleteSharedCommentFromServer:(id)a3
{
  v3 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setJobType:5];
  v4 = [v3 cloudGUID];
  [v7 setCommentGUID:v4];

  v5 = [v3 asset];

  v6 = [v5 cloudAssetGUID];
  [v7 setAssetGUID:v6];

  [v7 run];
}

+ (void)publishCommentToServer:(id)a3
{
  v3 = a3;
  v7 = objc_alloc_init(objc_opt_class());
  [v7 setJobType:4];
  v4 = [v3 cloudGUID];
  [v7 setCommentGUID:v4];

  v5 = [v3 asset];

  v6 = [v5 cloudAssetGUID];
  [v7 setAssetGUID:v6];

  [v7 run];
}

@end