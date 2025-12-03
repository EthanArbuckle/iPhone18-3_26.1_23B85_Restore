@interface PNSuggestionWallpaperShuffleUtilities
+ (BOOL)_anyArrayNonEmpty:(id)empty;
+ (id)_bucketizeAssetByLayoutVariant:(id)variant classification:(unint64_t)classification;
+ (id)_largestBucketExcluding:(id)excluding fromBuckets:(id)buckets;
+ (id)allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration:(id)configuration fromSuggestionLocalIdentifiersByFeature:(id)feature withRejectedPersonLocalIdentifiers:(id)identifiers;
+ (id)allPotentialSuggestionLocalIdentifiersForPosterConfiguration:(id)configuration fromSuggestionLocalIdentifiersByFeature:(id)feature withRejectedPersonLocalIdentifiers:(id)identifiers;
+ (id)chosenSuggestionLocalIdentifiersForPosterConfiguration:(id)configuration fromSuggestionLocalIdentifiersByFeature:(id)feature atDate:(id)date usingStrategy:(unint64_t)strategy withRejectedPersonLocalIdentifiers:(id)identifiers;
+ (id)chosenSuggestionLocalIdentifiersFromGroups:(id)groups atDate:(id)date;
+ (id)chosenSuggestionLocalIdentifiersIn:(id)in atDate:(id)date;
+ (id)chosenSuggestionsForPosterConfiguration:(id)configuration atDate:(id)date inPhotoLibrary:(id)library;
+ (id)interleaveOrderingOfSuggestionsByBucket:(id)bucket;
+ (id)matchingSuggestionInternalPredicateForPosterConfiguration:(id)configuration;
+ (id)mediaFromSuggestions:(id)suggestions assetBySuggestionUUID:(id *)d;
+ (id)orderSuggestionsBasedOnLayoutVariant:(id)variant;
+ (id)suggestionLocalIdentifiersByFeatureForPosterConfiguration:(id)configuration atDate:(id)date inPhotoLibrary:(id)library;
+ (void)enumerateFeaturesOfPosterConfiguration:(id)configuration withRejectedPersonLocalIdentifiers:(id)identifiers usingBlock:(id)block;
+ (void)setFeaturedStateOfSuggestions:(id)suggestions;
@end

@implementation PNSuggestionWallpaperShuffleUtilities

+ (id)_largestBucketExcluding:(id)excluding fromBuckets:(id)buckets
{
  v25 = *MEMORY[0x1E69E9840];
  excludingCopy = excluding;
  bucketsCopy = buckets;
  v7 = bucketsCopy;
  if (bucketsCopy && [bucketsCopy count])
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
          if ((objc_opt_isKindOfClass() & 1) != 0 && (![v15 isEqualToString:excludingCopy] || !objc_msgSend(v16, "count")) && objc_msgSend(v16, "count") > v12)
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

+ (BOOL)_anyArrayNonEmpty:(id)empty
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  allValues = [empty allValues];
  v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(allValues);
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

      v4 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
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

+ (id)interleaveOrderingOfSuggestionsByBucket:(id)bucket
{
  v26 = *MEMORY[0x1E69E9840];
  bucketCopy = bucket;
  v5 = bucketCopy;
  if (bucketCopy && [bucketCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __81__PNSuggestionWallpaperShuffleUtilities_interleaveOrderingOfSuggestionsByBucket___block_invoke;
    v20[3] = &unk_1E82A2300;
    v7 = dictionary;
    v21 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v20];
    array = [MEMORY[0x1E695DF70] array];
    if ([self _anyArrayNonEmpty:v7])
    {
      v10 = 0;
      *&v9 = 138412546;
      v19 = v9;
      while (1)
      {
        v11 = [self _largestBucketExcluding:v10 fromBuckets:{v7, v19}];

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

        firstObject = [v12 firstObject];
        [array addObject:firstObject];
        [v12 removeObjectAtIndex:0];
        v11 = v11;

        v14 = PLWallpaperGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          uuid = [firstObject uuid];
          *buf = v19;
          v23 = uuid;
          v24 = 2112;
          v25 = v11;
          _os_log_impl(&dword_1C6F5C000, v14, OS_LOG_TYPE_DEBUG, "[PNSuggestionWallpaperShuffleUtilities] orderSuggestionsBasedOnLayoutVariant - After Ordering. Suggestion: %@. Layout Variant: %@. ", buf, 0x16u);
        }

        v10 = v11;
        if (([self _anyArrayNonEmpty:v7] & 1) == 0)
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
      v16 = [array copy];
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

+ (id)_bucketizeAssetByLayoutVariant:(id)variant classification:(unint64_t)classification
{
  variantCopy = variant;
  v6 = [[PNWallpaperCropResult alloc] initWithAsset:variantCopy classification:classification headroomFeasible:classification - 1 < 2];
  portraitCrop = [(PNWallpaperCropResult *)v6 portraitCrop];
  layoutVariant = [portraitCrop layoutVariant];

  v9 = @"other";
  if (layoutVariant == 3)
  {
    v9 = @"static";
  }

  if (layoutVariant == 2)
  {
    v10 = @"adaptive";
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

+ (id)orderSuggestionsBasedOnLayoutVariant:(id)variant
{
  v51 = *MEMORY[0x1E69E9840];
  variantCopy = variant;
  v5 = variantCopy;
  if (variantCopy && [variantCopy count])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    firstObject = [v5 firstObject];
    photoLibrary = [firstObject photoLibrary];

    v9 = objc_alloc(MEMORY[0x1E69788E0]);
    v10 = [v9 initWithObjects:v5 photoLibrary:photoLibrary fetchType:*MEMORY[0x1E6978DE0] fetchPropertySets:0 identifier:0 registerIfNeeded:0];
    v32 = photoLibrary;
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
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
          uuid = [v13 uuid];
          v15 = [v11 objectForKeyedSubscript:uuid];

          v16 = [self _bucketizeAssetByLayoutVariant:v15 classification:{+[PNSuggestionWallpaperUtilities posterClassificationForSuggestionSubtype:](PNSuggestionWallpaperUtilities, "posterClassificationForSuggestionSubtype:", objc_msgSend(v13, "subtype"))}];
          array = [dictionary objectForKeyedSubscript:v16];
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
            [dictionary setObject:array forKeyedSubscript:v16];
          }

          [array addObject:v13];
          v18 = PLWallpaperGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
          {
            uuid2 = [v13 uuid];
            v20 = PFPosterClassificationName();
            [v15 uuid];
            selfCopy = self;
            v23 = v22 = dictionary;
            *buf = 138413058;
            v43 = uuid2;
            v44 = 2112;
            v45 = v16;
            v46 = 2112;
            v47 = v20;
            v48 = 2112;
            v49 = v23;
            _os_log_impl(&dword_1C6F5C000, v18, OS_LOG_TYPE_DEBUG, "[PNSuggestionWallpaperShuffleUtilities] orderSuggestionsBasedOnLayoutVariant - Before Ordering. Suggestion: %@. Layout Variant: %@. Subtype: %@. Asset: %@.", buf, 0x2Au);

            dictionary = v22;
            self = selfCopy;
            v11 = v34;
          }
        }

        v37 = [obj countByEnumeratingWithState:&v38 objects:v50 count:16];
      }

      while (v37);
    }

    v24 = [self interleaveOrderingOfSuggestionsByBucket:dictionary];
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

+ (void)setFeaturedStateOfSuggestions:(id)suggestions
{
  v13 = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  photoLibrary = [suggestionsCopy photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PNSuggestionWallpaperShuffleUtilities_setFeaturedStateOfSuggestions___block_invoke;
  v9[3] = &unk_1E82A2730;
  v5 = suggestionsCopy;
  v10 = v5;
  v8 = 0;
  v6 = [photoLibrary performChangesAndWait:v9 error:&v8];
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

+ (id)mediaFromSuggestions:(id)suggestions assetBySuggestionUUID:(id *)d
{
  v31[3] = *MEMORY[0x1E69E9840];
  suggestionsCopy = suggestions;
  photoLibrary = [suggestionsCopy photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v6 = *MEMORY[0x1E6978C90];
  v31[0] = *MEMORY[0x1E6978C68];
  v31[1] = v6;
  v31[2] = *MEMORY[0x1E6978CF0];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
  [librarySpecificFetchOptions setFetchPropertySets:v7];

  v22 = librarySpecificFetchOptions;
  v8 = [MEMORY[0x1E6978630] fetchKeyAssetBySuggestionUUIDForSuggestions:suggestionsCopy options:librarySpecificFetchOptions];
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = suggestionsCopy;
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
        uuid = [v14 uuid];
        v16 = [v8 objectForKeyedSubscript:uuid];
        if (v16)
        {
          v17 = objc_alloc(MEMORY[0x1E69C0818]);
          uuid2 = [v16 uuid];
          v19 = [v17 initWithAssetUUID:uuid2 suggestionUUID:uuid suggestionSubtype:{objc_msgSend(v14, "subtype")}];

          [v9 addObject:v19];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  if (d)
  {
    v20 = v8;
    *d = v8;
  }

  return v9;
}

+ (id)chosenSuggestionsForPosterConfiguration:(id)configuration atDate:(id)date inPhotoLibrary:(id)library
{
  libraryCopy = library;
  dateCopy = date;
  configurationCopy = configuration;
  v11 = [self suggestionLocalIdentifiersByFeatureForPosterConfiguration:configurationCopy atDate:dateCopy inPhotoLibrary:libraryCopy];
  v12 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:libraryCopy];
  personUUIDsWithNegativeFeedback = [v12 personUUIDsWithNegativeFeedback];
  v14 = [self chosenSuggestionLocalIdentifiersForPosterConfiguration:configurationCopy fromSuggestionLocalIdentifiersByFeature:v11 atDate:dateCopy usingStrategy:0 withRejectedPersonLocalIdentifiers:personUUIDsWithNegativeFeedback];

  librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"localIdentifier", v14];
  [librarySpecificFetchOptions setPredicate:v16];

  v17 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions];

  return v17;
}

+ (id)chosenSuggestionLocalIdentifiersFromGroups:(id)groups atDate:(id)date
{
  v28 = *MEMORY[0x1E69E9840];
  groupsCopy = groups;
  dateCopy = date;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = [groupsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
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
        objc_enumerationMutation(groupsCopy);
      }

      v9 += [*(*(&v23 + 1) + 8 * i) count];
    }

    v8 = [groupsCopy countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v8);
  if (v9)
  {
    v12 = [groupsCopy count];
    if (v9 >= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = v9;
    }

    [dateCopy timeIntervalSinceReferenceDate];
    v15 = v14;
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    if ([v16 count] < v13)
    {
      v17 = v13 * (v15 / 86400.0) % v9;
      do
      {
        v18 = [groupsCopy objectAtIndexedSubscript:v17 % v12];
        v19 = [v18 objectAtIndexedSubscript:{v17 / v12 % objc_msgSend(v18, "count")}];
        [v16 addObject:v19];

        ++v17;
      }

      while ([v16 count] < v13);
    }

    allObjects = [v16 allObjects];
    v21 = [allObjects sortedArrayUsingSelector:sel_compare_];
  }

  else
  {
LABEL_16:
    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

+ (id)chosenSuggestionLocalIdentifiersIn:(id)in atDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  inCopy = in;
  dateCopy = date;
  v7 = [inCopy count];
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

    [dateCopy timeIntervalSinceReferenceDate];
    v11 = v9 * (v10 / 86400.0) % v8;
    if (v11 >= v8 - v9)
    {
      v13 = v8 - v11;
      v14 = [inCopy subarrayWithRange:?];
      v15 = [inCopy subarrayWithRange:{0, v9 - v13}];
      v12 = [v14 arrayByAddingObjectsFromArray:v15];
    }

    else
    {
      v12 = [inCopy subarrayWithRange:?];
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

+ (id)allPotentialSuggestionLocalIdentifiersForPosterConfiguration:(id)configuration fromSuggestionLocalIdentifiersByFeature:(id)feature withRejectedPersonLocalIdentifiers:(id)identifiers
{
  featureCopy = feature;
  v9 = MEMORY[0x1E695DF70];
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  v12 = objc_alloc_init(v9);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __177__PNSuggestionWallpaperShuffleUtilities_allPotentialSuggestionLocalIdentifiersForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_withRejectedPersonLocalIdentifiers___block_invoke;
  v21 = &unk_1E82A20A0;
  v22 = featureCopy;
  v13 = v12;
  v23 = v13;
  v14 = featureCopy;
  [self enumerateFeaturesOfPosterConfiguration:configurationCopy withRejectedPersonLocalIdentifiers:identifiersCopy usingBlock:&v18];

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

+ (id)allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration:(id)configuration fromSuggestionLocalIdentifiersByFeature:(id)feature withRejectedPersonLocalIdentifiers:(id)identifiers
{
  featureCopy = feature;
  v9 = MEMORY[0x1E695DF70];
  identifiersCopy = identifiers;
  configurationCopy = configuration;
  v12 = objc_alloc_init(v9);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __182__PNSuggestionWallpaperShuffleUtilities_allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration_fromSuggestionLocalIdentifiersByFeature_withRejectedPersonLocalIdentifiers___block_invoke;
  v18[3] = &unk_1E82A20A0;
  v19 = featureCopy;
  v13 = v12;
  v20 = v13;
  v14 = featureCopy;
  [self enumerateFeaturesOfPosterConfiguration:configurationCopy withRejectedPersonLocalIdentifiers:identifiersCopy usingBlock:v18];

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

+ (void)enumerateFeaturesOfPosterConfiguration:(id)configuration withRejectedPersonLocalIdentifiers:(id)identifiers usingBlock:(id)block
{
  v40 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  identifiersCopy = identifiers;
  blockCopy = block;
  shuffleSmartAlbums = [configurationCopy shuffleSmartAlbums];
  v11 = shuffleSmartAlbums;
  if ((shuffleSmartAlbums & 2) == 0)
  {
    if ((shuffleSmartAlbums & 4) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = PHSuggestionStringWithSubtype();
    blockCopy[2](blockCopy, v17);

    if ((v11 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v16 = PHSuggestionStringWithSubtype();
  blockCopy[2](blockCopy, v16);

  if ((v11 & 4) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v11 & 8) != 0)
  {
LABEL_4:
    v12 = PHSuggestionStringWithSubtype();
    blockCopy[2](blockCopy, v12);
  }

LABEL_5:
  personLocalIdentifiers = [configurationCopy personLocalIdentifiers];
  v14 = personLocalIdentifiers;
  if ((v11 & 1) != 0 && [personLocalIdentifiers count])
  {
    if ((v11 & 0xE) != 0)
    {
      v15 = 0;
    }

    else
    {
      v15 = [v14 isSubsetOfSet:identifiersCopy];
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
          if ((v15 & 1) != 0 || ([identifiersCopy containsObject:*(*(&v34 + 1) + 8 * v22)] & 1) == 0)
          {
            blockCopy[2](blockCopy, v23);
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
  albumCloudIdentifiers = [configurationCopy albumCloudIdentifiers];
  v25 = [albumCloudIdentifiers countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(albumCloudIdentifiers);
        }

        blockCopy[2](blockCopy, *(*(&v30 + 1) + 8 * v28++));
      }

      while (v26 != v28);
      v26 = [albumCloudIdentifiers countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v26);
  }
}

+ (id)chosenSuggestionLocalIdentifiersForPosterConfiguration:(id)configuration fromSuggestionLocalIdentifiersByFeature:(id)feature atDate:(id)date usingStrategy:(unint64_t)strategy withRejectedPersonLocalIdentifiers:(id)identifiers
{
  v23 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  featureCopy = feature;
  dateCopy = date;
  identifiersCopy = identifiers;
  v16 = PLWallpaperGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v21 = 138412290;
    v22 = configurationCopy;
    _os_log_impl(&dword_1C6F5C000, v16, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] choosing suggestions for configuration %@", &v21, 0xCu);
  }

  if (strategy == 1)
  {
    v17 = [self allPotentialSuggestionLocalIdentifiersForPosterConfiguration:configurationCopy fromSuggestionLocalIdentifiersByFeature:featureCopy withRejectedPersonLocalIdentifiers:identifiersCopy];
    v18 = [self chosenSuggestionLocalIdentifiersIn:v17 atDate:dateCopy];
    goto LABEL_7;
  }

  if (!strategy)
  {
    v17 = [self allPotentialSuggestionLocalIdentifierGroupsForPosterConfiguration:configurationCopy fromSuggestionLocalIdentifiersByFeature:featureCopy withRejectedPersonLocalIdentifiers:identifiersCopy];
    v18 = [self chosenSuggestionLocalIdentifiersFromGroups:v17 atDate:dateCopy];
LABEL_7:
    v19 = v18;

    goto LABEL_9;
  }

  v19 = 0;
LABEL_9:

  return v19;
}

+ (id)suggestionLocalIdentifiersByFeatureForPosterConfiguration:(id)configuration atDate:(id)date inPhotoLibrary:(id)library
{
  v70[2] = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  dateCopy = date;
  libraryCopy = library;
  v10 = PLWallpaperGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    *v69 = configurationCopy;
    _os_log_impl(&dword_1C6F5C000, v10, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] fetching suggestions for poster configuration %@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [self matchingSuggestionInternalPredicateForPosterConfiguration:configurationCopy];
  v48 = v51 = libraryCopy;
  if (v48)
  {
    v12 = configurationCopy;
    librarySpecificFetchOptions = [libraryCopy librarySpecificFetchOptions];
    v14 = MEMORY[0x1E696AB28];
    v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
    v70[0] = v15;
    v70[1] = v48;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:2];
    v17 = [v14 andPredicateWithSubpredicates:v16];
    [librarySpecificFetchOptions setInternalPredicate:v17];

    v18 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
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

          localIdentifier = [v26 localIdentifier];
          [v28 addObject:localIdentifier];
        }

        v23 = [v21 countByEnumeratingWithState:&v61 objects:v67 count:16];
      }

      while (v23);
    }

    configurationCopy = v12;
    libraryCopy = v51;
  }

  v52 = v11;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v47 = configurationCopy;
  obj = [configurationCopy albumCloudIdentifiers];
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
        v36 = [p_name + 150 shuffleUserAlbumForCloudIdentifier:v35 photoLibrary:libraryCopy];
        if (v36)
        {
          v37 = [objc_alloc((p_name + 150)) initWithAssetCollection:v36 photoLibrary:libraryCopy];
          v38 = [v37 updateSuggestionsForDate:dateCopy numberOfSuggestions:16];
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

              localIdentifier2 = [*(*(&v53 + 1) + 8 * k) localIdentifier];
              [v39 addObject:localIdentifier2];
            }

            v42 = [v40 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v42);
        }

        libraryCopy = v51;
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

+ (id)matchingSuggestionInternalPredicateForPosterConfiguration:(id)configuration
{
  v18 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  personLocalIdentifiers = [configurationCopy personLocalIdentifiers];
  if ([personLocalIdentifiers count])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K IN %@", @"subtype", 652, @"suggestionContext", personLocalIdentifiers];
    [v4 addObject:v6];
  }

  shuffleSmartAlbums = [configurationCopy shuffleSmartAlbums];
  v8 = shuffleSmartAlbums;
  if ((shuffleSmartAlbums & 2) != 0)
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

  else if ((shuffleSmartAlbums & 4) == 0)
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
    predicateFormat = [v10 predicateFormat];
    *buf = 138412290;
    v17 = predicateFormat;
    _os_log_impl(&dword_1C6F5C000, v13, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperShuffleUtilities] matchingSuggestionPredicate: %@", buf, 0xCu);
  }

  return v10;
}

@end