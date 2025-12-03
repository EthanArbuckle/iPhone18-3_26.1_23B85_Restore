@interface PXPhotosMetadataFetcher
+ (id)sharedFetcherForPhotoLibrary:(id)library;
- (BOOL)getAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts forFetchResult:(id)result allowFetch:(BOOL)fetch;
- (PHPhotoLibrary)photoLibrary;
- (PXPhotosMetadataFetcher)init;
- (PXPhotosMetadataFetcher)initWithPhotoLibrary:(id)library;
- (id)_predicateForFact:(unint64_t)fact;
- (id)_queue_fetchResultForFact:(unint64_t)fact allowFetch:(BOOL)fetch;
- (id)_queue_oidsForFacts:(unint64_t)facts allowFetch:(BOOL)fetch;
- (void)photoLibraryWillChange:(id)change;
@end

@implementation PXPhotosMetadataFetcher

- (PHPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

- (void)photoLibraryWillChange:(id)change
{
  changeCopy = change;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PXPhotosMetadataFetcher_photoLibraryWillChange___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_sync(queue, v7);
}

void __50__PXPhotosMetadataFetcher_photoLibraryWillChange___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) copy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__PXPhotosMetadataFetcher_photoLibraryWillChange___block_invoke_2;
  v5[3] = &unk_1E77351B0;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void __50__PXPhotosMetadataFetcher_photoLibraryWillChange___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(a1 + 32) changeDetailsForFetchResult:a3];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 insertedIndexes];
    if (![v8 count])
    {
      v9 = [v7 removedIndexes];
      if (![v9 count])
      {
        v18 = [v7 hasIncrementalChanges];

        if (v18)
        {
LABEL_16:
          v17 = [v7 fetchResultAfterChanges];
          [*(*(a1 + 40) + 16) setObject:v17 forKeyedSubscript:v5];

          goto LABEL_17;
        }

LABEL_6:
        v10 = [v5 unsignedIntegerValue];
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v11 = [*(*(a1 + 40) + 24) allKeys];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          do
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * i);
              if ((v10 & ~[v16 unsignedIntegerValue]) == 0)
              {
                [*(*(a1 + 40) + 24) setObject:0 forKeyedSubscript:v16];
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
          }

          while (v13);
        }

        goto LABEL_16;
      }
    }

    goto LABEL_6;
  }

LABEL_17:
}

- (id)_predicateForFact:(unint64_t)fact
{
  v14[2] = *MEMORY[0x1E69E9840];
  if (fact == 4)
  {
    v4 = MEMORY[0x1E696AB28];
    v5 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForGuestAsset"), 1}];
    v14[0] = v5;
    filterPredicateForUnsavedSyndicationAssets = [MEMORY[0x1E6978630] filterPredicateForUnsavedSyndicationAssets];
    v14[1] = filterPredicateForUnsavedSyndicationAssets;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
    v3 = [v4 andPredicateWithSubpredicates:v7];
  }

  else
  {
    if (fact == 2)
    {
      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d OR %K = %d", @"kind", 2, @"kind", 3];
    }

    else
    {
      if (fact != 1)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosMetadataFetcher.m" lineNumber:219 description:@"Code which should be unreachable has been reached"];

        abort();
      }

      [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"kind", 1, v12, v13];
    }
    v3 = ;
  }

  return v3;
}

- (id)_queue_oidsForFacts:(unint64_t)facts allowFetch:(BOOL)fetch
{
  queue_OIDsByDerivedFacts = self->_queue_OIDsByDerivedFacts;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)queue_OIDsByDerivedFacts objectForKeyedSubscript:v8];

  if (!v9)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 1;
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v18 = __58__PXPhotosMetadataFetcher__queue_oidsForFacts_allowFetch___block_invoke;
    v19 = &unk_1E7735188;
    selfCopy = self;
    fetchCopy = fetch;
    v11 = v10;
    v12 = 0;
    v21 = v11;
    v22 = &v24;
    v28 = 0;
    do
    {
      if (((1 << v12) & facts) != 0)
      {
        v18(v17);
        v13 = v28;
      }

      else
      {
        v13 = 0;
      }

      if (v12 > 0x3E)
      {
        break;
      }

      ++v12;
    }

    while ((v13 & 1) == 0);
    if (*(v25 + 24) == 1)
    {
      v9 = PXSetsIntersection(v11);
      v14 = self->_queue_OIDsByDerivedFacts;
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:facts];
      [(NSMutableDictionary *)v14 setObject:v9 forKeyedSubscript:v15];
    }

    else
    {
      v9 = 0;
    }

    _Block_object_dispose(&v24, 8);
  }

  return v9;
}

void __58__PXPhotosMetadataFetcher__queue_oidsForFacts_allowFetch___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) _queue_fetchResultForFact:a2 allowFetch:*(a1 + 56)];
  if (v5)
  {
    v6 = *(a1 + 40);
    v8 = v5;
    v7 = [v5 fetchedObjectIDsSet];
    [v6 addObject:v7];

    v5 = v8;
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a3 = 1;
  }
}

- (id)_queue_fetchResultForFact:(unint64_t)fact allowFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  queue_fetchResultByFetchedFact = self->_queue_fetchResultByFetchedFact;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
  v9 = [(NSMutableDictionary *)queue_fetchResultByFetchedFact objectForKeyedSubscript:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !fetchCopy;
  }

  if (!v10)
  {
    photoLibrary = [(PXPhotosMetadataFetcher *)self photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    [librarySpecificFetchOptions setIsExclusivePredicate:1];
    v13 = [(PXPhotosMetadataFetcher *)self _predicateForFact:fact];
    [librarySpecificFetchOptions setInternalPredicate:v13];

    [librarySpecificFetchOptions setInternalSortDescriptors:MEMORY[0x1E695E0F0]];
    v9 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:librarySpecificFetchOptions];
    v14 = self->_queue_fetchResultByFetchedFact;
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:fact];
    [(NSMutableDictionary *)v14 setObject:v9 forKeyedSubscript:v15];
  }

  return v9;
}

- (BOOL)getAssetCounts:(id *)counts guestAssetCounts:(id *)assetCounts forFetchResult:(id)result allowFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  v104 = *MEMORY[0x1E69E9840];
  object = result;
  selfCopy = self;
  v10 = objc_opt_class();
  objc_sync_enter(v10);
  fetchedObjectIDsSet = objc_getAssociatedObject(object, &PXPhotosMetadataCountsCacheKey);
  objc_sync_exit(v10);

  if (fetchedObjectIDsSet)
  {
    [fetchedObjectIDsSet assetCounts];
    v12 = v88;
    v13 = v89;
    v14 = v90;
    [fetchedObjectIDsSet guestAssetCounts];
    v58 = v89;
    v15 = 1;
    v56 = v88;
    v57 = v90;
    goto LABEL_45;
  }

  v17 = *off_1E7721F70;
  v16 = *(off_1E7721F70 + 1);
  v18 = *(off_1E7721F70 + 2);
  if (fetchCopy)
  {
    v56 = *off_1E7721F70;
    v57 = *(off_1E7721F70 + 2);
    v58 = *(off_1E7721F70 + 1);
    v53 = [object count];
    fetchedObjectIDsSet = [object fetchedObjectIDsSet];
    if (!fetchedObjectIDsSet)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(object, "count")}];
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v20 = object;
      v21 = [v20 countByEnumeratingWithState:&v94 objects:v103 count:16];
      if (v21)
      {
        v22 = *v95;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v95 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v94 + 1) + 8 * i);
            objectID = [v24 objectID];

            if (objectID)
            {
              objectID2 = [v24 objectID];
              [v19 addObject:objectID2];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v94 objects:v103 count:16];
        }

        while (v21);
      }

      fetchedObjectIDsSet = [v19 copy];
    }

    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__73827;
    v92 = __Block_byref_object_dispose__73828;
    v93 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__73827;
    v86 = __Block_byref_object_dispose__73828;
    v87 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__73827;
    v80 = __Block_byref_object_dispose__73828;
    v81 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__73827;
    v74 = __Block_byref_object_dispose__73828;
    v75 = 0;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy__73827;
    v68 = __Block_byref_object_dispose__73828;
    v69 = 0;
    queue = selfCopy->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PXPhotosMetadataFetcher_getAssetCounts_guestAssetCounts_forFetchResult_allowFetch___block_invoke;
    block[3] = &unk_1E7735160;
    block[4] = selfCopy;
    block[5] = &v88;
    v63 = fetchCopy;
    block[6] = &v82;
    block[7] = &v76;
    block[8] = &v70;
    block[9] = &v64;
    dispatch_sync(queue, block);
    v28 = v89[5];
    if (v28 && v83[5] && v77[5] && v71[5] && v65[5])
    {
      v102[0] = fetchedObjectIDsSet;
      v102[1] = v28;
      v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:2];
      v30 = PXSetsIntersection(v29);
      v13 = [v30 count];

      v31 = v83[5];
      v101[0] = fetchedObjectIDsSet;
      v101[1] = v31;
      v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:2];
      v33 = PXSetsIntersection(v32);
      v14 = [v33 count];

      v12 = v53 - (v13 + v14);
      v35 = v14 == 0x7FFFFFFFFFFFFFFFLL || v13 == 0x7FFFFFFFFFFFFFFFLL || v12 == 0x7FFFFFFFFFFFFFFFLL;
      if (v35 && v53 != 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"PXPhotosMetadataFetcher.m" lineNumber:140 description:{@"Total count doesn't match individual counts: %lu != %lu", v53, 0x7FFFFFFFFFFFFFFFLL}];
      }

      v36 = v77[5];
      v100[0] = fetchedObjectIDsSet;
      v100[1] = v36;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v100 count:2];
      v38 = PXSetsIntersection(v37);
      v39 = [v38 count];

      v40 = v71[5];
      v99[0] = fetchedObjectIDsSet;
      v99[1] = v40;
      v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v99 count:2];
      v42 = PXSetsIntersection(v41);
      v58 = [v42 count];

      v43 = v65[5];
      v98[0] = fetchedObjectIDsSet;
      v98[1] = v43;
      v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v98 count:2];
      v45 = PXSetsIntersection(v44);
      v57 = [v45 count];

      v46 = v57 == 0x7FFFFFFFFFFFFFFFLL || v58 == 0x7FFFFFFFFFFFFFFFLL;
      v56 = v39 - (v58 + v57);
      v47 = v46 || v39 - (v58 + v57) == 0x7FFFFFFFFFFFFFFFLL;
      if (v47 && v39 != 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PXPhotosMetadataFetcher.m" lineNumber:146 description:{@"Guest total count doesn't match individual counts: %lu != %lu", v39, 0x7FFFFFFFFFFFFFFFLL}];
      }

      v61[0] = v53 - (v13 + v14);
      v61[1] = v13;
      v61[2] = v14;
      v60[0] = v39 - (v58 + v57);
      v60[1] = v58;
      v60[2] = v57;
      v48 = [[PXPhotosMetadataCountsCache alloc] initWithAssetCounts:v61 guestAssetCounts:v60];
      v49 = objc_opt_class();
      objc_sync_enter(v49);
      objc_setAssociatedObject(object, &PXPhotosMetadataCountsCacheKey, v48, 0x301);
      objc_sync_exit(v49);

      v15 = 1;
    }

    else
    {
      v15 = 0;
      v14 = v57;
      v13 = v58;
      v12 = v56;
    }

    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);

    _Block_object_dispose(&v82, 8);
    _Block_object_dispose(&v88, 8);

LABEL_45:
    v18 = v57;
    v16 = v58;
    v17 = v56;
    if (!counts)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  v15 = 0;
  v14 = *(off_1E7721F70 + 2);
  v13 = *(off_1E7721F70 + 1);
  v12 = *off_1E7721F70;
  if (counts)
  {
LABEL_46:
    counts->var0 = v12;
    counts->var1 = v13;
    counts->var2 = v14;
  }

LABEL_47:
  if (assetCounts)
  {
    assetCounts->var0 = v17;
    assetCounts->var1 = v16;
    assetCounts->var2 = v18;
  }

  return v15;
}

void __85__PXPhotosMetadataFetcher_getAssetCounts_guestAssetCounts_forFetchResult_allowFetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_oidsForFacts:1 allowFetch:*(a1 + 80)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1 + 32) _queue_oidsForFacts:2 allowFetch:*(a1 + 80)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = [*(a1 + 32) _queue_oidsForFacts:4 allowFetch:*(a1 + 80)];
  v9 = *(*(a1 + 56) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  v11 = [*(a1 + 32) _queue_oidsForFacts:5 allowFetch:*(a1 + 80)];
  v12 = *(*(a1 + 64) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;

  v14 = [*(a1 + 32) _queue_oidsForFacts:6 allowFetch:*(a1 + 80)];
  v15 = *(*(a1 + 72) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;
}

- (PXPhotosMetadataFetcher)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosMetadataFetcher.m" lineNumber:92 description:{@"%s is not available as initializer", "-[PXPhotosMetadataFetcher init]"}];

  abort();
}

- (PXPhotosMetadataFetcher)initWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v17.receiver = self;
  v17.super_class = PXPhotosMetadataFetcher;
  v5 = [(PXPhotosMetadataFetcher *)&v17 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_photoLibrary, libraryCopy);
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.photos.metadata-fetcher-queue", v7);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_fetchResultByFetchedFact = v6->_queue_fetchResultByFetchedFact;
    v6->_queue_fetchResultByFetchedFact = v10;

    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queue_OIDsByDerivedFacts = v6->_queue_OIDsByDerivedFacts;
    v6->_queue_OIDsByDerivedFacts = v12;

    if (libraryCopy)
    {
      v14 = v6;
      px_changeDistributor = [libraryCopy px_changeDistributor];
      [px_changeDistributor registerInternalChangeObserver:v14];
    }
  }

  return v6;
}

+ (id)sharedFetcherForPhotoLibrary:(id)library
{
  libraryCopy = library;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosMetadataFetcher.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary != nil"}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_getAssociatedObject(libraryCopy, &sharedFetcherForPhotoLibrary__sharedFetcherForPhotoLibraryKey);
  if (!v7)
  {
    v7 = [[PXPhotosMetadataFetcher alloc] initWithPhotoLibrary:libraryCopy];
    objc_setAssociatedObject(libraryCopy, &sharedFetcherForPhotoLibrary__sharedFetcherForPhotoLibraryKey, v7, 0x301);
  }

  objc_sync_exit(selfCopy);

  return v7;
}

@end