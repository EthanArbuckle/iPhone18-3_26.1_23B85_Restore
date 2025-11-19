@interface PGCurationManager
+ (BOOL)areAssetsInteresting:(id)a3 minimumNumberOfCuratedAssets:(unint64_t)a4 duration:(unint64_t)a5;
+ (double)contentScoreForAssets:(id)a3;
+ (id)_filterAssets:(id)a3 withPositiveLocations:(id)a4 negativeLocations:(id)a5 maximumDistance:(double)a6;
+ (id)_filteredAssetsWithFaceFilter:(unint64_t)a3 forAssets:(id)a4;
+ (id)assetPropertySetsForCuration;
+ (id)assetsBeautifier;
+ (id)dedupedAssetsWithAssets:(id)a3;
+ (id)defaultAssetSortDescriptors;
+ (id)dejunkAndDedupeItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6;
+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forAreaNodes:(id)a5 withMaximumDistance:(double)a6;
+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forCityNodes:(id)a5 withMaximumDistance:(double)a6;
+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forLocationNodes:(id)a5 withMaximumDistance:(double)a6;
+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forStateNodes:(id)a5 withMaximumDistance:(double)a6;
+ (id)filterAssets:(id)a3 withLocation:(id)a4 maximumDistance:(double)a5;
+ (id)filterAssets:(id)a3 withLocations:(id)a4 maximumDistance:(double)a5;
+ (id)filteredAssetsFromAssets:(id)a3 withContextualAssetLocalIdentifiers:(id)a4 approximateTimeDistance:(double)a5;
+ (id)representativeAssetsForAssetCollection:(id)a3 curationContext:(id)a4 progressBlock:(id)a5;
+ (id)representativeAssetsForAssets:(id)a3 extendedCuratedAssets:(id)a4 progressBlock:(id)a5;
+ (id)representativeAssetsForAssets:(id)a3 progressBlock:(id)a4;
+ (id)sceneInfoWithAsset:(id)a3 curationSession:(id)a4;
+ (id)summaryClusteringForDuration:(unint64_t)a3;
+ (unint64_t)maximumNumberOfItemsForDuration:(unint64_t)a3 withTotalNumberOfItems:(unint64_t)a4 spanningNumberOfDays:(double)a5;
+ (unint64_t)minimumNumberOfItemsForDuration:(unint64_t)a3 withMaximumNumberOfItems:(unint64_t)a4;
- (BOOL)isAssetCollectionInteresting:(id)a3 curationContext:(id)a4;
- (BOOL)isAssetFeederInteresting:(id)a3 withAlternateJunking:(BOOL)a4 smart:(BOOL)a5;
- (PFSceneGeography)sceneGeography;
- (PGCurationManager)initWithPhotoLibrary:(id)a3 cacheURL:(id)a4;
- (double)contentScoreForAssetCollection:(id)a3 curationContext:(id)a4;
- (double)contentScoreForAssetFeeder:(id)a3;
- (id)_bestAssetInSummarizedAssets:(id)a3 forReferencePersonLocalIdentifiers:(id)a4;
- (id)_bestAssetsInAssets:(id)a3 forReferencePersonLocalIdentifiers:(id)a4 minimumRatioOfReferencePersonsPerAsset:(double)a5 progressBlock:(id)a6;
- (id)_contextualBestAssetInAssets:(id)a3;
- (id)_curatedKeyAssetIdentifierForCollectionUUID:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 criteria:(id)a6 curatedKeyAsset:(id *)a7 curationContext:(id)a8;
- (id)_extendedAssetsForCurationForAssets:(id)a3 matchingAssetsRange:(_NSRange)a4;
- (id)_filteredAssetsForAssets:(id)a3 inMoments:(id)a4 keepFavorites:(BOOL)a5;
- (id)_firstBestFacedAssetInAssetCluster:(id)a3 facesByAssetIdentifiers:(id)a4;
- (id)_libraryDateInterval;
- (id)_timeBasedAssetClustersForAssets:(id)a3 maximumClusterCount:(unint64_t)a4;
- (id)bestAssetForAssetFeeder:(id)a3 options:(id)a4;
- (id)bestAssetForAssetFeeder:(id)a3 options:(id)a4 criteria:(id)a5;
- (id)bestAssetInAssets:(id)a3 forReferencePersonLocalIdentifiers:(id)a4 requiredMinimumNumberOfReferencePersons:(unint64_t)a5 forMemories:(BOOL)a6 forSocialGroup:(BOOL)a7 allowGuestAsset:(BOOL)a8 wantsGoodSquareCropScore:(BOOL)a9;
- (id)bestAssetInAssets:(id)a3 options:(id)a4;
- (id)bestAssetsForAssetFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)criteriaForKeyAssetCurationWithAssetCollection:(id)a3 graph:(id)a4 options:(id)a5 curationContext:(id)a6;
- (id)curatedAssetsForAssetCollection:(id)a3 duration:(unint64_t)a4 referencePersonLocalIdentifiers:(id)a5 curationContext:(id)a6 progressBlock:(id)a7;
- (id)curatedAssetsForAssetCollection:(id)a3 options:(id)a4 curationContext:(id)a5 progressBlock:(id)a6;
- (id)curatedAssetsForPersonLocalIdentifier:(id)a3 progressBlock:(id)a4;
- (id)curatedKeyAssetForAssetCollection:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 criteria:(id)a6 curationContext:(id)a7;
- (id)curatedKeyAssetForCollectionUUID:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 criteria:(id)a6 curationContext:(id)a7;
- (id)defaultAssetFetchOptions;
- (id)defaultAssetFetchOptionsForMemories;
- (id)defaultAssetFetchOptionsForMemoriesWithoutPrefetch;
- (id)dejunkAndDedupeAssetsInAssetCollection:(id)a3 options:(id)a4 curationContext:(id)a5 progressBlock:(id)a6;
- (id)fetchAssetWithLocalIdentifier:(id)a3;
- (id)fetchAssetsSortedByDateWithLocalIdentifiers:(id)a3;
- (id)memoryCuratedAssetsForAssetCollection:(id)a3 duration:(unint64_t)a4 withContextualAssetLocalIdentifiers:(id)a5 minimumProportion:(double)a6 graph:(id)a7 curationContext:(id)a8 progressBlock:(id)a9;
- (id)memoryCuratedAssetsForAssets:(id)a3 duration:(unint64_t)a4 withContextualAssetLocalIdentifiers:(id)a5 minimumProportion:(double)a6 graph:(id)a7 curationContext:(id)a8 progressBlock:(id)a9;
- (unint64_t)optimalDurationForAssetCollection:(id)a3 duration:(unint64_t)a4 options:(id)a5 curationContext:(id)a6;
- (void)invalidateCurationCacheForMomentUUIDs:(id)a3;
@end

@implementation PGCurationManager

- (id)_curatedKeyAssetIdentifierForCollectionUUID:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 criteria:(id)a6 curatedKeyAsset:(id *)a7 curationContext:(id)a8
{
  v67[1] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (!v14)
  {
    v25 = 0;
    goto LABEL_37;
  }

  v59 = v18;
  v19 = [(PGCurationManager *)self curationLoggingConnection];
  v20 = os_signpost_id_generate(v19);
  v21 = v19;
  v22 = v21;
  v57 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, OS_SIGNPOST_INTERVAL_BEGIN, v20, "CuratedKeyAsset", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v55 = mach_absolute_time();
  if (!v16)
  {
    v16 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v23 = [(PGCurationCache *)self->_cache curatedKeyAssetIdentifierForCollectionUUID:v14 options:v16];
  v24 = v23;
  v58 = v17;
  spid = v20;
  if (v23)
  {
    if (!a7)
    {
      v28 = 0;
      v25 = v23;
      goto LABEL_27;
    }

    v56 = a7;
    v25 = v23;
LABEL_10:
    v67[0] = v25;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
    v27 = [(PGCurationManager *)self fetchAssetsSortedByDateWithLocalIdentifiers:v26];

    v28 = [v27 firstObject];

LABEL_26:
    v38 = v28;
    *v56 = v28;
    goto LABEL_27;
  }

  v56 = a7;
  context = objc_autoreleasePoolPush();
  v29 = [v15 photoLibrary];
  v30 = [v29 librarySpecificFetchOptions];

  v31 = +[PGCurationManager assetPropertySetsForCuration];
  [v30 addFetchPropertySets:v31];

  [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  v33 = v32 = v17;
  [v33 setPersonsPrefetchMode:2];
  [v33 setFaceInformationPrefetchMode:2];
  v34 = [v32 scenesTrait];
  if ([v34 isActive])
  {
    v35 = 2;
  }

  else
  {
    v35 = 1;
  }

  [v33 setScenesPrefetchMode:v35];

  v53 = v15;
  v51 = v30;
  v36 = [MEMORY[0x277D27710] feederForAssetCollection:v15 options:v30 feederPrefetchOptions:v33 curationContext:v59];
  v37 = [(PGKeyAssetCurationOptions *)v16 copy];
  v28 = [(PGCurationManager *)self bestAssetForAssetFeeder:v36 options:v37 criteria:v32];
  if (!v28)
  {
    if ([v36 numberOfItems] && !-[PGKeyAssetCurationOptions useContextualCurationOnly](v16, "useContextualCurationOnly"))
    {
      v28 = [v36 itemAtIndex:0];
    }

    else
    {
      v28 = 0;
    }
  }

  v25 = [v28 localIdentifier];
  if (v28)
  {
    [(PGCurationCache *)self->_cache setCuratedKeyAsset:v28 forCollectionUUID:v14 options:v16];
  }

  objc_autoreleasePoolPop(context);
  if (v56)
  {
    v15 = v53;
    if (!v25)
    {
      goto LABEL_27;
    }

    if (v28)
    {
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v15 = v53;
LABEL_27:
  v39 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v42 = v22;
  v43 = v42;
  if (v57 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    v44 = @"YES";
    if (!v24)
    {
      v44 = @"NO";
    }

    *buf = 138412290;
    v62 = v44;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v43, OS_SIGNPOST_INTERVAL_END, spid, "CuratedKeyAsset", "KeyAsset Criteria Cached (%@)", buf, 0xCu);
  }

  v45 = v43;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = (((v39 - v55) * numer) / denom) / 1000000.0;
    v47 = @"YES";
    if (!v24)
    {
      v47 = @"NO";
    }

    v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"KeyAsset Criteria Cached (%@)", v47];
    *buf = 136315650;
    v62 = "CuratedKeyAsset";
    v63 = 2112;
    v64 = v48;
    v65 = 2048;
    v66 = v46;
    _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v17 = v58;
  v18 = v59;
LABEL_37:

  v49 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)curatedKeyAssetForCollectionUUID:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 criteria:(id)a6 curationContext:(id)a7
{
  v10 = 0;
  v7 = [(PGCurationManager *)self _curatedKeyAssetIdentifierForCollectionUUID:a3 curatedAssetCollection:a4 options:a5 criteria:a6 curatedKeyAsset:&v10 curationContext:a7];
  v8 = v10;

  return v8;
}

- (id)defaultAssetFetchOptionsForMemoriesWithoutPrefetch
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = [(PGCurationManager *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v7[0] = *MEMORY[0x277CD9AA8];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [v3 setFetchPropertySets:v4];

  [v3 setWantsIncrementalChangeDetails:0];
  [v3 setIncludeGuestAssets:1];
  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)defaultAssetFetchOptionsForMemories
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [(PGCurationManager *)self defaultAssetFetchOptions];
  [v2 setIncludeGuestAssets:1];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"isFavorite" ascending:0];
  v8[0] = v3;
  v4 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  [v2 setSortDescriptors:v5];

  [v2 setFetchLimit:5000];
  v6 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)defaultAssetFetchOptions
{
  v2 = [(PGCurationManager *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = +[PGCurationManager assetPropertySetsForCuration];
  [v3 setFetchPropertySets:v4];

  [v3 setWantsIncrementalChangeDetails:0];

  return v3;
}

- (id)fetchAssetWithLocalIdentifier:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = a3;
    v5 = [(PGCurationManager *)self photoLibrary];
    v6 = [v5 librarySpecificFetchOptions];

    [v6 setFetchLimit:1];
    v7 = MEMORY[0x277CD97A8];
    v13[0] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v9 = [v7 fetchAssetsWithLocalIdentifiers:v8 options:v6];

    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)fetchAssetsSortedByDateWithLocalIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(PGCurationManager *)self photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [objc_opt_class() defaultAssetSortDescriptors];
  [v6 setSortDescriptors:v7];

  v8 = [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v4 options:v6];

  return v8;
}

- (id)_extendedAssetsForCurationForAssets:(id)a3 matchingAssetsRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v24 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 count];
  if (location != -1)
  {
    v9 = v8;
    if (length >= 4)
    {
      v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7 copyItems:0];
      v11 = [v10 subarrayWithRange:location, length];
      v12 = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 134218240;
        v21 = length;
        v22 = 2048;
        v23 = v9;
        v13 = "Curated key asset with criteria: found assets range matching scenes %ld/%ld";
LABEL_14:
        _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_INFO, v13, &v20, 0x16u);
        goto LABEL_15;
      }

      goto LABEL_15;
    }

    if (length)
    {
      v14 = vcvtd_n_f64_u64(v8, 1uLL);
      v15 = v14 - location;
      v16 = (location + length) - v14;
      if (v15 <= v16)
      {
        v17 = v8 - location;
      }

      else
      {
        v17 = location + length;
      }

      if (v17 < 4)
      {
        v10 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v20 = 134218240;
          v21 = v17;
          v22 = 2048;
          v23 = v9;
          _os_log_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_INFO, "Curated key asset with criteria: cannot use extended assets %ld/%ld", &v20, 0x16u);
        }

        v11 = 0;
        goto LABEL_16;
      }

      if (v15 > v16)
      {
        location = 0;
      }

      v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v7 copyItems:0];
      v11 = [v10 subarrayWithRange:location, v17];
      v12 = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v20 = 134218240;
        v21 = v17;
        v22 = 2048;
        v23 = v9;
        v13 = "Curated key asset with criteria: found extended assets for curation %ld/%ld";
        goto LABEL_14;
      }

LABEL_15:

LABEL_16:
      goto LABEL_18;
    }
  }

  v11 = 0;
LABEL_18:

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)_contextualBestAssetInAssets:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v4 = 0;
      v8 = *v20;
      v9 = -1.79769313e308;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          [v11 clsContentScore];
          v13 = v12;
          [v11 clsAestheticScore];
          if (v14 < 0.0)
          {
            v14 = 0.0;
          }

          v15 = (v13 + v14) * 0.5;
          if (v15 > v9)
          {
            v16 = v11;

            v9 = v15;
            v4 = v16;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    else
    {
      v4 = 0;
    }
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)bestAssetForAssetFeeder:(id)a3 options:(id)a4 criteria:(id)a5
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v60 = a4;
  v66 = a5;
  v56 = v7;
  v59 = [v7 allItems];
  v57 = [v59 count];
  if (!v57)
  {
    v24 = 0;
    goto LABEL_70;
  }

  v8 = v60;
  if (!v60)
  {
    v8 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v60 = v8;
  v9 = [v66 peopleTrait];
  v55 = [v9 items];

  if ([v55 count])
  {
    [(PGKeyAssetCurationOptions *)v60 setFocusOnPeople:1];
    [(PGKeyAssetCurationOptions *)v60 setReferencePersonLocalIdentifiers:v55];
  }

  v10 = [(PGKeyAssetCurationOptions *)v60 isForMemories];
  v11 = [(PGKeyAssetCurationOptions *)v60 allowGuestAsset];
  if (!v66)
  {
    v25 = 0;
    v16 = -1;
    v17 = -1;
    if (!v60)
    {
      goto LABEL_55;
    }

    goto LABEL_56;
  }

  v12 = v11;
  v63 = [MEMORY[0x277CBEB18] array];
  v62 = [MEMORY[0x277CBEB18] array];
  v64 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v59;
  v13 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v13)
  {
    v14 = 0;
    v15 = *v77;
    v16 = -1;
    v17 = -1;
    do
    {
      v18 = 0;
      v61 = v14;
      do
      {
        if (*v77 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v76 + 1) + 8 * v18);
        v20 = objc_autoreleasePoolPush();
        *buf = 0;
        v21 = [v66 isPassingForAsset:v19 score:buf];
        if (*buf > 0.0)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        if (v22 == 1)
        {
          v23 = [MEMORY[0x277CCABB0] numberWithDouble:*buf];
          [v64 setObject:v23 forKey:v19];

          [v63 addObject:v19];
          if (v17 == -1)
          {
            v17 = v14;
          }

          if (([v19 clsAvoidIfPossibleAsKeyItemForMemories:v10 allowGuestAsset:v12] & 1) == 0)
          {
            [v62 addObject:v19];
          }

          v16 = v14;
        }

        objc_autoreleasePoolPop(v20);
        ++v14;
        ++v18;
      }

      while (v13 != v18);
      v14 = v61 + v13;
      v13 = [obj countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v13);
  }

  else
  {
    v16 = -1;
    v17 = -1;
  }

  if ([v62 count])
  {
    v26 = v62;

    v27 = v26;
  }

  else
  {
    v27 = v63;
  }

  v28 = v27;
  v29 = [v27 count];
  v30 = [(PGCurationManager *)self curationLoggingConnection];
  v31 = os_log_type_enabled(v30, OS_LOG_TYPE_INFO);
  if (!v29)
  {
    if (v31)
    {
      *buf = 134218240;
      *&buf[4] = 0;
      *&buf[12] = 2048;
      *&buf[14] = v57;
      _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "Curated key asset with criteria: not enough matching assets %ld/%ld. Fallback to normal curation", buf, 0x16u);
    }

    goto LABEL_47;
  }

  if (v31)
  {
    *buf = 134218240;
    *&buf[4] = v29;
    *&buf[12] = 2048;
    *&buf[14] = v57;
    _os_log_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_INFO, "Curated key asset with criteria: matching assets with criteria %ld/%ld.", buf, 0x16u);
  }

  v30 = [objc_opt_class() _filteredAssetsWithFaceFilter:objc_msgSend(v66 forAssets:{"faceFilter"), v28}];
  if (![v30 count])
  {
    v44 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v45 = [v30 count];
      *buf = 134218240;
      *&buf[4] = v45;
      *&buf[12] = 2048;
      *&buf[14] = v57;
      _os_log_impl(&dword_22F0FC000, v44, OS_LOG_TYPE_INFO, "Curated key asset with criteria: not enough matching assets (with faces) %ld/%ld. Fallback to normal curation", buf, 0x16u);
    }

LABEL_47:
    v25 = 0;
    goto LABEL_54;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v85 = 0;
  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v75[3] = 0;
  v32 = MEMORY[0x277D27688];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke;
  v73[3] = &unk_2788842D8;
  v33 = v64;
  v74 = v33;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_2;
  v72[3] = &unk_278884300;
  v72[4] = buf;
  v72[5] = v75;
  [v32 calculateStandardDeviationForItems:v30 valueBlock:v73 result:v72];
  v34 = MEMORY[0x277CCAC30];
  v68[0] = MEMORY[0x277D85DD0];
  v68[1] = 3221225472;
  v68[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_3;
  v68[3] = &unk_278884328;
  v69 = v33;
  v70 = buf;
  v71 = v75;
  v35 = [v34 predicateWithBlock:v68];
  v36 = [v30 filteredArrayUsingPredicate:v35];

  v37 = [v36 count];
  v38 = [obj count];
  [v66 minimumAssetsRatio];
  if (v37 / v38 >= v39 && v37 >= 2)
  {
    v25 = v36;
    v41 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v46 = [v25 count];
      *v80 = 134218240;
      v81 = v46;
      v82 = 2048;
      v83 = v57;
      v43 = "Curated key asset with criteria: using strongly filtered assets %ld/%ld";
      goto LABEL_52;
    }
  }

  else if ([(PGKeyAssetCurationOptions *)v60 useContextualCurationOnly])
  {
    v25 = v36;
    v41 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [v25 count];
      *v80 = 134218240;
      v81 = v42;
      v82 = 2048;
      v83 = v57;
      v43 = "Curated key asset with criteria: using weakly filtered assets %ld/%ld";
LABEL_52:
      _os_log_impl(&dword_22F0FC000, v41, OS_LOG_TYPE_INFO, v43, v80, 0x16u);
    }
  }

  else
  {
    v25 = v30;
    v41 = [(PGCurationManager *)self curationLoggingConnection];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v47 = [v25 count];
      *v80 = 134218240;
      v81 = v47;
      v82 = 2048;
      v83 = v57;
      v43 = "Curated key asset with criteria: using matching assets (with faces) %ld/%ld";
      goto LABEL_52;
    }
  }

  _Block_object_dispose(v75, 8);
  _Block_object_dispose(buf, 8);
LABEL_54:

  if (!v60)
  {
LABEL_55:
    v60 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

LABEL_56:
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_349;
  aBlock[3] = &__block_descriptor_40_e8_B16__0Q8l;
  aBlock[4] = v57;
  v48 = _Block_copy(aBlock);
  if (v25)
  {
    v24 = [(PGCurationManager *)self _contextualBestAssetInAssets:v25];
    if (v24)
    {
      goto LABEL_69;
    }
  }

  if (![(PGKeyAssetCurationOptions *)v60 useContextualCurationOnly])
  {
    [(PGKeyAssetCurationOptions *)v60 setPrefilterAssetsWithFaces:1];
    v49 = [(PGCurationManager *)self _extendedAssetsForCurationForAssets:v59 matchingAssetsRange:v17, v16 - v17];
    v50 = [v49 count];
    if (v50)
    {
      v51 = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = v50;
        *&buf[12] = 2048;
        *&buf[14] = v57;
        _os_log_impl(&dword_22F0FC000, v51, OS_LOG_TYPE_INFO, "Curated key asset with criteria: using extended assets for curation %ld/%ld", buf, 0x16u);
      }

      [(PGKeyAssetCurationOptions *)v60 setUseSummarizer:v48[2](v48, v50)];
      v24 = [(PGCurationManager *)self bestAssetInAssets:v49 options:v60];
      if (v24)
      {
        goto LABEL_68;
      }

      v52 = [(PGCurationManager *)self curationLoggingConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_ERROR, "Curated key asset with criteria: didn't find key asset in extended assets. Fallback to default.", buf, 2u);
      }
    }

    [(PGKeyAssetCurationOptions *)v60 setUseSummarizer:v48[2](v48, v57)];
    v24 = [(PGCurationManager *)self bestAssetInAssets:v59 options:v60];
LABEL_68:

    goto LABEL_69;
  }

  v24 = 0;
LABEL_69:

LABEL_70:
  v53 = *MEMORY[0x277D85DE8];

  return v24;
}

double __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

uint64_t __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_2(uint64_t result, double a2, double a3)
{
  *(*(*(result + 32) + 8) + 24) = a3;
  *(*(*(result + 40) + 8) + 24) = a2;
  return result;
}

BOOL __62__PGCurationManager_bestAssetForAssetFeeder_options_criteria___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [*(a1 + 32) objectForKey:a2];
  [v3 doubleValue];
  v5 = v4;

  return v5 >= *(*(*(a1 + 40) + 8) + 24) + *(*(*(a1 + 48) + 8) + 24) * 0.5;
}

- (id)bestAssetForAssetFeeder:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 numberOfItems])
  {
    v8 = [v6 allItems];
    v9 = [(PGCurationManager *)self bestAssetInAssets:v8 options:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_bestAssetInSummarizedAssets:(id)a3 forReferencePersonLocalIdentifiers:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 firstObject];
  v8 = MEMORY[0x277CBEB98];
  v9 = [v7 clsPersonAndPetLocalIdentifiers];
  v10 = [v8 setWithArray:v9];

  v11 = [v6 mutableCopy];
  [v11 intersectSet:v10];
  if ([v6 isSubsetOfSet:v10])
  {
    goto LABEL_14;
  }

  v12 = [v11 count];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v5;
  v14 = [v13 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v14)
  {
    v15 = v14;
    v33 = v10;
    v34 = v5;
    v36 = v7;
    v35 = 0;
    v16 = *v38;
    v17 = 0.0;
    do
    {
      v18 = v13;
      for (i = 0; i != v15; ++i)
      {
        v20 = v11;
        if (*v38 != v16)
        {
          objc_enumerationMutation(v18);
        }

        v21 = *(*(&v37 + 1) + 8 * i);
        v11 = [v6 mutableCopy];

        v22 = MEMORY[0x277CBEB98];
        v23 = [v21 clsPersonAndPetLocalIdentifiers];
        v24 = [v22 setWithArray:v23];
        [v11 intersectSet:v24];

        v25 = [v11 count];
        if (v25 > v12)
        {
          v26 = v25;
          [v21 clsContentScore];
          v28 = v26 + v27 * 0.9;
          if (v28 > v17)
          {
            v29 = v21;

            v35 = 1;
            v17 = v28;
            v36 = v29;
          }
        }
      }

      v13 = v18;
      v15 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v15);

    if (v35)
    {
      v10 = v33;
      v5 = v34;
      v7 = v36;
LABEL_14:
      v7 = v7;
      v30 = v7;
      goto LABEL_17;
    }

    v30 = 0;
    v10 = v33;
    v5 = v34;
    v7 = v36;
  }

  else
  {

    v30 = 0;
  }

LABEL_17:

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)_bestAssetsInAssets:(id)a3 forReferencePersonLocalIdentifiers:(id)a4 minimumRatioOfReferencePersonsPerAsset:(double)a5 progressBlock:(id)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = 0.0;
  v40 = _Block_copy(a6);
  if (v40)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current >= 0.01)
    {
      v49 = 0;
      v40[2](v40, &v49, 0.0);
      if (v49 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v53 = 1951;
          v54 = 2080;
          v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v13 = MEMORY[0x277CBEBF8];
        goto LABEL_46;
      }

      v11 = Current;
    }
  }

  v38 = objc_opt_new();
  v14 = [v10 count];
  v15 = [v9 count];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v36 = v9;
  obj = v9;
  v16 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = vcvtpd_u64_f64(v14 * 0.4);
    if (v18 <= 2)
    {
      v18 = 2;
    }

    v39 = *v46;
    v19 = 0.0 / v15;
    v20 = v18;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v46 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v45 + 1) + 8 * i);
        if (v40)
        {
          v23 = CFAbsoluteTimeGetCurrent();
          if (v23 - v11 >= 0.01)
          {
            v49 = 0;
            v40[2](v40, &v49, v19);
            if (v49)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                v53 = 1962;
                v54 = 2080;
                v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v13 = MEMORY[0x277CBEBF8];
              v9 = v36;
              v33 = v38;
              goto LABEL_45;
            }

            v11 = v23;
          }
        }

        v24 = [v22 clsPersonAndPetLocalIdentifiers];
        v25 = [v24 count];
        if (v25 * a5 <= v20)
        {
          v26 = v20;
        }

        else
        {
          v26 = v25 * a5;
        }

        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v27 = v24;
        v28 = [v27 countByEnumeratingWithState:&v41 objects:v50 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = 0;
          v31 = *v42;
          while (2)
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v42 != v31)
              {
                objc_enumerationMutation(v27);
              }

              if ([v10 containsObject:*(*(&v41 + 1) + 8 * j)])
              {
                if (++v30 >= v26)
                {

                  [v38 addObject:v22];
                  goto LABEL_33;
                }
              }
            }

            v29 = [v27 countByEnumeratingWithState:&v41 objects:v50 count:16];
            if (v29)
            {
              continue;
            }

            break;
          }
        }

LABEL_33:
      }

      v17 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v33 = v38;
  if (v40 && CFAbsoluteTimeGetCurrent() - v11 >= 0.01 && (v49 = 0, v40[2](v40, &v49, 1.0), v49))
  {
    v9 = v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v53 = 1986;
      v54 = 2080;
      v55 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v13 = MEMORY[0x277CBEBF8];
  }

  else
  {
    v13 = v38;
    v9 = v36;
  }

LABEL_45:

LABEL_46:
  v34 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)bestAssetInAssets:(id)a3 forReferencePersonLocalIdentifiers:(id)a4 requiredMinimumNumberOfReferencePersons:(unint64_t)a5 forMemories:(BOOL)a6 forSocialGroup:(BOOL)a7 allowGuestAsset:(BOOL)a8 wantsGoodSquareCropScore:(BOOL)a9
{
  v78 = a6;
  v79 = a8;
  v70 = a7;
  v126 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v68 = a4;
  v66 = v10;
  if (![v10 count])
  {
    v47 = 0;
    goto LABEL_53;
  }

  v81 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v120 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  obj = v10;
  v80 = [obj countByEnumeratingWithState:&v120 objects:v125 count:{16, v10}];
  if (v80)
  {
    v69 = 0;
    v76 = 0;
    v11 = 0;
    v77 = *v121;
    v12 = *MEMORY[0x277D3C780];
    v13 = -1.79769313e308;
    do
    {
      for (i = 0; i != v80; ++i)
      {
        if (*v121 != v77)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v120 + 1) + 8 * i);
        v16 = [v15 clsAvoidIfPossibleAsKeyItemForMemories:v78 allowGuestAsset:v79];
        if ((!v70 | v16))
        {
          LODWORD(v17) = v70 | v16;
        }

        else
        {
          v17 = ([v15 mediaSubtypes] >> 2) & 1;
        }

        v18 = [v81 count];
        v19 = v18;
        if (!((v18 == 0 || (v17 & 1) == 0) | v11 & 1))
        {
          goto LABEL_16;
        }

        if (a9)
        {
          v20 = v18 != 0;
          [v15 clsSquareCropScore];
          v75 = v21 < v12;
          if (!(v76 & 1 | (!v75 || !v20) | v11 & 1))
          {
            goto LABEL_15;
          }

          [v15 cropScoreForTargetAspectRatio:1 forFaces:0.75];
          v23 = v22;
          [v15 cropScoreForTargetAspectRatio:1 forFaces:1.5];
          v72 = fmin(v23, v24) < 0.475;
          if (!(v69 & 1 | (!v72 || v19 == 0) | (v76 | v11) & 1))
          {
            v69 = 0;
LABEL_15:
            v76 = 0;
LABEL_16:
            v11 = 0;
            continue;
          }
        }

        else
        {
          v75 = 0;
          v72 = 0;
        }

        v25 = [v15 curationModel];
        v26 = [v25 faceModel];
        v27 = [v26 qualityNode];
        [v27 operatingPoint];
        v29 = v28;

        [v25 faceSizeUpperLimit];
        v31 = v30;
        [v25 faceSizeLowerLimit];
        v33 = v32;
        v115 = 0;
        v116 = 0;
        v117 = &v116;
        v118 = 0x2020000000;
        v119 = 0;
        v112 = 0;
        v113 = &v112;
        v114 = 0x2020000000;
        v108 = 0;
        v109 = &v108;
        v110 = 0x2020000000;
        v111 = 0;
        v34 = [v15 clsFaceInformationSummary];
        v35 = [v34 faceInformationByPersonLocalIdentifier];
        v74 = v34;
        v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v104 = 0;
        v105 = &v104;
        v106 = 0x2020000000;
        v107 = 0x7FEFFFFFFFFFFFFFLL;
        v94[0] = MEMORY[0x277D85DD0];
        v94[1] = 3221225472;
        v94[2] = __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke;
        v94[3] = &unk_278884288;
        v37 = v68;
        v101 = v29;
        v102 = v31;
        v103 = v33;
        v95 = v37;
        v97 = &v104;
        v98 = &v116;
        v99 = &v112;
        v100 = &v108;
        v38 = v36;
        v96 = v38;
        [v35 enumerateKeysAndObjectsUsingBlock:v94];
        v39 = v105[3];
        v40 = v39 * 0.5;
        if (v39 * 0.5 >= v33)
        {
          v40 = v33;
        }

        if (v39 >= 1.79769313e308)
        {
          v41 = 0.0;
        }

        else
        {
          v41 = v40;
        }

        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke_2;
        v86[3] = &unk_2788842B0;
        v42 = v35;
        v90 = v29;
        v91 = v31;
        v92 = v33;
        v93 = v41;
        v87 = v42;
        v88 = &v112;
        v89 = &v108;
        [v38 enumerateObjectsUsingBlock:v86];
        v43 = [v37 count];
        v44 = v117[3];
        v45 = v113[3] + (v43 - v44) * -0.25;
        v113[3] = v45;
        if (v44 >= a5)
        {
          if (((v17 | ~v11) & (v75 | ~v76) & (v72 | ~v69) & 1) == 0)
          {
            v13 = -1.79769313e308;
          }

          if (v45 >= v13)
          {
            if (v45 > v13)
            {
              [v81 removeAllObjects];
              [v73 removeAllObjects];
              v69 = v72;
              v76 = v75;
              v11 = v17;
              v13 = v45;
            }

            [v81 addObject:v15];
            v46 = [MEMORY[0x277CCABB0] numberWithDouble:v109[3]];
            [v73 addObject:v46];
          }
        }

        _Block_object_dispose(&v104, 8);
        _Block_object_dispose(&v108, 8);
        _Block_object_dispose(&v112, 8);
        _Block_object_dispose(&v116, 8);
      }

      v80 = [obj countByEnumeratingWithState:&v120 objects:v125 count:16];
    }

    while (v80);
  }

  if ([v81 count] <= 1)
  {
    v47 = [v81 firstObject];
    goto LABEL_52;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v48 = v81;
  v47 = 0;
  v49 = [v48 countByEnumeratingWithState:&v82 objects:v124 count:16];
  if (!v49)
  {
    goto LABEL_51;
  }

  v50 = 0;
  v51 = 0;
  v52 = *v83;
  v53 = -1.79769313e308;
  v54 = -1.79769313e308;
  do
  {
    for (j = 0; j != v49; ++j)
    {
      if (*v83 != v52)
      {
        objc_enumerationMutation(v48);
      }

      v56 = *(*(&v82 + 1) + 8 * j);
      v57 = [v56 isFavorite];
      v58 = [v73 objectAtIndexedSubscript:v51];
      [v58 doubleValue];
      v60 = v59;

      [v56 overallAestheticScore];
      v62 = v61;
      if ((v50 ^ v57))
      {
        if (v57)
        {
          goto LABEL_48;
        }
      }

      else if (v60 > v53 || v60 == v53 && v54 < v62)
      {
LABEL_48:
        v63 = v56;

        v47 = v63;
        v50 = v57;
        v53 = v60;
        v54 = v62;
      }

      ++v51;
    }

    v49 = [v48 countByEnumeratingWithState:&v82 objects:v124 count:16];
  }

  while (v49);
LABEL_51:

LABEL_52:
LABEL_53:

  v64 = *MEMORY[0x277D85DE8];

  return v47;
}

void __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v14])
  {
    v6 = 1.0;
    if (([v5 faceIsGood] & 1) == 0)
    {
      if ([v5 faceIsOk])
      {
        v6 = 0.5;
      }

      else
      {
        v6 = 0.25;
      }
    }

    [v5 faceSize];
    v8 = v7;
    [v5 faceQuality];
    if (v9 == -1.0)
    {
      v9 = *(a1 + 80);
    }

    if (v8 <= *(a1 + 88))
    {
      v10 = v8;
    }

    else
    {
      v10 = *(a1 + 96);
    }

    v11 = v9 * v10;
    if (v8 >= *(a1 + 96))
    {
      v12 = *(*(a1 + 48) + 8);
      v13 = *(v12 + 24);
      if (v13 >= v8)
      {
        v13 = v8;
      }

      *(v12 + 24) = v13;
    }

    ++*(*(*(a1 + 56) + 8) + 24);
    *(*(*(a1 + 64) + 8) + 24) = v6 + *(*(*(a1 + 64) + 8) + 24);
    *(*(*(a1 + 72) + 8) + 24) = v11 + *(*(*(a1 + 72) + 8) + 24);
  }

  else
  {
    [*(a1 + 40) addObject:v14];
  }
}

void __182__PGCurationManager_bestAssetInAssets_forReferencePersonLocalIdentifiers_requiredMinimumNumberOfReferencePersons_forMemories_forSocialGroup_allowGuestAsset_wantsGoodSquareCropScore___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = [*(a1 + 32) objectForKeyedSubscript:a2];
  [v14 faceSize];
  v4 = v3;
  [v14 faceQuality];
  if (v5 == -1.0)
  {
    v5 = *(a1 + 56);
  }

  v6 = v4;
  if (v4 > *(a1 + 64))
  {
    v6 = *(a1 + 72);
  }

  v7 = v5 * v6;
  v8 = [v14 isKnownPerson];
  v9 = *(a1 + 80);
  v10 = v4 < v9;
  v11 = v4 >= v9;
  v12 = -0.05;
  if (!v10)
  {
    v12 = -0.25;
  }

  v13 = 0.25;
  if (v8)
  {
    v13 = 0.5;
    v12 = dbl_22F78C0B0[v11];
  }

  *(*(*(a1 + 40) + 8) + 24) = v12 + *(*(*(a1 + 40) + 8) + 24);
  *(*(*(a1 + 48) + 8) + 24) = v7 * v13 + *(*(*(a1 + 48) + 8) + 24);
}

- (id)bestAssetInAssets:(id)a3 options:(id)a4
{
  v85 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 referencePersonLocalIdentifiers];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 count] != 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = [v7 isForMemories];
  v12 = [v7 allowGuestAsset];
  v13 = objc_autoreleasePoolPush();
  if (!v10 || ![v7 focusOnPeople])
  {
    goto LABEL_12;
  }

  v14 = [(PGCurationManager *)self bestAssetInAssets:v6 forReferencePersonLocalIdentifiers:v9 minimumNumberOfCommonPeople:1 forKeyAsset:1 forMemories:v11 allowGuestAsset:v12];
  v15 = [(PGCurationManager *)self curationLoggingConnection];
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
  if (!v14)
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Curated key asset: didn't find key asset with reference people and focus on people.", buf, 2u);
    }

LABEL_12:
    v73 = v9;
    if ([v7 prefilterAssetsWithFaces])
    {
      v17 = [objc_opt_class() _filteredAssetsWithFaceFilter:1 forAssets:v6];
      v18 = [v17 count];
      v19 = v18 / [v6 count];
      [v7 prefilterAssetsWithFacesThreshold];
      v21 = v20;
      v22 = [(PGCurationManager *)self curationLoggingConnection];
      v23 = os_log_type_enabled(v22, OS_LOG_TYPE_INFO);
      if (v19 >= v21)
      {
        if (v23)
        {
          v55 = v7;
          v56 = self;
          v57 = [v17 count];
          v58 = [v6 count];
          *buf = 134218240;
          v82 = v57;
          self = v56;
          v7 = v55;
          v83 = 2048;
          v84 = v58;
          _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Curated key asset: prefiltered assets with faces %ld/%ld.", buf, 0x16u);
        }

        v28 = 0;
        v29 = 0;
        if (v17)
        {
LABEL_19:
          v30 = v17;
          v74 = v30;
          v75 = v6;
          v71 = v7;
          v72 = v13;
          v70 = __PAIR64__(v10, v29);
          if ([v7 useSummarizer])
          {
            if ([v7 complete])
            {
              v31 = 4;
            }

            else
            {
              v31 = 2;
            }

            v32 = [objc_opt_class() summaryClusteringForDuration:v31];
            v33 = [v32 performWithItems:v30 identifiersOfEligibleItems:0 maximumNumberOfItemsToElect:1 progressBlock:0];
            v34 = v30;
            if ([v33 count])
            {
              v35 = v30;
              v36 = [v33 firstObject];
              v37 = [v36 cluster];
              v34 = [v37 objects];
            }

            v38 = [(PGCurationManager *)self curationLoggingConnection];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              v39 = [v34 count];
              v40 = [v74 count];
              *buf = 134218240;
              v82 = v39;
              v83 = 2048;
              v84 = v40;
              _os_log_impl(&dword_22F0FC000, v38, OS_LOG_TYPE_INFO, "Curated key asset: summarizer elected %ld/%ld assets.", buf, 0x16u);
            }

            v41 = self;
          }

          else
          {
            v32 = [(PGCurationManager *)self curationLoggingConnection];
            v41 = self;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v42 = [v30 count];
              *buf = 134217984;
              v82 = v42;
              _os_log_impl(&dword_22F0FC000, v32, OS_LOG_TYPE_INFO, "Curated key asset: not using summarizer. %ld assets remaining.", buf, 0xCu);
            }

            v34 = v30;
          }

          v43 = [MEMORY[0x277CBEB18] array];
          v44 = [MEMORY[0x277CBEB18] array];
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v45 = v34;
          v46 = [v45 countByEnumeratingWithState:&v76 objects:v80 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v77;
            do
            {
              for (i = 0; i != v47; ++i)
              {
                if (*v77 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v76 + 1) + 8 * i);
                if ([v50 clsAvoidIfPossibleAsKeyItemForMemories:v11 allowGuestAsset:{v12, v70}])
                {
                  v51 = v44;
                }

                else
                {
                  v51 = v43;
                }

                [v51 addObject:v50];
              }

              v47 = [v45 countByEnumeratingWithState:&v76 objects:v80 count:16];
            }

            while (v47);
          }

          v52 = v41;
          v7 = v71;
          if (HIDWORD(v70))
          {
            v9 = v73;
            v53 = [(PGCurationManager *)v52 _bestAssetInSummarizedAssets:v43 forReferencePersonLocalIdentifiers:v73];
            if (v53)
            {
              v14 = v53;
              v54 = [(PGCurationManager *)v52 curationLoggingConnection];
              if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v54, OS_LOG_TYPE_INFO, "Curated key asset: found key asset with reference people in non video assets.", buf, 2u);
              }

LABEL_70:
              v15 = v74;
              v6 = v75;
              v13 = v72;
              goto LABEL_71;
            }

            v14 = [(PGCurationManager *)v52 _bestAssetInSummarizedAssets:v44 forReferencePersonLocalIdentifiers:v73];
            v59 = [(PGCurationManager *)v52 curationLoggingConnection];
            v60 = os_log_type_enabled(v59, OS_LOG_TYPE_INFO);
            if (v14)
            {
              if (v60)
              {
                *buf = 0;
                _os_log_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_INFO, "Curated key asset: found key asset with reference people in video assets.", buf, 2u);
              }

              goto LABEL_70;
            }

            if (v60)
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v59, OS_LOG_TYPE_INFO, "Curated key asset: didn't find common people. fallback to basic curation.", buf, 2u);
            }
          }

          v61 = [objc_opt_class() assetsBeautifier];
          v62 = [v61 performWithItems:v43 maximumNumberOfItemsToChoose:1 progressBlock:0];
          v63 = [v62 count];
          v64 = [(PGCurationManager *)v52 curationLoggingConnection];
          v65 = os_log_type_enabled(v64, OS_LOG_TYPE_INFO);
          if (v63)
          {
            if (v65)
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "Curated key asset: found key asset in non video assets.", buf, 2u);
            }
          }

          else
          {
            if (v65)
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "Curated key asset: didn't find key asset w/o videos. Trying to find asset in video assets.", buf, 2u);
            }

            [v61 performWithItems:v44 maximumNumberOfItemsToChoose:1 progressBlock:0];
            v62 = v64 = v62;
          }

          v9 = v73;

          v14 = [v62 firstObject];

          if (v14)
          {
            v66 = 1;
          }

          else
          {
            v66 = v70;
          }

          if ((v66 & 1) == 0)
          {
            v67 = [(PGCurationManager *)v52 curationLoggingConnection];
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_22F0FC000, v67, OS_LOG_TYPE_INFO, "Curated key asset: no key asset found when using pre-filtering. Trying again w/o prefiltering.", buf, 2u);
            }

            [v71 setPrefilterAssetsWithFaces:0];
            v14 = [(PGCurationManager *)v52 bestAssetInAssets:v75 options:v71];
          }

          goto LABEL_70;
        }

LABEL_18:
        v17 = v6;
        v29 = v28;
        goto LABEL_19;
      }

      if (v23)
      {
        v24 = v7;
        v25 = self;
        v26 = [v17 count];
        v27 = [v6 count];
        *buf = 134218240;
        v82 = v26;
        self = v25;
        v7 = v24;
        v83 = 2048;
        v84 = v27;
        _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Curated key asset: not using prefiltered assets with faces (%ld/%ld).", buf, 0x16u);
      }
    }

    v28 = 1;
    goto LABEL_18;
  }

  if (v16)
  {
    *buf = 0;
    _os_log_impl(&dword_22F0FC000, v15, OS_LOG_TYPE_INFO, "Curated key asset: found key asset with reference people and focus on people.", buf, 2u);
  }

LABEL_71:

  objc_autoreleasePoolPop(v13);
  v68 = *MEMORY[0x277D85DE8];

  return v14;
}

- (double)contentScoreForAssetFeeder:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = [v3 allItems];
  [v5 contentScoreForAssets:v6];
  v8 = v7;

  objc_autoreleasePoolPop(v4);
  return v8;
}

- (BOOL)isAssetFeederInteresting:(id)a3 withAlternateJunking:(BOOL)a4 smart:(BOOL)a5
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [v7 assetCollection];
  if ([v7 numberOfItems])
  {
    v9 = [v7 allItems];
    v10 = v9;
    if (!a5)
    {
      v17 = +[PGUserDefaults minimumNumberOfCuratedAssetsForInterestingMoments];
      if (v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 4;
      }

      v16 = [objc_opt_class() areAssetsInteresting:v10 minimumNumberOfCuratedAssets:v18 duration:2];
      goto LABEL_13;
    }

    v11 = [v9 count];
    [MEMORY[0x277D277C0] maximumScoreForItems:v10];
    v13 = v12;
    [(PGCurationManager *)self contentScoreForAssetFeeder:v7];
    v15 = v14;
    if (v14 < (*MEMORY[0x277D3C778] + *MEMORY[0x277D3C768]) * 0.5)
    {
      goto LABEL_4;
    }

    if (v13 > *MEMORY[0x277D3C760] || ([v7 hasBestScoringAssets] & 1) != 0)
    {
LABEL_12:
      v16 = 1;
      goto LABEL_13;
    }

    if (v11 >= 5)
    {
      if (v11 > 0x40)
      {
        goto LABEL_12;
      }

      v21 = [v8 cls_universalEndDate];
      v22 = [v8 cls_universalStartDate];
      [v21 timeIntervalSinceDate:v22];
      v24 = v23;

      if (v24 >= 60.0)
      {
        if (v11 > 6 || [v7 hasPeople])
        {
          v54 = v11;
          v26 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_329];
          [v26 setMaximumDistance:1800.0];
          [v26 setMinimumNumberOfObjects:1];
          v55 = v26;
          [v26 performWithDataset:v10 progressBlock:0];
          v65 = 0u;
          v66 = 0u;
          v67 = 0u;
          obj = v68 = 0u;
          v58 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
          if (v58)
          {
            v57 = *v66;
            while (2)
            {
              for (i = 0; i != v58; ++i)
              {
                if (*v66 != v57)
                {
                  objc_enumerationMutation(obj);
                }

                v28 = *(*(&v65 + 1) + 8 * i);
                context = objc_autoreleasePoolPush();
                v29 = [v28 objects];
                v30 = [v29 firstObject];

                v31 = [v30 creationDate];
                [v31 timeIntervalSince1970];
                v33 = v32;

                v59 = v30;
                v34 = [v30 creationDate];
                [v34 timeIntervalSince1970];
                v36 = v35;

                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                v62 = 0u;
                v37 = [v28 objects];
                v38 = [v37 countByEnumeratingWithState:&v61 objects:v75 count:16];
                if (v38)
                {
                  v39 = v38;
                  v40 = *v62;
                  do
                  {
                    for (j = 0; j != v39; ++j)
                    {
                      if (*v62 != v40)
                      {
                        objc_enumerationMutation(v37);
                      }

                      v42 = [*(*(&v61 + 1) + 8 * j) creationDate];
                      [v42 timeIntervalSince1970];
                      v44 = v43;

                      if (v44 < v33)
                      {
                        v33 = v44;
                      }

                      if (v44 > v36)
                      {
                        v36 = v44;
                      }
                    }

                    v39 = [v37 countByEnumeratingWithState:&v61 objects:v75 count:16];
                  }

                  while (v39);
                }

                if (v36 - v33 >= 0.0)
                {
                  v45 = v36 - v33;
                }

                else
                {
                  v45 = -(v36 - v33);
                }

                objc_autoreleasePoolPop(context);
                if (v45 >= 60.0)
                {

                  if (v15 <= *MEMORY[0x277D3C770])
                  {
                    v48 = 4;
                  }

                  else if ([v7 hasPeople])
                  {
                    v48 = 2;
                  }

                  else
                  {
                    v48 = 4;
                  }

                  v47 = v55;
                  v46 = [objc_opt_class() assetsBeautifier];
                  v49 = [objc_opt_class() maximumNumberOfItemsForDuration:2 withTotalNumberOfItems:v54];
                  if (v49 >= v54)
                  {
                    v50 = v54;
                  }

                  else
                  {
                    v50 = v49;
                  }

                  v51 = [v46 performWithItems:v10 maximumNumberOfItemsToChoose:v50 progressBlock:0];
                  if ([v51 count] >= v48 && v50 * 0.3 <= objc_msgSend(v51, "count"))
                  {
                    v16 = 1;
                  }

                  else
                  {
                    v52 = [(PGCurationManager *)self curationLoggingConnection];
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                    {
                      v53 = [v51 count];
                      *buf = 134218498;
                      v70 = v53;
                      v71 = 2048;
                      v72 = v50;
                      v73 = 2112;
                      v74 = v8;
                      _os_log_debug_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: Not enough best assets from beautifier (%ld/%ld) for assetCollection %@", buf, 0x20u);
                    }

                    v16 = 0;
                  }

                  goto LABEL_63;
                }
              }

              v58 = [obj countByEnumeratingWithState:&v65 objects:v76 count:16];
              if (v58)
              {
                continue;
              }

              break;
            }
          }

          v46 = [(PGCurationManager *)self curationLoggingConnection];
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v70 = v8;
            _os_log_debug_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: %@ sub-segments are too short", buf, 0xCu);
          }

          v16 = 0;
          v47 = v55;
LABEL_63:

          goto LABEL_13;
        }
      }

      else
      {
        v25 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v70 = v8;
          _os_log_debug_impl(&dword_22F0FC000, v25, OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: %@ is too short", buf, 0xCu);
        }
      }
    }

LABEL_4:
    v16 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v16 = 0;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

double __73__PGCurationManager_isAssetFeederInteresting_withAlternateJunking_smart___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = v7;

  return v8;
}

- (void)invalidateCurationCacheForMomentUUIDs:(id)a3
{
  cache = self->_cache;
  v4 = [a3 allObjects];
  [(PGCurationCache *)cache invalidateCacheForMomentUUIDs:v4];
}

- (unint64_t)optimalDurationForAssetCollection:(id)a3 duration:(unint64_t)a4 options:(id)a5 curationContext:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [v10 assetCollectionType];
  if (v13 == 1)
  {
    goto LABEL_12;
  }

  v14 = v13;
  if (v13 == 2 && [v10 assetCollectionSubtype] != 200)
  {
    goto LABEL_12;
  }

  if (v11)
  {
    v15 = [v11 objectForKeyedSubscript:@"PHPhotosGraphOptionIsCompleteMoments"];
    v16 = v15;
    if (v15 && ([v15 BOOLValue] & 1) == 0)
    {

LABEL_12:
      v18 = 5;
      if (a4 != 3)
      {
        v18 = a4;
      }

      if (a4 == 2)
      {
        a4 = 4;
      }

      else
      {
        a4 = v18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v14 != 3 && [v10 estimatedAssetCount] > 0x64)
  {

    goto LABEL_17;
  }

  v17 = [(PGCurationManager *)self isAssetCollectionInteresting:v10 curationContext:v12];

  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_17:

  return a4;
}

- (id)memoryCuratedAssetsForAssets:(id)a3 duration:(unint64_t)a4 withContextualAssetLocalIdentifiers:(id)a5 minimumProportion:(double)a6 graph:(id)a7 curationContext:(id)a8 progressBlock:(id)a9
{
  v162 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v107 = v16;
  v104 = v18;
  v105 = v19;
  v106 = v20;
  if (![v16 count])
  {
    v23 = 0;
    goto LABEL_111;
  }

  v152 = 0;
  v153 = &v152;
  v154 = 0x2020000000;
  v155 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x2020000000;
  v151 = 0;
  v117 = _Block_copy(v20);
  if (v117)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (Current - v149[3] >= 0.01)
    {
      v149[3] = Current;
      LOBYTE(info.numer) = 0;
      v117[2](v117, &info, 0.0);
      v22 = *(v153 + 24) | LOBYTE(info.numer);
      *(v153 + 24) = v22;
      if (v22)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v157 = 628;
          *&v157[4] = 2080;
          *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v23 = 0;
        goto LABEL_110;
      }
    }
  }

  v24 = [(PGCurationManager *)self curationLoggingConnection];
  v25 = os_signpost_id_generate(v24);
  v26 = v24;
  v27 = v26;
  spid = v25;
  v95 = v25 - 1;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v27, OS_SIGNPOST_INTERVAL_BEGIN, v25, "CuratedAssets", "", buf, 2u);
  }

  v100 = v27;

  info = 0;
  mach_timebase_info(&info);
  v28 = mach_absolute_time();
  v103 = [v16 fetchedObjects];
  if (v117)
  {
    v29 = CFAbsoluteTimeGetCurrent();
    if (v29 - v149[3] >= 0.01)
    {
      v149[3] = v29;
      v146 = 0;
      v117[2](v117, &v146, 0.5);
      v30 = *(v153 + 24) | v146;
      *(v153 + 24) = v30;
      if (v30)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v157 = 633;
          *&v157[4] = 2080;
          *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v23 = 0;
        goto LABEL_109;
      }
    }
  }

  v94 = v28;
  v31 = +[PGCurationManager maximumNumberOfItemsForDuration:withTotalNumberOfItems:](PGCurationManager, "maximumNumberOfItemsForDuration:withTotalNumberOfItems:", a4, [v103 count]);
  v96 = [PGCurationManager minimumNumberOfItemsForDuration:a4 withMaximumNumberOfItems:v31];
  v99 = v31;
  v102 = [MEMORY[0x277CBEB18] arrayWithCapacity:v31];
  v108 = +[PGCurationManager assetsBeautifier];
  v32 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284485FD0];
  [v32 setK:v99];
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke;
  v141[3] = &unk_27888A188;
  v111 = v117;
  v142 = v111;
  v143 = &v148;
  v145 = 0x3F847AE147AE147BLL;
  v144 = &v152;
  v98 = v32;
  v101 = [v32 performWithDataset:v103 progressBlock:v141];
  if (*(v153 + 24) == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v157 = 648;
      *&v157[4] = 2080;
      *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v23 = 0;
    goto LABEL_108;
  }

  v113 = [MEMORY[0x277CBEB18] array];
  v112 = [MEMORY[0x277CBEB18] array];
  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  obj = v101;
  v116 = [obj countByEnumeratingWithState:&v137 objects:v161 count:16];
  if (v116)
  {
    v114 = *v138;
    v33 = *MEMORY[0x277D3C778];
    do
    {
      for (i = 0; i != v116; ++i)
      {
        if (*v138 != v114)
        {
          objc_enumerationMutation(obj);
        }

        v34 = *(*(&v137 + 1) + 8 * i);
        if (v117)
        {
          v35 = CFAbsoluteTimeGetCurrent();
          if (v35 - v149[3] >= 0.01)
          {
            v149[3] = v35;
            v146 = 0;
            v111[2](v111, &v146, 0.5);
            v36 = *(v153 + 24) | v146;
            *(v153 + 24) = v36;
            if (v36)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v157 = 654;
                *&v157[4] = 2080;
                *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_54;
            }
          }
        }

        v37 = [v34 objects];
        v38 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v37, "count")}];
        v39 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v37, "count")}];
        v135 = 0u;
        v136 = 0u;
        v133 = 0u;
        v134 = 0u;
        v40 = v37;
        v41 = [v40 countByEnumeratingWithState:&v133 objects:v160 count:16];
        if (v41)
        {
          v42 = *v134;
          do
          {
            for (j = 0; j != v41; ++j)
            {
              if (*v134 != v42)
              {
                objc_enumerationMutation(v40);
              }

              v44 = *(*(&v133 + 1) + 8 * j);
              [v44 clsContentScore];
              if (v45 > v33)
              {
                v46 = [v44 localIdentifier];
                v47 = [v17 containsObject:v46];

                if (v47)
                {
                  v48 = v38;
                }

                else
                {
                  v48 = v39;
                }

                [v48 addObject:v44];
              }
            }

            v41 = [v40 countByEnumeratingWithState:&v133 objects:v160 count:16];
          }

          while (v41);
        }

        if ([v38 count])
        {
          [v112 addObject:v38];
          [v113 addObject:v39];
        }
      }

      v116 = [obj countByEnumeratingWithState:&v137 objects:v161 count:16];
    }

    while (v116);
  }

  if (v117)
  {
    v49 = CFAbsoluteTimeGetCurrent();
    if (v49 - v149[3] >= 0.01)
    {
      v149[3] = v49;
      v146 = 0;
      v111[2](v111, &v146, 0.5);
      v50 = *(v153 + 24) | v146;
      *(v153 + 24) = v50;
      if (v50)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v157 = 685;
          *&v157[4] = 2080;
          *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_54:
        v23 = 0;
        goto LABEL_107;
      }
    }
  }

  [v113 sortUsingComparator:&__block_literal_global_316];
  v115 = [MEMORY[0x277CBEB18] array];
  v51 = 0;
  v93 = 0;
  v52 = 0;
  while ([v102 count] < v96)
  {
    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    obja = v112;
    v53 = [obja countByEnumeratingWithState:&v129 objects:v159 count:16];
    v54 = v93;
    if (!v53)
    {
      goto LABEL_72;
    }

    v54 = v93;
    v55 = *v130;
    while (2)
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v130 != v55)
        {
          objc_enumerationMutation(obja);
        }

        v57 = *(*(&v129 + 1) + 8 * k);
        if (v117)
        {
          v58 = CFAbsoluteTimeGetCurrent();
          if (v58 - v149[3] >= 0.01)
          {
            v149[3] = v58;
            v146 = 0;
            v111[2](v111, &v146, 0.5);
            v59 = *(v153 + 24) | v146;
            *(v153 + 24) = v59;
            if (v59)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v157 = 705;
                *&v157[4] = 2080;
                *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              goto LABEL_104;
            }
          }
        }

        v124[0] = MEMORY[0x277D85DD0];
        v124[1] = 3221225472;
        v124[2] = __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_317;
        v124[3] = &unk_27888A188;
        v125 = v111;
        v126 = &v148;
        v128 = 0x3F847AE147AE147BLL;
        v127 = &v152;
        v60 = [v108 performWithItems:v57 maximumNumberOfItemsToChoose:1 progressBlock:v124];
        v61 = v60;
        if (*(v153 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v157 = 711;
            *&v157[4] = 2080;
            *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

LABEL_104:
          v23 = 0;
          goto LABEL_105;
        }

        v62 = [v60 firstObject];
        if (v62)
        {
          [v102 addObject:v62];
          [v57 removeObject:v62];
          ++v54;
        }

        else
        {
          [v115 addObject:v57];
        }

        if (v54 >= v99 - v92)
        {
          goto LABEL_72;
        }
      }

      v53 = [obja countByEnumeratingWithState:&v129 objects:v159 count:16];
      if (v53)
      {
        continue;
      }

      break;
    }

LABEL_72:

    [obja removeObjectsInArray:v115];
    [v115 removeAllObjects];
    v63 = vcvtmd_u64_f64(v54 / a6 - v54);
    if (v99 - v54 >= v63)
    {
      v64 = v63;
    }

    else
    {
      v64 = v99 - v54;
    }

    v65 = [v113 count];
    v51 = v92;
    while (v52 < v65 && v51 < v64)
    {
      v66 = [v113 objectAtIndexedSubscript:v52];
      v119[0] = MEMORY[0x277D85DD0];
      v119[1] = 3221225472;
      v119[2] = __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_318;
      v119[3] = &unk_27888A188;
      v120 = v111;
      v121 = &v148;
      v123 = 0x3F847AE147AE147BLL;
      v122 = &v152;
      v67 = [v108 performWithItems:v66 maximumNumberOfItemsToChoose:1 progressBlock:v119];
      v68 = [v67 firstObject];

      v69 = *(v153 + 24);
      if (v69 == 1)
      {
        v70 = MEMORY[0x277D86220];
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v157 = 745;
          *&v157[4] = 2080;
          *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, v70, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        if (v68)
        {
          [v102 addObject:v68];
          [v66 removeObject:v68];
          ++v51;
        }

        else
        {
          [v115 addObject:v66];
        }

        ++v52;
      }

      if (v69)
      {
        goto LABEL_104;
      }
    }

    if (v52 >= v65)
    {
      v52 = 0;
    }

    [v113 removeObjectsInArray:v115];
    [v115 removeAllObjects];
    v71 = v54 == v93;
    v93 = v54;
    if (v71)
    {
      v93 = v54;
      if (v51 == v92)
      {
        break;
      }
    }
  }

  if (v117 && (v72 = CFAbsoluteTimeGetCurrent(), v72 - v149[3] >= 0.01) && (v149[3] = v72, v146 = 0, v111[2](v111, &v146, 0.5), v73 = *(v153 + 24) | v146, *(v153 + 24) = v73, (v73 & 1) != 0))
  {
    v74 = v115;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      *v157 = 773;
      *&v157[4] = 2080;
      *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v23 = 0;
  }

  else
  {
    v77 = [v108 deduplicateItems:v102 debugInfo:0];
    v78 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
    v158 = v78;
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:1];
    v80 = [v77 sortedArrayUsingDescriptors:v79];

    v81 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v84 = v100;
    v85 = v84;
    if (v95 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v84))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v85, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssets", "", buf, 2u);
    }

    if (os_log_type_enabled(v85, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *v157 = "CuratedAssets";
      *&v157[8] = 2048;
      *&v157[10] = ((((v81 - v94) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_22F0FC000, v85, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v86 = objc_alloc(MEMORY[0x277CD98D0]);
    v87 = [v107 photoLibrary];
    v88 = [v107 fetchPropertySets];
    v89 = [v86 initWithObjects:v80 photoLibrary:v87 fetchType:0 fetchPropertySets:v88 identifier:0 registerIfNeeded:0];

    if (v117 && (v90 = CFAbsoluteTimeGetCurrent(), v90 - v149[3] >= 0.01) && (v149[3] = v90, v146 = 0, v111[2](v111, &v146, 1.0), v91 = *(v153 + 24) | v146, *(v153 + 24) = v91, (v91 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v157 = 780;
        *&v157[4] = 2080;
        *&v157[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v23 = 0;
    }

    else
    {
      v23 = v89;
    }

LABEL_105:
    v74 = v115;
  }

LABEL_107:
LABEL_108:

LABEL_109:
LABEL_110:
  _Block_object_dispose(&v148, 8);
  _Block_object_dispose(&v152, 8);

LABEL_111:
  v75 = *MEMORY[0x277D85DE8];

  return v23;
}

void __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_317(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_318(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __149__PGCurationManager_memoryCuratedAssetsForAssets_duration_withContextualAssetLocalIdentifiers_minimumProportion_graph_curationContext_progressBlock___block_invoke_313(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 count];
  v6 = [v4 count];

  if (v5 > v6)
  {
    return -1;
  }

  else
  {
    return v6 > v5;
  }
}

- (id)memoryCuratedAssetsForAssetCollection:(id)a3 duration:(unint64_t)a4 withContextualAssetLocalIdentifiers:(id)a5 minimumProportion:(double)a6 graph:(id)a7 curationContext:(id)a8 progressBlock:(id)a9
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a5;
  v20 = a3;
  v21 = [(PGCurationManager *)self defaultAssetFetchOptions];
  v22 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:2];
  v23 = [MEMORY[0x277D27710] feederForAssetCollection:v20 options:v21 feederPrefetchOptions:v22 curationContext:v17];

  v24 = [v23 assetFetchResult];
  v25 = [(PGCurationManager *)self memoryCuratedAssetsForAssets:v24 duration:a4 withContextualAssetLocalIdentifiers:v19 minimumProportion:v18 graph:v17 curationContext:v16 progressBlock:a6];

  return v25;
}

- (id)curatedAssetsForAssetCollection:(id)a3 duration:(unint64_t)a4 referencePersonLocalIdentifiers:(id)a5 curationContext:(id)a6 progressBlock:(id)a7
{
  v104 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v70 = a5;
  v71 = a6;
  v13 = a7;
  v14 = _Block_copy(v13);
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x2020000000;
  v96 = 0;
  v68 = v13;
  if (!v14 || (v15 = CFAbsoluteTimeGetCurrent(), v15 - v94[3] < 0.01) || (v94[3] = v15, LOBYTE(info.numer) = 0, (v14)[2](v14, &info, 0.0), v16 = *(v98 + 24) | LOBYTE(info.numer), *(v98 + 24) = v16, (v16 & 1) == 0))
  {
    v18 = [(PGCurationManager *)self curationLoggingConnection];
    v19 = os_signpost_id_generate(v18);
    v20 = v18;
    v21 = v20;
    v63 = v19 - 1;
    spid = v19;
    if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "CuratedAssetsForPeople", "", buf, 2u);
    }

    v67 = v21;

    info = 0;
    mach_timebase_info(&info);
    v62 = mach_absolute_time();
    v22 = [(PGCurationManager *)self defaultAssetFetchOptions];
    v23 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
    [v23 setPersonsPrefetchMode:2];
    [v23 setFaceInformationPrefetchMode:2];
    v69 = [MEMORY[0x277D27710] feederForAssetCollection:v12 options:v22 feederPrefetchOptions:v23 curationContext:v71];
    v66 = v22;
    if (v14)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v94[3] >= 0.01)
      {
        v94[3] = Current;
        v91 = 0;
        v14[2](v14, &v91, 0.5);
        v25 = *(v98 + 24) | v91;
        *(v98 + 24) = v25;
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v102 = 551;
            *&v102[4] = 2080;
            *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = 0;
          goto LABEL_65;
        }
      }
    }

    v26 = [v69 allItems];
    if (v14)
    {
      v27 = CFAbsoluteTimeGetCurrent();
      if (v27 - v94[3] >= 0.01)
      {
        v94[3] = v27;
        v91 = 0;
        v14[2](v14, &v91, 0.5);
        v28 = *(v98 + 24) | v91;
        *(v98 + 24) = v28;
        if (v28)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v102 = 555;
            *&v102[4] = 2080;
            *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v17 = 0;
          goto LABEL_64;
        }
      }
    }

    v29 = [objc_opt_class() maximumNumberOfItemsForDuration:a4 withTotalNumberOfItems:{objc_msgSend(v26, "count")}];
    v30 = [objc_opt_class() minimumNumberOfItemsForDuration:a4 withMaximumNumberOfItems:v29];
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke;
    v86[3] = &unk_27888A188;
    v31 = v14;
    v87 = v31;
    v88 = &v93;
    v89 = &v97;
    v90 = 0x3F847AE147AE147BLL;
    v65 = [(PGCurationManager *)self _bestAssetsInAssets:v26 forReferencePersonLocalIdentifiers:v70 minimumRatioOfReferencePersonsPerAsset:v86 progressBlock:0.0];
    if (*(v98 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v102 = 564;
        *&v102[4] = 2080;
        *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v17 = 0;
      goto LABEL_63;
    }

    v32 = [objc_opt_class() assetsBeautifier];
    v81[0] = MEMORY[0x277D85DD0];
    v81[1] = 3221225472;
    v81[2] = __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_302;
    v81[3] = &unk_27888A188;
    v60 = v31;
    v61 = v32;
    v82 = v60;
    v83 = &v93;
    v84 = &v97;
    v85 = 0x3F847AE147AE147BLL;
    v33 = [v32 performWithItems:v65 maximumNumberOfItemsToChoose:v29 progressBlock:v81];
    v34 = v33;
    if (*(v98 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v102 = 572;
        *&v102[4] = 2080;
        *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        v35 = MEMORY[0x277D86220];
LABEL_29:
        _os_log_impl(&dword_22F0FC000, v35, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

    else
    {
      if ([v33 count] >= v30)
      {
        goto LABEL_71;
      }

      v36 = [MEMORY[0x277CBEB58] setWithArray:v34];
      v76[0] = MEMORY[0x277D85DD0];
      v76[1] = 3221225472;
      v76[2] = __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_304;
      v76[3] = &unk_27888A188;
      v77 = v60;
      v78 = &v93;
      v79 = &v97;
      v80 = 0x3F847AE147AE147BLL;
      v37 = [v61 performWithItems:v26 maximumNumberOfItemsToChoose:v30 progressBlock:v76];
      v38 = v37;
      v39 = *(v98 + 24);
      if (v39 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v102 = 583;
          *&v102[4] = 2080;
          *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        v58 = *(v98 + 24);
        v59 = v12;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v57 = v37;
        v40 = v37;
        v41 = [v40 countByEnumeratingWithState:&v72 objects:v103 count:16];
        if (v41)
        {
          v42 = *v73;
LABEL_36:
          v43 = 0;
          while (1)
          {
            if (*v73 != v42)
            {
              objc_enumerationMutation(v40);
            }

            [v36 addObject:*(*(&v72 + 1) + 8 * v43)];
            if ([v36 count] >= v30)
            {
              break;
            }

            if (v41 == ++v43)
            {
              v41 = [v40 countByEnumeratingWithState:&v72 objects:v103 count:16];
              if (v41)
              {
                goto LABEL_36;
              }

              break;
            }
          }
        }

        v12 = v59;
        LOBYTE(v39) = v58;
        v38 = v57;
        v44 = [v36 allObjects];

        v34 = v44;
      }

      if ((v39 & 1) == 0)
      {
LABEL_71:
        if (!v14 || (v45 = CFAbsoluteTimeGetCurrent(), v45 - v94[3] < 0.01) || (v94[3] = v45, v91 = 0, v60[2](v60, &v91, 0.5), v46 = *(v98 + 24) | v91, *(v98 + 24) = v46, (v46 & 1) == 0))
        {
          v47 = [v34 sortedArrayUsingComparator:&__block_literal_global_40652];

          v48 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v51 = v67;
          v52 = v51;
          if (v63 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_22F0FC000, v52, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssetsForPeople", "", buf, 2u);
          }

          if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v102 = "CuratedAssetsForPeople";
            *&v102[8] = 2048;
            *&v102[10] = ((((v48 - v62) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_22F0FC000, v52, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          if (v14 && (v53 = CFAbsoluteTimeGetCurrent(), v53 - v94[3] >= 0.01) && (v94[3] = v53, v91 = 0, v60[2](v60, &v91, 1.0), v54 = *(v98 + 24) | v91, *(v98 + 24) = v54, (v54 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v102 = 605;
              *&v102[4] = 2080;
              *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v17 = 0;
            v34 = v47;
          }

          else
          {
            v34 = v47;
            v17 = v34;
          }

          goto LABEL_62;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v102 = 597;
          *&v102[4] = 2080;
          *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          v35 = MEMORY[0x277D86220];
          goto LABEL_29;
        }
      }
    }

    v17 = 0;
LABEL_62:

LABEL_63:
LABEL_64:

LABEL_65:
    goto LABEL_66;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v102 = 541;
    *&v102[4] = 2080;
    *&v102[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v17 = 0;
LABEL_66:
  _Block_object_dispose(&v93, 8);
  _Block_object_dispose(&v97, 8);

  v55 = *MEMORY[0x277D85DE8];

  return v17;
}

void __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_302(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

void __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_304(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __124__PGCurationManager_curatedAssetsForAssetCollection_duration_referencePersonLocalIdentifiers_curationContext_progressBlock___block_invoke_305(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

- (BOOL)isAssetCollectionInteresting:(id)a3 curationContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PGCurationManager *)self defaultAssetFetchOptions];
  v9 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v9 setFaceInformationPrefetchMode:2];
  v10 = [MEMORY[0x277D27710] feederForAssetCollection:v7 options:v8 feederPrefetchOptions:v9 curationContext:v6];

  LOBYTE(self) = [(PGCurationManager *)self isAssetFeederInteresting:v10 withAlternateJunking:0 smart:0];
  return self;
}

- (double)contentScoreForAssetCollection:(id)a3 curationContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PGCurationManager *)self defaultAssetFetchOptions];
  v9 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v9 setPersonsPrefetchMode:0];
  v10 = [MEMORY[0x277D27710] feederForAssetCollection:v7 options:v8 feederPrefetchOptions:v9 curationContext:v6];

  [(PGCurationManager *)self contentScoreForAssetFeeder:v10];
  v12 = v11;

  return v12;
}

- (id)criteriaForKeyAssetCurationWithAssetCollection:(id)a3 graph:(id)a4 options:(id)a5 curationContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if ([v10 assetCollectionType] == 3)
  {
    v14 = [v11 momentNodeForMoment:v10];
    if (v14)
    {
      v15 = [v11 bestMeaningLabelForMeaningfulEvent:v14];
      if (v15)
      {
        curationCriteriaFactory = self->_curationCriteriaFactory;
        v17 = [v14 enrichableEvent];
        v18 = [(PGCurationCriteriaFactory *)curationCriteriaFactory curationCriteriaWithCollection:v17 meaningLabel:v15 inGraph:v11 client:1];
      }

      else if ([v12 allowContextualTrip] && objc_msgSend(v14, "isTrip"))
      {
        v20 = self->_curationCriteriaFactory;
        v17 = [v14 enrichableEvent];
        v18 = [(PGCurationCriteriaFactory *)v20 tripCurationCriteriaWithCollection:v17 client:1];
      }

      else
      {
        v21 = self->_curationCriteriaFactory;
        v17 = [v14 enrichableEvent];
        v18 = [(PGCurationCriteriaFactory *)v21 petCurationCriteriaWithCollection:v17 client:1 curationContext:v13];
      }

      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)dejunkAndDedupeAssetsInAssetCollection:(id)a3 options:(id)a4 curationContext:(id)a5 progressBlock:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = _os_activity_create(&dword_22F0FC000, "Dejunk and Dedup Assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v22.opaque[0] = 0;
  v22.opaque[1] = 0;
  os_activity_scope_enter(v14, &v22);
  v15 = [(PGCurationManager *)self defaultAssetFetchOptions];
  v16 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v16 setPersonsPrefetchMode:0];
  [v16 setFaceInformationPrefetchMode:2];
  v17 = [MEMORY[0x277D27710] feederForAssetCollection:v10 options:v15 feederPrefetchOptions:v16 curationContext:v12];
  v18 = objc_opt_class();
  v19 = [v17 allItems];
  v20 = [v18 dejunkAndDedupeItems:v19 options:v11 debugInfo:0 progressBlock:v13];

  os_activity_scope_leave(&v22);

  return v20;
}

- (id)curatedAssetsForAssetCollection:(id)a3 options:(id)a4 curationContext:(id)a5 progressBlock:(id)a6
{
  v75 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v56 = a5;
  v55 = a6;
  v12 = _Block_copy(v55);
  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = 0;
  if (!v12 || (v13 = CFAbsoluteTimeGetCurrent(), v13 - v66[3] < 0.01) || (v66[3] = v13, LOBYTE(state.opaque[0]) = 0, (*(v12 + 2))(v12, &state, 0.0), v14 = *(v70 + 24) | LOBYTE(state.opaque[0]), *(v70 + 24) = v14, (v14 & 1) == 0))
  {
    v16 = _os_activity_create(&dword_22F0FC000, "Curated Assets", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v54 = v16;
    os_activity_scope_enter(v16, &state);
    v17 = [(PGCurationManager *)self curationLoggingConnection];
    v18 = os_signpost_id_generate(v17);
    v19 = v17;
    v20 = v19;
    spid = v18;
    v21 = v18 - 1;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v20, OS_SIGNPOST_INTERVAL_BEGIN, v18, "CuratedAssets", "", buf, 2u);
    }

    info = 0;
    mach_timebase_info(&info);
    v52 = mach_absolute_time();
    v22 = [(PGCurationCache *)self->_cache curatedAssetIdentifiersForMoment:v10 options:v11];
    if (v12 && (v23 = CFAbsoluteTimeGetCurrent(), v23 - v66[3] >= 0.01) && (v66[3] = v23, v62 = 0, (*(v12 + 2))(v12, &v62, 0.5), v24 = *(v70 + 24) | v62, *(v70 + 24) = v24, (v24 & 1) != 0))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v74 = 209;
        *&v74[4] = 2080;
        *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v25 = 0;
    }

    else
    {
      if (v22)
      {
        v26 = [(PGCurationManager *)self fetchAssetsSortedByDateWithLocalIdentifiers:v22];
        v25 = [v26 fetchedObjects];

        v27 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v74 = v10;
          _os_log_impl(&dword_22F0FC000, v27, OS_LOG_TYPE_INFO, "Curated Assets: Cache Hit for assetCollection: %@", buf, 0xCu);
        }
      }

      else
      {
        v50 = [(PGCurationManager *)self defaultAssetFetchOptions];
        v28 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
        if ([v11 includesAllFaces])
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v28 setPersonsPrefetchMode:v29];
        [v28 setFaceInformationPrefetchMode:2];
        v51 = [MEMORY[0x277D27710] feederForAssetCollection:v10 options:v50 feederPrefetchOptions:v28 curationContext:v56];
        v57[0] = MEMORY[0x277D85DD0];
        v57[1] = 3221225472;
        v57[2] = __91__PGCurationManager_curatedAssetsForAssetCollection_options_curationContext_progressBlock___block_invoke;
        v57[3] = &unk_27888A188;
        v30 = v12;
        v58 = v30;
        v59 = &v65;
        v60 = &v69;
        v61 = 0x3F847AE147AE147BLL;
        v31 = [(PGCurationManager *)self bestAssetsForAssetFeeder:v51 options:v11 progressBlock:v57];
        v25 = v31;
        if (*(v70 + 24) == 1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v74 = 222;
            *&v74[4] = 2080;
            *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v32 = 0;
        }

        else
        {
          if (![v31 count])
          {
            v48 = [v51 allItems];

            v25 = v48;
          }

          v47 = objc_alloc_init(PGKeyAssetCurationOptions);
          v46 = [(PGCurationCache *)self->_cache curatedKeyAssetIdentifierForMoment:v10 options:?];
          v49 = [(PGCurationManager *)self fetchAssetWithLocalIdentifier:?];
          if (v12 && (Current = CFAbsoluteTimeGetCurrent(), Current - v66[3] >= 0.01) && (v66[3] = Current, v62 = 0, (*(v30 + 2))(v30, &v62, 0.5), v34 = *(v70 + 24) | v62, *(v70 + 24) = v34, (v34 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v74 = 235;
              *&v74[4] = 2080;
              *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v32 = 0;
          }

          else
          {
            if (v49 && ([v25 containsObject:?] & 1) == 0)
            {
              v45 = [v25 arrayByAddingObject:v49];

              v35 = [objc_opt_class() defaultAssetSortDescriptors];
              v25 = [v45 sortedArrayUsingDescriptors:v35];
            }

            [(PGCurationCache *)self->_cache setCuratedAssets:v25 forMoment:v10 options:v11];
            v32 = 1;
          }
        }

        if ((v32 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      v36 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v39 = v20;
      v40 = v39;
      if (v21 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, spid, "CuratedAssets", "", buf, 2u);
      }

      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v74 = "CuratedAssets";
        *&v74[8] = 2048;
        *&v74[10] = ((((v36 - v52) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v40, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      if (!v12 || (v41 = CFAbsoluteTimeGetCurrent(), v41 - v66[3] < 0.01) || (v66[3] = v41, v62 = 0, (*(v12 + 2))(v12, &v62, 1.0), v42 = *(v70 + 24) | v62, *(v70 + 24) = v42, (v42 & 1) == 0))
      {
        v25 = v25;
        v15 = v25;
        goto LABEL_53;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        *v74 = 253;
        *&v74[4] = 2080;
        *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }
    }

LABEL_51:
    v15 = 0;
LABEL_53:

    os_activity_scope_leave(&state);
    goto LABEL_54;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v74 = 200;
    *&v74[4] = 2080;
    *&v74[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v15 = 0;
LABEL_54:
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(&v69, 8);

  v43 = *MEMORY[0x277D85DE8];

  return v15;
}

void __91__PGCurationManager_curatedAssetsForAssetCollection_options_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

- (id)bestAssetsForAssetFeeder:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(PGCurator_PHAsset);
  [(PGCurator *)v11 setLoggingConnection:self->_curationLoggingConnection];
  v12 = [(PGCurator_PHAsset *)v11 bestAssetsForFeeder:v10 options:v9 debugInfo:0 progressBlock:v8];

  return v12;
}

- (id)curatedKeyAssetForAssetCollection:(id)a3 curatedAssetCollection:(id)a4 options:(id)a5 criteria:(id)a6 curationContext:(id)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v54 = a7;
  v16 = [(PGCurationManager *)self curationLoggingConnection];
  v17 = os_signpost_id_generate(v16);
  v18 = v16;
  v19 = v18;
  v20 = v17 - 1;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v17, "CuratedKeyAsset", "", buf, 2u);
  }

  info = 0;
  mach_timebase_info(&info);
  v51 = mach_absolute_time();
  if (v13)
  {
    v21 = v13;
  }

  else
  {
    v21 = v12;
  }

  v53 = v21;
  if (!v14)
  {
    v14 = objc_alloc_init(PGKeyAssetCurationOptions);
  }

  v52 = v15;
  if (v15)
  {
    v22 = [v12 uuid];
    v23 = [(PGCurationManager *)self curatedKeyAssetForCollectionUUID:v22 curatedAssetCollection:v53 options:v14 criteria:v15 curationContext:v54];

    if (v23)
    {
      v24 = mach_absolute_time();
      numer = info.numer;
      denom = info.denom;
      v27 = v19;
      v28 = v27;
      if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_22F0FC000, v28, OS_SIGNPOST_INTERVAL_END, v17, "CuratedKeyAsset", "Curated Key Asset. Updated asset collection to collection.", buf, 2u);
      }

      v29 = v28;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated Key Asset. Updated asset collection to collection."];
        *buf = 136315650;
        v57 = "CuratedKeyAsset";
        v58 = 2112;
        v59 = v30;
        v60 = 2048;
        v61 = ((((v24 - v51) * numer) / denom) / 1000000.0);
        _os_log_impl(&dword_22F0FC000, v29, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
      }

      goto LABEL_32;
    }
  }

  v50 = v13;
  v29 = [(PGCurationCache *)self->_cache curatedKeyAssetIdentifierForMoment:v12 options:v14];
  if (v29)
  {
    v23 = [(PGCurationManager *)self fetchAssetWithLocalIdentifier:v29];
    goto LABEL_22;
  }

  v31 = [(PGCurationManager *)self defaultAssetFetchOptions];
  v32 = v53;
  v33 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:1];
  [v33 setPersonsPrefetchMode:2];
  [v33 setFaceInformationPrefetchMode:2];
  [v33 setScenesPrefetchMode:2];
  v48 = v32;
  v49 = v31;
  v34 = [MEMORY[0x277D27710] feederForAssetCollection:v32 options:v31 feederPrefetchOptions:v33 curationContext:v54];
  v35 = [(PGCurationManager *)self bestAssetForAssetFeeder:v34 options:v14];
  if (v35)
  {
    v23 = v35;
  }

  else
  {
    if (![v34 numberOfItems])
    {
      v23 = 0;
      goto LABEL_21;
    }

    v23 = [v34 itemAtIndex:0];
    if (!v23)
    {
      goto LABEL_21;
    }
  }

  [(PGCurationCache *)self->_cache setCuratedKeyAsset:v23 forMoment:v12 options:v14];
LABEL_21:

LABEL_22:
  v36 = mach_absolute_time();
  v38 = info.numer;
  v37 = info.denom;
  v39 = v19;
  v40 = v39;
  if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    v41 = @"YES";
    if (!v29)
    {
      v41 = @"NO";
    }

    *buf = 138412290;
    v57 = v41;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v40, OS_SIGNPOST_INTERVAL_END, v17, "CuratedKeyAsset", "Curated Key Asset (cached: %@)", buf, 0xCu);
  }

  v42 = v40;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
  {
    v43 = (((v36 - v51) * v38) / v37) / 1000000.0;
    v44 = @"YES";
    if (!v29)
    {
      v44 = @"NO";
    }

    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curated Key Asset (cached: %@)", v44];
    *buf = 136315650;
    v57 = "CuratedKeyAsset";
    v58 = 2112;
    v59 = v45;
    v60 = 2048;
    v61 = v43;
    _os_log_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_INFO, "[Performance] %s - %@: %f ms", buf, 0x20u);
  }

  v13 = v50;
LABEL_32:

  v46 = *MEMORY[0x277D85DE8];

  return v23;
}

- (PFSceneGeography)sceneGeography
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_sceneGeography)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3B4C0]);
    sceneGeography = v2->_sceneGeography;
    v2->_sceneGeography = v3;
  }

  objc_sync_exit(v2);

  v5 = v2->_sceneGeography;

  return v5;
}

- (PGCurationManager)initWithPhotoLibrary:(id)a3 cacheURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v20.receiver = self;
  v20.super_class = PGCurationManager;
  v9 = [(PGCurationManager *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_photoLibrary, a3);
    v11 = os_log_create("com.apple.PhotosGraph", "curation");
    curationLoggingConnection = v10->_curationLoggingConnection;
    v10->_curationLoggingConnection = v11;

    v13 = objc_alloc_init(PGCurationCriteriaFactory);
    curationCriteriaFactory = v10->_curationCriteriaFactory;
    v10->_curationCriteriaFactory = v13;

    v15 = [PGCurationCache alloc];
    v16 = [(CLSDBCache *)PGCurationCache urlWithParentURL:v8];
    v17 = [(CLSDBCache *)v15 initWithURL:v16];
    cache = v10->_cache;
    v10->_cache = v17;
  }

  return v10;
}

+ (id)filteredAssetsFromAssets:(id)a3 withContextualAssetLocalIdentifiers:(id)a4 approximateTimeDistance:(double)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [objc_alloc(MEMORY[0x277D3AC30]) initWithDistanceBlock:&__block_literal_global_338_40727];
  [v10 setMaximumDistance:a5];
  [v10 setMinimumNumberOfObjects:2];
  v11 = [MEMORY[0x277CCAC30] predicateWithFormat:@"localIdentifier IN %@", v9];
  v12 = [v8 filteredArrayUsingPredicate:v11];
  v13 = [v12 mutableCopy];

  v53 = v13;
  v14 = [v10 performWithDataset:v13 progressBlock:0];
  if (![v14 count])
  {
    goto LABEL_45;
  }

  v49 = v10;
  v50 = v9;
  v47 = [a1 defaultAssetSortDescriptors];
  v48 = v8;
  v51 = [v8 sortedArrayUsingDescriptors:?];
  v54 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v14, "count")}];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v52 = v14;
  obj = v14;
  v15 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (!v15)
  {
    goto LABEL_26;
  }

  v16 = v15;
  v56 = *v66;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v66 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v65 + 1) + 8 * i);
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v19 = [v18 objects];
      v20 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
      if (!v20)
      {
        v23 = 0;
        v22 = 0;
        goto LABEL_23;
      }

      v21 = v20;
      v22 = 0;
      v23 = 0;
      v24 = *v62;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(v19);
          }

          v26 = [*(*(&v61 + 1) + 8 * j) cls_universalDate];
          if (!v23 || [v23 compare:v26] == 1)
          {
            v27 = v26;

            v23 = v27;
          }

          if (!v22 || [v22 compare:v26] == -1)
          {
            v28 = v26;

            v22 = v28;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v21);

      if (v23)
      {
        v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v23 endDate:v22];
        [v54 addObject:v19];
LABEL_23:
      }
    }

    v16 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  }

  while (v16);
LABEL_26:

  v29 = v54;
  v10 = v49;
  v9 = v50;
  v14 = v52;
  if ([v54 count])
  {
    [v54 sortUsingSelector:sel_startDate];
    v30 = [v54 count];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v31 = v51;
    v32 = [v31 countByEnumeratingWithState:&v57 objects:v69 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = 0;
      v35 = *v58;
      do
      {
        v36 = 0;
        do
        {
          if (*v58 != v35)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v57 + 1) + 8 * v36);
          v38 = [v37 cls_universalDate];
          v39 = [v29 objectAtIndexedSubscript:v34];
          v40 = [v39 containsDate:v38];

          if (v40)
          {
            [v53 addObject:v37];
          }

          else
          {
            if (v34 >= v30)
            {
LABEL_42:

              v10 = v49;
              v9 = v50;
              v14 = v52;
              v29 = v54;
              goto LABEL_43;
            }

            while (1)
            {
              v41 = [v54 objectAtIndexedSubscript:v34];
              v42 = [v41 endDate];
              v43 = [v42 compare:v38];

              if (v43 != -1)
              {
                break;
              }

              if (v30 == ++v34)
              {
                goto LABEL_42;
              }
            }
          }

          ++v36;
          v14 = v52;
          v29 = v54;
        }

        while (v36 != v33);
        v44 = [v31 countByEnumeratingWithState:&v57 objects:v69 count:16];
        v33 = v44;
        v10 = v49;
        v9 = v50;
      }

      while (v44);
    }

LABEL_43:
  }

  v8 = v48;
LABEL_45:

  v45 = *MEMORY[0x277D85DE8];

  return v53;
}

void __106__PGCurationManager_filteredAssetsFromAssets_withContextualAssetLocalIdentifiers_approximateTimeDistance___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 cls_universalDate];
  v6 = [v4 cls_universalDate];

  [v5 timeIntervalSinceDate:v6];
}

+ (id)_filteredAssetsWithFaceFilter:(unint64_t)a3 forAssets:(id)a4
{
  v5 = a4;
  v6 = v5;
  if (a3)
  {
    if ([v5 count])
    {
      v11[0] = 0;
      v11[1] = v11;
      v11[2] = 0x2020000000;
      v12 = 0;
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __61__PGCurationManager__filteredAssetsWithFaceFilter_forAssets___block_invoke;
      v10[3] = &unk_278884260;
      v10[4] = v11;
      v10[5] = a3;
      v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v10];
      v8 = [v6 filteredArrayUsingPredicate:v7];

      _Block_object_dispose(v11, 8);
    }

    else
    {
      v8 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

uint64_t __61__PGCurationManager__filteredAssetsWithFaceFilter_forAssets___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 clsFaceInformationSummary];
  if (!v3)
  {
    v4 = *(*(a1 + 32) + 8);
    if ((*(v4 + 24) & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *v10 = 0;
        _os_log_fault_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "Face information expected but not prefetched.", v10, 2u);
        v4 = *(*(a1 + 32) + 8);
      }

      *(v4 + 24) = 1;
    }
  }

  v5 = [v3 numberOfFaces];
  v6 = v5 != 0;
  v7 = *(a1 + 40);
  if (v7 == 2)
  {
    v6 = v5 == 0;
  }

  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (unint64_t)minimumNumberOfItemsForDuration:(unint64_t)a3 withMaximumNumberOfItems:(unint64_t)a4
{
  v4 = vcvtad_u64_f64(a4 * 0.3);
  v5 = 4;
  if (a4 < 4)
  {
    v5 = a4;
  }

  if (v4 >= 4)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

+ (unint64_t)maximumNumberOfItemsForDuration:(unint64_t)a3 withTotalNumberOfItems:(unint64_t)a4 spanningNumberOfDays:(double)a5
{
  if (a3 == 1)
  {
    v8 = 9;
  }

  else if (a3 == 2)
  {
LABEL_3:
    v6 = a4;
    v7 = 0.8;
LABEL_4:
    v8 = pow(v6, v7);
    v9 = v8 >= 0x50;
    v10 = 80;
LABEL_5:
    if (v9)
    {
      v8 = v10;
    }

    v11 = v8 > 6;
    v12 = 6;
LABEL_9:
    if (!v11)
    {
      v8 = v12;
    }
  }

  else if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    v8 = a4;
    if (a4 >= 0x15)
    {
      v8 = fmin((pow(a4 / 20.0, 0.148) + -1.0) * 135.135135 + 20.0, 80.0);
    }
  }

  else
  {
    v8 = a4;
    switch(a3)
    {
      case 3uLL:
      case 5uLL:
        v8 = pow(a4, 0.827129859);
        if (v8 >= 0xC0)
        {
          v8 = 192;
        }

        v11 = v8 > 0xC;
        v12 = 12;
        goto LABEL_9;
      case 4uLL:
        goto LABEL_3;
      case 6uLL:
      case 0x10uLL:
        break;
      case 7uLL:
        v14 = a4 >= 0x50;
        v8 = 80;
        goto LABEL_29;
      case 8uLL:
      case 0xFuLL:
        v14 = a4 >= 4;
        v8 = 4;
        goto LABEL_29;
      case 9uLL:
      case 0xAuLL:
        v14 = a4 >= 0x100;
        v8 = 256;
        goto LABEL_29;
      case 0xBuLL:
        v6 = a4;
        v7 = 0.915306674;
        goto LABEL_4;
      case 0xCuLL:
      case 0xDuLL:
        v14 = a4 >= 7;
        v8 = 7;
LABEL_29:
        if (!v14)
        {
          v8 = a4;
        }

        break;
      case 0xEuLL:
        v15 = fmin(a5, 15.0) * 60.0 / 15.0 + 20.0;
        v16 = log((v15 + -20.0) / 60.0 * -0.233333333 + 0.333333333);
        v17 = log(v15 / ((v15 + -20.0) / 60.0 * -0.233333333 + 0.333333333));
        v8 = pow(a4, v16 / v17 + 1.0);
        v10 = v15;
        v9 = v8 >= v15;
        goto LABEL_5;
      default:
        v18 = +[PGLogging sharedLogging];
        v19 = [v18 loggingConnection];

        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v20 = 0;
          _os_log_error_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_ERROR, "Unsupported PGDuration", v20, 2u);
        }

        v8 = 0;
        break;
    }
  }

  if (v8 >= a4)
  {
    return a4;
  }

  else
  {
    return v8;
  }
}

+ (id)assetsBeautifier
{
  v2 = [MEMORY[0x277D27670] beautifier];
  [v2 setEnableStatisticalSampling:1];
  [v2 setEnableNetworkAccess:0];
  [v2 setEnableIntermediateNaturalClustering:1];
  [v2 setEnableFinalNaturalClustering:1];
  [v2 setEnableFinalTimeClustering:1];
  [v2 setUsesKMeans:1];

  return v2;
}

+ (id)summaryClusteringForDuration:(unint64_t)a3
{
  v4 = objc_opt_new();
  [v4 setOptimalDayDistributionThreshold:30.0];
  [v4 setTimeSpanDensityAverageNumberOfObjects:300];
  [v4 setEnableDensityClusteringLocationsDistance:1];
  [v4 setDensityClusteringLocationsDistanceUnit:2000];
  switch(a3)
  {
    case 1uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:7];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v15 = v4;
      v16 = 3;
      goto LABEL_15;
    case 2uLL:
    case 0x14uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:7];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v5 = v4;
      v6 = 3;
      goto LABEL_4;
    case 3uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:7];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:3];
      v25 = v4;
      v26 = 3;
      goto LABEL_29;
    case 4uLL:
    case 0xBuLL:
    case 0x15uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v5 = v4;
      v6 = 1;
LABEL_4:
      [v5 setConciseDensityClusteringMinimumNumberOfObjects:v6];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      v7 = v4;
      v8 = 7;
      goto LABEL_30;
    case 5uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v23 = v4;
      v24 = 1;
      goto LABEL_28;
    case 6uLL:
    case 0xAuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:1800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v9 = v4;
      goto LABEL_7;
    case 7uLL:
      v12 = 1800.0;
      goto LABEL_10;
    case 8uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v14 = 1800.0;
      v13 = v4;
      goto LABEL_12;
    case 9uLL:
    case 0x10uLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v9 = v4;
LABEL_7:
      [v9 setConciseDensityClusteringMaximumDistance:1800.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:0];
      v10 = v4;
      v11 = 0;
      goto LABEL_17;
    case 0xCuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v18 = 1800.0;
      v17 = v4;
      goto LABEL_24;
    case 0xDuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:3600.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:900.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setAdaptiveElectionMaximumNumberOfItemsByCluster:1];
      goto LABEL_16;
    case 0xEuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:5];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      v23 = v4;
      v24 = 3;
LABEL_28:
      [v23 setConciseDensityClusteringMinimumNumberOfObjects:v24];
      v25 = v4;
      v26 = 1;
LABEL_29:
      [v25 setAdaptiveElectionMinimumNumberOfItemsByCluster:v26];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      v7 = v4;
      v8 = 4;
LABEL_30:
      [v7 setAdaptiveElectionSmootherMinimumLimit:v8];
      v19 = v4;
      v20 = 20;
      goto LABEL_31;
    case 0xFuLL:
      [v4 setDiffuseDensityClusteringMaximumDistance:10800.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setConciseDensityClusteringMaximumDistance:1800.0];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      [v4 setAdaptiveElectionSmootherMinimumLimit:1];
      v19 = v4;
      v20 = 2;
      goto LABEL_31;
    case 0x16uLL:
      [v4 setEnableDensityClusteringLocationsDistance:0];
      v12 = 86400.0;
LABEL_10:
      [v4 setDiffuseDensityClusteringMaximumDistance:v12];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v13 = v4;
      v14 = v12;
LABEL_12:
      [v13 setConciseDensityClusteringMaximumDistance:v14];
      v15 = v4;
      v16 = 1;
LABEL_15:
      [v15 setConciseDensityClusteringMinimumNumberOfObjects:v16];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
LABEL_16:
      [v4 setEnableAdaptiveElectionSmoother:1];
      v10 = v4;
      v11 = 1;
LABEL_17:
      [v10 setEnableAdaptiveElectionSmootherAutomaticLimit:v11];
      [v4 setAdaptiveElectionSmootherMinimumLimit:1];
      v19 = v4;
      v20 = 1;
      goto LABEL_31;
    case 0x17uLL:
      [v4 setEnableDensityClusteringLocationsDistance:0];
      [v4 setDiffuseDensityClusteringMaximumDistance:86400.0];
      [v4 setDiffuseDensityClusteringMinimumNumberOfObjects:1];
      v17 = v4;
      v18 = 86400.0;
LABEL_24:
      [v17 setConciseDensityClusteringMaximumDistance:v18];
      [v4 setConciseDensityClusteringMinimumNumberOfObjects:1];
      [v4 setAdaptiveElectionMinimumNumberOfItemsByCluster:1];
      [v4 setEnableAdaptiveElectionSmoother:1];
      [v4 setEnableAdaptiveElectionSmootherAutomaticLimit:1];
      [v4 setAdaptiveElectionSmootherMinimumLimit:1];
      v19 = v4;
      v20 = 3;
LABEL_31:
      [v19 setAdaptiveElectionSmootherMaximumLimit:v20];
      break;
    default:
      v21 = +[PGLogging sharedLogging];
      v22 = [v21 loggingConnection];

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v28 = 0;
        _os_log_error_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_ERROR, "Unsupported PGDuration", v28, 2u);
      }

      break;
  }

  return v4;
}

+ (BOOL)areAssetsInteresting:(id)a3 minimumNumberOfCuratedAssets:(unint64_t)a4 duration:(unint64_t)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 count];
  v10 = [a1 assetsBeautifier];
  v11 = [a1 maximumNumberOfItemsForDuration:a5 withTotalNumberOfItems:v9];
  if (v11 >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = v11;
  }

  v13 = [v10 performWithItems:v8 maximumNumberOfItemsToChoose:v12 progressBlock:0];

  if ([v13 count] >= a4 && v12 * 0.3 <= objc_msgSend(v13, "count"))
  {
    v14 = 1;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      v17 = 134218240;
      v18 = [v13 count];
      v19 = 2048;
      v20 = v12;
      _os_log_debug_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "AssetCollection is not interesting: Not enough best assets from beautifier (%lu/%lu) for assets", &v17, 0x16u);
    }

    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

+ (double)contentScoreForAssets:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 count];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    v9 = *MEMORY[0x277D3C760];
    v10 = *MEMORY[0x277D3C768];
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        [v15 clsContentScore];
        v17 = v16;
        if (v16 >= v9 && [v15 clsIsUtility])
        {
          v17 = v10;
        }

        v13 = v13 + v17;
        v18 = v11 + 1.0;
        if (v17 >= v10)
        {
          v18 = v11;
        }

        v19 = v12 + 1.0;
        if (v17 > v10)
        {
          v12 = v12 + 1.0;
        }

        else
        {
          v11 = v18;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:{16, v18, v19}];
    }

    while (v7);
  }

  else
  {
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
  }

  v20 = v4;

  v21 = (v12 * v12 - v11 * v11) * 0.25 / (v20 * v20);
  v22 = log2(v4);
  v23 = pow(fabs(v21), 1.0 / v22);
  if (v21 < 0.0)
  {
    v24 = -v23;
  }

  else
  {
    v24 = v23;
  }

  v25 = *MEMORY[0x277D85DE8];
  return (v13 / v20 + (v24 + 1.0) * 0.5) * 0.5;
}

+ (id)dedupedAssetsWithAssets:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() assetsBeautifier];
  v5 = [v4 deduplicateItems:v3 debugInfo:0];

  return v5;
}

+ (id)representativeAssetsForAssets:(id)a3 extendedCuratedAssets:(id)a4 progressBlock:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 count] > 0x200)
  {
    v11 = [a1 representativeAssetsForAssets:v8 progressBlock:v10];
  }

  else
  {
    v11 = v9;
  }

  v12 = v11;

  return v12;
}

+ (id)representativeAssetsForAssetCollection:(id)a3 curationContext:(id)a4 progressBlock:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = _Block_copy(v10);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (!v11 || (v12 = CFAbsoluteTimeGetCurrent(), v12 - v40[3] < 0.01) || (v40[3] = v12, v38 = 0, (*(v11 + 2))(v11, &v38, 0.0), v13 = *(v44 + 24) | v38, *(v44 + 24) = v13, (v13 & 1) == 0))
  {
    v15 = [v8 photoLibrary];
    v16 = [v15 librarySpecificFetchOptions];

    v17 = *MEMORY[0x277CD9B08];
    v47[0] = *MEMORY[0x277CD9AA8];
    v47[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
    [v16 setFetchPropertySets:v18];

    v19 = [MEMORY[0x277D276B8] feederPrefetchOptionsWithDefaultMode:0];
    [v19 setPersonsPrefetchMode:0];
    v20 = [MEMORY[0x277D27710] feederForAssetCollection:v8 options:v16 feederPrefetchOptions:v19 curationContext:v9];
    if ([v20 numberOfItems])
    {
      if (!v11 || (v21 = CFAbsoluteTimeGetCurrent(), v21 - v40[3] < 0.01) || (v40[3] = v21, v38 = 0, (*(v11 + 2))(v11, &v38, 0.5), v22 = *(v44 + 24) | v38, *(v44 + 24) = v22, (v22 & 1) == 0))
      {
        v24 = [v20 allItems];
        if ([v24 count] > 0x200)
        {
          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __90__PGCurationManager_representativeAssetsForAssetCollection_curationContext_progressBlock___block_invoke;
          v33[3] = &unk_27888A188;
          v27 = v11;
          v34 = v27;
          v35 = &v39;
          v36 = &v43;
          v37 = 0x3F847AE147AE147BLL;
          v28 = [a1 representativeAssetsForAssets:v24 progressBlock:v33];
          if (v11 && (Current = CFAbsoluteTimeGetCurrent(), Current - v40[3] >= 0.01) && (v40[3] = Current, v38 = 0, (*(v27 + 2))(v27, &v38, 1.0), v30 = *(v44 + 24) | v38, *(v44 + 24) = v30, (v30 & 1) != 0))
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              v49 = 409;
              v50 = 2080;
              v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v14 = MEMORY[0x277CBEBF8];
          }

          else
          {
            v14 = v28;
          }
        }

        else
        {
          v14 = v24;
        }

        goto LABEL_31;
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
LABEL_21:
        v14 = MEMORY[0x277CBEBF8];
LABEL_31:

        goto LABEL_32;
      }

      *buf = 67109378;
      v49 = 398;
      v50 = 2080;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      v23 = MEMORY[0x277D86220];
    }

    else
    {
      if (!v11)
      {
        goto LABEL_21;
      }

      v25 = CFAbsoluteTimeGetCurrent();
      if (v25 - v40[3] < 0.01)
      {
        goto LABEL_21;
      }

      v40[3] = v25;
      v38 = 0;
      (*(v11 + 2))(v11, &v38, 1.0);
      v26 = *(v44 + 24) | v38;
      *(v44 + 24) = v26;
      if ((v26 & 1) == 0 || !os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }

      *buf = 67109378;
      v49 = 394;
      v50 = 2080;
      v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      v23 = MEMORY[0x277D86220];
    }

    _os_log_impl(&dword_22F0FC000, v23, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    goto LABEL_21;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v49 = 384;
    v50 = 2080;
    v51 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v14 = MEMORY[0x277CBEBF8];
LABEL_32:
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);

  v31 = *MEMORY[0x277D85DE8];

  return v14;
}

void __90__PGCurationManager_representativeAssetsForAssetCollection_curationContext_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

+ (id)representativeAssetsForAssets:(id)a3 progressBlock:(id)a4
{
  v70 = *MEMORY[0x277D85DE8];
  v41 = a3;
  v6 = a4;
  v7 = _Block_copy(v6);
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v40 = v6;
  if (v7 && (v8 = CFAbsoluteTimeGetCurrent(), v8 - v57[3] >= 0.01) && (v57[3] = v8, v55 = 0, (*(v7 + 2))(v7, &v55, 0.0), v9 = *(v61 + 24) | v55, *(v61 + 24) = v9, (v9 & 1) != 0))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 67109378;
      v67 = 337;
      v68 = 2080;
      v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  else
  {
    context = objc_autoreleasePoolPush();
    v11 = [a1 summaryClusteringForDuration:6];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __65__PGCurationManager_representativeAssetsForAssets_progressBlock___block_invoke;
    v50[3] = &unk_27888A188;
    v12 = v7;
    v51 = v12;
    v52 = &v56;
    v53 = &v60;
    v54 = 0x3F847AE147AE147BLL;
    v38 = v11;
    v13 = [v11 densityClustersWithItems:v41 progressBlock:v50];
    v14 = v13;
    if (*(v61 + 24) == 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        *buf = 67109378;
        v67 = 346;
        v68 = 2080;
        v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
        _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
      }

      v10 = MEMORY[0x277CBEBF8];
    }

    else
    {
      if ([v13 count] < 0x101)
      {
        v17 = v14;
      }

      else
      {
        v15 = objc_alloc_init(MEMORY[0x277D3AD70]);
        [v15 setNumberOfClusters:256];
        v37 = v15;
        v16 = [v15 performWithDataset:v14 progressBlock:0];
        v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v18 = v16;
        v19 = [v18 countByEnumeratingWithState:&v46 objects:v65 count:16];
        if (v19)
        {
          v20 = *v47;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(v18);
              }

              v22 = [*(*(&v46 + 1) + 8 * i) objects];
              v23 = [v22 firstObject];
              [v17 addObject:v23];
            }

            v19 = [v18 countByEnumeratingWithState:&v46 objects:v65 count:16];
          }

          while (v19);
        }
      }

      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v14 = v17;
      v25 = [v14 countByEnumeratingWithState:&v42 objects:v64 count:16];
      if (v25)
      {
        v26 = *v43;
        while (2)
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v43 != v26)
            {
              objc_enumerationMutation(v14);
            }

            v28 = *(*(&v42 + 1) + 8 * j);
            if (v7)
            {
              Current = CFAbsoluteTimeGetCurrent();
              if (Current - v57[3] >= 0.01)
              {
                v57[3] = Current;
                v55 = 0;
                (*(v12 + 2))(v12, &v55, 0.8);
                v30 = *(v61 + 24) | v55;
                *(v61 + 24) = v30;
                if (v30)
                {
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    v67 = 364;
                    v68 = 2080;
                    v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_41;
                }
              }
            }

            v31 = [v28 count];
            if (v31)
            {
              v32 = [v28 objectAtIndexedSubscript:v31 >> 1];
              [v24 addObject:v32];
            }
          }

          v25 = [v14 countByEnumeratingWithState:&v42 objects:v64 count:16];
          if (v25)
          {
            continue;
          }

          break;
        }
      }

      if (v7 && (v33 = CFAbsoluteTimeGetCurrent(), v33 - v57[3] >= 0.01) && (v57[3] = v33, v55 = 0, (*(v12 + 2))(v12, &v55, 1.0), v34 = *(v61 + 24) | v55, *(v61 + 24) = v34, (v34 & 1) != 0))
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v67 = 374;
          v68 = 2080;
          v69 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

LABEL_41:
        v10 = MEMORY[0x277CBEBF8];
      }

      else
      {
        v10 = v24;
      }
    }

    objc_autoreleasePoolPop(context);
  }

  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);

  v35 = *MEMORY[0x277D85DE8];

  return v10;
}

void __65__PGCurationManager_representativeAssetsForAssets_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

+ (id)sceneInfoWithAsset:(id)a3 curationSession:(id)a4
{
  v17[1] = *MEMORY[0x277D85DE8];
  v17[0] = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a4;
  v7 = a3;
  v8 = [v5 arrayWithObjects:v17 count:1];
  [v6 prepareAssets:v8];

  v9 = [v7 clsSceneClassifications];
  v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v11 = MEMORY[0x277D3C7A0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__PGCurationManager_sceneInfoWithAsset_curationSession___block_invoke;
  v15[3] = &unk_278884F80;
  v12 = v10;
  v16 = v12;
  [v11 enumerateSignalsFromAsset:v7 fullHierarchyName:0 usingBlock:v15];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

void __56__PGCurationManager_sceneInfoWithAsset_curationSession___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ (%llu)", a3, a2];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
}

+ (id)dejunkAndDedupeItems:(id)a3 options:(id)a4 debugInfo:(id)a5 progressBlock:(id)a6
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = _Block_copy(a6);
  v14 = 0.0;
  if (!v13 || (v15 = CFAbsoluteTimeGetCurrent(), v15 < 0.01))
  {
LABEL_8:
    if (v12)
    {
      [v12 setAgent:@"Dejunk and Dedupe"];
      [v12 setStage:@"Initial"];
      v17 = [MEMORY[0x277D3AC38] clusterWithObjects:v10];
      v33 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v33 count:1];
      [v12 setClusters:v18 withReason:@"DejunkAndDeduper"];
    }

    v19 = [a1 assetsBeautifier];
    if (v13)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v14 >= 0.01)
      {
        v32 = 0;
        v13[2](v13, &v32, 0.5);
        if (v32)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            v35 = 293;
            v36 = 2080;
            v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v16 = 0;
          goto LABEL_34;
        }

        v14 = Current;
      }
    }

    v21 = [v11 objectForKeyedSubscript:@"dedupingDuration"];

    if (v21)
    {
      v22 = [v11 objectForKeyedSubscript:@"dedupingDuration"];
      [v22 doubleValue];
      v24 = v23;
    }

    else
    {
      v24 = 60.0;
    }

    v25 = [v11 objectForKeyedSubscript:@"dedupingSimilarity"];

    if (v25)
    {
      v26 = [v11 objectForKeyedSubscript:@"dedupingSimilarity"];
      v27 = [v26 integerValue];
    }

    else
    {
      v27 = 2;
    }

    v28 = [v19 deduplicateItems:v10 withDuration:v27 andSimilarity:v12 debugInfo:v24];
    if ([v28 count])
    {
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v29 = v10;

      v28 = v29;
      if (!v13)
      {
        goto LABEL_32;
      }
    }

    if (CFAbsoluteTimeGetCurrent() - v14 >= 0.01)
    {
      v32 = 0;
      v13[2](v13, &v32, 1.0);
      if (v32 == 1)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          v35 = 316;
          v36 = 2080;
          v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }

        v16 = 0;
        goto LABEL_33;
      }
    }

LABEL_32:
    v16 = v28;
LABEL_33:

LABEL_34:
    goto LABEL_35;
  }

  v32 = 0;
  v13[2](v13, &v32, 0.0);
  if (v32 != 1)
  {
    v14 = v15;
    goto LABEL_8;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    v35 = 281;
    v36 = 2080;
    v37 = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v16 = 0;
LABEL_35:

  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)defaultAssetSortDescriptors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v7[0] = v2;
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)assetPropertySetsForCuration
{
  v13[16] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277CD9B28];
  v13[0] = *MEMORY[0x277CD9A78];
  v13[1] = v2;
  v3 = *MEMORY[0x277CD9B18];
  v13[2] = *MEMORY[0x277CD9B10];
  v13[3] = v3;
  v4 = *MEMORY[0x277CD9B08];
  v13[4] = *MEMORY[0x277CD9AD0];
  v13[5] = v4;
  v5 = *MEMORY[0x277CD9A60];
  v13[6] = *MEMORY[0x277CD9A80];
  v13[7] = v5;
  v6 = *MEMORY[0x277CD9AC0];
  v13[8] = *MEMORY[0x277CD9A98];
  v13[9] = v6;
  v7 = *MEMORY[0x277CD9AB0];
  v13[10] = *MEMORY[0x277CD9AE8];
  v13[11] = v7;
  v8 = *MEMORY[0x277CD9B20];
  v13[12] = *MEMORY[0x277CD9AB8];
  v13[13] = v8;
  v9 = *MEMORY[0x277CD9AA0];
  v13[14] = *MEMORY[0x277CD9A90];
  v13[15] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:16];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_filteredAssetsForAssets:(id)a3 inMoments:(id)a4 keepFavorites:(BOOL)a5
{
  v5 = a5;
  v41 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v34 = [MEMORY[0x277CBEB18] array];
  v9 = [v8 count];
  v10 = [v8 firstObject];
  v11 = [v10 startDate];
  [v11 timeIntervalSinceReferenceDate];
  v13 = v12;

  v14 = [v10 endDate];
  [v14 timeIntervalSinceReferenceDate];
  v16 = v15;

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = v7;
  v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v37;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v36 + 1) + 8 * i);
        if (v5)
        {
          if ([*(*(&v36 + 1) + 8 * i) isFavorite])
          {
            goto LABEL_21;
          }

          if (v19 >= v9)
          {
            continue;
          }
        }

        v23 = [v22 creationDate];
        [v23 timeIntervalSinceReferenceDate];
        v25 = v24;

        if (v25 < v13)
        {
          continue;
        }

        if (v25 > v16)
        {
          if (++v19 >= v9)
          {
LABEL_15:
            if (!v5)
            {
              goto LABEL_24;
            }

            continue;
          }

          while (1)
          {
            v26 = v10;
            v10 = [v8 objectAtIndexedSubscript:v19];

            v27 = [v10 startDate];
            [v27 timeIntervalSinceReferenceDate];
            v13 = v28;

            v29 = [v10 endDate];
            [v29 timeIntervalSinceReferenceDate];
            v16 = v30;

            if (v16 >= v25)
            {
              break;
            }

            if (v9 == ++v19)
            {
              v19 = v9;
              goto LABEL_15;
            }
          }
        }

        if (v25 >= v13 && v25 <= v16)
        {
LABEL_21:
          [v34 addObject:v22];
          continue;
        }
      }

      v18 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v18);
  }

LABEL_24:

  v32 = *MEMORY[0x277D85DE8];

  return v34;
}

- (id)_libraryDateInterval
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = [(PGCurationManager *)self photoLibrary];
  v3 = [v2 librarySpecificFetchOptions];

  v4 = *MEMORY[0x277CD9B08];
  v22[0] = *MEMORY[0x277CD9AA8];
  v22[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v3 setFetchPropertySets:v5];

  [v3 setFetchLimit:1];
  [v3 setIncludeAssetSourceTypes:5];
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
  v21 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  [v3 setSortDescriptors:v7];

  v8 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v3];
  v9 = [v8 firstObject];

  v10 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:0];
  v20 = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  [v3 setSortDescriptors:v11];

  v12 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v3];
  v13 = [v12 firstObject];

  v14 = [v9 creationDate];
  v15 = [v13 creationDate];
  v16 = v15;
  v17 = 0;
  if (v14 && v15)
  {
    v17 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v14 endDate:v15];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_firstBestFacedAssetInAssetCluster:(id)a3 facesByAssetIdentifiers:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 count] == 1)
  {
    v7 = [v5 firstObject];
    [v7 curationScore];
    if (v8 == *MEMORY[0x277D3C778])
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    v10 = v9;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = v5;
    v11 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v10 = 0;
      v13 = *v30;
      v14 = *MEMORY[0x277D3C778];
      v15 = 0.0;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(v7);
          }

          v17 = *(*(&v29 + 1) + 8 * i);
          [v17 curationScore];
          if (v18 != v14)
          {
            v19 = [v17 localIdentifier];
            v20 = [v6 objectForKeyedSubscript:v19];
            memset(v28, 0, sizeof(v28));
            if ([v20 countByEnumeratingWithState:v28 objects:v33 count:16])
            {
              [**(&v28[0] + 1) size];
              if (v21 >= 0.1 && v21 <= 0.7)
              {
                v25 = v17;

                v10 = v25;
                goto LABEL_26;
              }
            }

            else
            {
              v21 = 0.0;
            }

            v22 = 0.4 - v21;
            if (v22 < 0.0)
            {
              v22 = -v22;
            }

            v23 = 1.0 - v22;
            if (1.0 - v22 > v15)
            {
              v24 = v17;

              v10 = v24;
              v15 = v23;
            }
          }
        }

        v12 = [v7 countByEnumeratingWithState:&v29 objects:v34 count:16];
      }

      while (v12);
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_26:

  v26 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)_timeBasedAssetClustersForAssets:(id)a3 maximumClusterCount:(unint64_t)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:a4];
  v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:a4];
  v9 = [(PGCurationManager *)self _libraryDateInterval];
  if (!v9)
  {
    v42 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  [v7 addObject:v9];
  v51 = v9;
  v52 = v6;
  [v8 setObject:v6 forKeyedSubscript:v9];
  if ([v7 count] >= a4)
  {
    goto LABEL_40;
  }

  v10 = 0;
  v54 = v7;
  v55 = a4;
  do
  {
    if (v10 == [v7 count])
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v11 = [v7 count];
    if (v11 < 1)
    {
      v10 = 0;
      goto LABEL_39;
    }

    v12 = v11;
    v10 = 0;
    while (1)
    {
      v13 = v12 - 1;
      v14 = [v7 objectAtIndexedSubscript:v12 - 1];
      v15 = [v14 startDate];
      v16 = [v14 endDate];
      [v14 duration];
      v18 = v17;
      v63 = [v8 objectForKeyedSubscript:v14];
      if ([v63 count] >= 2 && v18 >= 21600.0)
      {
        break;
      }

      ++v10;
LABEL_34:

      v41 = v12 <= 1;
      v12 = v13;
      if (v41)
      {
        goto LABEL_39;
      }
    }

    v62 = v12;
    v60 = v12 - 1;
    v19 = v18 * 0.5;
    v57 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v15 duration:v19];
    v56 = [v15 dateByAddingTimeInterval:v19 + 2.22044605e-16];
    v58 = v16;
    v20 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v56 endDate:v16];
    v59 = v15;
    [v15 timeIntervalSinceReferenceDate];
    v22 = v21;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v23 = v63;
    v24 = [v23 countByEnumeratingWithState:&v68 objects:v73 count:16];
    v25 = v20;
    v61 = v10;
    if (!v24)
    {

      v13 = v60;
      if (v19 >= 1.0)
      {
        goto LABEL_30;
      }

LABEL_26:
      v27 = 1;
      goto LABEL_28;
    }

    v26 = v24;
    v27 = 0;
    v28 = v19 + v22;
    v29 = *v69;
    while (2)
    {
      v30 = 0;
      v31 = v27;
      v27 += v26;
      do
      {
        if (*v69 != v29)
        {
          objc_enumerationMutation(v23);
        }

        v32 = [*(*(&v68 + 1) + 8 * v30) creationDate];
        [v32 timeIntervalSinceReferenceDate];
        v34 = v33;

        if (v34 > v28)
        {
          v27 = v31;
          v20 = v25;
          goto LABEL_20;
        }

        ++v31;
        ++v30;
      }

      while (v26 != v30);
      v20 = v25;
      v26 = [v23 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

LABEL_20:

    if (v19 >= 1.0)
    {
      v7 = v54;
      v13 = v60;
      if (!v27)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v7 = v54;
      v13 = v60;
      if (!v27)
      {
        goto LABEL_26;
      }

      if (v27 == [v23 count] && !--v27)
      {
LABEL_30:
        [v7 setObject:v20 atIndexedSubscript:v13];
        [v8 setObject:v23 forKeyedSubscript:v20];
        v15 = v59;
        v36 = v57;
        v37 = v7;
        v25 = v20;
        goto LABEL_32;
      }
    }

LABEL_28:
    v35 = [v23 count];
    v36 = v57;
    [v7 setObject:v57 atIndexedSubscript:v13];
    if (v27 == v35)
    {
      [v8 setObject:v23 forKeyedSubscript:v57];
      v15 = v59;
      v37 = v7;
    }

    else
    {
      v37 = v7;
      [v7 insertObject:v25 atIndex:v62];
      v38 = [v23 subarrayWithRange:{0, v27}];
      [v8 setObject:v38 forKeyedSubscript:v57];

      v39 = [v23 subarrayWithRange:{v27, objc_msgSend(v23, "count") - v27}];
      [v8 setObject:v39 forKeyedSubscript:v25];

      v15 = v59;
    }

LABEL_32:
    [v8 setObject:0 forKeyedSubscript:v14];
    v7 = v37;
    v40 = [v37 count];

    a4 = v55;
    if (v40 < v55)
    {
      v16 = v58;
      v10 = v61;
      v12 = v62;
      goto LABEL_34;
    }

    v10 = v61;
LABEL_39:
    objc_autoreleasePoolPop(context);
  }

  while ([v7 count] < a4);
LABEL_40:
  v42 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v43 = v7;
  v44 = [v43 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v65;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v65 != v46)
        {
          objc_enumerationMutation(v43);
        }

        v48 = [v8 objectForKeyedSubscript:*(*(&v64 + 1) + 8 * i)];
        [v42 addObject:v48];
      }

      v45 = [v43 countByEnumeratingWithState:&v64 objects:v72 count:16];
    }

    while (v45);
  }

  v9 = v51;
  v6 = v52;
LABEL_49:

  v49 = *MEMORY[0x277D85DE8];

  return v42;
}

- (id)curatedAssetsForPersonLocalIdentifier:(id)a3 progressBlock:(id)a4
{
  v343 = *MEMORY[0x277D85DE8];
  v258 = a3;
  v5 = a4;
  v318 = 0;
  v319 = &v318;
  v320 = 0x2020000000;
  v321 = 0;
  v314 = 0;
  v315 = &v314;
  v316 = 0x2020000000;
  v317 = 0;
  v262 = _Block_copy(v5);
  v246 = v5;
  if (!v262 || (v6 = CFAbsoluteTimeGetCurrent(), v6 - v315[3] < 0.01) || (v315[3] = v6, LOBYTE(state.opaque[0]) = 0, (v262)[2](v262, &state, 0.0), v7 = *(v319 + 24) | LOBYTE(state.opaque[0]), *(v319 + 24) = v7, (v7 & 1) == 0))
  {
    v9 = _os_activity_create(&dword_22F0FC000, "Curated Assets for people", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[1] = 0;
    state.opaque[0] = 0;
    os_activity_scope_enter(v9, &state);
    [(PGCurationManager *)self photoLibrary];
    v254 = v244 = v9;
    v10 = [v254 librarySpecificFetchOptions];
    [v10 setIncludedDetectionTypes:&unk_284486030];
    v253 = v10;
    v11 = MEMORY[0x277CD9938];
    v340 = v258;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v340 count:1];
    v13 = [v11 fetchPersonsWithLocalIdentifiers:v12 options:v253];
    v259 = [v13 firstObject];

    if (!v259)
    {
      v8 = MEMORY[0x277CBEBF8];
LABEL_267:

      os_activity_scope_leave(&state);
      goto LABEL_268;
    }

    v260 = [v254 librarySpecificFetchOptions];
    v339 = *MEMORY[0x277CD9A78];
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v339 count:1];
    [v260 setFetchPropertySets:v14];

    v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"highlightBeingExtendedAssets != nil"];
    [v260 setInternalPredicate:v15];

    v16 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"dateCreated" ascending:1];
    v338[0] = v16;
    v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"addedDate" ascending:1];
    v338[1] = v17;
    v18 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"filename" ascending:1];
    v338[2] = v18;
    v243 = [MEMORY[0x277CBEA60] arrayWithObjects:v338 count:3];

    [v260 setInternalSortDescriptors:v243];
    v19 = [MEMORY[0x277CD97A8] fetchAssetsForPerson:v259 options:v260];
    v261 = [v19 fetchedObjects];
    v238 = v19;
    if (v262)
    {
      Current = CFAbsoluteTimeGetCurrent();
      if (Current - v315[3] >= 0.01)
      {
        v315[3] = Current;
        v312 = 0;
        v262[2](v262, &v312, 0.5);
        v21 = *(v319 + 24) | v312;
        *(v319 + 24) = v21;
        if (v21)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v342 = 67;
            *&v342[4] = 2080;
            *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            v22 = MEMORY[0x277D86220];
LABEL_19:
            _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            goto LABEL_20;
          }

          goto LABEL_20;
        }
      }
    }

    v23 = [v261 count];
    if (!v23)
    {
      v8 = MEMORY[0x277CBEBF8];
      goto LABEL_266;
    }

    if (v262)
    {
      v24 = CFAbsoluteTimeGetCurrent();
      if (v24 - v315[3] >= 0.01)
      {
        v315[3] = v24;
        v312 = 0;
        v262[2](v262, &v312, 0.5);
        v25 = *(v319 + 24) | v312;
        *(v319 + 24) = v25;
        if (v25)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v342 = 75;
            *&v342[4] = 2080;
            *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            v22 = MEMORY[0x277D86220];
            goto LABEL_19;
          }

LABEL_20:
          v8 = 0;
LABEL_266:

          goto LABEL_267;
        }
      }
    }

    v234 = [objc_opt_class() maximumNumberOfItemsForDuration:4 withTotalNumberOfItems:v23];
    v222 = [objc_opt_class() minimumNumberOfItemsForDuration:4 withMaximumNumberOfItems:v234];
    v265 = [MEMORY[0x277CBEB18] array];
    for (i = 0; i != v23; ++i)
    {
      v27 = objc_autoreleasePoolPush();
      v28 = [v261 objectAtIndexedSubscript:i];
      if ([v28 isFavorite])
      {
        [v265 addObject:v28];
      }

      objc_autoreleasePoolPop(v27);
    }

    if (v262)
    {
      v29 = CFAbsoluteTimeGetCurrent();
      if (v29 - v315[3] >= 0.01)
      {
        v315[3] = v29;
        v312 = 0;
        v262[2](v262, &v312, 0.5);
        v30 = *(v319 + 24) | v312;
        *(v319 + 24) = v30;
        if (v30)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v342 = 92;
            *&v342[4] = 2080;
            *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = 0;
          goto LABEL_265;
        }
      }
    }

    v31 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"startDate" ascending:1];
    v337[0] = v31;
    v32 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"endDate" ascending:1];
    v337[1] = v32;
    v33 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"estimatedAssetCount" ascending:0];
    v337[2] = v33;
    v237 = [MEMORY[0x277CBEA60] arrayWithObjects:v337 count:3];

    v34 = [MEMORY[0x277CD9880] fetchOptionsWithPhotoLibrary:v254 orObject:0];
    [v34 setSortDescriptors:v237];
    v35 = [MEMORY[0x277CCAC30] predicateWithFormat:@"estimatedAssetCount >= 10"];
    [v34 setPredicate:v35];
    v236 = v34;

    v36 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAssets:v261 withType:3 options:v34];
    v37 = [v36 fetchedObjects];

    if (v262)
    {
      v38 = CFAbsoluteTimeGetCurrent();
      if (v38 - v315[3] >= 0.01)
      {
        v315[3] = v38;
        v312 = 0;
        v262[2](v262, &v312, 0.5);
        v39 = *(v319 + 24) | v312;
        *(v319 + 24) = v39;
        if (v39)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
          {
            *buf = 67109378;
            *v342 = 105;
            *&v342[4] = 2080;
            *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
            _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
          }

          v8 = 0;
          goto LABEL_264;
        }
      }
    }

    v40 = [MEMORY[0x277CD9880] fetchOptionsWithPhotoLibrary:v254 orObject:0];
    [v40 setSortDescriptors:v237];
    v229 = v40;
    v41 = MEMORY[0x277CD97B8];
    v42 = [v261 firstObject];
    v336[0] = v42;
    v43 = [v261 lastObject];
    v336[1] = v43;
    v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v336 count:2];
    v228 = [v41 fetchAssetCollectionsContainingAssets:v44 withType:3 options:v229];

    v233 = [v228 firstObject];
    v232 = [v228 lastObject];
    v45 = [v37 count];
    if (!v45)
    {
      goto LABEL_45;
    }

    v46 = [v37 firstObject];
    v47 = [v46 localIdentifier];
    v48 = [v233 localIdentifier];
    v49 = [v47 isEqualToString:v48];

    if (v49)
    {
      v50 = v45 - 1;
      if (v45 == 1)
      {
        v231 = MEMORY[0x277CBEBF8];
        goto LABEL_50;
      }

      v51 = 1;
    }

    else
    {
      v51 = 0;
      v50 = v45;
    }

    v52 = [v37 lastObject];
    v53 = [v52 localIdentifier];
    v54 = [v232 localIdentifier];
    v55 = [v53 isEqualToString:v54];

    v56 = v50 - (v55 & 1);
    if (v45 == v56)
    {
LABEL_45:
      v231 = v37;
LABEL_51:
      if (v262)
      {
        v57 = CFAbsoluteTimeGetCurrent();
        if (v57 - v315[3] >= 0.01)
        {
          v315[3] = v57;
          v312 = 0;
          v262[2](v262, &v312, 0.5);
          v58 = *(v319 + 24) | v312;
          *(v319 + 24) = v58;
          if (v58)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 131;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_263;
          }
        }
      }

      v59 = [(PGCurationManager *)self _filteredAssetsForAssets:v261 inMoments:v231 keepFavorites:1];
      v226 = [v59 mutableCopy];

      v60 = [v233 cls_universalEndDate];
      [v60 timeIntervalSinceReferenceDate];
      v62 = v61;

      v63 = [v232 cls_universalStartDate];
      [v63 timeIntervalSinceReferenceDate];
      v65 = v64;

      v247 = [MEMORY[0x277CBEB18] array];
      v263 = [v265 count];
      v248 = [MEMORY[0x277CBEB18] array];
      v225 = [v265 firstObject];
      if (v225 && ([v225 creationDate], v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v66, "timeIntervalSinceReferenceDate"), v68 = v67 > v62, v66, !v68))
      {
        [v248 addObject:v225];
        v311 = 0u;
        v310 = 0u;
        v309 = 0u;
        v308 = 0u;
        v69 = v265;
        v77 = [v69 countByEnumeratingWithState:&v308 objects:v335 count:16];
        if (v77)
        {
          v78 = *v309;
LABEL_70:
          v79 = 0;
          while (1)
          {
            if (*v309 != v78)
            {
              objc_enumerationMutation(v69);
            }

            v80 = *(*(&v308 + 1) + 8 * v79);
            v81 = [v80 creationDate];
            [v81 timeIntervalSinceReferenceDate];
            v83 = v82 > v62;

            if (v83)
            {
              break;
            }

            [v247 addObject:v80];
            if (v77 == ++v79)
            {
              v77 = [v69 countByEnumeratingWithState:&v308 objects:v335 count:16];
              if (v77)
              {
                goto LABEL_70;
              }

              break;
            }
          }
        }
      }

      else
      {
        v306 = 0u;
        v307 = 0u;
        v304 = 0u;
        v305 = 0u;
        v69 = v261;
        v70 = [v69 countByEnumeratingWithState:&v304 objects:v334 count:16];
        if (v70)
        {
          v71 = *v305;
LABEL_61:
          v72 = 0;
          while (1)
          {
            if (*v305 != v71)
            {
              objc_enumerationMutation(v69);
            }

            v73 = *(*(&v304 + 1) + 8 * v72);
            v74 = [v73 creationDate];
            [v74 timeIntervalSinceReferenceDate];
            v76 = v75 > v62;

            if (v76)
            {
              break;
            }

            [v248 addObject:v73];
            if (v70 == ++v72)
            {
              v70 = [v69 countByEnumeratingWithState:&v304 objects:v334 count:16];
              if (v70)
              {
                goto LABEL_61;
              }

              break;
            }
          }
        }
      }

      if (v262)
      {
        v84 = CFAbsoluteTimeGetCurrent();
        if (v84 - v315[3] >= 0.01)
        {
          v315[3] = v84;
          v312 = 0;
          v262[2](v262, &v312, 0.5);
          v85 = *(v319 + 24) | v312;
          *(v319 + 24) = v85;
          if (v85)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 170;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_262;
          }
        }
      }

      v245 = [MEMORY[0x277CBEB18] array];
      v227 = [v265 lastObject];
      if (v227 && ([v227 creationDate], v86 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v86, "timeIntervalSinceReferenceDate"), v88 = v87 < v65, v86, !v88))
      {
        [v245 addObject:v227];
        v302 = 0u;
        v303 = 0u;
        v300 = 0u;
        v301 = 0u;
        v89 = [v265 reverseObjectEnumerator];
        v97 = [v89 countByEnumeratingWithState:&v300 objects:v333 count:16];
        if (v97)
        {
          v98 = *v301;
LABEL_95:
          v99 = 0;
          while (1)
          {
            if (*v301 != v98)
            {
              objc_enumerationMutation(v89);
            }

            v100 = *(*(&v300 + 1) + 8 * v99);
            v101 = [v100 creationDate];
            [v101 timeIntervalSinceReferenceDate];
            v103 = v102 < v62;

            if (v103)
            {
              break;
            }

            [v247 addObject:v100];
            if (v97 == ++v99)
            {
              v97 = [v89 countByEnumeratingWithState:&v300 objects:v333 count:16];
              if (v97)
              {
                goto LABEL_95;
              }

              break;
            }
          }
        }
      }

      else
      {
        v298 = 0u;
        v299 = 0u;
        v296 = 0u;
        v297 = 0u;
        v89 = [v261 reverseObjectEnumerator];
        v90 = [v89 countByEnumeratingWithState:&v296 objects:v332 count:16];
        if (v90)
        {
          v91 = *v297;
LABEL_86:
          v92 = 0;
          while (1)
          {
            if (*v297 != v91)
            {
              objc_enumerationMutation(v89);
            }

            v93 = *(*(&v296 + 1) + 8 * v92);
            v94 = [v93 creationDate];
            [v94 timeIntervalSinceReferenceDate];
            v96 = v95 < v65;

            if (v96)
            {
              break;
            }

            [v245 addObject:v93];
            if (v90 == ++v92)
            {
              v90 = [v89 countByEnumeratingWithState:&v296 objects:v332 count:16];
              if (v90)
              {
                goto LABEL_86;
              }

              break;
            }
          }
        }
      }

      if ([v247 count])
      {
        [v226 removeObjectsInArray:v247];
      }

      if (v262)
      {
        v104 = CFAbsoluteTimeGetCurrent();
        if (v104 - v315[3] >= 0.01)
        {
          v315[3] = v104;
          v312 = 0;
          v262[2](v262, &v312, 0.5);
          v105 = *(v319 + 24) | v312;
          *(v319 + 24) = v105;
          if (v105)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 203;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_261;
          }
        }
      }

      if (v234 <= 1)
      {
        v106 = 0;
      }

      else
      {
        v106 = v234 - 2;
      }

      v224 = [(PGCurationManager *)self _timeBasedAssetClustersForAssets:v226 maximumClusterCount:v106];
      if (v262)
      {
        v107 = CFAbsoluteTimeGetCurrent();
        if (v107 - v315[3] >= 0.01)
        {
          v315[3] = v107;
          v312 = 0;
          v262[2](v262, &v312, 0.5);
          v108 = *(v319 + 24) | v312;
          *(v319 + 24) = v108;
          if (v108)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 207;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            goto LABEL_260;
          }
        }
      }

      v242 = [MEMORY[0x277CBEB18] array];
      v230 = [MEMORY[0x277CD9880] fetchOptionsWithPhotoLibrary:v254 orObject:0];
      v331 = *MEMORY[0x277CD9BC8];
      v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v331 count:1];
      [v230 setFetchPropertySets:v109];

      [v230 setIncludedDetectionTypes:&unk_284486048];
      v110 = MEMORY[0x277CCAC30];
      v111 = [v259 objectID];
      v112 = [v110 predicateWithFormat:@"%K = %@", @"personForFace", v111];
      [v230 setInternalPredicate:v112];

      v113 = [MEMORY[0x277CD9868] fetchFacesGroupedByAssetLocalIdentifierForAssets:v261 options:v230];
      v221 = [(PGCurationManager *)self _firstBestFacedAssetInAssetCluster:v248 facesByAssetIdentifiers:v113];
      if (v221)
      {
        [v242 addObject:?];
      }

      else
      {
        v114 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v342 = v248;
          _os_log_impl(&dword_22F0FC000, v114, OS_LOG_TYPE_INFO, "nil asset from first asset cluster: %@", buf, 0xCu);
        }
      }

      if (v262)
      {
        v115 = CFAbsoluteTimeGetCurrent();
        if (v115 - v315[3] >= 0.01)
        {
          v315[3] = v115;
          v312 = 0;
          v262[2](v262, &v312, 0.5);
          v116 = *(v319 + 24) | v312;
          *(v319 + 24) = v116;
          if (v116)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 230;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

LABEL_179:
            v8 = 0;
LABEL_259:

LABEL_260:
LABEL_261:

LABEL_262:
LABEL_263:

            v37 = v231;
LABEL_264:

LABEL_265:
            goto LABEL_266;
          }
        }
      }

      v294 = 0u;
      v295 = 0u;
      v292 = 0u;
      v293 = 0u;
      obj = v224;
      v117 = [obj countByEnumeratingWithState:&v292 objects:v330 count:16];
      if (v117)
      {
        v118 = 0;
        v249 = *v293;
        v119 = *MEMORY[0x277D3C778];
        do
        {
          v251 = v117;
          for (j = 0; j != v251; ++j)
          {
            if (*v293 != v249)
            {
              objc_enumerationMutation(obj);
            }

            v121 = *(*(&v292 + 1) + 8 * j);
            if (v262)
            {
              v122 = CFAbsoluteTimeGetCurrent();
              if (v122 - v315[3] >= 0.01)
              {
                v315[3] = v122;
                v312 = 0;
                v262[2](v262, &v312, 0.5);
                v123 = *(v319 + 24) | v312;
                *(v319 + 24) = v123;
                if (v123)
                {
                  v153 = MEMORY[0x277D86220];
                  v154 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_INFO))
                  {
                    *buf = 67109378;
                    *v342 = 237;
                    *&v342[4] = 2080;
                    *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
                    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                  }

                  goto LABEL_178;
                }
              }
            }

            if (v118 >= v263)
            {
LABEL_144:
              if (v262)
              {
                v137 = CFAbsoluteTimeGetCurrent();
                if (v137 - v315[3] >= 0.01)
                {
                  v315[3] = v137;
                  v312 = 0;
                  v262[2](v262, &v312, 0.5);
                  v138 = *(v319 + 24) | v312;
                  *(v319 + 24) = v138;
                  if (v138)
                  {
                    v155 = MEMORY[0x277D86220];
                    v156 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v155, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v342 = 264;
                      *&v342[4] = 2080;
                      *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
                      _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
                    }

LABEL_178:

                    goto LABEL_179;
                  }
                }
              }

              v290 = 0u;
              v291 = 0u;
              v288 = 0u;
              v289 = 0u;
              v129 = v121;
              v139 = [v129 countByEnumeratingWithState:&v288 objects:v329 count:16];
              if (v139)
              {
                v140 = *v289;
                while (2)
                {
                  for (k = 0; k != v139; ++k)
                  {
                    if (*v289 != v140)
                    {
                      objc_enumerationMutation(v129);
                    }

                    v142 = *(*(&v288 + 1) + 8 * k);
                    [v142 curationScore];
                    if (v143 != v119)
                    {
                      v144 = [v142 localIdentifier];
                      v145 = [v113 objectForKeyedSubscript:v144];
                      memset(v287, 0, sizeof(v287));
                      v146 = v145;
                      if ([v146 countByEnumeratingWithState:v287 objects:v328 count:16])
                      {
                        [**(&v287[0] + 1) size];
                        if (v147 >= 0.1 && v147 <= 0.7)
                        {
                          [v242 addObject:v142];

                          goto LABEL_161;
                        }
                      }
                    }
                  }

                  v139 = [v129 countByEnumeratingWithState:&v288 objects:v329 count:16];
                  if (v139)
                  {
                    continue;
                  }

                  break;
                }
              }
            }

            else
            {
              v124 = [v121 firstObject];
              v125 = [v124 creationDate];
              [v125 timeIntervalSinceReferenceDate];
              v127 = v126;

              v128 = 0;
              while (1)
              {
                v129 = [v265 objectAtIndexedSubscript:v118];

                v130 = [v129 creationDate];
                [v130 timeIntervalSinceReferenceDate];
                v132 = v131;

                if (v132 >= v127)
                {
                  break;
                }

                ++v118;
                v128 = v129;
                if (v263 == v118)
                {
                  v118 = v263;
LABEL_143:

                  goto LABEL_144;
                }
              }

              if (!v129)
              {
                goto LABEL_143;
              }

              v133 = [v121 lastObject];
              v134 = [v133 creationDate];
              [v134 timeIntervalSinceReferenceDate];
              v136 = v132 > v135;

              if (v136)
              {
                goto LABEL_143;
              }

              [v242 addObject:v129];
            }

LABEL_161:
          }

          v117 = [obj countByEnumeratingWithState:&v292 objects:v330 count:16];
        }

        while (v117);
      }

      if (v262)
      {
        v148 = CFAbsoluteTimeGetCurrent();
        if (v148 - v315[3] >= 0.01)
        {
          v315[3] = v148;
          v312 = 0;
          v262[2](v262, &v312, 0.5);
          v149 = *(v319 + 24) | v312;
          *(v319 + 24) = v149;
          if (v149)
          {
            v150 = MEMORY[0x277D86220];
            v151 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 300;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            goto LABEL_179;
          }
        }
      }

      v152 = [(PGCurationManager *)self _firstBestFacedAssetInAssetCluster:v245 facesByAssetIdentifiers:v113];
      if (v152)
      {
        [v242 addObject:v152];
      }

      else
      {
        v157 = [(PGCurationManager *)self curationLoggingConnection];
        if (os_log_type_enabled(v157, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v342 = v245;
          _os_log_impl(&dword_22F0FC000, v157, OS_LOG_TYPE_INFO, "nil asset from last asset cluster: %@", buf, 0xCu);
        }
      }

      v220 = v152;
      v158 = v242;
      if (v262 && (v159 = CFAbsoluteTimeGetCurrent(), v159 - v315[3] >= 0.01) && (v315[3] = v159, v312 = 0, v262[2](v262, &v312, 0.5), v160 = *(v319 + 24) | v312, *(v319 + 24) = v160, (v160 & 1) != 0))
      {
        v161 = MEMORY[0x277D86220];
        v162 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v161, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v342 = 314;
          *&v342[4] = 2080;
          *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      else
      {
        if ([v158 count] < v222)
        {
          v264 = [MEMORY[0x277CBEB18] arrayWithCapacity:v234];
          v256 = v158;
          v163 = [objc_alloc(MEMORY[0x277D3AC98]) initWithNumericValueKeypaths:&unk_284486060];
          [v163 setK:v234];
          v282[0] = MEMORY[0x277D85DD0];
          v282[1] = 3221225472;
          v282[2] = __81__PGCurationManager_People__curatedAssetsForPersonLocalIdentifier_progressBlock___block_invoke;
          v282[3] = &unk_27888A188;
          v164 = v262;
          v283 = v164;
          v284 = &v314;
          v286 = 0x3F847AE147AE147BLL;
          v285 = &v318;
          v223 = [v163 performWithDataset:v261 progressBlock:v282];
          v219 = v163;
          if (*(v319 + 24) == 1)
          {
            v165 = MEMORY[0x277D86220];
            v166 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v165, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 327;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, v165, OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v167 = 0;
          }

          else
          {
            v280 = 0u;
            v281 = 0u;
            v278 = 0u;
            v279 = 0u;
            v168 = v223;
            v169 = [v168 countByEnumeratingWithState:&v278 objects:v327 count:16];
            if (v169)
            {
              v170 = *v279;
              do
              {
                for (m = 0; m != v169; ++m)
                {
                  if (*v279 != v170)
                  {
                    objc_enumerationMutation(v168);
                  }

                  v172 = [*(*(&v278 + 1) + 8 * m) objects];
                  v173 = [v172 firstObject];
                  [v264 addObject:v173];
                }

                v169 = [v168 countByEnumeratingWithState:&v278 objects:v327 count:16];
              }

              while (v169);
            }

            v174 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
            v326 = v174;
            v175 = [MEMORY[0x277CBEA60] arrayWithObjects:&v326 count:1];
            [v264 sortUsingDescriptors:v175];

            v165 = [MEMORY[0x277CBEB98] setWithArray:v256];
            v252 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[NSObject count](v165, "count")}];
            v176 = [MEMORY[0x277CBEB18] array];
            v276 = 0u;
            v277 = 0u;
            v274 = 0u;
            v275 = 0u;
            v177 = v264;
            v178 = [v177 countByEnumeratingWithState:&v274 objects:v325 count:16];
            if (v178)
            {
              v179 = *v275;
              do
              {
                for (n = 0; n != v178; ++n)
                {
                  if (*v275 != v179)
                  {
                    objc_enumerationMutation(v177);
                  }

                  v181 = *(*(&v274 + 1) + 8 * n);
                  if (([v165 containsObject:v181]& 1) == 0)
                  {
                    [v176 addObject:v181];
                  }
                }

                v178 = [v177 countByEnumeratingWithState:&v274 objects:v325 count:16];
              }

              while (v178);
            }

            v218 = v177;

            if (v262 && (v182 = CFAbsoluteTimeGetCurrent(), v182 - v315[3] >= 0.01) && (v315[3] = v182, v312 = 0, v164[2](v164, &v312, 0.5), v183 = *(v319 + 24) | v312, *(v319 + 24) = v183, (v183 & 1) != 0))
            {
              v184 = MEMORY[0x277D86220];
              v185 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
              {
                *buf = 67109378;
                *v342 = 349;
                *&v342[4] = 2080;
                *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
                _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
              }

              v167 = 0;
            }

            else
            {
              v186 = [MEMORY[0x277CBEB18] array];
              v187 = [MEMORY[0x277CBEB98] setWithArray:v177];
              v272 = 0u;
              v273 = 0u;
              v270 = 0u;
              v271 = 0u;
              v188 = v256;
              v189 = [v188 countByEnumeratingWithState:&v270 objects:v324 count:16];
              if (v189)
              {
                v190 = *v271;
                do
                {
                  for (ii = 0; ii != v189; ++ii)
                  {
                    if (*v271 != v190)
                    {
                      objc_enumerationMutation(v188);
                    }

                    v192 = *(*(&v270 + 1) + 8 * ii);
                    if (([v187 containsObject:v192] & 1) == 0)
                    {
                      [v186 addObject:v192];
                    }
                  }

                  v189 = [v188 countByEnumeratingWithState:&v270 objects:v324 count:16];
                }

                while (v189);
              }

              v268 = 0u;
              v269 = 0u;
              v266 = 0u;
              v267 = 0u;
              obja = v186;
              v250 = [obja countByEnumeratingWithState:&v266 objects:v323 count:16];
              if (v250)
              {
                v241 = *v267;
LABEL_227:
                v193 = 0;
                while (1)
                {
                  if (*v267 != v241)
                  {
                    objc_enumerationMutation(obja);
                  }

                  v194 = *(*(&v266 + 1) + 8 * v193);
                  if (![v176 count])
                  {
                    break;
                  }

                  v195 = [v176 indexOfObject:v194 inSortedRange:0 options:objc_msgSend(v176 usingComparator:{"count"), 1024, &__block_literal_global_43624}];
                  v257 = [v194 creationDate];
                  if (v195)
                  {
                    v196 = v195 - 1;
                    if (v195 != [v176 count])
                    {
                      v235 = [v176 objectAtIndexedSubscript:v195 - 1];
                      v197 = [v235 creationDate];
                      [v257 timeIntervalSinceDate:v197];
                      v199 = v198;

                      v200 = [v176 objectAtIndexedSubscript:v195];
                      v201 = [v200 creationDate];
                      [v201 timeIntervalSinceDate:v257];
                      v203 = v202;

                      if (v199 >= v203)
                      {
                        v196 = v195;
                      }
                    }
                  }

                  else
                  {
                    v196 = 0;
                  }

                  v204 = [v176 objectAtIndexedSubscript:v196];
                  [v176 removeObjectAtIndex:v196];
                  [v252 addObject:v204];

                  if (v250 == ++v193)
                  {
                    v250 = [obja countByEnumeratingWithState:&v266 objects:v323 count:16];
                    if (v250)
                    {
                      goto LABEL_227;
                    }

                    break;
                  }
                }
              }

              [v218 removeObjectsInArray:v252];
              [v218 addObjectsFromArray:obja];
              v256 = [v218 mutableCopy];

              v167 = 1;
            }
          }

          if ((v167 & 1) == 0)
          {
            v8 = 0;
            v209 = v256;
            goto LABEL_258;
          }

          v158 = v256;
        }

        if (!v262 || (v205 = CFAbsoluteTimeGetCurrent(), v205 - v315[3] < 0.01) || (v315[3] = v205, v312 = 0, v262[2](v262, &v312, 0.5), v206 = *(v319 + 24) | v312, *(v319 + 24) = v206, (v206 & 1) == 0))
        {
          v210 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"creationDate" ascending:1];
          v322 = v210;
          v211 = [MEMORY[0x277CBEA60] arrayWithObjects:&v322 count:1];
          [v158 sortUsingDescriptors:v211];

          if (v262 && (v212 = CFAbsoluteTimeGetCurrent(), v212 - v315[3] >= 0.01) && (v315[3] = v212, v312 = 0, v262[2](v262, &v312, 1.0), v213 = *(v319 + 24) | v312, *(v319 + 24) = v213, (v213 & 1) != 0))
          {
            v214 = MEMORY[0x277D86220];
            v215 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v214, OS_LOG_TYPE_INFO))
            {
              *buf = 67109378;
              *v342 = 410;
              *&v342[4] = 2080;
              *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
              _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
            }

            v8 = 0;
            v209 = v158;
          }

          else
          {
            v209 = v158;
            v8 = v209;
          }

          goto LABEL_258;
        }

        v207 = MEMORY[0x277D86220];
        v208 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
        {
          *buf = 67109378;
          *v342 = 403;
          *&v342[4] = 2080;
          *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
          _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
        }
      }

      v8 = 0;
      v209 = v158;
LABEL_258:

      goto LABEL_259;
    }

    v231 = MEMORY[0x277CBEBF8];
    if (v56 && v56 + v51 <= v45)
    {
      v231 = [v37 subarrayWithRange:v51];

      v37 = v231;
    }

LABEL_50:

    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    *buf = 67109378;
    *v342 = 37;
    *&v342[4] = 2080;
    *&v342[6] = "/Library/Caches/com.apple.xbs/Sources/Photos_Swift/workspaces/photoanalysis/PhotosGraph/Framework/Curation/PGCurationManager+People.m";
    _os_log_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Cancelled at line %d in file %s", buf, 0x12u);
  }

  v8 = 0;
LABEL_268:
  _Block_object_dispose(&v314, 8);
  _Block_object_dispose(&v318, 8);

  v216 = *MEMORY[0x277D85DE8];

  return v8;
}

void __81__PGCurationManager_People__curatedAssetsForPersonLocalIdentifier_progressBlock___block_invoke(uint64_t a1, _BYTE *a2, double a3)
{
  if (*(a1 + 32))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v7 = *(*(a1 + 40) + 8);
    if (Current - *(v7 + 24) >= *(a1 + 56))
    {
      *(v7 + 24) = Current;
      (*(*(a1 + 32) + 16))(a3 * 0.0 + 0.5);
      *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24);
      if (*(*(*(a1 + 48) + 8) + 24) == 1)
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t __81__PGCurationManager_People__curatedAssetsForPersonLocalIdentifier_progressBlock___block_invoke_298(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)_filterAssets:(id)a3 withPositiveLocations:(id)a4 negativeLocations:(id)a5 maximumDistance:(double)a6
{
  v51 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v35 = a4;
  v10 = a5;
  v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v45;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v45 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v44 + 1) + 8 * i);
        v16 = [v15 location];
        if (v16)
        {
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v17 = v35;
          v18 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v41;
            v21 = 1.79769313e308;
            do
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v41 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                [v16 distanceFromLocation:*(*(&v40 + 1) + 8 * j)];
                if (v23 < v21)
                {
                  v21 = v23;
                }
              }

              v19 = [v17 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v19);
          }

          else
          {
            v21 = 1.79769313e308;
          }

          v38 = 0u;
          v39 = 0u;
          v36 = 0u;
          v37 = 0u;
          v24 = v10;
          v25 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v37;
            v28 = 1.79769313e308;
            do
            {
              for (k = 0; k != v26; ++k)
              {
                if (*v37 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                [v16 distanceFromLocation:*(*(&v36 + 1) + 8 * k)];
                if (v30 < v28)
                {
                  v28 = v30;
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
            }

            while (v26);
          }

          else
          {
            v28 = 1.79769313e308;
          }

          if (v21 < a6 && v21 <= v28)
          {
            [v33 addObject:v15];
          }
        }
      }

      v12 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v12);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v33;
}

+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forLocationNodes:(id)a5 withMaximumDistance:(double)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a4 addressNodes];
  v13 = [v10 addressNodes];

  v14 = [v12 collectionByIntersecting:v13];
  v15 = [v12 collectionBySubtracting:v13];
  v16 = [v14 locations];
  v17 = [v15 locations];
  v18 = [a1 _filterAssets:v11 withPositiveLocations:v16 negativeLocations:v17 maximumDistance:a6];

  return v18;
}

+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forStateNodes:(id)a5 withMaximumDistance:(double)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a4 addressNodes];
  v13 = [v10 addressNodes];

  v14 = [v12 collectionByIntersecting:v13];
  v15 = [v12 collectionBySubtracting:v13];
  v16 = [v14 locations];
  v17 = [v15 locations];
  v18 = [a1 _filterAssets:v11 withPositiveLocations:v16 negativeLocations:v17 maximumDistance:a6];

  return v18;
}

+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forAreaNodes:(id)a5 withMaximumDistance:(double)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a4 addressNodes];
  v13 = [v10 addressNodes];

  v14 = [v12 collectionByIntersecting:v13];
  v15 = [v12 collectionBySubtracting:v13];
  v16 = [v14 locations];
  v17 = [v15 locations];
  v18 = [a1 _filterAssets:v11 withPositiveLocations:v16 negativeLocations:v17 maximumDistance:a6];

  return v18;
}

+ (id)filterAssets:(id)a3 inMomentNodes:(id)a4 forCityNodes:(id)a5 withMaximumDistance:(double)a6
{
  v10 = a5;
  v11 = a3;
  v12 = [a4 addressNodes];
  v13 = [v10 addressNodes];

  v14 = [v12 collectionByIntersecting:v13];
  v15 = [v12 collectionBySubtracting:v13];
  v16 = [v14 locations];
  v17 = [v15 locations];
  v18 = [a1 _filterAssets:v11 withPositiveLocations:v16 negativeLocations:v17 maximumDistance:a6];

  return v18;
}

+ (id)filterAssets:(id)a3 withLocation:(id)a4 maximumDistance:(double)a5
{
  v16 = *MEMORY[0x277D85DE8];
  v15 = a4;
  v8 = MEMORY[0x277CBEA60];
  v9 = a4;
  v10 = a3;
  v11 = [v8 arrayWithObjects:&v15 count:1];

  v12 = [a1 filterAssets:v10 withLocations:v11 maximumDistance:{a5, v15, v16}];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)filterAssets:(id)a3 withLocations:(id)a4 maximumDistance:(double)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v23 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v29 + 1) + 8 * i);
        v14 = [v13 location];
        if (v14)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = v8;
          v16 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v26;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v26 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                [v14 distanceFromLocation:*(*(&v25 + 1) + 8 * j)];
                if (v20 < a5)
                {
                  [v23 addObject:v13];
                  goto LABEL_17;
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v25 objects:v33 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

LABEL_17:
        }
      }

      v10 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v23;
}

@end