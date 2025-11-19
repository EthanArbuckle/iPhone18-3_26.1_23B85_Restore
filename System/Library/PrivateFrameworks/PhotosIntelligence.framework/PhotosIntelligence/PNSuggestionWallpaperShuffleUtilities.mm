@interface PNSuggestionWallpaperShuffleUtilities
+ (BOOL)_anyArrayNonEmpty:(id)a3;
+ (id)_bucketizeAssetByLayoutVariant:(id)a3 classification:(unint64_t)a4;
+ (id)_largestBucketExcluding:(id)a3 fromBuckets:(id)a4;
+ (id)allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration:(id)a3 fromSuggestionLocalIdentifiersByFeature:(id)a4 withRejectedPersonLocalIdentifiers:(id)a5;
+ (id)allPotentialSuggestionLocalIdentifiersForPosterConfiguration:(id)a3 fromSuggestionLocalIdentifiersByFeature:(id)a4 withRejectedPersonLocalIdentifiers:(id)a5;
+ (id)chosenSuggestionLocalIdentifiersForPosterConfiguration:(id)a3 fromSuggestionLocalIdentifiersByFeature:(id)a4 atDate:(id)a5 usingStrategy:(unint64_t)a6 withRejectedPersonLocalIdentifiers:(id)a7;
+ (id)chosenSuggestionLocalIdentifiersFromGroups:(id)a3 atDate:(id)a4;
+ (id)chosenSuggestionLocalIdentifiersIn:(id)a3 atDate:(id)a4;
+ (id)chosenSuggestionsForPosterConfiguration:(id)a3 atDate:(id)a4 inPhotoLibrary:(id)a5;
+ (id)interleaveOrderingOfSuggestionsByBucket:(id)a3;
+ (id)matchingSuggestionInternalPredicateForPosterConfiguration:(id)a3;
+ (id)mediaFromSuggestions:(id)a3 assetBySuggestionUUID:(id *)a4;
+ (id)orderSuggestionsBasedOnLayoutVariant:(id)a3;
+ (id)suggestionLocalIdentifiersByFeatureForPosterConfiguration:(id)a3 atDate:(id)a4 inPhotoLibrary:(id)a5;
+ (void)enumerateFeaturesOfPosterConfiguration:(id)a3 withRejectedPersonLocalIdentifiers:(id)a4 usingBlock:(id)a5;
+ (void)setFeaturedStateOfSuggestions:(id)a3;
@end

@implementation PNSuggestionWallpaperShuffleUtilities

+ (id)_largestBucketExcluding:(id)a3 fromBuckets:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v6 && [v6 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = v7;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = *v21;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v8);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v8 objectForKeyedSubscript:v15];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && (![v15 isEqualToString:v5] || !objc_msgSend(v16, "count")) && objc_msgSend(v16, "count") > v12)
          {
            v12 = [v16 count];
            v17 = v15;

            v11 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    v7 = v19;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)_anyArrayNonEmpty:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a3 allValues];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }

        if ([v8 count])
        {
          LOBYTE(v4) = 1;
          goto LABEL_14;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v4;
}

+ (id)interleaveOrderingOfSuggestionsByBucket:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__PNSuggestionWallpaperShuffleUtilities_interleaveOrderingOfSuggestionsByBucket___block_invoke;
    v20[3] = &unk_1E82A2300;
    v7 = v6;
    v21 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v20];
    v8 = [MEMORY[0x1E695DF70] array];
    if ([a1 _anyArrayNonEmpty:v7])
    {
      v10 = 0;
      *&v9 = 138412546;
      v19 = v9;
      while (1)
      {
        v11 = [a1 _largestBucketExcluding:v10 fromBuckets:{v7, v19}];

        if (!v11)
        {
          v11 = v10;
        }

        v12 = [v7 objectForKeyedSubscript:v11];
        if (!v12)
        {
          break;
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || ![v12 count])
        {
          break;
        }

        v13 = [v12 firstObject];
        [v8 addObject:v13];
        [v12 removeObjectAtIndex:0];
        v11 = v11;

        v14 = PLWallpaperGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          v15 = [v13 uuid];
          *buf = v19;
          v23 = v15;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEBUG, "[PNSuggestionWallpaperShuffleUtilities] orderSuggestionsBasedOnLayoutVariant - After Ordering. Suggestion: %@. Layout Variant: %@. ", buf, 0x16u);
        }

        v10 = v11;
        if (([a1 _anyArrayNonEmpty:v7] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      v17 = PLWallpaperGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v23 = v11;
        _os_log_impl(&dword_1C6F5C000, v17, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] orderSuggestionsBasedOnLayoutVariant - selectedSuggestions was nil, wrong type, or empty. Bucket: %@", buf, 0xCu);
      }

      v16 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v11 = 0;
LABEL_16:
      v16 = [v8 copy];
      v10 = v11;
    }
  }

  else
  {
    v16 = MEMORY[0x1E695E0F0];
  }

  return v16;
}

void __81__PNSuggestionWallpaperShuffleUtilities_interleaveOrderingOfSuggestionsByBucket___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 mutableCopy];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

+ (id)_bucketizeAssetByLayoutVariant:(id)a3 classification:(unint64_t)a4
{
  v5 = a3;
  v6 = [[PNWallpaperCropResult alloc] initWithAsset:v5 classification:a4 headroomFeasible:a4 - 1 < 2];
  v7 = [(PNWallpaperCropResult *)v6 portraitCrop];
  v8 = [v7 layoutVariant];

  v9 = @"other";
  if (v8 == 3)
  {
    v9 = @"static";
  }

  if (v8 == 2)
  {
    v10 = @"adaptive";
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (id)orderSuggestionsBasedOnLayoutVariant:(id)a3
{
  v51 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = [v5 firstObject];
    v8 = [v7 photoLibrary];

    v9 = objc_alloc(MEMORY[0x1E69788E0]);
    v10 = [v9 initWithObjects:v5 photoLibrary:v8 fetchType:*MEMORY[0x1E6978DE0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    v32 = v8;
    v30 = [v8 librarySpecificFetchOptions];
    v31 = v10;
    v11 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:v10 options:?];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v33 = v5;
    obj = v5;
    v37 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
    if (v37)
    {
      v36 = *v39;
      v34 = v11;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v39 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v38 + 1) + 8 * i);
          v14 = [v13 uuid];
          v15 = [v11 objectForKeyedSubscript:v14];

          v16 = [a1 _bucketizeAssetByLayoutVariant:v15 classification:{+[PNSuggestionWallpaperUtilities posterClassificationForSuggestionSubtype:](PNSuggestionWallpaperUtilities, "posterClassificationForSuggestionSubtype:", objc_msgSend(v13, "subtype"))}];
          v17 = [v6 objectForKeyedSubscript:v16];
          if (!v17)
          {
            v17 = [MEMORY[0x1E695DF70] array];
            [v6 setObject:v17 forKeyedSubscript:v16];
          }

          [v17 addObject:v13];
          v18 = PLWallpaperGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            v19 = [v13 uuid];
            v20 = PFPosterClassificationName();
            [v15 uuid];
            v21 = a1;
            v23 = v22 = v6;
            *buf = 138413058;
            v43 = v19;
            v44 = 2112;
            v45 = v16;
            v46 = 2112;
            v47 = v20;
            v48 = 2112;
            v49 = v23;
            _os_log_impl(&dword_1C6F5C000, v18, OS_LOG_TYPE_DEBUG, "[PNSuggestionWallpaperShuffleUtilities] orderSuggestionsBasedOnLayoutVariant - Before Ordering. Suggestion: %@. Layout Variant: %@. Subtype: %@. Asset: %@.", buf, 0x2Au);

            v6 = v22;
            a1 = v21;
            v11 = v34;
          }
        }

        v37 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v37);
    }

    v24 = [a1 interleaveOrderingOfSuggestionsByBucket:v6];
    v25 = [obj count];
    v26 = [v24 count];
    v27 = v24;
    if (v25 != v26)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperShuffleUtilities] orderSuggestionsBasedOnLayoutVariant - Failed to order given suggestions. Return the suggestions in the original order.", buf, 2u);
      }

      v27 = obj;
    }

    v28 = v27;

    v5 = v33;
  }

  else
  {
    v28 = v5;
  }

  return v28;
}

+ (void)setFeaturedStateOfSuggestions:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PNSuggestionWallpaperShuffleUtilities_setFeaturedStateOfSuggestions___block_invoke;
  v9[3] = &unk_1E82A2730;
  v5 = v3;
  v10 = v5;
  v8 = 0;
  v6 = [v4 performChangesAndWait:v9 error:&v8];
  v7 = v8;
  if ((v6 & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v12 = v7;
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set featuredState for suggestions error:%@", buf, 0xCu);
  }
}

void __71__PNSuggestionWallpaperShuffleUtilities_setFeaturedStateOfSuggestions___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{*(*(&v7 + 1) + 8 * v5), v7}];
        [v6 setFeaturedState:1];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

+ (id)mediaFromSuggestions:(id)a3 assetBySuggestionUUID:(id *)a4
{
  v31[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = [v4 photoLibrary];
  v5 = [v23 librarySpecificFetchOptions];
  v6 = *MEMORY[0x1E6978C90];
  v31[0] = *MEMORY[0x1E6978C68];
  v31[1] = v6;
  v31[2] = *MEMORY[0x1E6978CF0];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  [v5 setFetchPropertySets:v7];

  v22 = v5;
  v8 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:v4 options:v5];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v4;
  v10 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v27;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 uuid];
        v16 = [v8 objectForKeyedSubscript:v15];
        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x1E69C0818]);
          v18 = [v16 uuid];
          v19 = [v17 initWithAssetUUID:v18 suggestionUUID:v15 suggestionSubtype:{objc_msgSend(v14, "subtype")}];

          [v9 addObject:v19];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  if (a4)
  {
    v20 = v8;
    *a4 = v8;
  }

  return v9;
}

+ (id)chosenSuggestionsForPosterConfiguration:(id)a3 atDate:(id)a4 inPhotoLibrary:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 suggestionLocalIdentifiersByFeatureForPosterConfiguration:v10 atDate:v9 inPhotoLibrary:v8];
  v12 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:v8];
  v13 = [v12 personUUIDsWithNegativeFeedback];
  v14 = [a1 chosenSuggestionLocalIdentifiersForPosterConfiguration:v10 fromSuggestionLocalIdentifiersByFeature:v11 atDate:v9 usingStrategy:0 withRejectedPersonLocalIdentifiers:v13];

  v15 = [v8 librarySpecificFetchOptions];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"localIdentifier", v14];
  [v15 setPredicate:v16];

  v17 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v15];

  return v17;
}

+ (id)chosenSuggestionLocalIdentifiersFromGroups:(id)a3 atDate:(id)a4
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v7)
  {
    goto LABEL_16;
  }

  v8 = v7;
  v9 = 0;
  v10 = *v24;
  do
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v24 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v9 += [*(*(&v23 + 1) + 8 * i) count];
    }

    v8 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);
  if (v9)
  {
    v12 = [v5 count];
    if (v9 >= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v9;
    }

    [v6 timeIntervalSinceReferenceDate];
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v16 count] < v13)
    {
      v17 = v13 * (v15 / 86400.0) % v9;
      do
      {
        v18 = [v5 objectAtIndexedSubscript:v17 % v12];
        v19 = [v18 objectAtIndexedSubscript:{v17 / v12 % objc_msgSend(v18, "count")}];
        [v16 addObject:v19];

        ++v17;
      }

      while ([v16 count] < v13);
    }

    v20 = [v16 allObjects];
    v21 = [v20 sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
LABEL_16:
    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

+ (id)chosenSuggestionLocalIdentifiersIn:(id)a3 atDate:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v5 count];
  if (v7)
  {
    v8 = v7;
    if (v7 >= 0x10)
    {
      v9 = 16;
    }

    else
    {
      v9 = v7;
    }

    [v6 timeIntervalSinceReferenceDate];
    v11 = v9 * (v10 / 86400.0) % v8;
    if (v11 >= v8 - v9)
    {
      v13 = v8 - v11;
      v14 = [v5 subarrayWithRange:?];
      v15 = [v5 subarrayWithRange:{0, v9 - v13}];
      v12 = [v14 arrayByAddingObjectsFromArray:v15];
    }

    else
    {
      v12 = [v5 subarrayWithRange:?];
    }

    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v18 = 138412290;
      v19 = v12;
      _os_log_impl(&dword_1C6F5C000, v16, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] Chosen suggestion localIdentifiers: %@", &v18, 0xCu);
    }
  }

  else
  {
    v12 = MEMORY[0x1E695E0F0];
  }

  return v12;
}

+ (id)allPotentialSuggestionLocalIdentifiersForPosterConfiguration:(id)a3 fromSuggestionLocalIdentifiersByFeature:(id)a4 withRejectedPersonLocalIdentifiers:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x1E695DF70];
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __177__PNSuggestionWallpaperShuffleUtilities_allPotentialSuggestionLocalIdentifiersForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_withRejectedPersonLocalIdentifiers___block_invoke;
  v21 = &unk_1E82A20A0;
  v22 = v8;
  v13 = v12;
  v23 = v13;
  v14 = v8;
  [a1 enumerateFeaturesOfPosterConfiguration:v11 withRejectedPersonLocalIdentifiers:v10 usingBlock:&v18];

  [v13 sortUsingSelector:{sel_compare_, v18, v19, v20, v21}];
  v15 = v23;
  v16 = v13;

  return v13;
}

void __177__PNSuggestionWallpaperShuffleUtilities_allPotentialSuggestionLocalIdentifiersForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_withRejectedPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    [*(a1 + 40) addObjectsFromArray:v4];
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109378;
      v6[1] = [v4 count];
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1C6F5C000, v5, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] Adding %d suggestions for feature '%@'", v6, 0x12u);
    }
  }
}

+ (id)allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration:(id)a3 fromSuggestionLocalIdentifiersByFeature:(id)a4 withRejectedPersonLocalIdentifiers:(id)a5
{
  v8 = a4;
  v9 = MEMORY[0x1E695DF70];
  v10 = a5;
  v11 = a3;
  v12 = objc_alloc_init(v9);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __182__PNSuggestionWallpaperShuffleUtilities_allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_withRejectedPersonLocalIdentifiers___block_invoke;
  v18[3] = &unk_1E82A20A0;
  v19 = v8;
  v13 = v12;
  v20 = v13;
  v14 = v8;
  [a1 enumerateFeaturesOfPosterConfiguration:v11 withRejectedPersonLocalIdentifiers:v10 usingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __182__PNSuggestionWallpaperShuffleUtilities_allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_withRejectedPersonLocalIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) objectForKeyedSubscript:v3];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
    v5 = PLWallpaperGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6[0] = 67109378;
      v6[1] = [v4 count];
      v7 = 2112;
      v8 = v3;
      _os_log_impl(&dword_1C6F5C000, v5, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] Adding %d suggestions for feature '%@'", v6, 0x12u);
    }
  }
}

+ (void)enumerateFeaturesOfPosterConfiguration:(id)a3 withRejectedPersonLocalIdentifiers:(id)a4 usingBlock:(id)a5
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 shuffleSmartAlbums];
  v11 = v10;
  if ((v10 & 2) == 0)
  {
    if ((v10 & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = PHSuggestionStringWithSubtype();
    v9[2](v9, v17);

    if ((v11 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = PHSuggestionStringWithSubtype();
  v9[2](v9, v16);

  if ((v11 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v11 & 8) != 0)
  {
LABEL_4:
    v12 = PHSuggestionStringWithSubtype();
    v9[2](v9, v12);
  }

LABEL_5:
  v13 = [v7 personLocalIdentifiers];
  v14 = v13;
  if ((v11 & 1) != 0 && [v13 count])
  {
    if ((v11 & 0xE) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v14 isSubsetOfSet:v8];
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v14;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        v22 = 0;
        do
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v34 + 1) + 8 * v22);
          if ((v15 & 1) != 0 || ([v8 containsObject:*(*(&v34 + 1) + 8 * v22)] & 1) == 0)
          {
            v9[2](v9, v23);
          }

          ++v22;
        }

        while (v20 != v22);
        v20 = [v18 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v20);
    }

    v14 = v29;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v24 = [v7 albumCloudIdentifiers];
  v25 = [v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v31;
    do
    {
      v28 = 0;
      do
      {
        if (*v31 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v9[2](v9, *(*(&v30 + 1) + 8 * v28++));
      }

      while (v26 != v28);
      v26 = [v24 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v26);
  }
}

+ (id)chosenSuggestionLocalIdentifiersForPosterConfiguration:(id)a3 fromSuggestionLocalIdentifiersByFeature:(id)a4 atDate:(id)a5 usingStrategy:(unint64_t)a6 withRejectedPersonLocalIdentifiers:(id)a7
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = PLWallpaperGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = v12;
    _os_log_impl(&dword_1C6F5C000, v16, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] choosing suggestions for configuration %@", &v21, 0xCu);
  }

  if (a6 == 1)
  {
    v17 = [a1 allPotentialSuggestionLocalIdentifiersForPosterConfiguration:v12 fromSuggestionLocalIdentifiersByFeature:v13 withRejectedPersonLocalIdentifiers:v15];
    v18 = [a1 chosenSuggestionLocalIdentifiersIn:v17 atDate:v14];
    goto LABEL_7;
  }

  if (!a6)
  {
    v17 = [a1 allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration:v12 fromSuggestionLocalIdentifiersByFeature:v13 withRejectedPersonLocalIdentifiers:v15];
    v18 = [a1 chosenSuggestionLocalIdentifiersFromGroups:v17 atDate:v14];
LABEL_7:
    v19 = v18;

    goto LABEL_9;
  }

  v19 = 0;
LABEL_9:

  return v19;
}

+ (id)suggestionLocalIdentifiersByFeatureForPosterConfiguration:(id)a3 atDate:(id)a4 inPhotoLibrary:(id)a5
{
  v70[2] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v50 = a4;
  v9 = a5;
  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v69 = v8;
    _os_log_impl(&dword_1C6F5C000, v10, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] fetching suggestions for poster configuration %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [a1 matchingSuggestionInternalPredicateForPosterConfiguration:v8];
  v48 = v51 = v9;
  if (v48)
  {
    v12 = v8;
    v13 = [v9 librarySpecificFetchOptions];
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
    v70[0] = v15;
    v70[1] = v48;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v17 = [v14 andPredicateWithSubpredicates:v16];
    [v13 setInternalPredicate:v17];

    v18 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v13];
    v19 = PLWallpaperGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = [v18 count];
      *buf = 67109378;
      *v69 = v20;
      *&v69[4] = 2112;
      *&v69[6] = v18;
      _os_log_impl(&dword_1C6F5C000, v19, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] Found %d suggestions: %@", buf, 0x12u);
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v21 = v18;
    v22 = [v21 countByEnumeratingWithState:&v61 objects:v67 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v62;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v62 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v61 + 1) + 8 * i);
          if ([v26 subtype] == 652)
          {
            [v26 context];
          }

          else
          {
            [v26 subtype];
            PHSuggestionStringWithSubtype();
          }
          v27 = ;
          v28 = [v11 objectForKeyedSubscript:v27];
          if (!v28)
          {
            v28 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v11 setObject:v28 forKeyedSubscript:v27];
          }

          v29 = [v26 localIdentifier];
          [v28 addObject:v29];
        }

        v23 = [v21 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v23);
    }

    v8 = v12;
    v9 = v51;
  }

  v52 = v11;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47 = v8;
  obj = [v8 albumCloudIdentifiers];
  v30 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v58;
    p_name = &PNAssetElectionOptions__classData.name;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v58 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v35 = *(*(&v57 + 1) + 8 * j);
        v36 = [p_name + 150 shuffleUserAlbumForCloudIdentifier:v35 photoLibrary:v9];
        if (v36)
        {
          v37 = [objc_alloc((p_name + 150)) initWithAssetCollection:v36 photoLibrary:v9];
          v38 = [v37 updateSuggestionsForDate:v50 numberOfSuggestions:16];
        }

        else
        {
          v38 = 0;
        }

        v39 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v38, "count")}];
        [v52 setObject:v39 forKeyedSubscript:v35];
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v40 = v38;
        v41 = [v40 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v41)
        {
          v42 = v41;
          v43 = *v54;
          do
          {
            for (k = 0; k != v42; ++k)
            {
              if (*v54 != v43)
              {
                objc_enumerationMutation(v40);
              }

              v45 = [*(*(&v53 + 1) + 8 * k) localIdentifier];
              [v39 addObject:v45];
            }

            v42 = [v40 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v42);
        }

        v9 = v51;
        p_name = (&PNAssetElectionOptions__classData + 24);
      }

      v31 = [obj countByEnumeratingWithState:&v57 objects:v66 count:16];
    }

    while (v31);
  }

  [v52 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_1495];

  return v52;
}

void __121__PNSuggestionWallpaperShuffleUtilities_suggestionLocalIdentifiersByFeatureForPosterConfiguration_atDate_inPhotoLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  [v5 sortUsingSelector:sel_compare_];
  v6 = PLWallpaperGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7[0] = 67109378;
    v7[1] = [v5 count];
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] Found %d suggestions for '%@'", v7, 0x12u);
  }
}

+ (id)matchingSuggestionInternalPredicateForPosterConfiguration:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v5 = [v3 personLocalIdentifiers];
  if ([v5 count])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K IN %@", @"subtype", 652, @"suggestionContext", v5];
    [v4 addObject:v6];
  }

  v7 = [v3 shuffleSmartAlbums];
  v8 = v7;
  if ((v7 & 2) != 0)
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 653];
    [v4 addObject:v11];

    if ((v8 & 4) == 0)
    {
LABEL_5:
      if ((v8 & 8) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_5;
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 654];
  [v4 addObject:v12];

  if ((v8 & 8) != 0)
  {
LABEL_6:
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"subtype", 655];
    [v4 addObject:v9];
  }

LABEL_7:
  if ([v4 count])
  {
    v10 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v4];
  }

  else
  {
    v10 = 0;
  }

  v13 = PLWallpaperGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = [v10 predicateFormat];
    *buf = 138412290;
    v17 = v14;
    _os_log_impl(&dword_1C6F5C000, v13, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] matchingSuggestionPredicate: %@", buf, 0xCu);
  }

  return v10;
}

@end