@interface PNDetailsViewSampler
+ (id)_assetObjectIDsFromClusters:(id)clusters facesByAssetIdentifiers:(id)identifiers includeExtraAssets:(unint64_t)assets;
+ (id)_logger;
+ (id)_timeBasedAssetClustersForAssets:(id)assets maximumClusterCount:(unint64_t)count photoLibrary:(id)library;
+ (id)fetchMovieAssetsForPerson:(id)person options:(id)options;
+ (id)fetchMovieAssetsForSocialGroup:(id)group options:(id)options;
+ (unint64_t)_maximumNumberOfClustersForCuratedAssetCount:(unint64_t)count fetchLimit:(unint64_t)limit;
@end

@implementation PNDetailsViewSampler

+ (id)_logger
{
  if (_logger_onceToken_4155 != -1)
  {
    dispatch_once(&_logger_onceToken_4155, &__block_literal_global_4156);
  }

  v3 = _logger__log_4157;

  return v3;
}

uint64_t __31__PNDetailsViewSampler__logger__block_invoke()
{
  v0 = os_log_create(*MEMORY[0x1E69BFF50], "DetailsViewSampler");
  v2 = _logger__log_4157;
  _logger__log_4157 = v0;

  return MEMORY[0x1EEE66BB8](v0, v2, v1);
}

+ (id)_assetObjectIDsFromClusters:(id)clusters facesByAssetIdentifiers:(id)identifiers includeExtraAssets:(unint64_t)assets
{
  v48 = *MEMORY[0x1E69E9840];
  clustersCopy = clusters;
  identifiersCopy = identifiers;
  _logger = [self _logger];
  v10 = os_signpost_id_generate(_logger);
  info = 0;
  mach_timebase_info(&info);
  v11 = _logger;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "assetObjectIDsFromClusters", "", buf, 2u);
  }

  v33 = v12;

  v32 = mach_absolute_time();
  array = [MEMORY[0x1E695DF70] array];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = clustersCopy;
  v14 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v38 + 1) + 8 * i);
        v36[0] = MEMORY[0x1E69E9820];
        v36[1] = 3221225472;
        v36[2] = __95__PNDetailsViewSampler__assetObjectIDsFromClusters_facesByAssetIdentifiers_includeExtraAssets___block_invoke;
        v36[3] = &unk_1E82A27F8;
        v37 = identifiersCopy;
        v19 = [v18 sortedArrayUsingComparator:v36];
        v20 = [v19 count];
        if (v20 >= 1)
        {
          v21 = v20;
          firstObject = [v19 firstObject];
          objectID = [firstObject objectID];
          [array addObject:objectID];

          if (assets)
          {
            if (v21 != 1)
            {
              v24 = [v19 objectAtIndexedSubscript:1];
              objectID2 = [v24 objectID];
              [array addObject:objectID2];

              --assets;
            }
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v38 objects:v47 count:16];
    }

    while (v15);
  }

  v26 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v29 = v33;
  v30 = v29;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v29))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v30, OS_SIGNPOST_INTERVAL_END, v10, "assetObjectIDsFromClusters", "", buf, 2u);
  }

  if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v44 = "assetObjectIDsFromClusters";
    v45 = 2048;
    v46 = ((((v26 - v32) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v30, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return array;
}

uint64_t __95__PNDetailsViewSampler__assetObjectIDsFromClusters_facesByAssetIdentifiers_includeExtraAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 isFavorite];
  if (v7 == [v6 isFavorite])
  {
    [v5 localIdentifier];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v31 = v39 = 0u;
    v9 = [*(a1 + 32) objectForKeyedSubscript:?];
    v10 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v37;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v36 + 1) + 8 * i) size];
          v16 = v15 <= 0.7 && v15 >= 0.1;
          v12 += v16;
        }

        v11 = [v9 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v17 = [v6 localIdentifier];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v18 = [*(a1 + 32) objectForKeyedSubscript:v17];
    v19 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = 0;
      v22 = *v33;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v33 != v22)
          {
            objc_enumerationMutation(v18);
          }

          [*(*(&v32 + 1) + 8 * j) size];
          v25 = v24 <= 0.7 && v24 >= 0.1;
          v21 += v25;
        }

        v20 = [v18 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v20);
    }

    else
    {
      v21 = 0;
    }

    if (v12 == v21)
    {
      [v5 curationScore];
      v27 = v26;
      [v6 curationScore];
      v29 = v31;
      if (v27 == v28)
      {
        v8 = [v31 compare:v17];
      }

      else
      {
        v8 = v27 < v28;
      }
    }

    else
    {
      v8 = v12 > v21;
      v29 = v31;
    }
  }

  else if (v7)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

  return v8;
}

+ (unint64_t)_maximumNumberOfClustersForCuratedAssetCount:(unint64_t)count fetchLimit:(unint64_t)limit
{
  countCopy = pow(count, 0.8);
  if (countCopy >= 0x50)
  {
    countCopy = 80;
  }

  if (countCopy <= 6)
  {
    countCopy = 6;
  }

  if (countCopy >= count)
  {
    countCopy = count;
  }

  if (countCopy >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = countCopy;
  }

  if (limit)
  {
    return limitCopy;
  }

  else
  {
    return countCopy;
  }
}

+ (id)_timeBasedAssetClustersForAssets:(id)assets maximumClusterCount:(unint64_t)count photoLibrary:(id)library
{
  v101[1] = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  libraryCopy = library;
  _logger = [self _logger];
  v10 = os_signpost_id_generate(_logger);
  info = 0;
  mach_timebase_info(&info);
  v11 = _logger;
  v12 = v11;
  v74 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "timeBasedAssetClustersForAssets", "", buf, 2u);
  }

  spid = v10;

  v73 = mach_absolute_time();
  v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
  v14 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:count];
  firstObject = [assetsCopy firstObject];
  creationDate = [firstObject creationDate];

  lastObject = [assetsCopy lastObject];
  creationDate2 = [lastObject creationDate];

  if (!creationDate || !creationDate2)
  {
    v101[0] = assetsCopy;
    v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:v101 count:1];
    goto LABEL_61;
  }

  v19 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:creationDate endDate:creationDate2];
  if (!v19)
  {
    v100 = assetsCopy;
    v64 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v100 count:1];
    v63 = 0;
    v51 = v64;
    goto LABEL_60;
  }

  v68 = creationDate;
  v69 = v12;
  v70 = libraryCopy;
  [v13 addObject:v19];
  v71 = assetsCopy;
  v66 = v19;
  [v14 setObject:assetsCopy forKeyedSubscript:v19];
  v76 = v13;
  v67 = creationDate2;
  if ([v13 count] >= count)
  {
    goto LABEL_45;
  }

  v20 = 0;
  do
  {
    if (v20 == [v13 count])
    {
      break;
    }

    context = objc_autoreleasePoolPush();
    v21 = [v13 count];
    if (v21 < 1)
    {
      v20 = 0;
      goto LABEL_44;
    }

    v22 = v21;
    v20 = 0;
    while (1)
    {
      v23 = v22 - 1;
      v24 = [v13 objectAtIndexedSubscript:v22 - 1];
      startDate = [v24 startDate];
      endDate = [v24 endDate];
      [v24 duration];
      v28 = v27;
      v29 = [v14 objectForKeyedSubscript:v24];
      if ([v29 count] >= 2 && v28 >= 21600.0)
      {
        break;
      }

      ++v20;
LABEL_39:

      v50 = v22 <= 1;
      v22 = v23;
      if (v50)
      {
        goto LABEL_44;
      }
    }

    v30 = v28 * 0.5;
    v80 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:startDate duration:v30];
    v79 = [startDate dateByAddingTimeInterval:v30 + 2.22044605e-16];
    v81 = endDate;
    v84 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v79 endDate:endDate];
    v82 = startDate;
    [startDate timeIntervalSinceReferenceDate];
    v32 = v31;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v78 = v29;
    v33 = v29;
    v34 = [v33 countByEnumeratingWithState:&v89 objects:v99 count:16];
    v83 = v20;
    if (!v34)
    {

      v23 = v22 - 1;
      if (v30 >= 1.0)
      {
        goto LABEL_35;
      }

LABEL_31:
      v36 = 1;
      goto LABEL_33;
    }

    v35 = v34;
    v36 = 0;
    v37 = v30 + v32;
    v38 = *v90;
    while (2)
    {
      v39 = 0;
      v40 = v36;
      v36 += v35;
      do
      {
        if (*v90 != v38)
        {
          objc_enumerationMutation(v33);
        }

        creationDate3 = [*(*(&v89 + 1) + 8 * v39) creationDate];
        [creationDate3 timeIntervalSinceReferenceDate];
        v43 = v42;

        if (v43 > v37)
        {
          v36 = v40;
          goto LABEL_25;
        }

        ++v40;
        ++v39;
      }

      while (v35 != v39);
      v35 = [v33 countByEnumeratingWithState:&v89 objects:v99 count:16];
      if (v35)
      {
        continue;
      }

      break;
    }

LABEL_25:

    if (v30 >= 1.0)
    {
      v13 = v76;
      v23 = v22 - 1;
      if (!v36)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v13 = v76;
      v23 = v22 - 1;
      if (!v36)
      {
        goto LABEL_31;
      }

      if (v36 == [v33 count] && !--v36)
      {
LABEL_35:
        v46 = v84;
        [v13 setObject:v84 atIndexedSubscript:v23];
        [v14 setObject:v33 forKeyedSubscript:v84];
        v45 = v80;
        goto LABEL_37;
      }
    }

LABEL_33:
    v44 = [v33 count];
    v45 = v80;
    [v13 setObject:v80 atIndexedSubscript:v23];
    if (v36 == v44)
    {
      [v14 setObject:v33 forKeyedSubscript:v80];
      v46 = v84;
    }

    else
    {
      [v13 insertObject:v84 atIndex:v22];
      v47 = [v33 subarrayWithRange:{0, v36}];
      [v14 setObject:v47 forKeyedSubscript:v80];

      v48 = [v33 subarrayWithRange:{v36, objc_msgSend(v33, "count") - v36}];
      v46 = v84;
      [v14 setObject:v48 forKeyedSubscript:v84];
    }

LABEL_37:
    [v14 setObject:0 forKeyedSubscript:v24];
    v49 = [v13 count];

    if (v49 < count)
    {
      endDate = v81;
      startDate = v82;
      v29 = v78;
      v20 = v83;
      goto LABEL_39;
    }

    v20 = v83;
LABEL_44:
    objc_autoreleasePoolPop(context);
  }

  while ([v13 count] < count);
LABEL_45:
  v51 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v13, "count")}];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v52 = v13;
  v53 = [v52 countByEnumeratingWithState:&v85 objects:v98 count:16];
  libraryCopy = v70;
  assetsCopy = v71;
  creationDate = v68;
  if (v53)
  {
    v54 = v53;
    v55 = *v86;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v86 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [v14 objectForKeyedSubscript:*(*(&v85 + 1) + 8 * i)];
        [v51 addObject:v57];
      }

      v54 = [v52 countByEnumeratingWithState:&v85 objects:v98 count:16];
    }

    while (v54);
  }

  v58 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v12 = v69;
  v61 = v69;
  v62 = v61;
  if (v74 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v62, OS_SIGNPOST_INTERVAL_END, spid, "timeBasedAssetClustersForAssets", "", buf, 2u);
  }

  creationDate2 = v67;
  if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v95 = "timeBasedAssetClustersForAssets";
    v96 = 2048;
    v97 = ((((v58 - v73) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v62, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v13 = v76;
  v63 = v66;
LABEL_60:

LABEL_61:

  return v51;
}

+ (id)fetchMovieAssetsForSocialGroup:(id)group options:(id)options
{
  v80[3] = *MEMORY[0x1E69E9840];
  groupCopy = group;
  optionsCopy = options;
  selfCopy = self;
  _logger = [self _logger];
  v9 = os_signpost_id_generate(_logger);
  info = 0;
  mach_timebase_info(&info);
  v10 = _logger;
  v11 = v10;
  v62 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "fetchMovieAssetsForSocialGroup", "", buf, 2u);
  }

  spid = v9;
  v58 = v11;

  v57 = mach_absolute_time();
  fetchOptions = [optionsCopy fetchOptions];
  v13 = [fetchOptions copy];
  [v13 setSortDescriptors:0];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v80[0] = v14;
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v80[1] = v15;
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v80[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v80 count:3];
  [v13 setInternalSortDescriptors:v17];

  [v13 setFetchLimit:0];
  v63 = v13;
  v18 = +[PNPersonCurationWrapper fetchCuratedAssetsForSocialGroup:options:includeOthersInSocialGroupAssets:](PNPersonCurationWrapper, "fetchCuratedAssetsForSocialGroup:options:includeOthersInSocialGroupAssets:", groupCopy, v13, [optionsCopy includeOthersInSocialGroupAssets]);
  v19 = [selfCopy _maximumNumberOfClustersForCuratedAssetCount:objc_msgSend(v18 fetchLimit:{"count"), objc_msgSend(fetchOptions, "fetchLimit")}];
  v66 = v18;
  fetchedObjects = [v18 fetchedObjects];
  photoLibrary = [groupCopy photoLibrary];
  v59 = v19;
  v61 = [selfCopy _timeBasedAssetClustersForAssets:fetchedObjects maximumClusterCount:v19 photoLibrary:photoLibrary];

  photoLibrary2 = [groupCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary2 librarySpecificFetchOptions];

  v79 = *MEMORY[0x1E6978D88];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v79 count:1];
  [librarySpecificFetchOptions setFetchPropertySets:v24];

  [librarySpecificFetchOptions setIncludedDetectionTypes:&unk_1F46E56C0];
  v60 = librarySpecificFetchOptions;
  v25 = [MEMORY[0x1E6978980] fetchPersonsInSocialGroup:groupCopy option:librarySpecificFetchOptions];
  v26 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v25, "count")}];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v27 = v25;
  v28 = [v27 countByEnumeratingWithState:&v69 objects:v78 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v70;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v70 != v30)
        {
          objc_enumerationMutation(v27);
        }

        objectID = [*(*(&v69 + 1) + 8 * i) objectID];
        [v26 addObject:objectID];
      }

      v29 = [v27 countByEnumeratingWithState:&v69 objects:v78 count:16];
    }

    while (v29);
  }

  v64 = optionsCopy;

  v33 = MEMORY[0x1E6978830];
  v65 = groupCopy;
  photoLibrary3 = [groupCopy photoLibrary];
  v35 = [v33 fetchOptionsWithPhotoLibrary:photoLibrary3 orObject:0];

  [v35 setIncludedDetectionTypes:&unk_1F46E56D8];
  v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"personForFace", v26];
  [v35 setInternalPredicate:v36];

  v37 = v58;
  v38 = os_signpost_id_generate(v37);
  v68 = 0;
  mach_timebase_info(&v68);
  v39 = v37;
  v40 = v39;
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v39))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v40, OS_SIGNPOST_INTERVAL_BEGIN, v38, "fetchFacesGroupedByAsset", "", buf, 2u);
  }

  v41 = mach_absolute_time();
  v42 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v66 options:v35];
  v43 = mach_absolute_time();
  numer = v68.numer;
  denom = v68.denom;
  v46 = v40;
  v47 = v46;
  if (v38 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v47, OS_SIGNPOST_INTERVAL_END, v38, "fetchFacesGroupedByAsset", "", buf, 2u);
  }

  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v75 = "fetchFacesGroupedByAsset";
    v76 = 2048;
    v77 = ((((v43 - v41) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v47, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v48 = [selfCopy _assetObjectIDsFromClusters:v61 facesByAssetIdentifiers:v42 includeExtraAssets:{v59 - objc_msgSend(v61, "count")}];
  v49 = [MEMORY[0x1E6978630] fetchAssetsWithObjectIDs:v48 options:fetchOptions];
  v50 = mach_absolute_time();
  v52 = info.numer;
  v51 = info.denom;
  v53 = v47;
  v54 = v53;
  if (v62 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v53))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v54, OS_SIGNPOST_INTERVAL_END, spid, "fetchMovieAssetsForSocialGroup", "", buf, 2u);
  }

  if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v75 = "fetchMovieAssetsForSocialGroup";
    v76 = 2048;
    v77 = ((((v50 - v57) * v52) / v51) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v54, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v49;
}

+ (id)fetchMovieAssetsForPerson:(id)person options:(id)options
{
  v65[3] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  personCopy = person;
  selfCopy = self;
  _logger = [self _logger];
  v9 = os_signpost_id_generate(_logger);
  info = 0;
  mach_timebase_info(&info);
  v10 = _logger;
  v11 = v10;
  v53 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "fetchMovieAssetsForPerson", "", buf, 2u);
  }

  spid = v9;

  v51 = mach_absolute_time();
  v55 = optionsCopy;
  fetchOptions = [optionsCopy fetchOptions];
  v13 = [fetchOptions copy];
  [v13 setSortDescriptors:0];
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:1];
  v65[0] = v14;
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:1];
  v65[1] = v15;
  v16 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v65[2] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
  [v13 setInternalSortDescriptors:v17];

  [v13 setFetchLimit:0];
  v18 = [PNPersonCurationWrapper fetchCuratedAssetsForPerson:personCopy options:v13];
  v54 = fetchOptions;
  v19 = [selfCopy _maximumNumberOfClustersForCuratedAssetCount:objc_msgSend(v18 fetchLimit:{"count"), objc_msgSend(fetchOptions, "fetchLimit")}];
  fetchedObjects = [v18 fetchedObjects];
  photoLibrary = [personCopy photoLibrary];
  v52 = v19;
  v56 = [selfCopy _timeBasedAssetClustersForAssets:fetchedObjects maximumClusterCount:v19 photoLibrary:photoLibrary];

  v22 = MEMORY[0x1E6978830];
  photoLibrary2 = [personCopy photoLibrary];
  v24 = [v22 fetchOptionsWithPhotoLibrary:photoLibrary2 orObject:0];

  v64 = *MEMORY[0x1E6978D88];
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v64 count:1];
  [v24 setFetchPropertySets:v25];

  [v24 setIncludedDetectionTypes:&unk_1F46E56A8];
  v26 = MEMORY[0x1E696AE18];
  objectID = [personCopy objectID];

  v28 = [v26 predicateWithFormat:@"%K = %@", @"personForFace", objectID];
  [v24 setInternalPredicate:v28];

  v29 = v11;
  v30 = os_signpost_id_generate(v29);
  v58 = 0;
  mach_timebase_info(&v58);
  v31 = v29;
  v32 = v31;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v32, OS_SIGNPOST_INTERVAL_BEGIN, v30, "fetchFacesGroupedByAsset", "", buf, 2u);
  }

  v33 = mach_absolute_time();
  v34 = [MEMORY[0x1E69787C8] fetchFacesGroupedByAssetLocalIdentifierForAssets:v18 options:v24];
  v35 = mach_absolute_time();
  numer = v58.numer;
  denom = v58.denom;
  v38 = v32;
  v39 = v38;
  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v39, OS_SIGNPOST_INTERVAL_END, v30, "fetchFacesGroupedByAsset", "", buf, 2u);
  }

  if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v61 = "fetchFacesGroupedByAsset";
    v62 = 2048;
    v63 = ((((v35 - v33) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v39, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v40 = [selfCopy _assetObjectIDsFromClusters:v56 facesByAssetIdentifiers:v34 includeExtraAssets:{v52 - objc_msgSend(v56, "count")}];
  v41 = MEMORY[0x1E6978630];
  fetchOptions2 = [v55 fetchOptions];
  v43 = [v41 fetchAssetsWithObjectIDs:v40 options:fetchOptions2];

  v44 = mach_absolute_time();
  v46 = info.numer;
  v45 = info.denom;
  v47 = v39;
  v48 = v47;
  if (v53 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v47))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v48, OS_SIGNPOST_INTERVAL_END, spid, "fetchMovieAssetsForPerson", "", buf, 2u);
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v61 = "fetchMovieAssetsForPerson";
    v62 = 2048;
    v63 = ((((v44 - v51) * v46) / v45) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v48, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v43;
}

@end