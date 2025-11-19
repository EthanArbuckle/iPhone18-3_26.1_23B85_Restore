@interface PLCloudFeedEntriesManager
- (BOOL)_commentIsBatchCaption:(id)a3;
- (BOOL)_shouldIgnoreComment:(id)a3;
- (BOOL)_shouldIgnoreInvitationRecord:(id)a3;
- (BOOL)_shouldIgnoreShareParticipant:(id)a3;
- (BOOL)_shouldMergeAsset:(id)a3 intoEntry:(id)a4;
- (BOOL)_tryMergingComment:(id)a3 withEntry:(id)a4;
- (BOOL)_wasAssetPublishedBeforeSubscription:(id)a3;
- (BOOL)_wasCommentPublishedBeforeSubscription:(id)a3;
- (PLCloudFeedEntriesManager)initWithPhotoLibrary:(id)a3;
- (id)_assetSortingComparator;
- (id)_commentSortingComparator;
- (id)_dateForAsset:(id)a3;
- (id)_firstEntryRelativeToDate:(id)a3 ascending:(BOOL)a4 includeSameDate:(BOOL)a5;
- (id)_singleEntryOfType:(signed __int16)a3 forInvitationRecordWithGUID:(id)a4;
- (id)_singleEntryOfType:(signed __int16)a3 forSharedAlbumWithGUID:(id)a4;
- (id)_subscriptionEntryForSharedAlbumWithGUID:(id)a3;
- (void)_addAsset:(id)a3 toEntry:(id)a4;
- (void)_getEarliestDate:(id *)a3 latestDate:(id *)a4 forRangeOfContiguousCommentsEntriesAroundDate:(id)a5;
- (void)_mergeEntriesAroundDate:(id)a3;
- (void)_mergeOlderEntry:(id)a3 intoMoreRecentEntry:(id)a4;
- (void)_noteContentDeletionAffectingAlbumCreatedEntry:(id)a3;
- (void)_noteContentDeletionAffectingAssetsEntry:(id)a3;
- (void)_noteContentDeletionAffectingCommentsEntry:(id)a3;
- (void)_noteContentDeletionAffectingInvitationEntry:(id)a3;
- (void)_noteContentDeletionAffectingInvitationResponseEntry:(id)a3;
- (void)_noteContentDeletionAffectingSubscriptionEntry:(id)a3;
- (void)_noteDidDeleteCollectionShareWithScopeIdentifier:(id)a3;
- (void)_noteDidDeleteShareParticipantWithParticipantID:(id)a3;
- (void)_noteDidReceiveSharedAsset:(id)a3;
- (void)_noteDidReceiveSharedAssetPublishedBeforeSubscription:(id)a3;
- (void)_noteDidReceiveSharedComment:(id)a3;
- (void)_noteDidReceiveSharedComments:(id)a3;
- (void)_noteDidUpdateCollectionShare:(id)a3;
- (void)_noteDidUpdateInvitationRecord:(id)a3;
- (void)_noteDidUpdateShareParticipant:(id)a3;
- (void)_noteDidUpdateSharedAlbum:(id)a3;
- (void)_processCollectionShareUpdates:(id)a3 moc:(id)a4;
- (void)_processShareParticipantUpdates:(id)a3 moc:(id)a4;
- (void)_splitEntriesAtDate:(id)a3;
- (void)processAlbumUpdates:(id)a3 collectionShareUpdates:(id)a4 collectionShareDeletes:(id)a5 assetInserts:(id)a6 assetUpdates:(id)a7 commentInserts:(id)a8 invitationRecordUpdates:(id)a9 shareParticipantUpdates:(id)a10 shareParticipantDeletes:(id)a11 deletionEntries:(id)a12 completionHandler:(id)a13;
- (void)rebuildAllEntries:(id)a3;
@end

@implementation PLCloudFeedEntriesManager

- (BOOL)_tryMergingComment:(id)a3 withEntry:(id)a4
{
  v58 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v7 objectID];
    v12 = [v8 objectID];
    *buf = 138412802;
    v50 = v10;
    v51 = 2112;
    v52 = v11;
    v53 = 2112;
    v54 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "will %@ %@ %@", buf, 0x20u);
  }

  if ([v8 entryType] == 2)
  {
    v13 = v8;
    v14 = [v7 asset];
    v15 = [v14 collectionShare];
    v16 = [v15 scopeIdentifier];

    v17 = [v13 entryAlbumGUID];
    v18 = [v16 isEqualToString:v17];

    v19 = [v13 entryComments];
    v20 = [v19 count];

    v21 = 0;
    if (!v20 && v18)
    {
      v43 = self;
      v44 = a2;
      v22 = [v7 commenterHashedPersonID];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v23 = [v13 entryLikeComments];
      v24 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v46;
        while (2)
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v46 != v26)
            {
              objc_enumerationMutation(v23);
            }

            v28 = [*(*(&v45 + 1) + 8 * i) commenterHashedPersonID];
            v29 = v28;
            if (v28 != v22 && ![v28 isEqualToString:v22])
            {
              v21 = 0;
              goto LABEL_22;
            }
          }

          v25 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      v22 = [v7 commentDate];
      v30 = objc_alloc(MEMORY[0x1E695DFA0]);
      v31 = [v13 entryLikeComments];
      v23 = [v30 initWithOrderedSet:v31];

      v32 = [v23 count];
      v29 = [(PLCloudFeedEntriesManager *)v43 _commentSortingComparator];
      v33 = [v23 array];
      v34 = [v33 indexOfObject:v7 inSortedRange:0 options:v32 usingComparator:{1024, v29}];

      v35 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v50 = v34;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "insertionIndex=%lu", buf, 0xCu);
      }

      [v23 insertObject:v7 atIndex:v34];
      [v13 setEntryDate:v22];
      v36 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = [v13 objectID];
        *buf = 138412546;
        v50 = v22;
        v51 = 2112;
        v52 = v37;
        _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEBUG, "set date %@ for %@", buf, 0x16u);
      }

      [v13 setEntryCloudAssetGUID:0];
      [v13 setEntryLikeComments:v23];
      v21 = 1;
LABEL_22:
      a2 = v44;
    }
  }

  else
  {
    v21 = 0;
  }

  v38 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    v39 = NSStringFromSelector(a2);
    v40 = [v7 objectID];
    v41 = [v8 objectID];
    *buf = 138413058;
    v50 = v39;
    v51 = 2112;
    v52 = v40;
    v53 = 2112;
    v54 = v41;
    v55 = 1024;
    v56 = v21;
    _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "did %@ %@ %@ merged=%i", buf, 0x26u);
  }

  return v21;
}

- (void)_mergeEntriesAroundDate:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v23 = v7;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v8 = [(PLCloudFeedEntriesManager *)self _firstEntryOnOrBeforeDate:v5];
  v9 = [(PLCloudFeedEntriesManager *)self _firstEntryAfterDate:v5];
  v10 = [v8 entryType];
  v11 = [v9 entryType];
  v12 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v8 objectID];
    [v9 objectID];
    v14 = v21 = v9;
    *buf = 138413058;
    v23 = v13;
    v24 = 2048;
    v25 = v10;
    v26 = 2112;
    v27 = v14;
    v28 = 2048;
    v29 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "entryBefore=%@ type=%li entryAfter=%@ type=%li", buf, 0x2Au);

    v9 = v21;
  }

  if (v10 == 1 && v11 == 1)
  {
    v15 = [v9 entryAssets];
    v16 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v15 count];
      *buf = 134217984;
      v23 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "entryAfterAssetsCount=%lu", buf, 0xCu);
    }

    if ([v15 count])
    {
      v18 = [v15 objectAtIndex:0];
      if ([(PLCloudFeedEntriesManager *)self _shouldMergeAsset:v18 intoEntry:v8])
      {
        [(PLCloudFeedEntriesManager *)self _mergeOlderEntry:v8 intoMoreRecentEntry:v9];
      }
    }
  }

  v19 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412546;
    v23 = v20;
    v24 = 2112;
    v25 = v5;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }
}

- (void)_splitEntriesAtDate:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    *buf = 138412546;
    v37 = v7;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v8 = [(PLCloudFeedEntriesManager *)self _firstEntryOnOrAfterDate:v5];
  if ([v8 entryType] == 1)
  {
    v9 = v8;
    v10 = [v9 entryAssets];
    v11 = [v10 array];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __49__PLCloudFeedEntriesManager__splitEntriesAtDate___block_invoke;
    v34[3] = &unk_1E7577F98;
    v34[4] = self;
    v35 = v5;
    v12 = [v11 pl_indexOfFirstObjectPassingTest:v34];

    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v10 count];
      *buf = 134218240;
      v37 = v12;
      v38 = 2048;
      v39 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "splitIndex=%li entryAssetsCout=%lu", buf, 0x16u);
    }

    if (v12 >= 1 && v12 < [v10 count])
    {
      v29 = a2;
      v15 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v12}];
      v16 = MEMORY[0x1E695DFB8];
      v17 = [v10 objectsAtIndexes:v15];
      v18 = [v16 orderedSetWithArray:v17];

      v33 = v18;
      v19 = [v18 lastObject];
      v31 = [(PLCloudFeedEntriesManager *)self _dateForAsset:v19];
      v20 = [v19 collectionShare];
      v30 = [v20 scopeIdentifier];

      v21 = [v9 mutableEntryAssets];
      v32 = v15;
      [v21 removeObjectsAtIndexes:v15];
      v22 = +[PLCloudFeedAssetsEntry entityName];
      v23 = [(PLCloudFeedEntriesManager *)self library];
      v24 = [v23 managedObjectContext];
      v25 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v22, v24, 0);

      if (!v25)
      {

        goto LABEL_17;
      }

      [v25 setEntryType:1];
      [v25 setEntryPriorityNumber:&unk_1F0FBEE90];
      [v25 setEntryDate:?];
      [v25 setEntryAssets:v33];
      [v25 setEntryAlbumGUID:?];
      v26 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v25;
        _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
      }

      v27 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v37 = v9;
        _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "original entry=%@", buf, 0xCu);
      }

      a2 = v29;
    }
  }

  v9 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v28 = NSStringFromSelector(a2);
    *buf = 138412546;
    v37 = v28;
    v38 = 2112;
    v39 = v5;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }

LABEL_17:
}

BOOL __49__PLCloudFeedEntriesManager__splitEntriesAtDate___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _dateForAsset:a2];
  v4 = [v3 compare:*(a1 + 40)] == 1;

  return v4;
}

- (void)_mergeOlderEntry:(id)a3 intoMoreRecentEntry:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = NSStringFromSelector(a2);
    v10 = [v6 objectID];
    v11 = [v7 objectID];
    v25 = 138412802;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "will %@ %@ %@", &v25, 0x20u);
  }

  v12 = [v6 entryType];
  v13 = [v7 entryType];
  v14 = v13;
  if (v12 == 1 && v13 == 1)
  {
    v15 = [v6 entryAssets];
    v16 = [v7 mutableEntryAssets];
    v17 = [v15 array];
    v18 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, -[NSObject count](v15, "count")}];
    [v16 insertObjects:v17 atIndexes:v18];

    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v6 objectID];
      v25 = 138412290;
      v26 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "delete %@", &v25, 0xCu);
    }

    v21 = [v6 managedObjectContext];
    [v21 deleteObject:v6];

    v22 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v25 = 138412290;
      v26 = v7;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "merged entry=%@", &v25, 0xCu);
    }
  }

  else
  {
    v15 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v25 = 134218240;
      v26 = v12;
      v27 = 2048;
      v28 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "cannot merge entry of type %li into entry of type %li", &v25, 0x16u);
    }
  }

  v23 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    v24 = NSStringFromSelector(a2);
    v25 = 138412290;
    v26 = v24;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "did %@", &v25, 0xCu);
  }
}

- (void)_addAsset:(id)a3 toEntry:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromSelector(a2);
    v11 = [v7 objectID];
    v12 = [v8 objectID];
    v23 = 138412802;
    v24 = v10;
    v25 = 2112;
    v26 = v11;
    v27 = 2112;
    v28 = v12;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "will %@ %@ %@", &v23, 0x20u);
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = [v8 mutableEntryAssets];
    v14 = [v13 count];
    v15 = [(PLCloudFeedEntriesManager *)self _assetSortingComparator];
    v16 = [v13 array];
    v17 = [v16 indexOfObject:v7 inSortedRange:0 options:v14 usingComparator:{1024, v15}];

    [v13 insertObject:v7 atIndex:v17];
    v18 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412290;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "updated entry=%@", &v23, 0xCu);
    }
  }

  else
  {
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v8;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "cannot add asset into entry %@", &v23, 0xCu);
    }
  }

  v19 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = NSStringFromSelector(a2);
    v21 = [v7 objectID];
    v22 = [v8 objectID];
    v23 = 138412802;
    v24 = v20;
    v25 = 2112;
    v26 = v21;
    v27 = 2112;
    v28 = v22;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "did %@ %@ %@", &v23, 0x20u);
  }
}

- (id)_commentSortingComparator
{
  v2 = [&__block_literal_global_140_114339 copy];

  return v2;
}

uint64_t __54__PLCloudFeedEntriesManager__commentSortingComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 commentDate];
  v6 = [v4 commentDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (id)_assetSortingComparator
{
  v2 = [&__block_literal_global_114342 copy];

  return v2;
}

uint64_t __52__PLCloudFeedEntriesManager__assetSortingComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 cloudBatchPublishDate];
  v7 = [v5 cloudBatchPublishDate];
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v6 compare:v7];
  }

  else
  {
    v9 = v7 != 0;
    if (v6)
    {
      v9 = -1;
      goto LABEL_9;
    }
  }

  if (!v9)
  {
    v10 = [v4 dateCreated];
    v11 = [v5 dateCreated];
    v9 = [v10 compare:v11];

    if (!v9)
    {
      v12 = [v4 cloudAssetGUID];
      v13 = [v5 cloudAssetGUID];
      v9 = [v12 compare:v13];
    }
  }

LABEL_9:

  return v9;
}

- (BOOL)_shouldMergeAsset:(id)a3 intoEntry:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v7 entryType] == 1)
  {
    v8 = [v7 entryAssets];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndex:0];
    }

    else
    {
      v9 = 0;
    }

    v11 = [v8 lastObject];
    v12 = [v6 collectionShare];
    v13 = [v12 scopeIdentifier];

    v14 = [v9 collectionShare];
    v15 = [v14 scopeIdentifier];

    v16 = [(PLCloudFeedEntriesManager *)self _dateForAsset:v6];
    v10 = [(PLCloudFeedEntriesManager *)self _dateForAsset:v9];
    v17 = [(PLCloudFeedEntriesManager *)self _dateForAsset:v11];
    v28 = v15;
    v29 = v13;
    LODWORD(v15) = [v13 isEqualToString:v15];
    v18 = [v6 cloudHasSameOwnerAsAsset:v9];
    v27 = v10;
    [v16 timeIntervalSinceDate:v10];
    v20 = v19;
    [v16 timeIntervalSinceDate:v17];
    LOBYTE(v10) = 0;
    if (v15 && v18 && v20 >= -3600.0 && v21 <= 3600.0)
    {
      if (([v6 userCloudSharedLiked] & 1) != 0 || !objc_msgSend(v8, "count"))
      {
        LOBYTE(v10) = 1;
      }

      else
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v22 = v8;
        v10 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v10)
        {
          v26 = v11;
          v23 = *v31;
          while (2)
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v31 != v23)
              {
                objc_enumerationMutation(v22);
              }

              if (![*(*(&v30 + 1) + 8 * i) userCloudSharedLiked])
              {
                LOBYTE(v10) = 1;
                goto LABEL_23;
              }
            }

            v10 = [v22 countByEnumeratingWithState:&v30 objects:v34 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }

LABEL_23:
          v11 = v26;
        }
      }
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_shouldIgnoreShareParticipant:(id)a3
{
  v3 = [a3 share];
  v4 = [v3 isCurrentUserOwner];

  return v4 ^ 1;
}

- (BOOL)_shouldIgnoreInvitationRecord:(id)a3
{
  v3 = [a3 album];
  v4 = [v3 isOwnedCloudSharedAlbum];

  return v4 ^ 1;
}

- (BOOL)_shouldIgnoreComment:(id)a3
{
  v4 = a3;
  if ([(PLCloudFeedEntriesManager *)self _commentIsBatchCaption:v4])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v4 isMyComment];
    v7 = [v6 BOOLValue];

    v8 = [v4 asset];
    v9 = [v8 cloudIsMyAsset];
    v10 = [v4 isLikeBoolValue];
    v5 = 0;
    if ((v7 & 1) == 0 && (v9 & 1) == 0)
    {
      v5 = (v10 & 1) != 0 || ([v8 cloudHasCommentsConversation] & 1) == 0;
    }
  }

  return v5;
}

- (BOOL)_commentIsBatchCaption:(id)a3
{
  v3 = a3;
  v4 = [v3 isBatchComment];
  v5 = [v4 BOOLValue];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [v3 isCaption];
    v8 = [v7 BOOLValue];

    if (v8)
    {
      v9 = [v3 commentClientDate];
      v10 = [v3 asset];
      v11 = [v10 cloudBatchPublishDate];

      [v9 timeIntervalSinceDate:v11];
      v6 = fabs(v12) < 10.0;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_wasCommentPublishedBeforeSubscription:(id)a3
{
  v3 = a3;
  v4 = [v3 commentDate];
  v5 = [v3 asset];

  v6 = [v5 collectionShare];
  v7 = [v6 cloudSubscriptionDate];

  if (v7)
  {
    v8 = [v4 compare:v7] == -1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_wasAssetPublishedBeforeSubscription:(id)a3
{
  v3 = a3;
  if ([v3 cloudIsMyAsset])
  {
    v4 = 0;
  }

  else
  {
    v5 = [v3 cloudBatchPublishDate];
    v6 = [v3 collectionShare];
    v7 = [v6 cloudSubscriptionDate];

    if (v7)
    {
      v4 = [v5 compare:v7] == -1;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)_dateForAsset:(id)a3
{
  v3 = a3;
  v4 = [v3 cloudServerPublishDate];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 cloudBatchPublishDate];
  }

  v7 = v6;

  return v7;
}

- (void)_noteContentDeletionAffectingCommentsEntry:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:1291 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v27 = v7;
    v28 = 2112;
    v29 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [v5 entryLikeComments];
  v10 = [v5 entryComments];
  if ([v9 count] || objc_msgSend(v10, "count"))
  {
    v11 = [v9 lastObject];
    v12 = [v11 commentDate];

    v13 = [v10 lastObject];
    v14 = [v13 commentDate];

    if (v12)
    {
      v15 = [v12 laterDate:v14];
    }

    else
    {
      v15 = v14;
    }

    v16 = v15;
    v17 = [v5 entryDate];
    if (v16 && [v16 compare:v17] == -1)
    {
      [v5 setEntryDate:v16];
      v18 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [v5 objectID];
        *buf = 138412546;
        v27 = v16;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEBUG, "set date %@ for %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v23 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = [v5 objectID];
      *buf = 138412290;
      v27 = v24;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
    }

    v12 = [v5 managedObjectContext];
    [v12 deleteObject:v5];
  }

  v20 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    v22 = [v5 objectID];
    *buf = 138412546;
    v27 = v21;
    v28 = 2112;
    v29 = v22;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }
}

- (void)_noteContentDeletionAffectingAssetsEntry:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:1260 description:{@"Invalid parameter not satisfying: %@", @"entry"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v25 = v7;
    v26 = 2112;
    v27 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "will %@ %@", buf, 0x16u);
  }

  v9 = [v5 entryAssets];
  v10 = [v5 entryDate];
  v11 = [v10 copy];

  if ([v9 count])
  {
    v12 = [v9 lastObject];
    v13 = [(PLCloudFeedEntriesManager *)self _dateForAsset:v12];
    v14 = v13;
    if (v13 && [v13 compare:v11] == -1)
    {
      [(PLCloudFeedEntriesManager *)self _splitEntriesAtDate:v14];
      [v5 setEntryDate:v14];
      v15 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = [v5 objectID];
        *buf = 138412546;
        v25 = v14;
        v26 = 2112;
        v27 = v16;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "set date %@ for %@", buf, 0x16u);
      }

      [(PLCloudFeedEntriesManager *)self _mergeEntriesAroundDate:v11];
    }
  }

  else
  {
    v17 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v5 objectID];
      *buf = 138412290;
      v25 = v18;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
    }

    v19 = [v5 managedObjectContext];
    [v19 deleteObject:v5];

    [(PLCloudFeedEntriesManager *)self _mergeEntriesAroundDate:v11];
  }

  v20 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v21 = NSStringFromSelector(a2);
    v22 = [v5 objectID];
    *buf = 138412546;
    v25 = v21;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }
}

- (void)_noteDidDeleteShareParticipantWithParticipantID:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLCloudFeedEntriesManager *)self library];
  v6 = [v5 managedObjectContext];

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCloudFeedEntry entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((entryType = %d) OR (entryType = %d)) AND (entryInvitationRecordGUID = %@)", 5, 6, v4];
  [v9 setPredicate:v10];

  v25 = 0;
  v11 = [v6 executeFetchRequest:v9 error:&v25];
  v12 = v25;
  if (!v11)
  {
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v4;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Couldn't fetch entries for share participant with participantID %@. Error: %@", buf, 0x16u);
    }
  }

  v14 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = v4;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "will delete entries for participant with participantID=%@ cloudFeedEntries=%@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v6 deleteObject:*(*(&v21 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v17);
  }

  v20 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "did delete entries for participant with participantID=%@", buf, 0xCu);
  }
}

- (void)_noteDidUpdateShareParticipant:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:1177 description:{@"Invalid parameter not satisfying: %@", @"shareParticipant"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v40 = v7;
    v41 = 2112;
    v42 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  if (![(PLCloudFeedEntriesManager *)self _shouldIgnoreShareParticipant:v5])
  {
    v10 = [(PLCloudFeedEntriesManager *)self library];
    v9 = [v10 managedObjectContext];

    v11 = [v5 acceptanceStatus];
    v12 = [v5 role];
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v40 = v11;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "acceptanceStatus=%lu", buf, 0xCu);
    }

    v14 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v40 = v12;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "role=%lu", buf, 0xCu);
    }

    v15 = [v5 participantID];
    if (!v15)
    {
      if ([v5 role]== 1 && [v5 participantKind]== 1)
      {
        goto LABEL_41;
      }

      v16 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v40 = v5;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "no GUID for share participant %@", buf, 0xCu);
      }

LABEL_40:

LABEL_41:
      goto LABEL_42;
    }

    v16 = [v5 share];
    v17 = [v16 scopeIdentifier];
    v18 = v17;
    if (!v17)
    {
      v21 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v40 = v16;
        v41 = 2112;
        v42 = v5;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "no scopeIdentifier for album %@ of share participant %@", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v19 = v17;
    v20 = [v5 participantID];
    v21 = [(PLCloudFeedEntriesManager *)self _invitationAcceptedEntryForInvitationRecordWithGUID:v20];

    v22 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [v21 objectID];
      v38 = v21;
      v23 = v16;
      v24 = v15;
      v26 = v25 = a2;
      *buf = 138412290;
      v40 = v26;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "invitationAcceptedEntry=%@", buf, 0xCu);

      a2 = v25;
      v15 = v24;
      v16 = v23;
      v21 = v38;
    }

    if (v11 == 2 && v12 == 2)
    {
      v18 = v19;
      if (!v21)
      {
        v21 = [v5 subscriptionDate];
        if (v21)
        {
          v27 = a2;
          v28 = +[PLCloudFeedEntry entityName];
          v29 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v28, v9, 0);

          if (!v29)
          {
LABEL_39:

            goto LABEL_40;
          }

          [v29 setEntryType:5];
          [v29 setEntryPriorityNumber:&unk_1F0FBEE90];
          [v29 setEntryDate:v21];
          [v29 setEntryAlbumGUID:v18];
          [v29 setEntryInvitationRecordGUID:v15];
          v30 = PLCloudFeedGetLog();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v40 = v29;
            _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
          }

          a2 = v27;
        }

        else
        {
          v29 = 0;
        }

        v21 = v29;
      }
    }

    else
    {
      v18 = v19;
      if (v21)
      {
        v31 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [v21 objectID];
          v33 = v32 = a2;
          *buf = 138412290;
          v40 = v33;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);

          a2 = v32;
        }

        [v9 deleteObject:v21];
      }
    }

    v34 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v35 = NSStringFromSelector(a2);
      v36 = [v5 objectID];
      *buf = 138412546;
      v40 = v35;
      v41 = 2112;
      v42 = v36;
      _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
    }

    goto LABEL_39;
  }

  v9 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "ignoring", buf, 2u);
  }

LABEL_42:
}

- (void)_noteDidUpdateInvitationRecord:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:1117 description:{@"Invalid parameter not satisfying: %@", @"invitationRecord"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v31 = v7;
    v32 = 2112;
    v33 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  if (![(PLCloudFeedEntriesManager *)self _shouldIgnoreInvitationRecord:v5])
  {
    v10 = [(PLCloudFeedEntriesManager *)self library];
    v9 = [v10 managedObjectContext];

    v11 = [v5 invitationState];
    v12 = [v11 intValue];

    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v31 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "invitationState=%li", buf, 0xCu);
    }

    v14 = [v5 cloudGUID];
    if (!v14)
    {
      v15 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v5;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "no GUID for invitation record %@", buf, 0xCu);
      }

      goto LABEL_35;
    }

    v15 = [v5 album];
    v16 = [v15 cloudGUID];
    if (!v16)
    {
      v18 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v31 = v15;
        v32 = 2112;
        v33 = v5;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "no GUID for album %@ of invitation record %@", buf, 0x16u);
      }

      goto LABEL_34;
    }

    v17 = [v5 cloudGUID];
    v18 = [(PLCloudFeedEntriesManager *)self _invitationAcceptedEntryForInvitationRecordWithGUID:v17];

    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v20 = [v18 objectID];
      *buf = 138412290;
      v31 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "invitationAcceptedEntry=%@", buf, 0xCu);
    }

    if (v12 == 2)
    {
      if (!v18)
      {
        v18 = [v5 inviteeSubscriptionDate];
        if (v18)
        {
          v21 = +[PLCloudFeedEntry entityName];
          v22 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v21, v9, 0);

          if (!v22)
          {
LABEL_34:

LABEL_35:
            goto LABEL_36;
          }

          [v22 setEntryType:5];
          [v22 setEntryPriorityNumber:&unk_1F0FBEE90];
          [v22 setEntryDate:v18];
          [v22 setEntryAlbumGUID:v16];
          [v22 setEntryInvitationRecordGUID:v14];
          v23 = PLCloudFeedGetLog();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v31 = v22;
            _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
          }
        }

        else
        {
          v22 = 0;
        }

        v18 = v22;
      }
    }

    else if (v18)
    {
      v24 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v25 = [v18 objectID];
        *buf = 138412290;
        v31 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
      }

      [v9 deleteObject:v18];
    }

    v26 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      v27 = NSStringFromSelector(a2);
      v28 = [v5 objectID];
      *buf = 138412546;
      v31 = v27;
      v32 = 2112;
      v33 = v28;
      _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
    }

    goto LABEL_34;
  }

  v9 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "ignoring", buf, 2u);
  }

LABEL_36:
}

- (void)_noteDidReceiveSharedComment:(id)a3
{
  v74 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v69 = v5;
  if (!v5)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:968 description:{@"Invalid parameter not satisfying: %@", @"comment"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  if (![(PLCloudFeedEntriesManager *)self _shouldIgnoreComment:v69])
  {
    if ([(PLCloudFeedEntriesManager *)self _wasCommentPublishedBeforeSubscription:v69])
    {
      v9 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "comment published before subscription", buf, 2u);
      }

      goto LABEL_8;
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x2020000000;
    v68 = 0;
    v10 = [v69 commentDate];
    if (!v10)
    {
      v11 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v69;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "no date for comment %@", buf, 0xCu);
      }

      goto LABEL_58;
    }

    [(PLCloudFeedEntriesManager *)self _splitEntriesAtDate:v10];
    v63 = 0;
    v64 = 0;
    [(PLCloudFeedEntriesManager *)self _getEarliestDate:&v64 latestDate:&v63 forRangeOfContiguousCommentsEntriesAroundDate:v10];
    v11 = v64;
    v12 = v63;
    v48 = [v69 asset];
    v51 = [v48 cloudAssetGUID];
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v48 objectID];
      *buf = 138412802;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      *&buf[22] = 2112;
      v71 = v14;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "dateRangeBegin=%@ dateRangeEnd=%@ asset=%@", buf, 0x20u);
    }

    if (!v51)
    {
      v34 = PLCloudFeedGetLog();
      v50 = v34;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        *&buf[4] = v48;
        *&buf[12] = 2112;
        *&buf[14] = v69;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "no GUID for asset %@ of comment %@", buf, 0x16u);
      }

      goto LABEL_57;
    }

    v15 = [(PLCloudFeedEntriesManager *)self library];
    v50 = [v15 managedObjectContext];

    v49 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v16 = [(PLManagedObject *)PLCloudFeedCommentsEntry entityInManagedObjectContext:v50];
    [v49 setEntity:v16];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate > %@) AND (entryDate < %@) AND (entryCloudAssetGUID == %@)", v11, v12, v51];
    [v49 setPredicate:v17];

    v18 = [PLCloudFeedEntry entriesSortDescriptorsAscending:1];
    [v49 setSortDescriptors:v18];
    v45 = v18;
    v62 = 0;
    v19 = [v50 executeFetchRequest:v49 error:&v62];
    v46 = v62;
    if (!v19)
    {
      v20 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v46;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "error fetching comments entry in date range %@", buf, 0xCu);
      }

      v19 = 0;
    }

    v47 = v19;
    v21 = [v19 count];
    if (v21 >= 1)
    {
      v22 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v24 = [v69 isLikeBoolValue];
      v25 = v24;
      if (v24)
      {
        v26 = v22;
      }

      else
      {
        v26 = v23;
      }

      [v26 addObject:v69];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v71 = __Block_byref_object_copy__114406;
      v72 = __Block_byref_object_dispose__114407;
      v73 = 0;
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __58__PLCloudFeedEntriesManager__noteDidReceiveSharedComment___block_invoke;
      v52[3] = &unk_1E7577F30;
      v61 = v25;
      v27 = v22;
      v53 = v27;
      v58 = buf;
      v54 = v69;
      v28 = v23;
      v55 = v28;
      v60 = v21;
      v56 = v51;
      v57 = self;
      v59 = &v65;
      [v47 enumerateObjectsUsingBlock:v52];

      _Block_object_dispose(buf, 8);
    }

    if ((v66[3] & 1) == 0 && [v69 isLikeBoolValue])
    {
      v29 = [(PLCloudFeedEntriesManager *)self _firstEntryOnOrBeforeDate:v10];
      v30 = [(PLCloudFeedEntriesManager *)self _firstEntryAfterDate:v10];
      if ([(PLCloudFeedEntriesManager *)self _tryMergingComment:v69 withEntry:v29]|| [(PLCloudFeedEntriesManager *)self _tryMergingComment:v69 withEntry:v30])
      {
        *(v66 + 24) = 1;
      }
    }

    if ((v66[3] & 1) == 0)
    {
      v31 = [v48 collectionShare];
      v44 = [v31 scopeIdentifier];

      if (!v44)
      {
        v35 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          *&buf[4] = v69;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "no GUID for shared album of comment %@", buf, 0xCu);
        }

        goto LABEL_56;
      }

      if ([v69 isLikeBoolValue])
      {
        v32 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:&v69 count:1];
        v33 = 0;
      }

      else
      {
        v33 = [objc_alloc(MEMORY[0x1E695DFB8]) initWithObjects:&v69 count:1];
        v32 = 0;
      }

      v36 = +[PLCloudFeedCommentsEntry entityName];
      v37 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v36, v50, 0);

      [v37 setEntryType:2];
      [v37 setEntryPriorityNumber:&unk_1F0FBEE90];
      [v37 setEntryDate:v10];
      [v37 setEntryCloudAssetGUID:v51];
      [v37 setEntryAlbumGUID:v44];
      v38 = v32;
      if (!v32)
      {
        v38 = [MEMORY[0x1E695DFB8] orderedSet];
      }

      [v37 setEntryLikeComments:v38];
      if (!v32)
      {
      }

      v39 = v33;
      if (!v33)
      {
        v39 = [MEMORY[0x1E695DFB8] orderedSet];
      }

      [v37 setEntryComments:v39];
      if (!v33)
      {
      }

      v40 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v37;
        _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
      }
    }

    v35 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v41 = NSStringFromSelector(a2);
      v42 = [v69 objectID];
      *buf = 138412546;
      *&buf[4] = v41;
      *&buf[12] = 2112;
      *&buf[14] = v42;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
    }

LABEL_56:

LABEL_57:
LABEL_58:

    _Block_object_dispose(&v65, 8);
    goto LABEL_59;
  }

  v9 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v69;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "ignoring %@", buf, 0xCu);
  }

LABEL_8:

LABEL_59:
}

void __58__PLCloudFeedEntriesManager__noteDidReceiveSharedComment___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = [v6 objectID];
    v29 = 138412290;
    v30 = v8;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "found entry %@", &v29, 0xCu);
  }

  v9 = [v6 entryLikeComments];
  if ([v9 count] && *(a1 + 96) == 1)
  {
    v10 = *(a1 + 32);
    v11 = [v9 array];
    [v10 addObjectsFromArray:v11];

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
  }

  v12 = [v6 entryComments];
  if ([v12 count])
  {
    if ((*(a1 + 96) & 1) == 0)
    {
      v13 = [v6 entryIsMine];
      v14 = [*(a1 + 40) isMyComment];
      v15 = [v14 BOOLValue];

      if (v13 == v15)
      {
        v16 = *(a1 + 48);
        v17 = [v12 array];
        [v16 addObjectsFromArray:v17];

        objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
      }
    }
  }

  v18 = *(*(*(a1 + 72) + 8) + 40);
  if (*(a1 + 88) - 1 != a3 && v18 == v6)
  {
    v19 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 56);
      v29 = 138412290;
      v30 = v20;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "found multiple entries for assetGUID: %@. Should only try to merge to the last one", &v29, 0xCu);
    }

LABEL_21:

    goto LABEL_22;
  }

  if (v18)
  {
    v19 = [*(a1 + 64) _commentSortingComparator];
    [*(a1 + 32) sortUsingComparator:v19];
    [*(a1 + 48) sortUsingComparator:v19];
    v21 = [*(a1 + 32) lastObject];
    v22 = [v21 commentDate];

    v23 = [*(a1 + 48) lastObject];
    v24 = [v23 commentDate];

    if (v22)
    {
      v25 = [v22 laterDate:v24];
    }

    else
    {
      v25 = v24;
    }

    v26 = v25;
    [*(*(*(a1 + 72) + 8) + 40) setEntryDate:v25];
    v27 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [*(*(*(a1 + 72) + 8) + 40) objectID];
      v29 = 138412546;
      v30 = v26;
      v31 = 2112;
      v32 = v28;
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEFAULT, "set date %@ for %@ and merged to last found entry", &v29, 0x16u);
    }

    [*(*(*(a1 + 72) + 8) + 40) setEntryLikeComments:*(a1 + 32)];
    [*(*(*(a1 + 72) + 8) + 40) setEntryComments:*(a1 + 48)];
    *(*(*(a1 + 80) + 8) + 24) = 1;

    goto LABEL_21;
  }

LABEL_22:
}

- (void)_noteDidReceiveSharedComments:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(PLCloudFeedEntriesManager *)self _noteDidReceiveSharedComment:v9, v11];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_noteDidReceiveSharedAssetPublishedBeforeSubscription:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    v15 = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", &v15, 0x16u);
  }

  v9 = [v5 collectionShare];
  v10 = [v9 scopeIdentifier];

  v11 = [(PLCloudFeedEntriesManager *)self _subscriptionEntryForSharedAlbumWithGUID:v10];
  if (v11)
  {
    [(PLCloudFeedEntriesManager *)self _addAsset:v5 toEntry:v11];
    v12 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = NSStringFromSelector(a2);
      v14 = [v5 objectID];
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "did %@ %@", &v15, 0x16u);
    }
  }

  else
  {
    v12 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "asset received with no subscription entry %@", &v15, 0xCu);
    }
  }
}

- (void)_noteDidReceiveSharedAsset:(id)a3
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v45 = [MEMORY[0x1E696AAA8] currentHandler];
    [v45 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:856 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v51 = v7;
    v52 = 2112;
    v53 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [(PLCloudFeedEntriesManager *)self _dateForAsset:v5];
  v10 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v51 = v9;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "assetDate=%@", buf, 0xCu);
  }

  if (!v9)
  {
    v11 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v51 = v5;
      v12 = "no date for asset %@";
      v13 = v11;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 12;
      goto LABEL_13;
    }

LABEL_14:

    goto LABEL_15;
  }

  if ([(PLCloudFeedEntriesManager *)self _shouldIgnoreAsset:v5])
  {
    v11 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      v12 = "ignoring";
      v13 = v11;
      v14 = OS_LOG_TYPE_DEBUG;
      v15 = 2;
LABEL_13:
      _os_log_impl(&dword_19BF1F000, v13, v14, v12, buf, v15);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if ([(PLCloudFeedEntriesManager *)self _wasAssetPublishedBeforeSubscription:v5])
  {
    v16 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v51 = v5;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "_wasAssetPublishedBeforeSubscription %@", buf, 0xCu);
    }

    [(PLCloudFeedEntriesManager *)self _noteDidReceiveSharedAssetPublishedBeforeSubscription:v5];
  }

  else
  {
    v17 = [(PLCloudFeedEntriesManager *)self _firstEntryOnOrBeforeDate:v9];
    v18 = [(PLCloudFeedEntriesManager *)self _firstEntryAfterDate:v9];
    v19 = [(PLCloudFeedEntriesManager *)self _shouldMergeAsset:v5 intoEntry:v17];
    v20 = [(PLCloudFeedEntriesManager *)self _shouldMergeAsset:v5 intoEntry:v18];
    v21 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [v17 objectID];
      v48 = v17;
      v23 = v22 = v18;
      v24 = [v22 objectID];
      *buf = 138413058;
      v51 = v23;
      v52 = 2112;
      v53 = v24;
      v54 = 1024;
      v55 = v19;
      v56 = 1024;
      v57 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "entryBefore=%@ entryAfter=%@ shouldMergeWithEntryBefore=%i shouldMergeWithEntryAfter=%i", buf, 0x22u);

      v18 = v22;
      v17 = v48;
    }

    if (v19)
    {
      [(PLCloudFeedEntriesManager *)self _addAsset:v5 toEntry:v17];
      v25 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        v26 = [v17 objectID];
        *buf = 138412546;
        v51 = v9;
        v52 = 2112;
        v53 = v26;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "set date %@ for %@", buf, 0x16u);
      }

      [v17 setEntryDate:v9];
      if (v20)
      {
        [(PLCloudFeedEntriesManager *)self _mergeOlderEntry:v17 intoMoreRecentEntry:v18];
      }
    }

    else if (v20)
    {
      [(PLCloudFeedEntriesManager *)self _addAsset:v5 toEntry:v18];
    }

    else
    {
      [(PLCloudFeedEntriesManager *)self _splitEntriesAtDate:v9];
      v27 = [(PLCloudFeedEntriesManager *)self library];
      v28 = [v27 managedObjectContext];

      v29 = [v5 collectionShare];
      v30 = [v29 scopeIdentifier];
      v46 = [v29 isCurrentUserOwner];
      if (!v30)
      {
        v31 = v28;
        v32 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v51 = v5;
          _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "no GUID for shared album of asset %@", buf, 0xCu);
        }

        v28 = v31;
      }

      v47 = v18;
      v49 = v17;
      v33 = +[PLCloudFeedAssetsEntry entityName];
      v34 = v28;
      v35 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v33, v28, 0);

      [v35 setEntryType:1];
      [v35 setEntryPriorityNumber:&unk_1F0FBEE90];
      [v35 setEntryDate:v9];
      v36 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v5];
      [v35 setEntryAssets:v36];

      [v35 setEntryAlbumGUID:v30];
      v37 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v51 = v35;
        _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
      }

      v38 = v34;
      if (v35 && ([v5 cloudIsMyAsset] & v46) == 1)
      {
        v39 = [(PLCloudFeedEntriesManager *)self _albumCreatedEntryForSharedAlbumWithGUID:v30];
        if (v39)
        {
          v40 = PLCloudFeedGetLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            v41 = [v39 objectID];
            *buf = 138412290;
            v51 = v41;
            _os_log_impl(&dword_19BF1F000, v40, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
          }

          [v38 deleteObject:v39];
        }
      }

      v18 = v47;
      v17 = v49;
    }

    v42 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      v43 = NSStringFromSelector(a2);
      v44 = [v5 objectID];
      *buf = 138412546;
      v51 = v43;
      v52 = 2112;
      v53 = v44;
      _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
    }
  }

LABEL_15:
}

- (void)_noteContentDeletionAffectingAlbumCreatedEntry:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:840 description:{@"Invalid parameter not satisfying: %@", @"albumCreatedEntry"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "%@ %@", buf, 0x16u);
  }

  v9 = [(PLCloudFeedEntriesManager *)self library];
  v10 = [v9 managedObjectContext];

  v11 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 objectID];
    *buf = 138412290;
    v15 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "delete album entry: %@", buf, 0xCu);
  }

  [v10 deleteObject:v5];
}

- (void)_noteContentDeletionAffectingInvitationResponseEntry:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"invitationSentEntry"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [(PLCloudFeedEntriesManager *)self library];
  v10 = [v9 managedObjectContext];

  v11 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 objectID];
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "delete invitation response entry: %@", buf, 0xCu);
  }

  [v10 deleteObject:v5];
  v13 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromSelector(a2);
    v15 = [v5 objectID];
    *buf = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }
}

- (void)_noteContentDeletionAffectingSubscriptionEntry:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:806 description:{@"Invalid parameter not satisfying: %@", @"subscriptionEntry"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v24 = v7;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [v5 entryAlbumGUID];
  v10 = [(PLCloudFeedEntriesManager *)self library];
  v11 = [v10 managedObjectContext];
  v12 = [(PLShare *)PLCollectionShare shareWithScopeIdentifier:v9 includeTrashed:1 inManagedObjectContext:v11];

  v13 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v12 objectID];
    v15 = [v12 isDeleted];
    *buf = 138412546;
    v24 = v14;
    v25 = 1024;
    LODWORD(v26) = v15;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "album=%@ isDeleted=%i", buf, 0x12u);
  }

  if (!v12 || [v12 isDeleted])
  {
    v16 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v5 objectID];
      *buf = 138412290;
      v24 = v17;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "delete subscription entry: %@", buf, 0xCu);
    }

    v18 = [v10 managedObjectContext];
    [v18 deleteObject:v5];
  }

  v19 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = NSStringFromSelector(a2);
    v21 = [v5 objectID];
    *buf = 138412546;
    v24 = v20;
    v25 = 2112;
    v26 = v21;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }
}

- (void)_noteContentDeletionAffectingInvitationEntry:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"invitationReceivedEntry"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [(PLCloudFeedEntriesManager *)self library];
  v10 = [v9 managedObjectContext];

  v11 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v5 objectID];
    *buf = 138412290;
    v18 = v12;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "delete invitation received entry: %@", buf, 0xCu);
  }

  [v10 deleteObject:v5];
  v13 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromSelector(a2);
    v15 = [v5 objectID];
    *buf = 138412546;
    v18 = v14;
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
  }
}

- (void)_noteDidDeleteCollectionShareWithScopeIdentifier:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLCloudFeedEntriesManager *)self library];
  v6 = [v5 managedObjectContext];

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLCloudFeedEntry entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((entryType = %d) OR (entryType = %d) OR (entryType = %d)) AND (entryAlbumGUID = %@)", 3, 4, 7, v4];
  [v9 setPredicate:v10];

  v25 = 0;
  v11 = [v6 executeFetchRequest:v9 error:&v25];
  v12 = v25;
  if (!v11)
  {
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = v4;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Couldn't fetch entries for collection share with scope identifier %@. Error: %@", buf, 0x16u);
    }
  }

  v14 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v28 = v4;
    v29 = 2112;
    v30 = v11;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "will delete entries for album with scopeIdentifier=%@ cloudFeedEntries=%@", buf, 0x16u);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [v6 deleteObject:*(*(&v21 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v17);
  }

  v20 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "did delete entries for album with scopeIdentifier=%@", buf, 0xCu);
  }
}

- (void)_noteDidUpdateCollectionShare:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:645 description:{@"Invalid parameter not satisfying: %@", @"collectionShare"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v50 = v7;
    v51 = 2112;
    v52 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [(PLCloudFeedEntriesManager *)self library];
  v10 = [v9 managedObjectContext];

  v11 = [v5 status];
  v12 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v50) = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "status=%hd", buf, 8u);
  }

  v13 = [v5 scopeIdentifier];
  v14 = [(PLCloudFeedEntriesManager *)self _invitationReceivedEntryForSharedAlbumWithGUID:v13];

  v15 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v50 = v14;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "invitationReceivedEntry=%@", buf, 0xCu);
  }

  if (v11 != 2)
  {
    if (v14)
    {
      v21 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v14 objectID];
        *buf = 138412290;
        v50 = v22;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
      }

      [v10 deleteObject:v14];
    }

LABEL_27:
    v24 = [v5 scopeIdentifier];
    v17 = [(PLCloudFeedEntriesManager *)self _subscriptionEntryForSharedAlbumWithGUID:v24];

    v25 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = v17;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "subscriptionEntry=%@", buf, 0xCu);
    }

    if (v11 == 3)
    {
      if (v17)
      {
        v26 = [v17 entryDate];
        [v17 setEntryDate:v26];

        v27 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v17 objectID];
          *buf = 138412290;
          v50 = v28;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "touched %@", buf, 0xCu);
        }
      }

      else
      {
        v17 = [v5 cloudSubscriptionDate];
        if (v17)
        {
          v31 = [v5 scopeIdentifier];
          if (v31)
          {
            v32 = +[PLCloudFeedAssetsEntry entityName];
            v33 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v32, v10, 0);

            if (!v33)
            {
              goto LABEL_71;
            }

            [v33 setEntryType:4];
            [v33 setEntryPriorityNumber:&unk_1F0FBEE90];
            [v33 setEntryDate:v17];
            [v33 setEntryAlbumGUID:v31];
            v34 = [MEMORY[0x1E695DFB8] orderedSet];
            [v33 setEntryAssets:v34];

            v35 = PLCloudFeedGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v50 = v14;
              _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
            }
          }

          else
          {
            v35 = PLCloudFeedGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v50 = v5;
              _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "no GUID for album %@", buf, 0xCu);
            }

            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v17 = v33;
      }
    }

    else if (v17)
    {
      v29 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v17 objectID];
        *buf = 138412290;
        v50 = v30;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
      }

      [v10 deleteObject:v17];
    }

    if (![v5 isCurrentUserOwner])
    {
      goto LABEL_69;
    }

    v36 = [v5 scopeIdentifier];
    v37 = [(PLCloudFeedEntriesManager *)self _albumCreatedEntryForSharedAlbumWithGUID:v36];

    v38 = [v5 collectionShareAssets];
    v39 = [v38 count];

    if (v39 || v37)
    {
      if (v39 && v37)
      {
        v44 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = [v17 objectID];
          *buf = 138412290;
          v50 = v45;
          _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "delete album created entry: %@", buf, 0xCu);
        }

        [v10 deleteObject:v37];
      }

      goto LABEL_68;
    }

    v40 = [v5 creationDate];
    if (!v40)
    {
      v40 = [v5 lastModifiedDate];
      if (!v40)
      {
        v31 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v50 = v5;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "ignoring album with no creation date %@", buf, 0xCu);
        }

        v37 = 0;
        goto LABEL_67;
      }
    }

    v31 = v40;
    v41 = [v5 scopeIdentifier];
    if (!v41)
    {
      v43 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v50 = v5;
        _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "no GUID for album %@", buf, 0xCu);
      }

      v37 = 0;
      goto LABEL_66;
    }

    v42 = +[PLCloudFeedEntry entityName];
    v37 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v42, v10, 0);

    if (v37)
    {
      [v37 setEntryType:7];
      [v37 setEntryPriorityNumber:&unk_1F0FBEE90];
      [v37 setEntryDate:v31];
      [v37 setEntryAlbumGUID:v41];
      v43 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v50 = v14;
        _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
      }

LABEL_66:

LABEL_67:
LABEL_68:

LABEL_69:
      v31 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v46 = NSStringFromSelector(a2);
        v47 = [v5 objectID];
        *buf = 138412546;
        v50 = v46;
        v51 = 2112;
        v52 = v47;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
      }

      goto LABEL_71;
    }

LABEL_71:
    goto LABEL_72;
  }

  if (v14)
  {
    goto LABEL_27;
  }

  v14 = [v5 lastModifiedDate];
  v16 = [v5 scopeIdentifier];
  v17 = v16;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_23:
    v20 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v50 = v5;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "no GUID for album %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_26;
  }

  v23 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v50 = v5;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "couldn't find invitation date for %@, using current date instead", buf, 0xCu);
  }

  v14 = [MEMORY[0x1E695DF00] date];
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_13:
  v18 = +[PLCloudFeedEntry entityName];
  v19 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v18, v10, 0);

  if (v19)
  {
    [v19 setEntryType:3];
    [v19 setEntryPriorityNumber:&unk_1F0FBEE78];
    [v19 setEntryDate:v14];
    [v19 setEntryAlbumGUID:v17];
    v20 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v50 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
    }

LABEL_26:

    v14 = v19;
    goto LABEL_27;
  }

LABEL_72:
}

- (void)_noteDidUpdateSharedAlbum:(id)a3
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"sharedAlbum"}];
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = NSStringFromSelector(a2);
    v8 = [v5 objectID];
    *buf = 138412546;
    v49 = v7;
    v50 = 2112;
    v51 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "will %@ %@", buf, 0x16u);
  }

  v9 = [(PLCloudFeedEntriesManager *)self library];
  v10 = [v9 managedObjectContext];

  v11 = [v5 cloudRelationshipStateLocalValue];
  v12 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v49 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "relationshipState=%li", buf, 0xCu);
  }

  v13 = [v5 cloudGUID];
  v14 = [(PLCloudFeedEntriesManager *)self _invitationReceivedEntryForSharedAlbumWithGUID:v13];

  v15 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v49 = v14;
    _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "invitationReceivedEntry=%@", buf, 0xCu);
  }

  if (v11 != 1)
  {
    if (v14)
    {
      v21 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v22 = [v14 objectID];
        *buf = 138412290;
        v49 = v22;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
      }

      [v10 deleteObject:v14];
    }

LABEL_27:
    v24 = [v5 cloudGUID];
    v17 = [(PLCloudFeedEntriesManager *)self _subscriptionEntryForSharedAlbumWithGUID:v24];

    v25 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v49 = v17;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "subscriptionEntry=%@", buf, 0xCu);
    }

    if (v11 == 2)
    {
      if (v17)
      {
        v26 = [v17 entryDate];
        [v17 setEntryDate:v26];

        v27 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          v28 = [v17 objectID];
          *buf = 138412290;
          v49 = v28;
          _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_DEBUG, "touched %@", buf, 0xCu);
        }
      }

      else
      {
        v17 = [v5 cloudSubscriptionDate];
        if (v17)
        {
          v31 = [v5 cloudGUID];
          if (v31)
          {
            v32 = +[PLCloudFeedAssetsEntry entityName];
            v33 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v32, v10, 0);

            if (!v33)
            {
              goto LABEL_72;
            }

            [v33 setEntryType:4];
            [v33 setEntryPriorityNumber:&unk_1F0FBEE90];
            [v33 setEntryDate:v17];
            [v33 setEntryAlbumGUID:v31];
            v34 = [MEMORY[0x1E695DFB8] orderedSet];
            [v33 setEntryAssets:v34];

            v35 = PLCloudFeedGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v49 = v14;
              _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
            }
          }

          else
          {
            v35 = PLCloudFeedGetLog();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v5;
              _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "no GUID for album %@", buf, 0xCu);
            }

            v33 = 0;
          }
        }

        else
        {
          v33 = 0;
        }

        v17 = v33;
      }
    }

    else if (v17)
    {
      v29 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = [v17 objectID];
        *buf = 138412290;
        v49 = v30;
        _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_DEBUG, "delete %@", buf, 0xCu);
      }

      [v10 deleteObject:v17];
    }

    if (![v5 isOwnedCloudSharedAlbum])
    {
      goto LABEL_70;
    }

    v36 = [v5 cloudGUID];
    v37 = [(PLCloudFeedEntriesManager *)self _albumCreatedEntryForSharedAlbumWithGUID:v36];

    v38 = [v5 isEmpty] ^ 1;
    if ((v38 & 1) != 0 || v37)
    {
      if (!v37)
      {
        v38 = 0;
      }

      if (v38 == 1)
      {
        v43 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          v44 = [v17 objectID];
          *buf = 138412290;
          v49 = v44;
          _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "delete album created entry: %@", buf, 0xCu);
        }

        [v10 deleteObject:v37];
      }

      goto LABEL_69;
    }

    v39 = [v5 cloudCreationDate];
    if (!v39)
    {
      v39 = [v5 cloudLastInterestingChangeDate];
      if (!v39)
      {
        v31 = PLCloudFeedGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v49 = v5;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "ignoring album with no creation date %@", buf, 0xCu);
        }

        v37 = 0;
        goto LABEL_68;
      }
    }

    v31 = v39;
    v40 = [v5 cloudGUID];
    if (!v40)
    {
      v42 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v5;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_ERROR, "no GUID for album %@", buf, 0xCu);
      }

      v37 = 0;
      goto LABEL_67;
    }

    v41 = +[PLCloudFeedEntry entityName];
    v37 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v41, v10, 0);

    if (v37)
    {
      [v37 setEntryType:7];
      [v37 setEntryPriorityNumber:&unk_1F0FBEE90];
      [v37 setEntryDate:v31];
      [v37 setEntryAlbumGUID:v40];
      v42 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v49 = v14;
        _os_log_impl(&dword_19BF1F000, v42, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
      }

LABEL_67:

LABEL_68:
LABEL_69:

LABEL_70:
      v31 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v45 = NSStringFromSelector(a2);
        v46 = [v5 objectID];
        *buf = 138412546;
        v49 = v45;
        v50 = 2112;
        v51 = v46;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "did %@ %@", buf, 0x16u);
      }

      goto LABEL_72;
    }

LABEL_72:
    goto LABEL_73;
  }

  if (v14)
  {
    goto LABEL_27;
  }

  v14 = [v5 cloudLastInterestingChangeDate];
  v16 = [v5 cloudGUID];
  v17 = v16;
  if (v14)
  {
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_23:
    v20 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v49 = v5;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "no GUID for album %@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_26;
  }

  v23 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v49 = v5;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "couldn't find invitation date for %@, using current date instead", buf, 0xCu);
  }

  v14 = [MEMORY[0x1E695DF00] date];
  if (!v17)
  {
    goto LABEL_23;
  }

LABEL_13:
  v18 = +[PLCloudFeedEntry entityName];
  v19 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v18, v10, 0);

  if (v19)
  {
    [v19 setEntryType:3];
    [v19 setEntryPriorityNumber:&unk_1F0FBEE78];
    [v19 setEntryDate:v14];
    [v19 setEntryAlbumGUID:v17];
    v20 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v49 = v19;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "created %@", buf, 0xCu);
    }

LABEL_26:

    v14 = v19;
    goto LABEL_27;
  }

LABEL_73:
}

- (void)rebuildAllEntries:(id)a3
{
  v4 = a3;
  v5 = [(PLCloudFeedEntriesManager *)self library];
  v6 = [v5 managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = v6;
  v10 = self;
  v7 = v6;
  [v5 performTransaction:v8 completionHandler:v4 withPriority:1];
}

void __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  Current = CFAbsoluteTimeGetCurrent();
  v3 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "start rebuilding entries", buf, 2u);
  }

  v4 = MEMORY[0x1E695D5E0];
  v5 = +[PLCloudFeedEntry entityName];
  v6 = [v4 fetchRequestWithEntityName:v5];

  [v6 setFetchBatchSize:100];
  v7 = [*(a1 + 32) executeFetchRequest:v6 error:0];
  v8 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 count];
    *buf = 134217984;
    *v62 = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "deleting %li entries", buf, 0xCu);
  }

  v10 = *(a1 + 32);
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_78;
  v59[3] = &unk_1E7577F08;
  v60 = v10;
  v11 = [v60 enumerateWithIncrementalSaveUsingObjects:v7 shouldRefreshAfterSave:1 withBlock:v59];
  if (v11)
  {
    v12 = v11;
    v13 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v62 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "failed to delete feed entries with error: %@", buf, 0xCu);
    }

    goto LABEL_31;
  }

  v14 = MEMORY[0x1E695D5E0];
  v15 = +[PLCloudSharedAlbum entityName];
  v6 = [v14 fetchRequestWithEntityName:v15];

  [v6 setFetchBatchSize:100];
  v7 = [*(a1 + 32) executeFetchRequest:v6 error:0];
  v16 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v7 count];
    *buf = 134217984;
    *v62 = v17;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "rebuilding from %li shared albums", buf, 0xCu);
  }

  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_80;
  v58[3] = &unk_1E7577F08;
  v18 = *(a1 + 32);
  v58[4] = *(a1 + 40);
  v19 = [v18 enumerateWithIncrementalSaveUsingObjects:v7 shouldRefreshAfterSave:1 withBlock:v58];
  if (v19)
  {
    v20 = v19;
    v21 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v62 = v20;
      v22 = "failed to rebuild albums with error: %@";
LABEL_29:
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
      goto LABEL_30;
    }

    goto LABEL_30;
  }

  v23 = MEMORY[0x1E695D5E0];
  v24 = +[PLCollectionShare entityName];
  v6 = [v23 fetchRequestWithEntityName:v24];

  [v6 setFetchBatchSize:100];
  v7 = [*(a1 + 32) executeFetchRequest:v6 error:0];
  v25 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [v7 count];
    *buf = 134217984;
    *v62 = v26;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEFAULT, "rebuilding from %li collection shares", buf, 0xCu);
  }

  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_81;
  v57[3] = &unk_1E7577F08;
  v27 = *(a1 + 32);
  v57[4] = *(a1 + 40);
  v28 = [v27 enumerateWithIncrementalSaveUsingObjects:v7 shouldRefreshAfterSave:1 withBlock:v57];
  if (v28)
  {
    v20 = v28;
    v21 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v62 = v20;
      v22 = "failed to rebuild collection shares with error: %@";
      goto LABEL_29;
    }

LABEL_30:

LABEL_31:
    v42 = 0;
    goto LABEL_32;
  }

  v29 = MEMORY[0x1E695D5E0];
  v30 = +[PLManagedAsset entityName];
  v6 = [v29 fetchRequestWithEntityName:v30];

  v31 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForCloudSharedAsset"), 1}];
  [v6 setPredicate:v31];

  [v6 setFetchBatchSize:100];
  v7 = [*(a1 + 32) executeFetchRequest:v6 error:0];
  v32 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [v7 count];
    *buf = 134217984;
    *v62 = v33;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEFAULT, "rebuilding from %li shared assets", buf, 0xCu);
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_83;
  v56[3] = &unk_1E7577F08;
  v34 = *(a1 + 32);
  v56[4] = *(a1 + 40);
  v35 = [v34 enumerateWithIncrementalSaveUsingObjects:v7 shouldRefreshAfterSave:1 withBlock:v56];
  if (v35)
  {
    v20 = v35;
    v21 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v62 = v20;
      v22 = "failed to rebuild assets with error: %@";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v36 = MEMORY[0x1E695D5E0];
  v37 = +[PLCloudSharedAlbumInvitationRecord entityName];
  v6 = [v36 fetchRequestWithEntityName:v37];

  [v6 setFetchBatchSize:100];
  v7 = [*(a1 + 32) executeFetchRequest:v6 error:0];
  v38 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v39 = [v7 count];
    *buf = 134217984;
    *v62 = v39;
    _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEFAULT, "rebuilding from %li invitations", buf, 0xCu);
  }

  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_84;
  v55[3] = &unk_1E7577F08;
  v40 = *(a1 + 32);
  v55[4] = *(a1 + 40);
  v41 = [v40 enumerateWithIncrementalSaveUsingObjects:v7 shouldRefreshAfterSave:1 withBlock:v55];
  if (v41)
  {
    v20 = v41;
    v21 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v62 = v20;
      v22 = "failed to rebuild invitations with error: %@";
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  v45 = MEMORY[0x1E695D5E0];
  v46 = +[PLShareParticipant entityName];
  v47 = [v45 fetchRequestWithEntityName:v46];

  [v47 setFetchBatchSize:100];
  v48 = [*(a1 + 32) executeFetchRequest:v47 error:0];
  v49 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    v50 = [v48 count];
    *buf = 134217984;
    *v62 = v50;
    _os_log_impl(&dword_19BF1F000, v49, OS_LOG_TYPE_DEFAULT, "rebuilding from %li share participants", buf, 0xCu);
  }

  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_85;
  v54[3] = &unk_1E7577F08;
  v51 = *(a1 + 32);
  v54[4] = *(a1 + 40);
  v52 = [v51 enumerateWithIncrementalSaveUsingObjects:v48 shouldRefreshAfterSave:1 withBlock:v54];
  if (v52)
  {
    v53 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *v62 = v52;
      _os_log_impl(&dword_19BF1F000, v53, OS_LOG_TYPE_ERROR, "failed to rebuild share participants with error: %@", buf, 0xCu);
    }
  }

  v42 = v52 == 0;

LABEL_32:
  v43 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = CFAbsoluteTimeGetCurrent();
    *buf = 67109376;
    *v62 = v42;
    *&v62[4] = 2048;
    *&v62[6] = v44 - Current;
    _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEFAULT, "finished rebuilding entries (success=%i, time=%fs)", buf, 0x12u);
  }
}

void __47__PLCloudFeedEntriesManager_rebuildAllEntries___block_invoke_83(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _noteDidReceiveSharedAsset:v4];
  v5 = *(a1 + 32);
  v6 = [v4 likeComments];
  [v5 _noteDidReceiveSharedComments:v6];

  v7 = *(a1 + 32);
  v8 = [v4 cloudComments];

  [v7 _noteDidReceiveSharedComments:v8];
}

- (void)_processShareParticipantUpdates:(id)a3 moc:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLShareParticipant entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v6];
  [v10 setPredicate:v11];

  v24 = 0;
  v12 = [v7 executeFetchRequest:v10 error:&v24];
  v13 = v24;
  if (!v12)
  {
    v14 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Couldn't fetch updated share participants with objectIDs %@. Error: %@", buf, 0x16u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PLCloudFeedEntriesManager *)self _noteDidUpdateShareParticipant:*(*(&v20 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)_processCollectionShareUpdates:(id)a3 moc:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E695D5E0];
  v9 = +[PLCollectionShare entityName];
  v10 = [v8 fetchRequestWithEntityName:v9];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", v6];
  [v10 setPredicate:v11];

  v24 = 0;
  v12 = [v7 executeFetchRequest:v10 error:&v24];
  v13 = v24;
  if (!v12)
  {
    v14 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v27 = v6;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Couldn't fetch updated collection shares with objectIDs %@. Error: %@", buf, 0x16u);
    }
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(PLCloudFeedEntriesManager *)self _noteDidUpdateCollectionShare:*(*(&v20 + 1) + 8 * v19++)];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v17);
  }
}

- (void)processAlbumUpdates:(id)a3 collectionShareUpdates:(id)a4 collectionShareDeletes:(id)a5 assetInserts:(id)a6 assetUpdates:(id)a7 commentInserts:(id)a8 invitationRecordUpdates:(id)a9 shareParticipantUpdates:(id)a10 shareParticipantDeletes:(id)a11 deletionEntries:(id)a12 completionHandler:(id)a13
{
  v69 = *MEMORY[0x1E69E9840];
  v47 = a3;
  v49 = a4;
  v53 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v48 = a9;
  v52 = a10;
  v21 = a11;
  v51 = a12;
  v50 = a13;
  v22 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v23 = NSStringFromSelector(a2);
    *buf = 138412290;
    v68 = v23;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEBUG, "will %@", buf, 0xCu);
  }

  v24 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v47;
    _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEBUG, "albumUpdates=%@", buf, 0xCu);
  }

  v25 = PLCloudFeedGetLog();
  v26 = v18;
  v27 = v49;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v49;
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_DEBUG, "collectionShareUpdates=%@", buf, 0xCu);
  }

  v28 = PLCloudFeedGetLog();
  v29 = v19;
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v53;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEBUG, "collectionShareDeletes=%@", buf, 0xCu);
  }

  v30 = PLCloudFeedGetLog();
  v31 = v20;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v26;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "assetInserts=%@", buf, 0xCu);
  }

  v32 = PLCloudFeedGetLog();
  v33 = v48;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v29;
    _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_DEBUG, "assetUpdates=%@", buf, 0xCu);
  }

  v34 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v31;
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEBUG, "commentInserts=%@", buf, 0xCu);
  }

  v35 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v48;
    _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEBUG, "invitationRecordUpdates=%@", buf, 0xCu);
  }

  v36 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v52;
    _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEBUG, "shareParticipantUpdates=%@", buf, 0xCu);
  }

  v37 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v21;
    _os_log_impl(&dword_19BF1F000, v37, OS_LOG_TYPE_DEBUG, "shareParticipantDeletes=%@", buf, 0xCu);
  }

  v38 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v68 = v51;
    _os_log_impl(&dword_19BF1F000, v38, OS_LOG_TYPE_DEBUG, "deletionEntries=%@", buf, 0xCu);
  }

  if ([v47 count] || objc_msgSend(v49, "count") || objc_msgSend(v53, "count") || objc_msgSend(v26, "count") || objc_msgSend(v29, "count") || objc_msgSend(v31, "count") || objc_msgSend(v48, "count") || objc_msgSend(v52, "count") || objc_msgSend(v21, "count") || objc_msgSend(v51, "count"))
  {
    v39 = [(PLCloudFeedEntriesManager *)self library];
    v40 = [v39 managedObjectContext];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __242__PLCloudFeedEntriesManager_processAlbumUpdates_collectionShareUpdates_collectionShareDeletes_assetInserts_assetUpdates_commentInserts_invitationRecordUpdates_shareParticipantUpdates_shareParticipantDeletes_deletionEntries_completionHandler___block_invoke;
    v54[3] = &unk_1E7577EE0;
    v55 = v47;
    v56 = v40;
    v57 = self;
    v58 = v49;
    v59 = v53;
    v60 = v26;
    v61 = v29;
    v62 = v31;
    v63 = v48;
    v64 = v52;
    v41 = v21;
    v65 = v21;
    v66 = v51;
    v42 = v40;
    [v39 performTransaction:v54 completionHandler:v50];
    v43 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      v44 = NSStringFromSelector(a2);
      *buf = 138412290;
      v68 = v44;
      _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_DEBUG, "did %@", buf, 0xCu);

      v33 = v48;
      v27 = v49;
    }
  }

  else
  {
    v41 = v21;
    if (v50)
    {
      v50[2]();
    }
  }
}

void __242__PLCloudFeedEntriesManager_processAlbumUpdates_collectionShareUpdates_collectionShareDeletes_assetInserts_assetUpdates_commentInserts_invitationRecordUpdates_shareParticipantUpdates_shareParticipantDeletes_deletionEntries_completionHandler___block_invoke(id *a1)
{
  v104 = *MEMORY[0x1E69E9840];
  if ([a1[4] count])
  {
    v2 = MEMORY[0x1E695D5E0];
    v3 = +[PLCloudSharedAlbum entityName];
    v4 = [v2 fetchRequestWithEntityName:v3];

    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1[4]];
    [v4 setPredicate:v5];

    v6 = [a1[5] executeFetchRequest:v4 error:0];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v91 objects:v103 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v92;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v92 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [a1[6] _noteDidUpdateSharedAlbum:*(*(&v91 + 1) + 8 * i)];
        }

        v8 = [v6 countByEnumeratingWithState:&v91 objects:v103 count:16];
      }

      while (v8);
    }
  }

  if ([a1[7] count])
  {
    [a1[6] _processCollectionShareUpdates:a1[7] moc:a1[5]];
  }

  if ([a1[8] count])
  {
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v11 = a1[8];
    v12 = [v11 countByEnumeratingWithState:&v87 objects:v102 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v88;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v88 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [a1[6] _noteDidDeleteCollectionShareWithScopeIdentifier:*(*(&v87 + 1) + 8 * j)];
        }

        v13 = [v11 countByEnumeratingWithState:&v87 objects:v102 count:16];
      }

      while (v13);
    }
  }

  if ([a1[9] count])
  {
    v16 = MEMORY[0x1E695D5E0];
    v17 = +[PLManagedAsset entityName];
    v18 = [v16 fetchRequestWithEntityName:v17];

    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1[9]];
    [v18 setPredicate:v19];

    v20 = [a1[5] executeFetchRequest:v18 error:0];
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v83 objects:v101 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v84;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v84 != v23)
          {
            objc_enumerationMutation(v20);
          }

          [a1[6] _noteDidReceiveSharedAsset:*(*(&v83 + 1) + 8 * k)];
        }

        v22 = [v20 countByEnumeratingWithState:&v83 objects:v101 count:16];
      }

      while (v22);
    }
  }

  if ([a1[10] count])
  {
    v25 = MEMORY[0x1E695D5E0];
    v26 = +[PLManagedAsset entityName];
    v27 = [v25 fetchRequestWithEntityName:v26];

    v28 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1[10]];
    [v27 setPredicate:v28];

    v29 = [a1[5] executeFetchRequest:v27 error:0];
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v30 = [v29 countByEnumeratingWithState:&v79 objects:v100 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v80;
      do
      {
        for (m = 0; m != v31; ++m)
        {
          if (*v80 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v79 + 1) + 8 * m);
          v35 = [v34 cloudFeedAssetsEntry];

          if (!v35)
          {
            [a1[6] _noteDidReceiveSharedAsset:v34];
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v79 objects:v100 count:16];
      }

      while (v31);
    }
  }

  if ([a1[11] count])
  {
    v36 = MEMORY[0x1E695D5E0];
    v37 = +[PLCloudSharedComment entityName];
    v38 = [v36 fetchRequestWithEntityName:v37];

    v39 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1[11]];
    [v38 setPredicate:v39];

    v40 = [a1[5] executeFetchRequest:v38 error:0];
    [a1[6] _noteDidReceiveSharedComments:v40];
  }

  if ([a1[12] count])
  {
    v41 = MEMORY[0x1E695D5E0];
    v42 = +[PLCloudSharedAlbumInvitationRecord entityName];
    v43 = [v41 fetchRequestWithEntityName:v42];

    v44 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1[12]];
    [v43 setPredicate:v44];

    v45 = [a1[5] executeFetchRequest:v43 error:0];
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v46 = [v45 countByEnumeratingWithState:&v75 objects:v99 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v76;
      do
      {
        for (n = 0; n != v47; ++n)
        {
          if (*v76 != v48)
          {
            objc_enumerationMutation(v45);
          }

          [a1[6] _noteDidUpdateInvitationRecord:*(*(&v75 + 1) + 8 * n)];
        }

        v47 = [v45 countByEnumeratingWithState:&v75 objects:v99 count:16];
      }

      while (v47);
    }
  }

  if ([a1[13] count])
  {
    [a1[6] _processShareParticipantUpdates:a1[13] moc:a1[5]];
  }

  if ([a1[14] count])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v50 = a1[14];
    v51 = [v50 countByEnumeratingWithState:&v71 objects:v98 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v72;
      do
      {
        for (ii = 0; ii != v52; ++ii)
        {
          if (*v72 != v53)
          {
            objc_enumerationMutation(v50);
          }

          [a1[6] _noteDidDeleteShareParticipantWithParticipantID:*(*(&v71 + 1) + 8 * ii)];
        }

        v52 = [v50 countByEnumeratingWithState:&v71 objects:v98 count:16];
      }

      while (v52);
    }
  }

  if ([a1[15] count])
  {
    v55 = MEMORY[0x1E695D5E0];
    v56 = +[PLCloudFeedEntry entityName];
    v57 = [v55 fetchRequestWithEntityName:v56];

    v58 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", a1[15]];
    [v57 setPredicate:v58];

    v59 = [a1[5] executeFetchRequest:v57 error:0];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v60 = [v59 countByEnumeratingWithState:&v67 objects:v97 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v68;
      do
      {
        for (jj = 0; jj != v61; ++jj)
        {
          if (*v68 != v62)
          {
            objc_enumerationMutation(v59);
          }

          v64 = *(*(&v67 + 1) + 8 * jj);
          v65 = [v64 entryType];
          if (v65 > 3)
          {
            if ((v65 - 5) < 2)
            {
              [a1[6] _noteContentDeletionAffectingInvitationResponseEntry:v64];
            }

            else if (v65 == 4)
            {
              [a1[6] _noteContentDeletionAffectingSubscriptionEntry:v64];
            }

            else if (v65 == 7)
            {
              [a1[6] _noteContentDeletionAffectingAlbumCreatedEntry:v64];
            }
          }

          else if (v65 > 1)
          {
            if (v65 == 2)
            {
              [a1[6] _noteContentDeletionAffectingCommentsEntry:v64];
            }

            else
            {
              [a1[6] _noteContentDeletionAffectingInvitationEntry:v64];
            }
          }

          else if (v65)
          {
            [a1[6] _noteContentDeletionAffectingAssetsEntry:v64];
          }

          else
          {
            v66 = PLCloudFeedGetLog();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v96 = v64;
              _os_log_impl(&dword_19BF1F000, v66, OS_LOG_TYPE_ERROR, "invalid type for entry %@", buf, 0xCu);
            }
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v67 objects:v97 count:16];
      }

      while (v61);
    }
  }
}

- (id)_singleEntryOfType:(signed __int16)a3 forInvitationRecordWithGUID:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PLCloudFeedEntriesManager *)self library];
  v8 = [v7 managedObjectContext];

  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v10 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v8];
  [v9 setEntity:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryType = %d) AND (entryInvitationRecordGUID = %@)", v4, v6];

  [v9 setPredicate:v11];
  [v9 setFetchLimit:2];
  v18 = 0;
  v12 = [v8 executeFetchRequest:v9 error:&v18];
  v13 = v18;
  if (!v12)
  {
    v14 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v20 = v4;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "error fetching entry of type %li: %@", buf, 0x16u);
    }
  }

  if ([v12 count] >= 2)
  {
    v15 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v20 = v4;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "found multiple entres of type %li for invitation record: %@", buf, 0x16u);
    }
  }

  if ([v12 count])
  {
    v16 = [v12 objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_singleEntryOfType:(signed __int16)a3 forSharedAlbumWithGUID:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(PLCloudFeedEntriesManager *)self library];
  v8 = [v7 managedObjectContext];

  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v10 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v8];
  [v9 setEntity:v10];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryType = %d) AND (entryAlbumGUID = %@)", v4, v6];

  [v9 setPredicate:v11];
  [v9 setFetchLimit:2];
  v18 = 0;
  v12 = [v8 executeFetchRequest:v9 error:&v18];
  v13 = v18;
  if (!v12)
  {
    v14 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v20 = v4;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "error fetching entry of type %li: %@", buf, 0x16u);
    }
  }

  if ([v12 count] >= 2)
  {
    v15 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v20 = v4;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "found multiple entres of type %li for album: %@", buf, 0x16u);
    }
  }

  if ([v12 count])
  {
    v16 = [v12 objectAtIndex:0];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)_subscriptionEntryForSharedAlbumWithGUID:(id)a3
{
  v5 = [(PLCloudFeedEntriesManager *)self _singleEntryOfType:4 forSharedAlbumWithGUID:a3];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:self file:@"PLCloudFeedEntriesManager.m" lineNumber:163 description:{@"wrong class for subscription entry %@", v5}];
    }
  }

  return v5;
}

- (void)_getEarliestDate:(id *)a3 latestDate:(id *)a4 forRangeOfContiguousCommentsEntriesAroundDate:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(PLCloudFeedEntriesManager *)self library];
  v10 = [v9 managedObjectContext];

  v11 = 0x1E696A000uLL;
  if (a3)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695D5E0]);
    v13 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v10];
    [v12 setEntity:v13];

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(entryDate <= %@) AND (entryPriorityNumber = %d) AND (entryType!= %d)", v8, 0, 2];
    [v12 setPredicate:v14];

    [v12 setFetchLimit:1];
    v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:0];
    v35[0] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
    [v12 setSortDescriptors:v16];

    v31 = 0;
    v17 = [v10 executeFetchRequest:v12 error:&v31];
    v18 = v31;
    if (!v17)
    {
      v19 = PLCloudFeedGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v18;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "error fetching earliest date %@", buf, 0xCu);
      }
    }

    if ([v17 count] == 1)
    {
      v20 = [v17 objectAtIndex:0];
      *a3 = [v20 entryDate];

      v11 = 0x1E696A000;
    }

    else
    {
      *a3 = [MEMORY[0x1E695DF00] distantPast];
    }

    if (a4)
    {
      goto LABEL_12;
    }

LABEL_9:
    v21 = v18;
    goto LABEL_20;
  }

  v18 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_12:
  v22 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v23 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v10];
  [v22 setEntity:v23];

  v24 = [*(v11 + 3608) predicateWithFormat:@"(entryDate > %@) AND (entryPriorityNumber = %d) AND (entryType!= %d)", v8, 0, 2];
  [v22 setPredicate:v24];

  [v22 setFetchLimit:1];
  v25 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:1];
  v32 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  [v22 setSortDescriptors:v26];

  v30 = v18;
  v27 = [v10 executeFetchRequest:v22 error:&v30];
  v21 = v30;

  if (!v27)
  {
    v28 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = v21;
      _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "error fetching latest date %@", buf, 0xCu);
    }
  }

  if ([v27 count] == 1)
  {
    v29 = [v27 objectAtIndex:0];
    *a4 = [v29 entryDate];
  }

  else
  {
    *a4 = [MEMORY[0x1E695DF00] distantFuture];
  }

LABEL_20:
}

- (id)_firstEntryRelativeToDate:(id)a3 ascending:(BOOL)a4 includeSameDate:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v32[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  v10 = [(PLCloudFeedEntriesManager *)self library];
  v11 = [v10 managedObjectContext];

  v12 = [(PLManagedObject *)PLCloudFeedEntry entityInManagedObjectContext:v11];
  [v9 setEntity:v12];

  v13 = @"(entryDate < %@)";
  if (v5)
  {
    v13 = @"(entryDate <= %@)";
  }

  v14 = @"(entryDate >= %@)";
  if (!v5)
  {
    v14 = @"(entryDate > %@)";
  }

  if (v6)
  {
    v13 = v14;
  }

  v15 = v13;
  v16 = [(__CFString *)v15 stringByAppendingString:@" AND (entryPriorityNumber = %d)"];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:v16, v8, 0];
  [v9 setPredicate:v17];

  [v9 setFetchLimit:1];
  v18 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"entryDate" ascending:v6];
  v32[0] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:1];
  [v9 setSortDescriptors:v19];

  v25 = 0;
  v20 = [v11 executeFetchRequest:v9 error:&v25];
  v21 = v25;
  if (!v20)
  {
    v22 = PLCloudFeedGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v27 = v8;
      v28 = 1024;
      v29 = v6;
      v30 = 2112;
      v31 = v21;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "error fetching relative to date %@ %i: %@", buf, 0x1Cu);
    }
  }

  if ([v20 count])
  {
    v23 = [v20 objectAtIndex:0];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (PLCloudFeedEntriesManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PLCloudFeedEntriesManager;
  v6 = [(PLCloudFeedEntriesManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_library, a3);
  }

  return v7;
}

@end