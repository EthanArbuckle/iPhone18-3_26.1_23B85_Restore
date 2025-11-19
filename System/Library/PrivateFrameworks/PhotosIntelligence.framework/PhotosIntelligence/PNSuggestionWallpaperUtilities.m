@interface PNSuggestionWallpaperUtilities
+ (BOOL)_assetPassesFRCInstantPlayback:(id)a3;
+ (BOOL)_cacheExistsForAsset:(id)a3;
+ (BOOL)_updateAvailableFeatures:(unint64_t)a3 forSuggestions:(id)a4 toClear:(BOOL)a5;
+ (BOOL)hasAnyKnownPersonLocalIdentifierInPhotoLibrary:(id)a3;
+ (BOOL)wallpaperDemoModeEnabled;
+ (CGRect)bestWallpaperCropForAsset:(id)a3 classification:(unint64_t)a4 outputCropScore:(double *)a5 outputLayoutAcceptable:(BOOL *)a6;
+ (CGRect)bestWallpaperCropForAsset:(id)a3 classification:(unint64_t)a4 outputCropScore:(double *)a5 outputLayoutAcceptable:(BOOL *)a6 layoutConfiguration:(id)a7;
+ (CGRect)bestWallpaperCropForSuggestion:(id)a3 outputCropScore:(double *)a4 outputLayoutAcceptable:(BOOL *)a5;
+ (double)cropScoreWithAsset:(id)a3 classification:(unint64_t)a4 passesClockOverlap:(BOOL *)a5 cropZoomRatio:(double *)a6 orientation:(int64_t)a7;
+ (double)cropScoreWithAsset:(id)a3 classification:(unint64_t)a4 passesClockOverlap:(BOOL *)a5 headroomEngaged:(BOOL *)a6 cropZoomRatio:(double *)a7 adaptiveHeadroom:(double *)a8 maxClockShift:(double *)a9 notificationRoom:(double *)a10 layoutVariant:(unint64_t *)a11 orientation:(int64_t)a12 adaptiveCropRect:(CGRect *)a13 headroomFeasible:(BOOL)a14 withFaceRegions:(BOOL)a15;
+ (id)_coldStartPortraitWallpaperInPhotoLibrary:(id)a3 candidatePersons:(id)a4 passingFilterBlock:(id)a5 maximumNumberOfTries:(unint64_t)a6 targetCount:(unint64_t)a7;
+ (id)_facePredicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:(id)a3 deviceAspectRatio:(double)a4;
+ (id)_fetchMeContactIdentifier;
+ (id)_fetchSettlingEffectSuggestionKeyAssetsWithOptions:(id)a3;
+ (id)_fetchSuggestedMePersonLocalIdentifierInPhotoLibrary:(id)a3;
+ (id)_filterSuggestions:(id)a3 withSingleFeature:(unint64_t)a4 included:(BOOL)a5;
+ (id)_mePersonUUIDInPhotoLibrary:(id)a3;
+ (id)_mostRecentAssetDateInPhotoLibrary:(id)a3;
+ (id)_personFetchOptionsWithPhotoLibrary:(id)a3;
+ (id)_personNameForGalleryTitleFromSuggestion:(id)a3;
+ (id)_settlingEffectAssetFetchPropertySets;
+ (id)bestWallpaperCropForAsset:(id)a3 classification:(unint64_t)a4 layoutConfiguration:(id)a5 headroomFeasible:(BOOL)a6 withFaceRegions:(BOOL)a7;
+ (id)coldStartDeviceOwnerWallpaperInPhotoLibrary:(id)a3;
+ (id)coldStartPortraitWallpaperInPhotoLibrary:(id)a3 passingFilterBlock:(id)a4 maximumNumberOfTries:(unint64_t)a5;
+ (id)fetchFallbackMessagesBackdropSuggestionsInPhotoLibrary:(id)a3;
+ (id)fetchFeaturedGyroPosterSuggestionsFetchResultInPhotoLibrary:(id)a3 avoiding:(id)a4 limit:(id)a5;
+ (id)fetchGyroPosterSuggestionsInPhotoLibrary:(id)a3 limit:(id)a4;
+ (id)fetchKnownPersonLocalIdentifiersInPhotoLibrary:(id)a3 fetchLimit:(unint64_t)a4;
+ (id)fetchLivePhotoTabAssetsWithOptions:(id)a3;
+ (id)fetchLivePhotoTabHighlightCandidateAssetsWithOptions:(id)a3 excludeExistingWallpapers:(BOOL)a4 statistics:(id *)a5;
+ (id)fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:(id)a3 excludeExistingWallpapers:(BOOL)a4;
+ (id)fetchPersonLocalIdentifiersForSuggestionSubtype:(unsigned __int16)a3 photoLibrary:(id)a4;
+ (id)fetchPersonLocalIdentifiersForSuggestionSubtypes:(id)a3 photoLibrary:(id)a4;
+ (id)fetchPortraitAssetsWithOptions:(id)a3;
+ (id)fetchSettlingEffectSuggestionsInPhotoLibrary:(id)a3;
+ (id)fetchSettlingEffectSuggestionsWithOptions:(id)a3;
+ (id)fetchSharedWithYouMessagesBackdropSuggestionsInPhotoLibrary:(id)a3;
+ (id)fetchWallpaperGallerySuggestionsInPhotoLibrary:(id)a3;
+ (id)filterMessagesBackdropSuggestions:(id)a3 fallback:(BOOL)a4;
+ (id)internalPredicateForSuggestionFetchExcludingAvailableFeatures:(unint64_t)a3;
+ (id)internalPredicateForSuggestionFetchIncludingAvailableFeatures:(unint64_t)a3;
+ (id)knownPersonLocalIdentifiersInPhotoLibrary:(id)a3;
+ (id)predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:(id)a3;
+ (id)predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:(id)a3 deviceAspectRatio:(double)a4;
+ (id)randomNumberGeneratorForWallpaperDonation;
+ (id)randomNumberGeneratorForWallpaperDonationWithDate:(id)a3;
+ (id)randomizedSuggestionsFromSuggestions:(id)a3 limit:(unint64_t)a4;
+ (id)settlingEffectAssetInternalSortDescriptors;
+ (id)sortDescriptorsForMessagesBackdropSuggestionDeduping;
+ (id)sortedDedupedCandidatesFromCandidates:(id)a3 sortDescriptors:(id)a4 timeIntervalForCandidateDeduping:(double)a5 targetNumberOfSuggestions:(unint64_t)a6 maximumTimeIntervalReductionFactor:(unint64_t)a7;
+ (id)wallpaperCroppingDebugKeyValuePairsForAsset:(id)a3 withFaceRegions:(BOOL)a4 headroomFeasible:(BOOL)a5;
+ (id)wallpaperGalleryFeaturedPhotoSortedSuggestionsFromSuggestions:(id)a3;
+ (id)wallpaperGalleryPosterTitleForSuggestion:(id)a3 withAsset:(id)a4;
+ (id)wallpaperGalleryPosterTitleFromPlaceNames:(id)a3 personName:(id)a4 isLocatedAtHome:(BOOL)a5;
+ (id)wallpaperGallerySmartAlbumSuggestionsFromSuggestions:(id)a3;
+ (id)wallpaperPeopleLocalIdentifiersInPhotoLibrary:(id)a3 vipOnly:(BOOL)a4;
+ (int64_t)primaryOrientation;
+ (unint64_t)_settlingEffectVideoDecisionForAsset:(id)a3;
+ (unint64_t)posterClassificationForMedia:(id)a3 descriptorType:(int64_t)a4;
+ (unint64_t)posterClassificationForSuggestionMedia:(id)a3;
+ (unint64_t)posterClassificationForSuggestionSubtype:(unsigned __int16)a3;
+ (void)rejectWallpaperSuggestions:(id)a3 completionHandler:(id)a4;
+ (void)rejectWallpaperSuggestionsUsingAsset:(id)a3 completionHandler:(id)a4;
+ (void)rejectWallpaperSuggestionsUsingAssetOfSuggestion:(id)a3 completionHandler:(id)a4;
@end

@implementation PNSuggestionWallpaperUtilities

+ (id)internalPredicateForSuggestionFetchIncludingAvailableFeatures:(unint64_t)a3
{
  v3 = static PNSuggestionWallpaperUtilities.internalPredicateForSuggestionFetch(including:)(a3);

  return v3;
}

+ (id)internalPredicateForSuggestionFetchExcludingAvailableFeatures:(unint64_t)a3
{
  v3 = static PNSuggestionWallpaperUtilities.internalPredicateForSuggestionFetch(excluding:)(a3);

  return v3;
}

+ (id)fetchFeaturedGyroPosterSuggestionsFetchResultInPhotoLibrary:(id)a3 avoiding:(id)a4 limit:(id)a5
{
  if (a4)
  {
    v7 = sub_1C7550F8C();
  }

  else
  {
    v7 = 0;
  }

  swift_getObjCClassMetadata();
  v8 = a3;
  v9 = a5;
  v10 = static PNSuggestionWallpaperUtilities.fetchFeaturedGyroPosterSuggestionsFetchResult(in:avoiding:limit:)(v8, v7, a5);

  return v10;
}

+ (id)fetchGyroPosterSuggestionsInPhotoLibrary:(id)a3 limit:(id)a4
{
  swift_getObjCClassMetadata();
  v6 = a3;
  v7 = a4;
  v8 = static PNSuggestionWallpaperUtilities.fetchGyroPosterSuggestions(in:limit:)(v6, a4);

  return v8;
}

+ (id)filterMessagesBackdropSuggestions:(id)a3 fallback:(BOOL)a4
{
  sub_1C728D40C();
  v5 = sub_1C7550B5C();
  swift_getObjCClassMetadata();
  static PNSuggestionWallpaperUtilities.filterMessagesBackdropSuggestions(_:fallback:)(v5, a4);

  v6 = sub_1C7550B3C();

  return v6;
}

+ (id)fetchFallbackMessagesBackdropSuggestionsInPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = static PNSuggestionWallpaperUtilities.fetchFallbackMessagesBackdropSuggestions(in:)(v3);

  return v4;
}

+ (id)fetchSharedWithYouMessagesBackdropSuggestionsInPhotoLibrary:(id)a3
{
  v3 = a3;
  v4 = static PNSuggestionWallpaperUtilities.fetchSharedWithYouMessagesBackdropSuggestions(in:)(v3);

  return v4;
}

+ (id)sortDescriptorsForMessagesBackdropSuggestionDeduping
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisProperties.wallpaperScore" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

+ (id)_personNameForGalleryTitleFromSuggestion:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 photoLibrary];

  if (!v5)
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Error getting suggestion.photoLibrary.", buf, 2u);
    }

    goto LABEL_25;
  }

  if (([MEMORY[0x1E6978AE8] hasPersonLocalIdentifierInContextForSuggestionSubype:{objc_msgSend(v4, "subtype")}] & 1) == 0)
  {
    v7 = PLWallpaperGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v23 = [v4 uuid];
      *buf = 138412546;
      v34 = v23;
      v35 = 1024;
      v36 = [v4 subtype];
      _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_DEBUG, "[PNSuggestionWallpaperUtilities] Suggestion UUID %@ does not have person local identifier (subtype %hu)", buf, 0x12u);
    }

LABEL_25:
    v22 = 0;
    goto LABEL_30;
  }

  v6 = [v4 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  [v7 setIncludedDetectionTypes:&unk_1F46E55D0];
  v8 = [v4 context];
  v9 = [a1 personLocalIdentifiersFromSuggestionContext:v8];
  v10 = v9;
  if (v9 && [v9 count])
  {
    v26 = v10;
    v27 = v8;
    v11 = [MEMORY[0x1E6978980] fetchPersonsWithLocalIdentifiers:v10 options:v7];
    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          v19 = [v18 displayName];
          if ([v19 length])
          {
            v20 = [v18 displayName];
          }

          else
          {
            v21 = [v18 name];
            if ([v21 length])
            {
              v20 = [v18 name];
            }

            else
            {
              v20 = 0;
            }
          }

          if (v20)
          {
            [v12 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    v22 = [v12 componentsJoinedByString:{@", "}];

    v10 = v26;
    v8 = v27;
  }

  else
  {
    v13 = PLWallpaperGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v24 = [v4 uuid];
      *buf = 138412546;
      v34 = v24;
      v35 = 1024;
      v36 = [v4 subtype];
      _os_log_impl(&dword_1C6F5C000, v13, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Error getting personUUID for suggestion %@ of subtype %hu", buf, 0x12u);
    }

    v22 = 0;
  }

LABEL_30:

  return v22;
}

+ (BOOL)wallpaperDemoModeEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"PNWallpaperDemoModeEnabled"];

  return v3;
}

+ (BOOL)_updateAvailableFeatures:(unint64_t)a3 forSuggestions:(id)a4 toClear:(BOOL)a5
{
  v5 = a5;
  v46 = *MEMORY[0x1E69E9840];
  v7 = a4;
  if ([v7 count])
  {
    oslog = PLWallpaperGetLog();
    v8 = [v7 firstObject];
    v27 = [v8 photoLibrary];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v33 = 0u;
    v34 = 0u;
    if (v5)
    {
      v10 = 0;
    }

    else
    {
      v10 = a3;
    }

    v35 = 0uLL;
    v36 = 0uLL;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * i);
          if (([v16 availableFeatures] & a3) != v10)
          {
            [v9 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v13);
    }

    if ([v9 count])
    {
      v17 = [v11 count];
      v18 = [v9 count];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __82__PNSuggestionWallpaperUtilities__updateAvailableFeatures_forSuggestions_toClear___block_invoke;
      v29[3] = &unk_1E82A22B8;
      v32 = v5;
      v30 = v11;
      v31 = a3;
      v28 = 0;
      v19 = [v27 performChangesAndWait:v29 error:&v28];
      v20 = v28;
      v21 = oslog;
      if (v19)
      {
        v22 = oslog;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          if (v5)
          {
            v23 = @"Cleared";
          }

          else
          {
            v23 = @"Set";
          }

          v24 = [v9 count];
          *buf = 138413058;
          v38 = v23;
          v39 = 1024;
          v40 = a3;
          v41 = 1024;
          v42 = v24;
          v43 = 1024;
          v44 = v17 - v18;
          v21 = oslog;
          _os_log_impl(&dword_1C6F5C000, v22, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] %@ availableFeatures (%d) to %d suggestions, %d unchanged", buf, 0x1Eu);
        }
      }

      else if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v38 = v20;
        _os_log_error_impl(&dword_1C6F5C000, oslog, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Error updating availableFeatures: %@", buf, 0xCu);
      }
    }

    else
    {
      v19 = 1;
      v21 = oslog;
    }
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

void __82__PNSuggestionWallpaperUtilities__updateAvailableFeatures_forSuggestions_toClear___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [MEMORY[0x1E6978AF0] changeRequestForSuggestion:{v7, v15}];
        v9 = *(a1 + 48);
        v10 = [v7 availableFeatures];
        v11 = *(a1 + 40);
        v12 = v11 | v10;
        v13 = v10 & ~v11;
        if (v9)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        [v8 setAvailableFeatures:v14];
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }
}

+ (BOOL)_cacheExistsForAsset:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v3];
  v5 = [v4 segmentationResourceURL];

  if (!v5)
  {
    v6 = PLWallpaperGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v3 uuid];
      v9 = 138412290;
      v10 = v7;
      _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] missing segmentationResourceURL for asset %@", &v9, 0xCu);
    }
  }

  return v5 != 0;
}

+ (unint64_t)_settlingEffectVideoDecisionForAsset:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 photoAnalysisWallpaperProperties];
  v5 = [v4 wallpaperPropertiesData];

  if (v5)
  {
    v6 = [MEMORY[0x1E696AE40] propertyListWithData:v5 options:0 format:0 error:0];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 objectForKeyedSubscript:@"segmentationScores"];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E69C0D38]];
        if ([v10 BOOLValue])
        {
          v11 = 1;
        }

        else
        {
          v11 = 2;
        }

        goto LABEL_12;
      }
    }
  }

  v12 = PLWallpaperGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [v3 uuid];
    v15 = 138412290;
    v16 = v13;
    _os_log_impl(&dword_1C6F5C000, v12, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] missing settlingEffectVideoDecision for asset %@", &v15, 0xCu);
  }

  v11 = 0;
LABEL_12:

  return v11;
}

+ (BOOL)_assetPassesFRCInstantPlayback:(id)a3
{
  v4 = a3;
  if ([a1 _settlingEffectVideoDecisionForAsset:v4] == 1)
  {
    v5 = [a1 _cacheExistsForAsset:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)settlingEffectAssetInternalSortDescriptors
{
  v11[7] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.activityScore" ascending:0];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.wallpaperScore" ascending:{0, v2}];
  v11[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.settlingEffectScore" ascending:0];
  v11[2] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"mediaAnalysisAttributes.autoplaySuggestionScore" ascending:0];
  v11[3] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"favorite" ascending:0];
  v11[4] = v6;
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
  v11[5] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v11[6] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:7];

  return v9;
}

+ (id)_settlingEffectAssetFetchPropertySets
{
  v6[4] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E6978CF0];
  v6[0] = *MEMORY[0x1E6978C90];
  v6[1] = v2;
  v3 = *MEMORY[0x1E6978CB0];
  v6[2] = *MEMORY[0x1E6978C48];
  v6[3] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:4];

  return v4;
}

+ (id)_fetchSettlingEffectSuggestionKeyAssetsWithOptions:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLWallpaperGetLog();
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchSettlingEffectSuggestionKeyAssets", "", buf, 2u);
  }

  v9 = mach_absolute_time();
  v10 = [v4 photoLibrary];
  v11 = [a1 fetchSettlingEffectSuggestionsInPhotoLibrary:v10];

  v12 = [MEMORY[0x1E6978630] fetchKeyAssetForEachSuggestion:v11 options:v4];

  v13 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v16 = v8;
  v17 = v16;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v17, OS_SIGNPOST_INTERVAL_END, v6, "FetchSettlingEffectSuggestionKeyAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v23 = "FetchSettlingEffectSuggestionKeyAssets";
    v24 = 2048;
    v25 = ((((v13 - v9) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v17, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v18 = v17;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [v12 count];
    *buf = 67109120;
    LODWORD(v23) = v19;
    _os_log_impl(&dword_1C6F5C000, v18, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Found %d settling effect suggestion assets", buf, 8u);
  }

  return v12;
}

+ (id)fetchLivePhotoTabHighlightCandidateAssetsWithOptions:(id)a3 excludeExistingWallpapers:(BOOL)a4 statistics:(id *)a5
{
  v5 = a4;
  v139[2] = *MEMORY[0x1E69E9840];
  v120 = a3;
  v6 = PLWallpaperGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (v5)
    {
      v7 = @", excluding existing wallpapers";
    }

    else
    {
      v7 = &stru_1F46CD000;
    }

    v8 = [v120 fetchLimit];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = -1;
    }

    *buf = 138412546;
    *&buf[4] = v7;
    *&buf[12] = 2048;
    v133 = *&v9;
    _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Fetch LivePhoto tab highlight candidates%@. Limit: %lu", buf, 0x16u);
  }

  v127 = v5;
  v10 = v6;
  v11 = os_signpost_id_generate(v10);
  info = 0;
  mach_timebase_info(&info);
  v12 = v10;
  v13 = v12;
  v112 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "FetchLivePhotoTabHighlightAssets", "", buf, 2u);
  }

  v105 = v11;
  oslog = v13;

  v107 = mach_absolute_time();
  v118 = [v120 photoLibrary];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"highlightBeingExtendedAssets.kind", 0];
  [v14 addObject:v15];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d", @"highlightBeingExtendedAssets.enrichmentState", 3];
  [v14 addObject:v16];
  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"highlightBeingExtendedAssets.visibilityState", 0];
  [v14 addObject:v17];

  v121 = [a1 settlingEffectLivePhotoPredicate];
  [v14 addObject:?];
  v18 = [MEMORY[0x1E69C1AA8] latestVersion];
  v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %lu", @"additionalAttributes.sceneAnalysisVersion", v18];
  [v14 addObject:v19];
  v20 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v20 setYear:2020];
  [v20 setMonth:9];
  [v20 setDay:16];
  v21 = [MEMORY[0x1E695DEE8] currentCalendar];
  v22 = [v21 dateFromComponents:v20];

  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %@", @"dateCreated", v22];
  [v14 addObject:v23];
  v24 = objc_alloc(MEMORY[0x1E69C1A60]);
  v25 = [v24 initWithMediaAnalysisVersion:{objc_msgSend(MEMORY[0x1E69C1A60], "latestVersion")}];
  v26 = [v25 settlingEffectScoreNode];
  [v26 operatingPoint];
  v28 = v27;

  v29 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %f", @"mediaAnalysisAttributes.settlingEffectScore", v28];
  v30 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K == %f) AND (%K > %f)", @"mediaAnalysisAttributes.settlingEffectScore", 0xBFF0000000000000, @"mediaAnalysisAttributes.autoplaySuggestionScore", 0x3FE0000000000000];
  v31 = MEMORY[0x1E696AB28];
  v139[0] = v29;
  v139[1] = v30;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:2];
  v33 = [v31 orPredicateWithSubpredicates:v32];

  v119 = v14;
  [v14 addObject:v33];

  if (v127)
  {
    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $suggestion, $suggestion.%K = %d).@count == 0", @"suggestionsBeingKeyAssets", @"type", 6];
    [v14 addObject:v34];
  }

  v128 = [MEMORY[0x1E695DFD8] set];
  v35 = objc_autoreleasePoolPush();
  v36 = v118;
  v37 = [a1 _mePersonUUIDInPhotoLibrary:v118];
  v38 = 0x1E6978000;
  if (v37)
  {
    v122 = v35;
    v39 = oslog;
    v40 = os_signpost_id_generate(v39);
    v130 = 0;
    mach_timebase_info(&v130);
    v41 = v39;
    v42 = v41;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "FetchMEHighlightAssets", "", buf, 2u);
    }

    v116 = mach_absolute_time();
    v43 = [MEMORY[0x1E6978980] localIdentifierWithUUID:v37];
    v44 = MEMORY[0x1E6978980];
    v138 = v43;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v138 count:1];
    v46 = [v118 librarySpecificFetchOptions];
    v47 = [v44 fetchPersonsWithLocalIdentifiers:v45 options:v46];
    v48 = [v47 firstObject];

    if (v48)
    {
      v49 = [v118 librarySpecificFetchOptions];
      v137 = *MEMORY[0x1E6978C68];
      v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v137 count:1];
      [v49 setFetchPropertySets:v50];

      v51 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v119];
      [v49 setInternalPredicate:v51];

      v52 = [MEMORY[0x1E6978630] fetchAssetsForPerson:v48 faceCount:1 options:v49];
      v53 = [v52 fetchedObjectIDsSet];

      v128 = v53;
    }

    else if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v42, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] ME Person not found", buf, 2u);
    }

    v54 = oslog;
    v56 = mach_absolute_time();
    numer = v130.numer;
    denom = v130.denom;
    v59 = v42;
    v60 = v59;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v59))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v60, OS_SIGNPOST_INTERVAL_END, v40, "FetchMEHighlightAssets", "", buf, 2u);
    }

    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      *&buf[4] = "FetchMEHighlightAssets";
      *&buf[12] = 2048;
      v133 = ((((v56 - v116) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_1C6F5C000, v60, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v36 = v118;
    v55 = 0x1E695D000uLL;
    v38 = 0x1E6978000uLL;
    v35 = v122;
  }

  else
  {
    v54 = oslog;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] ME not found", buf, 2u);
    }

    v55 = 0x1E695D000;
  }

  objc_autoreleasePoolPop(v35);
  v123 = objc_alloc_init(*(v55 + 3952));
  context = objc_autoreleasePoolPush();
  v61 = [v36 librarySpecificFetchOptions];
  [v61 setFetchLimit:{objc_msgSend(v120, "fetchLimit")}];
  v62 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v119];
  [v61 setInternalPredicate:v62];

  v63 = [a1 _settlingEffectAssetFetchPropertySets];
  [v61 setFetchPropertySets:v63];

  v64 = [v120 sortDescriptors];
  [v61 setSortDescriptors:v64];

  v65 = [v120 internalSortDescriptors];
  [v61 setInternalSortDescriptors:v65];

  [v61 setCacheSizeForFetch:500];
  [v61 setChunkSizeForFetch:500];
  v110 = v61;
  v66 = [*(v38 + 1584) fetchAssetsWithOptions:v61];
  v108 = [v66 count];
  v67 = v54;
  if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
  {
    v68 = [v66 count];
    *buf = 67109120;
    *&buf[4] = v68;
    _os_log_impl(&dword_1C6F5C000, v67, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Found %d highlight extended live photo candidates", buf, 8u);
  }

  v69 = v67;
  v70 = os_signpost_id_generate(v69);
  v130 = 0;
  mach_timebase_info(&v130);
  v71 = v69;
  v72 = v71;
  if (v70 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v71))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v72, OS_SIGNPOST_INTERVAL_BEGIN, v70, "FilterAssetFailedFRC", "", buf, 2u);
  }

  v106 = mach_absolute_time();
  v109 = v72;
  if ([v66 count])
  {
    v73 = 0;
    osloga = 0;
    v117 = 0;
    v74 = 0;
    v114 = 0;
    spid = 0;
    v75 = 0;
    do
    {
      v76 = objc_autoreleasePoolPush();
      v77 = [v66 objectAtIndexedSubscript:v75];
      v78 = [v77 objectID];
      v79 = [v128 containsObject:v78];

      if (v79)
      {
        ++v74;
      }

      else
      {
        v129 = 0;
        *buf = 0;
        v80 = [v77 mediaAnalysisProperties];
        if ([v80 faceCount])
        {
          v81 = 1;
        }

        else
        {
          v81 = 5;
        }

        [PNSuggestionWallpaperUtilities bestWallpaperCropForAsset:v77 classification:v81 outputCropScore:buf outputLayoutAcceptable:&v129];
        if (v129 == 1 && *buf >= 0.4)
        {
          if ([PNAssetCurationUtilities assetIsSafeForWidgetDisplay:v77, *buf])
          {
            v82 = [a1 _settlingEffectVideoDecisionForAsset:v77];
            if (v82 == 2)
            {
              ++v117;
            }

            else
            {
              if (v82 == 1)
              {
                ++v114;
              }

              else if (!v82)
              {
                ++spid;
              }

              v83 = [v77 objectID];
              [v123 addObject:v83];
            }
          }

          else
          {
            ++osloga;
          }
        }

        else
        {
          ++v73;
        }
      }

      objc_autoreleasePoolPop(v76);
      ++v75;
    }

    while (v75 < [v66 count]);
  }

  else
  {
    v114 = 0;
    spid = 0;
    v74 = 0;
    v117 = 0;
    osloga = 0;
    v73 = 0;
  }

  v84 = mach_absolute_time();
  v86 = v130.numer;
  v85 = v130.denom;
  v87 = v109;
  v88 = v87;
  if (v70 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v87))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v88, OS_SIGNPOST_INTERVAL_END, v70, "FilterAssetFailedFRC", "", buf, 2u);
  }

  if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "FilterAssetFailedFRC";
    *&buf[12] = 2048;
    v133 = ((((v84 - v106) * v86) / v85) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v88, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  objc_autoreleasePoolPop(context);
  v89 = [v123 count];
  if (os_log_type_enabled(v88, OS_LOG_TYPE_INFO))
  {
    *buf = 67110144;
    *&buf[4] = v73;
    *&buf[8] = 1024;
    *&buf[10] = osloga;
    LOWORD(v133) = 1024;
    *(&v133 + 2) = v117;
    HIWORD(v133) = 1024;
    v134 = v74;
    v135 = 1024;
    v136 = v89;
    _os_log_impl(&dword_1C6F5C000, v88, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Filtered out %d candidates for cropping, %d candidates for NSFW, %d candidates for known FRC failure, %d candidates of device owner, %d candidates left", buf, 0x20u);
  }

  v90 = objc_alloc(MEMORY[0x1E69788E0]);
  v91 = [v120 photoLibrary];
  v92 = *MEMORY[0x1E6978D98];
  v93 = MEMORY[0x1E695DFD8];
  v94 = [v120 fetchPropertySets];
  v95 = [v93 setWithArray:v94];
  v96 = [v90 initWithOids:v123 photoLibrary:v91 fetchType:v92 fetchPropertySets:v95 identifier:0 registerIfNeeded:0];

  v97 = v88;
  if (os_log_type_enabled(v97, OS_LOG_TYPE_INFO))
  {
    v98 = [v96 count];
    *buf = 67109632;
    *&buf[4] = v98;
    *&buf[8] = 1024;
    *&buf[10] = v114;
    LOWORD(v133) = 1024;
    *(&v133 + 2) = spid;
    _os_log_impl(&dword_1C6F5C000, v97, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Found %d (passed: %d, unanalyzed: %d) highlight live photo candidates not failing FRC and other checks", buf, 0x14u);
  }

  if (a5)
  {
    a5->var0 = v108;
    a5->var1 = v89;
    a5->var2 = v73;
    a5->var3 = osloga;
    a5->var4 = v117;
    a5->var5 = v74;
  }

  v99 = mach_absolute_time();
  v101 = info.numer;
  v100 = info.denom;
  v102 = v97;
  v103 = v102;
  if (v112 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v102))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v103, OS_SIGNPOST_INTERVAL_END, v105, "FetchLivePhotoTabHighlightAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "FetchLivePhotoTabHighlightAssets";
    *&buf[12] = 2048;
    v133 = ((((v99 - v107) * v101) / v100) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v103, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v96;
}

+ (id)fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:(id)a3 excludeExistingWallpapers:(BOOL)a4
{
  v4 = a4;
  v72 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PLWallpaperGetLog();
  v8 = [v6 fetchLimit];
  if (v8)
  {
    v9 = *&v8;
  }

  else
  {
    v9 = NAN;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = &stru_1F46CD000;
    if (v4)
    {
      v10 = @", excluding existing wallpapers";
    }

    *buf = 138412546;
    v69 = v10;
    v70 = 2048;
    v71 = v9;
    _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Fetch LivePhoto tab highlight SettlingEffect assets%@. Limit: %lu", buf, 0x16u);
  }

  v11 = v7;
  v12 = os_signpost_id_generate(v11);
  info = 0;
  mach_timebase_info(&info);
  v13 = v11;
  v14 = v13;
  v59 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchLivePhotoTabHighlightSettlingEffectAssets", "", buf, 2u);
  }

  v54 = v12;

  v56 = mach_absolute_time();
  v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = objc_autoreleasePoolPush();
  v16 = [v6 photoLibrary];
  v17 = [v16 librarySpecificFetchOptions];

  v18 = [a1 _settlingEffectAssetFetchPropertySets];
  [v17 setFetchPropertySets:v18];

  v60 = v6;
  v19 = [v6 internalSortDescriptors];
  [v17 setInternalSortDescriptors:v19];

  v57 = v17;
  v20 = [a1 fetchLivePhotoTabHighlightCandidateAssetsWithOptions:v17 excludeExistingWallpapers:v4 statistics:0];
  v21 = v14;
  v22 = os_signpost_id_generate(v21);
  v65 = 0;
  mach_timebase_info(&v65);
  v23 = v21;
  v24 = v23;
  v25 = v22 - 1;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "CheckFRCResources", "", buf, 2u);
  }

  spid = v22;

  v55 = mach_absolute_time();
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v26 = v20;
  v27 = [v26 countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v62;
LABEL_16:
    v30 = 0;
    while (1)
    {
      if (*v62 != v29)
      {
        objc_enumerationMutation(v26);
      }

      v31 = *(*(&v61 + 1) + 8 * v30);
      if ([a1 _settlingEffectVideoDecisionForAsset:{v31, spid, v54}] == 1)
      {
        v32 = [v31 objectID];
        [v15 addObject:v32];
      }

      if ([v15 count] >= *&v9)
      {
        break;
      }

      if (v28 == ++v30)
      {
        v28 = [v26 countByEnumeratingWithState:&v61 objects:v67 count:16];
        if (v28)
        {
          goto LABEL_16;
        }

        break;
      }
    }
  }

  v33 = mach_absolute_time();
  numer = v65.numer;
  denom = v65.denom;
  v36 = v24;
  v37 = v36;
  if (v25 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v37, OS_SIGNPOST_INTERVAL_END, spid, "CheckFRCResources", "", buf, 2u);
  }

  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v69 = "CheckFRCResources";
    v70 = 2048;
    v71 = ((((v33 - v55) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v37, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  objc_autoreleasePoolPop(context);
  v38 = objc_alloc(MEMORY[0x1E69788E0]);
  v39 = [v60 photoLibrary];
  v40 = *MEMORY[0x1E6978D98];
  v41 = MEMORY[0x1E695DFD8];
  v42 = [v60 fetchPropertySets];
  v43 = [v41 setWithArray:v42];
  v44 = [v38 initWithOids:v15 photoLibrary:v39 fetchType:v40 fetchPropertySets:v43 identifier:0 registerIfNeeded:0];

  v45 = v37;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    v46 = [v44 count];
    *buf = 67109120;
    LODWORD(v69) = v46;
    _os_log_impl(&dword_1C6F5C000, v45, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Found %d settling effect assets", buf, 8u);
  }

  v47 = mach_absolute_time();
  v49 = info.numer;
  v48 = info.denom;
  v50 = v45;
  v51 = v50;
  if (v59 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v50))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v51, OS_SIGNPOST_INTERVAL_END, v54, "FetchLivePhotoTabHighlightSettlingEffectAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v69 = "FetchLivePhotoTabHighlightSettlingEffectAssets";
    v70 = 2048;
    v71 = ((((v47 - v56) * v49) / v48) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v51, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v44;
}

+ (id)fetchLivePhotoTabAssetsWithOptions:(id)a3
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLWallpaperGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1C6F5C000, v5, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Fetch LivePhoto tab assets", buf, 2u);
  }

  v6 = v5;
  v7 = os_signpost_id_generate(v6);
  info = 0;
  mach_timebase_info(&info);
  v8 = v6;
  v9 = v8;
  v42 = v7 - 1;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "FetchLivePhotoTabAssets", "", buf, 2u);
  }

  spid = v7;

  v41 = mach_absolute_time();
  v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v11 = objc_autoreleasePoolPush();
  v12 = [v4 photoLibrary];
  v13 = [v12 librarySpecificFetchOptions];

  v49[0] = *MEMORY[0x1E6978C68];
  v14 = v49[0];
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:1];
  [v13 setFetchPropertySets:v15];

  v16 = [a1 _fetchSettlingEffectSuggestionKeyAssetsWithOptions:v13];
  v17 = [v16 fetchedObjectIDsSet];
  [v10 unionSet:v17];

  objc_autoreleasePoolPop(v11);
  v18 = objc_autoreleasePoolPush();
  v19 = [v4 photoLibrary];
  v20 = [v19 librarySpecificFetchOptions];

  [v20 setFetchLimit:{objc_msgSend(v4, "fetchLimit")}];
  v21 = [a1 settlingEffectAssetInternalSortDescriptors];
  [v20 setInternalSortDescriptors:v21];

  v48 = v14;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v48 count:1];
  [v20 setFetchPropertySets:v22];

  v23 = [a1 fetchLivePhotoTabHighlightSettlingEffectAssetsWithOptions:v20 excludeExistingWallpapers:1];
  v24 = [v23 fetchedObjectIDsSet];
  [v10 unionSet:v24];

  objc_autoreleasePoolPop(v18);
  v25 = [v4 photoLibrary];
  v26 = [v25 librarySpecificFetchOptions];

  v27 = [a1 settlingEffectAssetInternalSortDescriptors];
  [v26 setInternalSortDescriptors:v27];

  v28 = [v4 fetchPropertySets];
  [v26 setFetchPropertySets:v28];

  [v26 setFetchLimit:{objc_msgSend(v4, "fetchLimit")}];
  v29 = MEMORY[0x1E6978630];
  v30 = [v10 allObjects];
  v31 = [v29 fetchAssetsWithObjectIDs:v30 options:v26];

  v32 = v9;
  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
  {
    v33 = [v31 count];
    *buf = 67109120;
    LODWORD(v45) = v33;
    _os_log_impl(&dword_1C6F5C000, v32, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Found %d combined assets", buf, 8u);
  }

  v34 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v37 = v32;
  v38 = v37;
  if (v42 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v38, OS_SIGNPOST_INTERVAL_END, spid, "FetchLivePhotoTabAssets", "", buf, 2u);
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v45 = "FetchLivePhotoTabAssets";
    v46 = 2048;
    v47 = ((((v34 - v41) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v38, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  return v31;
}

+ (id)_filterSuggestions:(id)a3 withSingleFeature:(unint64_t)a4 included:(BOOL)a5
{
  v5 = a5;
  v30 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if ((a4 ^ (a4 - 1)) <= a4 - 1)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PNSuggestionWallpaperUtilities.m" lineNumber:1192 description:{@"Invalid parameter not satisfying: %@", @"__builtin_popcountll(singleFeature) == 1"}];
  }

  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (((((a4 & ~[v16 availableFeatures]) == 0) ^ v5) & 1) == 0)
        {
          v17 = [v16 objectID];
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  v18 = objc_alloc(MEMORY[0x1E69788E0]);
  v19 = [v11 photoLibrary];
  v20 = *MEMORY[0x1E6978DE0];
  v21 = [v11 fetchPropertySets];
  v22 = [v18 initWithOids:v10 photoLibrary:v19 fetchType:v20 fetchPropertySets:v21 identifier:0 registerIfNeeded:0];

  return v22;
}

+ (id)sortedDedupedCandidatesFromCandidates:(id)a3 sortDescriptors:(id)a4 timeIntervalForCandidateDeduping:(double)a5 targetNumberOfSuggestions:(unint64_t)a6 maximumTimeIntervalReductionFactor:(unint64_t)a7
{
  v104 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = PLWallpaperGetLog();
  oslog = v14;
  if ([v12 count] <= 1)
  {
    v15 = v14;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v94 = [v12 count];
      _os_log_impl(&dword_1C6F5C000, v15, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Number of candidates is %lu. Skip deduping.", buf, 0xCu);
    }

    v16 = v12;
    v17 = v16;
    goto LABEL_64;
  }

  if (a5 <= 0.0)
  {
    v61 = [MEMORY[0x1E696AAA8] currentHandler];
    [v61 handleFailureInMethod:a2 object:a1 file:@"PNSuggestionWallpaperUtilities.m" lineNumber:1110 description:{@"Invalid parameter not satisfying: %@", @"timeIntervalForCandidateDeduping > 0"}];
  }

  if (!a7 && os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    v94 = 0;
    _os_log_error_impl(&dword_1C6F5C000, oslog, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] maximumTimeIntervalReductionFactor: %lu is less than 1; defaulting to 1.", buf, 0xCu);
  }

  v18 = oslog;
  v19 = os_signpost_id_generate(v18);
  info = 0;
  mach_timebase_info(&info);
  v20 = v18;
  v21 = v20;
  spid = v19;
  v64 = v19 - 1;
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "SortedDedupedCandidates", "", buf, 2u);
  }

  log = v21;

  v62 = mach_absolute_time();
  v70 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v72 = [MEMORY[0x1E695DF70] array];
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v22 = v12;
  v23 = [v22 countByEnumeratingWithState:&v86 objects:v103 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v87;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v87 != v26)
        {
          objc_enumerationMutation(v22);
        }

        v28 = *(*(&v86 + 1) + 8 * i);
        v29 = [v28 creationDate];

        if (v29)
        {
          [v72 addObject:v28];
        }

        else
        {
          ++v25;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v86 objects:v103 count:16];
    }

    while (v24);

    if (v25 && os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v94 = v25;
      _os_log_error_impl(&dword_1C6F5C000, log, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Removed @%lu candidate(s) found with nil creationDate.", buf, 0xCu);
    }
  }

  else
  {
  }

  v30 = [v72 copy];

  v67 = v30;
  if ([v30 count] > a6)
  {
    v31 = 1;
  }

  else
  {
    v31 = a7;
  }

  v68 = 1;
  v32 = log;
  while (1)
  {
    v33 = a5 / v31;
    v34 = [objc_alloc(MEMORY[0x1E69BE3A0]) initWithDistanceBlock:&__block_literal_global_472];
    [v34 setMaximumDistance:v33];
    [v34 setMinimumNumberOfObjects:1];
    v69 = v34;
    v35 = [v34 performWithDataset:v30 progressBlock:&__block_literal_global_475];
    v36 = [v35 count];
    if (v36 > a6 || v31 >= a7)
    {
      break;
    }

    v38 = v36;
    v31 *= 2;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v39 = v32;
      v40 = COERCE_DOUBLE([v30 count]);
      *buf = 134219008;
      v94 = a6;
      v95 = 2048;
      v96 = v40;
      v97 = 2048;
      v98 = v38;
      v99 = 2048;
      v100 = v33;
      v101 = 2048;
      v102 = v31;
      _os_log_impl(&dword_1C6F5C000, v39, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] Target number of suggestions: %lu. Number of candidates: %lu. Number of clusters: %lu. timeIntervalForCandidateDeduping: %.3f sec. timeIntervalReductionFactor: %lu. Number of clusters is less than the target. Try again.", buf, 0x34u);

      v32 = log;
    }

    ++v68;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v35;
  v74 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (v74)
  {
    v73 = *v83;
    do
    {
      for (j = 0; j != v74; ++j)
      {
        if (*v83 != v73)
        {
          objc_enumerationMutation(obj);
        }

        v42 = *(*(&v82 + 1) + 8 * j);
        v43 = objc_autoreleasePoolPush();
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v81 = 0u;
        v44 = [v42 objects];
        v45 = [v44 countByEnumeratingWithState:&v78 objects:v91 count:16];
        if (!v45)
        {
          v47 = v44;
          goto LABEL_53;
        }

        v46 = v45;
        context = v43;
        v77 = j;
        v47 = 0;
        v48 = *v79;
        do
        {
          v49 = 0;
          v50 = v47;
          do
          {
            if (*v79 != v48)
            {
              objc_enumerationMutation(v44);
            }

            v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:{*(*(&v78 + 1) + 8 * v49), v50, 0}];
            v52 = [v51 sortedArrayUsingDescriptors:v13];
            v47 = [v52 firstObject];

            ++v49;
            v50 = v47;
          }

          while (v46 != v49);
          v46 = [v44 countByEnumeratingWithState:&v78 objects:v91 count:16];
        }

        while (v46);

        j = v77;
        v43 = context;
        if (v47)
        {
          [v70 addObject:v47];
LABEL_53:
        }

        objc_autoreleasePoolPop(v43);
      }

      v74 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    }

    while (v74);
  }

  v53 = log;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
  {
    v54 = [v70 count];
    *buf = 134218496;
    v94 = v54;
    v95 = 2048;
    v96 = v33;
    v97 = 2048;
    v98 = v68;
    _os_log_impl(&dword_1C6F5C000, v53, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Final count of ranked and deduped candidates: %lu. timeIntervalForCandidateDeduping: %.3f sec. Number of iterations: %lu.", buf, 0x20u);
  }

  v17 = [v70 sortedArrayUsingDescriptors:v13];
  v55 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v58 = v53;
  v59 = v58;
  if (v64 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v58))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v59, OS_SIGNPOST_INTERVAL_END, spid, "SortedDedupedCandidates", "", buf, 2u);
  }

  if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v94 = "SortedDedupedCandidates";
    v95 = 2048;
    v96 = ((((v55 - v62) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v59, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v16 = v67;
LABEL_64:

  return v17;
}

double __182__PNSuggestionWallpaperUtilities_sortedDedupedCandidatesFromCandidates_sortDescriptors_timeIntervalForCandidateDeduping_targetNumberOfSuggestions_maximumTimeIntervalReductionFactor___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = fabs(v7);

  return v8;
}

+ (id)fetchSettlingEffectSuggestionsWithOptions:(id)a3
{
  v4 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:a3];
  v5 = [a1 filterSuggestions:v4 includingSingleFeature:1];

  return v5;
}

+ (id)fetchSettlingEffectSuggestionsInPhotoLibrary:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = [a3 librarySpecificFetchOptions];
  v5 = MEMORY[0x1E696AB28];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v12[0] = v6;
  v7 = [MEMORY[0x1E6978AE8] predicateForAllFeaturedStateEnabledSuggestionTypesForWallpaper];
  v12[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  v9 = [v5 andPredicateWithSubpredicates:v8];
  [v4 setPredicate:v9];

  v10 = [a1 fetchSettlingEffectSuggestionsWithOptions:v4];

  return v10;
}

+ (id)wallpaperCroppingDebugKeyValuePairsForAsset:(id)a3 withFaceRegions:(BOOL)a4 headroomFeasible:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v7 = MEMORY[0x1E695DF90];
  v8 = a3;
  v9 = [v7 alloc];
  v10 = [v8 wallpaperCroppingDebugKeyValuePairs];
  v11 = [v9 initWithDictionary:v10];

  v12 = [[PNWallpaperCropResult alloc] initWithAsset:v8 classification:0];
  v13 = [(PNWallpaperCropResult *)v12 dictionaryRepresentation];
  [v11 setObject:v13 forKeyedSubscript:@"posterClassificationUnspecified"];

  v14 = [[PNWallpaperCropResult alloc] initWithAsset:v8 classification:1 headroomFeasible:v5 withFaceRegions:v6];
  v15 = [(PNWallpaperCropResult *)v14 dictionaryRepresentation];
  [v11 setObject:v15 forKeyedSubscript:@"posterClassificationPerson"];

  v16 = [[PNWallpaperCropResult alloc] initWithAsset:v8 classification:2 headroomFeasible:v5 withFaceRegions:v6];
  v17 = [(PNWallpaperCropResult *)v16 dictionaryRepresentation];
  [v11 setObject:v17 forKeyedSubscript:@"posterClassificationPet"];

  v18 = [[PNWallpaperCropResult alloc] initWithAsset:v8 classification:3 headroomFeasible:v5 withFaceRegions:0];
  v19 = [(PNWallpaperCropResult *)v18 dictionaryRepresentation];
  [v11 setObject:v19 forKeyedSubscript:@"posterClassificationNature"];

  v20 = [[PNWallpaperCropResult alloc] initWithAsset:v8 classification:4 headroomFeasible:v5 withFaceRegions:0];
  v21 = [(PNWallpaperCropResult *)v20 dictionaryRepresentation];
  [v11 setObject:v21 forKeyedSubscript:@"posterClassificationCityscape"];

  v22 = [[PNWallpaperCropResult alloc] initWithAsset:v8 classification:5];
  v23 = [(PNWallpaperCropResult *)v22 dictionaryRepresentation];
  [v11 setObject:v23 forKeyedSubscript:@"posterClassificationOther"];

  return v11;
}

+ (id)fetchKnownPersonLocalIdentifiersInPhotoLibrary:(id)a3 fetchLimit:(unint64_t)a4
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = [a3 librarySpecificFetchOptions];
  v10[0] = *MEMORY[0x1E6978F30];
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v5 setFetchPropertySets:v6];

  if (a4)
  {
    [v5 setFetchLimit:a4];
    [v5 setShouldPrefetchCount:1];
  }

  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %d OR %K >= %f OR %K >= %d", @"verifiedType", 0, @"mergeCandidateConfidence", 0x3FE999999999999ALL, @"faceCount", 10];
  [v5 setInternalPredicate:v7];

  v8 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v5];

  return v8;
}

+ (BOOL)hasAnyKnownPersonLocalIdentifierInPhotoLibrary:(id)a3
{
  v3 = [a1 fetchKnownPersonLocalIdentifiersInPhotoLibrary:a3 fetchLimit:1];
  v4 = [v3 count] != 0;

  return v4;
}

+ (unint64_t)posterClassificationForSuggestionMedia:(id)a3
{
  v3 = [a3 suggestionSubtype];
  result = 1;
  if (v3 > 651)
  {
    if (v3 <= 653)
    {
      if (v3 == 652)
      {
        return result;
      }

      return 2;
    }

    if (v3 != 654)
    {
      if (v3 != 655)
      {
        return 0;
      }

      return 4;
    }
  }

  else
  {
    if (v3 <= 603)
    {
      if (v3 == 602)
      {
        return result;
      }

      if (v3 != 603)
      {
        return 0;
      }

      return 2;
    }

    if (v3 != 604)
    {
      if (v3 != 605)
      {
        return 0;
      }

      return 4;
    }
  }

  return 3;
}

+ (unint64_t)posterClassificationForMedia:(id)a3 descriptorType:(int64_t)a4
{
  v6 = a3;
  v7 = 0;
  if (a4 > 4)
  {
    if ((a4 - 101) >= 2 && a4 != 5)
    {
      if (a4 != 103)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if ((a4 - 1) < 2)
  {
LABEL_7:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [a1 posterClassificationForSuggestionMedia:v6];
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_12;
  }

  if (a4 == 4)
  {
LABEL_11:
    v7 = 1;
  }

LABEL_12:

  return v7;
}

+ (id)knownPersonLocalIdentifiersInPhotoLibrary:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [a1 fetchKnownPersonLocalIdentifiersInPhotoLibrary:a3 fetchLimit:0];
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) localIdentifier];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PFDeviceScreenSize();
  v7 = v5;
  v8 = v6;
  if (v5 == 0.0 || v6 == 0.0 || (v5 == *MEMORY[0x1E69BDDB0] ? (v9 = v6 == *(MEMORY[0x1E69BDDB0] + 8)) : (v9 = 0), v9))
  {
    v10 = 1.0;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v13 = 134218496;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 2048;
      v18 = 0x3FF0000000000000;
      _os_log_fault_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "PFSizeGetAspectRatio produced an undefined aspect ratio from size {%lf, %lf}. Returning %f. Use PFSizeGetAspectRatioWithDefault() to provide a value for this case.", &v13, 0x20u);
    }
  }

  else
  {
    v10 = fabs(v5 / v6);
  }

  v11 = [a1 predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:v4 deviceAspectRatio:v10];

  return v11;
}

+ (id)predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:(id)a3 deviceAspectRatio:(double)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.@count == %d", @"detectedFaces", 1];
  [v7 addObject:v26];
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"kind", 0];
  [v7 addObject:v25];
  v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 10];
  [v7 addObject:v24];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"kindSubtype", 1];
  [v7 addObject:v23];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"playbackStyle", &unk_1F46E55B8];
  [v7 addObject:v8];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %f", @"curationScore", 0x3FE0000000000000];
  [v7 addObject:v9];
  v10 = +[CLSCurationUtilities blockedExternalAppBundleIdentifiers];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil OR NOT (%K IN %@)", @"additionalAttributes.importedByBundleIdentifier", @"additionalAttributes.importedByBundleIdentifier", v10];
  [v7 addObject:v11];
  v12 = MEMORY[0x1E696ABC8];
  v13 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"detectedFaces"];
  v14 = [a1 _facePredicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:v6 deviceAspectRatio:a4];

  v15 = [v12 expressionForSubquery:v13 usingIteratorVariable:@"face" predicate:v14];

  v16 = MEMORY[0x1E696AB18];
  v17 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"%@.@count", v15];
  v18 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F46E5420];
  v19 = [v16 predicateWithLeftExpression:v17 rightExpression:v18 modifier:0 type:5 options:0];

  [v7 addObject:v19];
  v20 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v7];

  return v20;
}

+ (id)_facePredicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:(id)a3 deviceAspectRatio:(double)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v38;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v38 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:*(*(&v37 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v10);
    }

    v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K.%K in %@", @"personForFace", @"personUUID", v7];
    [v6 addObject:v14];
  }

  [MEMORY[0x1E69C07A8] facePositionLimits];
  v15 = 0.0 * a4;
  v36 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %K AND $face.%K >= %f AND $face.%K < %f", @"height", @"width", @"size", 0, @"size", *&v15];
  v35 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %K AND $face.%K >= (%f * %d / %d) AND $face.%K < (%f * %d / %d)", @"height", @"width", @"size", 0, @"width", @"height", @"size", *&v15, @"width", @"height"];
  v16 = MEMORY[0x1E696AB28];
  v42[0] = v36;
  v42[1] = v35;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v34 = [v16 orPredicateWithSubpredicates:v17];

  [v6 addObject:v34];
  v33 = [MEMORY[0x1E696AE18] predicateWithFormat:@"($face.%K - $face.%K * 0.5) >= %f AND ($face.%K + $face.%K * 0.5) <= %f", @"centerX", @"size", 0, @"centerX", @"size", 0];
  v32 = [MEMORY[0x1E696AE18] predicateWithFormat:@"($face.%K - $face.%K * 0.5) >= (%f * %d / %d) AND ($face.%K + $face.%K * 0.5) <= (%f * %d / %d)", @"centerX", @"size", @"width", @"height", 0, @"centerX", @"size", @"width", @"height", 0];
  v18 = MEMORY[0x1E696AB28];
  v41[0] = v33;
  v41[1] = v32;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v31 = [v18 orPredicateWithSubpredicates:v19];

  [v6 addObject:v31];
  v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"($face.%K + $face.%K * 0.5) >= %f AND ($face.%K + $face.%K * 0.5) <= %f", @"bodyCenterY", @"bodyHeight", 0, @"bodyCenterY", @"bodyHeight", 0];
  [v6 addObject:v20];
  [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K >= %f AND $face.%K <= %f", @"roll", 0xBFE921FB54442D18, @"roll", 0x3FE921FB54442D18];
  v21 = v30 = v5;
  [v6 addObject:v21];
  v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K IN %@", @"poseType", &unk_1F46E55A0];
  [v6 addObject:v22];
  v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K >= %f", @"quality", 0x3FD0000000000000];
  [v6 addObject:v23];
  v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K >= %f", @"blurScore", 0x3FC999999999999ALL];
  [v6 addObject:v24];
  v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K != %d AND $face.%K != %d", @"faceExpressionType", 3, @"faceExpressionType", 2];
  [v6 addObject:v25];
  v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K == %d", @"eyesState", 2];
  [v6 addObject:v26];
  v27 = [MEMORY[0x1E696AE18] predicateWithFormat:@"$face.%K == %d", @"hasFaceMask", 0];
  [v6 addObject:v27];
  v28 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v6];

  return v28;
}

+ (double)cropScoreWithAsset:(id)a3 classification:(unint64_t)a4 passesClockOverlap:(BOOL *)a5 cropZoomRatio:(double *)a6 orientation:(int64_t)a7
{
  LOWORD(v8) = 0;
  [a1 cropScoreWithAsset:a3 classification:a4 passesClockOverlap:a5 headroomEngaged:0 cropZoomRatio:a6 adaptiveHeadroom:0 maxClockShift:0 notificationRoom:0 layoutVariant:0 orientation:a7 adaptiveCropRect:0 headroomFeasible:v8 withFaceRegions:?];
  return result;
}

+ (double)cropScoreWithAsset:(id)a3 classification:(unint64_t)a4 passesClockOverlap:(BOOL *)a5 headroomEngaged:(BOOL *)a6 cropZoomRatio:(double *)a7 adaptiveHeadroom:(double *)a8 maxClockShift:(double *)a9 notificationRoom:(double *)a10 layoutVariant:(unint64_t *)a11 orientation:(int64_t)a12 adaptiveCropRect:(CGRect *)a13 headroomFeasible:(BOOL)a14 withFaceRegions:(BOOL)a15
{
  v21 = a3;
  v22 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:a12];
  v23 = [a1 bestWallpaperCropForAsset:v21 classification:a4 layoutConfiguration:v22 headroomFeasible:a14 withFaceRegions:a15];
  [v23 cropScore];
  v25 = v24;
  [v23 visibleRect];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  if (a5)
  {
    *a5 = [v23 clockOverlapAcceptable];
  }

  if (a6)
  {
    *a6 = [v23 headroomEngaged];
  }

  if (a8)
  {
    [v23 adaptiveHeadroom];
    *a8 = v34;
  }

  if (a9)
  {
    [v23 maxClockShift];
    *a9 = v35;
  }

  if (a11)
  {
    *a11 = [v23 layoutVariant];
  }

  if (a10)
  {
    [v23 notificationRoom];
    *a10 = v36;
  }

  if (a13)
  {
    a13->origin.x = v27;
    a13->origin.y = v29;
    a13->size.width = v31;
    a13->size.height = v33;
  }

  if (a7)
  {
    [v22 screenSize];
    v38 = v37;
    v39 = v31 * [v21 pixelWidth];
    v40 = v38 / v39;
    v41 = v39 <= 0.0;
    v42 = 1.0;
    if (!v41)
    {
      v42 = v40;
    }

    *a7 = v42;
  }

  return v25;
}

+ (CGRect)bestWallpaperCropForSuggestion:(id)a3 outputCropScore:(double *)a4 outputLayoutAcceptable:(BOOL *)a5
{
  v7 = a3;
  v8 = [v7 photoLibrary];
  v9 = [v8 librarySpecificFetchOptions];

  [v9 setFetchLimit:1];
  v10 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v7 options:v9];
  v11 = [v10 firstObject];

  if (v11)
  {
    +[PNSuggestionWallpaperUtilities bestWallpaperCropForAsset:classification:outputCropScore:outputLayoutAcceptable:](PNSuggestionWallpaperUtilities, "bestWallpaperCropForAsset:classification:outputCropScore:outputLayoutAcceptable:", v11, +[PNSuggestionWallpaperUtilities posterClassificationForSuggestionSubtype:](PNSuggestionWallpaperUtilities, "posterClassificationForSuggestionSubtype:", [v7 subtype]), a4, a5);
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
  }

  else
  {
    if (a4)
    {
      *a4 = 0.0;
    }

    if (a5)
    {
      *a5 = 0;
    }

    v13 = *MEMORY[0x1E695F050];
    v15 = *(MEMORY[0x1E695F050] + 8);
    v17 = *(MEMORY[0x1E695F050] + 16);
    v19 = *(MEMORY[0x1E695F050] + 24);
  }

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (CGRect)bestWallpaperCropForAsset:(id)a3 classification:(unint64_t)a4 outputCropScore:(double *)a5 outputLayoutAcceptable:(BOOL *)a6
{
  [a1 bestWallpaperCropForAsset:a3 classification:a4 outputCropScore:a5 outputLayoutAcceptable:a6 layoutConfiguration:0];
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v7;
  result.origin.x = v6;
  return result;
}

+ (CGRect)bestWallpaperCropForAsset:(id)a3 classification:(unint64_t)a4 outputCropScore:(double *)a5 outputLayoutAcceptable:(BOOL *)a6 layoutConfiguration:(id)a7
{
  v9 = [a1 bestWallpaperCropForAsset:a3 classification:a4 layoutConfiguration:a7 headroomFeasible:0 withFaceRegions:0];
  v10 = v9;
  if (a5)
  {
    [v9 cropScore];
    *a5 = v11;
  }

  if (a6)
  {
    *a6 = [v10 clockOverlapAcceptable];
  }

  [v10 visibleRect];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v20 = v13;
  v21 = v15;
  v22 = v17;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

+ (id)bestWallpaperCropForAsset:(id)a3 classification:(unint64_t)a4 layoutConfiguration:(id)a5 headroomFeasible:(BOOL)a6 withFaceRegions:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v11 = a3;
  v12 = a5;
  v48 = 0;
  v49 = &v48;
  v50 = 0x4010000000;
  v51 = "";
  v52 = 0u;
  v53 = 0u;
  [v11 normalizedFaceAreaRect];
  *&v52 = v13;
  *(&v52 + 1) = v14;
  *&v53 = v15;
  *(&v53 + 1) = v16;
  if (v7)
  {
    v17 = [v11 pixelWidth];
    v18 = [v11 pixelHeight];
    v19 = [objc_alloc(MEMORY[0x1E6978B20]) initWithPhotoAsset:v11];
    v20 = v17;
    v21 = v18;
    v22 = dispatch_group_create();
    dispatch_group_enter(v22);
    v23 = MEMORY[0x1E69BDF28];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __128__PNSuggestionWallpaperUtilities_bestWallpaperCropForAsset_classification_layoutConfiguration_headroomFeasible_withFaceRegions___block_invoke;
    v42[3] = &unk_1E82A2250;
    v45 = &v48;
    v46 = v20;
    v47 = v21;
    v43 = v12;
    v24 = v22;
    v44 = v24;
    [v23 loadSegmentationDataForAsset:v19 options:MEMORY[0x1E695E0F8] completion:v42];
    dispatch_group_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
  }

  if (!v12)
  {
    v12 = [MEMORY[0x1E69C0790] deviceConfigurationForOrientation:1];
  }

  v25 = MEMORY[0x1E69C06A0];
  v26 = [v11 pixelWidth];
  v27 = [v11 pixelHeight];
  [v11 preferredCropRect];
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  [v11 acceptableCropRect];
  v40 = [v25 bestAdaptiveCropRectForPosterClassification:a4 layoutConfiguration:v12 sourcePixelWidth:v26 sourcePixelHeight:v27 sourcePreferredCropRectNormalized:v8 sourceAcceptableCropRectNormalized:v29 sourceFaceAreaRectNormalized:v31 headroomFeasible:{v33, v35, v36, v37, v38, v39, v49[4], v49[5], v49[6], v49[7]}];
  _Block_object_dispose(&v48, 8);

  return v40;
}

void __128__PNSuggestionWallpaperUtilities_bestWallpaperCropForAsset_classification_layoutConfiguration_headroomFeasible_withFaceRegions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 localizedDescription];
      v21 = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1C6F5C000, v7, OS_LOG_TYPE_ERROR, "Error loading segmentation data: %@ Use PHAsset.normalizedFaceAreaRect.", &v21, 0xCu);
    }
  }

  else
  {
    v9 = MEMORY[0x1E69C07A8];
    [*(a1 + 32) screenSize];
    v11 = v10;
    v13 = v12;
    v14 = [v5 regions];
    v15 = [v14 faceRegions];
    [v9 bestFaceRectWithImageSize:v15 deviceSize:*(a1 + 56) faceRegions:{*(a1 + 64), v11, v13}];
    v16 = *(*(a1 + 48) + 8);
    v16[4] = v17;
    v16[5] = v18;
    v16[6] = v19;
    v16[7] = v20;

    *(*(*(a1 + 48) + 8) + 40) = *(MEMORY[0x1E69BDDA8] + 8) + *(MEMORY[0x1E69BDDA8] + 24) - (*(*(*(a1 + 48) + 8) + 40) + *(*(*(a1 + 48) + 8) + 56));
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (unint64_t)posterClassificationForSuggestionSubtype:(unsigned __int16)a3
{
  result = 1;
  if (a3 > 651)
  {
    if (a3 <= 653)
    {
      if (a3 != 652)
      {
        return 2;
      }

      return result;
    }

    if (a3 != 654)
    {
      if (a3 != 655)
      {
        return 0;
      }

      return 4;
    }

    return 3;
  }

  if (a3 > 603)
  {
    if (a3 != 604)
    {
      if (a3 != 605)
      {
        return 0;
      }

      return 4;
    }

    return 3;
  }

  if (a3 != 602)
  {
    if (a3 != 603)
    {
      return 0;
    }

    return 2;
  }

  return result;
}

+ (int64_t)primaryOrientation
{
  if (PLPhysicalDeviceIsIPad())
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

+ (void)rejectWallpaperSuggestions:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = [v7 photoLibrary];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __79__PNSuggestionWallpaperUtilities_rejectWallpaperSuggestions_completionHandler___block_invoke;
    v12[3] = &unk_1E82A2730;
    v13 = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __79__PNSuggestionWallpaperUtilities_rejectWallpaperSuggestions_completionHandler___block_invoke_2;
    v9[3] = &unk_1E82A2228;
    v11 = v6;
    v10 = v13;
    [v8 performChanges:v12 completionHandler:v9];
  }
}

void __79__PNSuggestionWallpaperUtilities_rejectWallpaperSuggestions_completionHandler___block_invoke(uint64_t a1)
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
        [v6 markDeclined];
        [v6 setFeaturedState:0];

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __79__PNSuggestionWallpaperUtilities_rejectWallpaperSuggestions_completionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = PLPhotoKitGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_1C6F5C000, v6, OS_LOG_TYPE_ERROR, "Could not decline wallpaper suggestion: %@", buf, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = PLWallpaperGetLog();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v12 uuid];
          *buf = 138412290;
          v21 = v14;
          _os_log_impl(&dword_1C6F5C000, v13, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] reject wallpaper suggestion: %@", buf, 0xCu);
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

+ (void)rejectWallpaperSuggestionsUsingAsset:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLWallpaperGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [v6 uuid];
    *buf = 138412290;
    v16 = v9;
    _os_log_impl(&dword_1C6F5C000, v8, OS_LOG_TYPE_INFO, "[PNSuggestionWallpaperUtilities] reject wallpaper asset: %@", buf, 0xCu);
  }

  v10 = [v6 photoLibrary];
  v11 = [v10 librarySpecificFetchOptions];

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"type", 6];
  [v11 setPredicate:v12];

  v13 = [MEMORY[0x1E6978650] fetchAssetCollectionsContainingAsset:v6 withType:8 options:v11];
  v14 = [v13 fetchedObjects];
  [a1 rejectWallpaperSuggestions:v14 completionHandler:v7];
}

+ (void)rejectWallpaperSuggestionsUsingAssetOfSuggestion:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 photoLibrary];
  v11 = [v8 librarySpecificFetchOptions];

  [v11 setFetchLimit:1];
  v9 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v7 options:v11];

  v10 = [v9 firstObject];

  [a1 rejectWallpaperSuggestionsUsingAsset:v10 completionHandler:v6];
}

+ (id)wallpaperPeopleLocalIdentifiersInPhotoLibrary:(id)a3 vipOnly:(BOOL)a4
{
  v4 = a4;
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__1796;
  v30 = __Block_byref_object_dispose__1797;
  v31 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v7 = [v5 photoAnalysisClient];
  v38 = @"VipOnly";
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v39[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __88__PNSuggestionWallpaperUtilities_wallpaperPeopleLocalIdentifiersInPhotoLibrary_vipOnly___block_invoke;
  v23 = &unk_1E82A2200;
  v25 = &v26;
  v10 = v6;
  v24 = v10;
  [v7 requestPeopleForWallpaperSuggestionsWithOptions:v9 reply:&v20];

  v11 = dispatch_time(0, 10000000000);
  if (dispatch_group_wait(v10, v11))
  {
    v12 = PLWallpaperGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v12, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Timeout getting wallpaper people local identifiers", buf, 2u);
    }
  }

  v13 = @"all";
  if (v4)
  {
    v13 = @"VIP";
  }

  v14 = v13;
  v15 = PLWallpaperGetLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v27[5] count];
    v17 = v27[5];
    *buf = 67109634;
    v33 = v16;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v17;
    _os_log_impl(&dword_1C6F5C000, v15, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Found %d %@ wallpaper people: %@", buf, 0x1Cu);
  }

  v18 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v18;
}

void __88__PNSuggestionWallpaperUtilities_wallpaperPeopleLocalIdentifiersInPhotoLibrary_vipOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a2 objectForKeyedSubscript:@"personLocalIdentifiers"];
    v7 = v6;
    v8 = MEMORY[0x1E695E0F0];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v9];
  }

  else
  {
    v10 = PLWallpaperGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_1C6F5C000, v10, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Error getting wallpaper people local identifier: %@", &v11, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

+ (id)randomizedSuggestionsFromSuggestions:(id)a3 limit:(unint64_t)a4
{
  v6 = a3;
  if ([v6 count] > 1)
  {
    v8 = objc_alloc(MEMORY[0x1E695DF70]);
    v9 = [v6 fetchedObjectIDs];
    v10 = [v8 initWithArray:v9];

    v11 = [a1 randomNumberGeneratorForWallpaperDonation];
    PFMutableArrayShuffleWithRandomNumberGenerator();
    v12 = [v10 count];
    if (v12 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v10 subarrayWithRange:{0, v13}];
    v15 = objc_alloc(MEMORY[0x1E69788E0]);
    v16 = [v6 photoLibrary];
    v17 = *MEMORY[0x1E6978DE0];
    v18 = [v6 fetchPropertySets];
    v7 = [v15 initWithOids:v14 photoLibrary:v16 fetchType:v17 fetchPropertySets:v18 identifier:0 registerIfNeeded:0];
  }

  else
  {
    v7 = v6;
  }

  return v7;
}

+ (id)fetchPersonLocalIdentifiersForSuggestionSubtypes:(id)a3 photoLibrary:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a4 librarySpecificFetchOptions];
  v7 = MEMORY[0x1E696AB28];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v26[0] = v8;
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"subtype", v5];
  v26[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v11 = [v7 andPredicateWithSubpredicates:v10];
  [v6 setPredicate:v11];

  v12 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v6];
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = v12;
  v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * i) context];
        if (v19)
        {
          [v13 addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v13;
}

+ (id)fetchPersonLocalIdentifiersForSuggestionSubtype:(unsigned __int16)a3 photoLibrary:(id)a4
{
  v4 = a3;
  v12[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AD98];
  v7 = a4;
  v8 = [v6 numberWithUnsignedShort:v4];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [a1 fetchPersonLocalIdentifiersForSuggestionSubtypes:v9 photoLibrary:v7];

  return v10;
}

+ (id)fetchPortraitAssetsWithOptions:(id)a3
{
  v24[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 internalPredicate];
  v6 = [v4 photoLibrary];
  v7 = [a1 knownPersonLocalIdentifiersInPhotoLibrary:v6];

  v8 = [a1 predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:v7];
  v9 = v8;
  if (v5)
  {
    v10 = MEMORY[0x1E696AB28];
    v24[0] = v8;
    v24[1] = v5;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    v12 = [v10 andPredicateWithSubpredicates:v11];
  }

  else
  {
    v12 = v8;
  }

  [v4 setInternalPredicate:v12];
  v13 = objc_alloc(MEMORY[0x1E695DF70]);
  v14 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedDate" ascending:0];
  v23[0] = v14;
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"sortToken" ascending:0];
  v23[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v17 = [v13 initWithArray:v16];

  v18 = [v4 internalSortDescriptors];
  v19 = [v18 count];

  if (v19)
  {
    v20 = [v4 internalSortDescriptors];
    [v17 addObjectsFromArray:v20];
  }

  [v4 setInternalSortDescriptors:v17];
  v21 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v4];

  return v21;
}

+ (id)_mePersonUUIDInPhotoLibrary:(id)a3
{
  v18[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 _fetchMeContactIdentifier];
  if (v5)
  {
    v6 = [a1 _personFetchOptionsWithPhotoLibrary:v4];

    v7 = MEMORY[0x1E6978980];
    v18[0] = v5;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
    v9 = [v7 fetchPersonsForContactIdentifiers:v8 options:v6];
    v10 = [v9 firstObject];

    if (v10)
    {
      v11 = [v10 uuid];
      v12 = PLWallpaperGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v11;
        _os_log_impl(&dword_1C6F5C000, v12, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Found me person with contact identifier: %@, personUUID: %@", &v14, 0x16u);
      }
    }

    else
    {
      v11 = 0;
    }

LABEL_10:

    goto LABEL_11;
  }

  v6 = [a1 _fetchSuggestedMePersonLocalIdentifierInPhotoLibrary:v4];

  if (v6)
  {
    v11 = [MEMORY[0x1E6978980] uuidFromLocalIdentifier:v6];
    v10 = PLWallpaperGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_1C6F5C000, v10, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Found suggestedMe personUUID: %@", &v14, 0xCu);
    }

    goto LABEL_10;
  }

  v11 = 0;
LABEL_11:

  return v11;
}

uint64_t __74__PNSuggestionWallpaperUtilities__assetSortComparatorForPortraitWallpaper__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 isFavorite] && !objc_msgSend(v5, "isFavorite"))
  {
    goto LABEL_6;
  }

  if ([v5 isFavorite] && !objc_msgSend(v4, "isFavorite"))
  {
    goto LABEL_8;
  }

  v6 = [v4 mediaAnalysisProperties];
  [v6 wallpaperScore];
  v8 = v7;
  v9 = v7;

  v10 = [v5 mediaAnalysisProperties];
  [v10 wallpaperScore];
  v12 = v11;
  v13 = v11;

  [v4 overallAestheticScore];
  v15 = v14;
  v16 = v14;
  [v5 overallAestheticScore];
  v18 = v13 + v17;
  if (v9 + v16 > v18)
  {
LABEL_6:
    v19 = -1;
    goto LABEL_9;
  }

  if (v18 > v9 + v16)
  {
    goto LABEL_8;
  }

  if (v8 > v12)
  {
    goto LABEL_6;
  }

  if (v12 > v8)
  {
    goto LABEL_8;
  }

  if (v15 > v17)
  {
    goto LABEL_6;
  }

  if (v17 > v15)
  {
LABEL_8:
    v19 = 1;
    goto LABEL_9;
  }

  v21 = [v5 creationDate];
  v22 = [v4 creationDate];
  v19 = [v21 compare:v22];

  if (!v19)
  {
    v23 = [v4 uuid];
    v24 = [v5 uuid];
    v19 = [v23 compare:v24];
  }

LABEL_9:

  return v19;
}

+ (id)_mostRecentAssetDateInPhotoLibrary:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 librarySpecificFetchOptions];
  [v3 setFetchLimit:1];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v3 setSortDescriptors:v5];

  v6 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v3];
  v7 = [v6 firstObject];

  v8 = [v7 creationDate];

  return v8;
}

+ (id)_personFetchOptionsWithPhotoLibrary:(id)a3
{
  v6[1] = *MEMORY[0x1E69E9840];
  v3 = [a3 librarySpecificFetchOptions];
  v6[0] = *MEMORY[0x1E6978F30];
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  [v3 setFetchPropertySets:v4];

  [v3 setPersonContext:1];

  return v3;
}

+ (id)_fetchSuggestedMePersonLocalIdentifierInPhotoLibrary:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v3 = [a3 suggestedMePersonIdentifierWithError:&v6];
  v4 = v6;
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = v4;
    _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] No suggested me person found, error: %@", buf, 0xCu);
  }

  return v3;
}

+ (id)_fetchMeContactIdentifier
{
  v2 = [MEMORY[0x1E69789A8] sharedContactStore];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__1796;
  v13 = __Block_byref_object_dispose__1797;
  v14 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__PNSuggestionWallpaperUtilities__fetchMeContactIdentifier__block_invoke;
  v6[3] = &unk_1E82A21B8;
  v3 = v2;
  v7 = v3;
  v8 = &v9;
  [v3 requestAccessForEntityType:0 completionHandler:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

void __59__PNSuggestionWallpaperUtilities__fetchMeContactIdentifier__block_invoke(uint64_t a1, int a2, void *a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 32);
    v16[0] = *MEMORY[0x1E695C258];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v13 = 0;
    v8 = [v6 _crossPlatformUnifiedMeContactWithKeysToFetch:v7 error:&v13];
    v9 = v13;

    if (v8)
    {
      v10 = [v8 identifier];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] No me contact found: %@", buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_error_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Error gaining access to Contacts: %@", buf, 0xCu);
  }
}

+ (id)_coldStartPortraitWallpaperInPhotoLibrary:(id)a3 candidatePersons:(id)a4 passingFilterBlock:(id)a5 maximumNumberOfTries:(unint64_t)a6 targetCount:(unint64_t)a7
{
  v226 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v171 = a5;
  if ([v10 count])
  {
    v11 = PLWallpaperGetLog();
    v12 = os_signpost_id_generate(v11);
    info = 0;
    mach_timebase_info(&info);
    v13 = v11;
    v14 = v13;
    v150 = v12 - 1;
    if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "ColdStartPortraitWallpaper", "", buf, 2u);
    }

    spid = v12;

    v149 = mach_absolute_time();
    v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v211 = 0u;
    v212 = 0u;
    v213 = 0u;
    v214 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v211 objects:v225 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v212;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v212 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v211 + 1) + 8 * i) uuid];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v211 objects:v225 count:16];
      }

      while (v18);
    }

    v22 = PLWallpaperGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v16 count];
      *buf = 67109378;
      *v224 = v23;
      *&v224[4] = 2112;
      *&v224[6] = v15;
      _os_log_impl(&dword_1C6F5C000, v22, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Starting with %d candidate people: %@", buf, 0x12u);
    }

    v24 = [a1 _mostRecentAssetDateInPhotoLibrary:v9];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 dateByAddingTimeInterval:-94608000.0];
      v27 = [MEMORY[0x1E6978980] momentCountsByPersonUUIDForPersonsWithUUIDs:v15 afterDate:v26 photoLibrary:v9];
      v28 = [v27 count];
      if (v28)
      {
        v29 = v28;
        v143 = v26;
        v144 = v25;
        v146 = v14;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v27 allKeys];
          *buf = 67109378;
          *v224 = v29;
          *&v224[4] = 2112;
          *&v224[6] = v30;
          _os_log_impl(&dword_1C6F5C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] %d people found in library that were present in the past 3 years: %@", buf, 0x12u);
        }

        v147 = v10;
        v31 = [v16 fetchedObjects];
        v209[0] = MEMORY[0x1E69E9820];
        v209[1] = 3221225472;
        v209[2] = __145__PNSuggestionWallpaperUtilities__coldStartPortraitWallpaperInPhotoLibrary_candidatePersons_passingFilterBlock_maximumNumberOfTries_targetCount___block_invoke;
        v209[3] = &unk_1E82A2170;
        v32 = v27;
        v210 = v32;
        v33 = [v31 sortedArrayUsingComparator:v209];

        v207 = 0u;
        v208 = 0u;
        v205 = 0u;
        v206 = 0u;
        obj = v32;
        v34 = [obj countByEnumeratingWithState:&v205 objects:v222 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v206;
          v37 = 0.0;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v206 != v36)
              {
                objc_enumerationMutation(obj);
              }

              v39 = [obj objectForKeyedSubscript:*(*(&v205 + 1) + 8 * j)];
              v37 = v37 + [v39 unsignedIntegerValue];
            }

            v35 = [obj countByEnumeratingWithState:&v205 objects:v222 count:16];
          }

          while (v35);
        }

        else
        {
          v37 = 0.0;
        }

        v142 = v27;
        v145 = v15;
        v154 = v9;

        v157 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v170 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v201 = 0u;
        v202 = 0u;
        v203 = 0u;
        v204 = 0u;
        v166 = v33;
        v53 = [v166 countByEnumeratingWithState:&v201 objects:v221 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v202;
          do
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v202 != v55)
              {
                objc_enumerationMutation(v166);
              }

              v57 = *(*(&v201 + 1) + 8 * k);
              v58 = [v57 uuid];
              v59 = [obj objectForKeyedSubscript:v58];
              v60 = [v59 unsignedIntegerValue];

              if (v60)
              {
                v61 = [v57 uuid];
                [v170 addObject:v61];
              }
            }

            v54 = [v166 countByEnumeratingWithState:&v201 objects:v221 count:16];
          }

          while (v54);
        }

        v62 = [a1 _assetSortComparatorForPortraitWallpaper];
        v63 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v64 = [v170 count];
        v65 = 5;
        if (v64 < 5)
        {
          v65 = v64;
        }

        v158 = v65;
        v66 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v161 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v160 = v66;
        if ([v63 count] < a7)
        {
          v162 = 0;
          v67 = v37 / v29;
          v153 = *MEMORY[0x1E6978C90];
          v152 = *MEMORY[0x1E6978BE0];
          v151 = *MEMORY[0x1E6978CF0];
          v68 = 0x1E829F000uLL;
          v168 = v63;
          do
          {
            if (![v170 count] || v162 >= a6)
            {
              break;
            }

            v69 = [v170 copy];
            if (![v69 count])
            {
              goto LABEL_142;
            }

            v159 = 0;
            v70 = 0;
            v172 = v69;
            do
            {
              context = objc_autoreleasePoolPush();
              v165 = v70;
              v71 = [v69 objectAtIndexedSubscript:v70];
              v169 = v71;
              if ([v66 count] >= 5 && (objc_msgSend(v66, "containsObject:", v71) & 1) == 0)
              {
                [v170 removeObject:v71];
                ++v159;
                goto LABEL_141;
              }

              if ([v66 count] >= 3)
              {
                v72 = [v157 objectForKeyedSubscript:v71];
                if ([v72 type] == 1)
                {

                  v66 = v160;
                }

                else
                {
                  v73 = [obj objectForKeyedSubscript:v71];
                  [v73 doubleValue];
                  v75 = v74;

                  v66 = v160;
                  if (v75 < v67)
                  {
                    v66 = v160;
                    [v170 removeObjectsInRange:{v165 - v159, objc_msgSend(v170, "count") - (v165 - v159)}];

                    objc_autoreleasePoolPop(context);
                    v69 = v172;
                    break;
                  }
                }
              }

              v76 = [v161 objectForKeyedSubscript:v71];
              if (!v76)
              {
                v77 = [v154 librarySpecificFetchOptions];
                v220[0] = v153;
                v220[1] = v152;
                v220[2] = v151;
                v78 = [MEMORY[0x1E695DEC8] arrayWithObjects:v220 count:3];
                [v77 setFetchPropertySets:v78];

                v79 = MEMORY[0x1E695DFD8];
                v80 = [MEMORY[0x1E6978980] localIdentifierWithUUID:v71];
                v81 = [v79 setWithObject:v80];
                v82 = [a1 predicateForPortraitWallpaperCandidatesWithPersonLocalIdentifiers:v81];
                [v77 setInternalPredicate:v82];

                v173 = v77;
                v83 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v77];
                v178 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v197 = 0u;
                v198 = 0u;
                v199 = 0u;
                v200 = 0u;
                v84 = v83;
                v85 = [v84 countByEnumeratingWithState:&v197 objects:v219 count:16];
                v182 = v84;
                if (v85)
                {
                  v86 = v85;
                  v87 = *v198;
                  do
                  {
                    for (m = 0; m != v86; ++m)
                    {
                      if (*v198 != v87)
                      {
                        objc_enumerationMutation(v182);
                      }

                      v89 = *(*(&v197 + 1) + 8 * m);
                      if ([*(v68 + 936) assetIsSafeForWidgetDisplay:v89])
                      {
                        buf[0] = 0;
                        [PNSuggestionWallpaperUtilities bestWallpaperCropForAsset:v89 classification:1 outputCropScore:0 outputLayoutAcceptable:buf];
                        if (buf[0] == 1)
                        {
                          [v178 addObject:v89];
                        }
                      }
                    }

                    v84 = v182;
                    v86 = [v182 countByEnumeratingWithState:&v197 objects:v219 count:16];
                  }

                  while (v86);
                }

                if (![v178 count])
                {
                  [v170 removeObject:v169];
                  ++v159;

                  v63 = v168;
                  v66 = v160;
                  v69 = v172;
                  goto LABEL_140;
                }

                v90 = [objc_alloc(MEMORY[0x1E69BE3A0]) initWithDistanceBlock:&__block_literal_global_263];
                [v90 setMaximumDistance:7200.0];
                [v90 setMinimumNumberOfObjects:1];
                v156 = v90;
                v91 = [v90 performWithDataset:v178 progressBlock:0];
                v176 = objc_alloc_init(MEMORY[0x1E695DF70]);
                v193 = 0u;
                v194 = 0u;
                v195 = 0u;
                v196 = 0u;
                v180 = v91;
                v92 = [v180 countByEnumeratingWithState:&v193 objects:v218 count:16];
                if (v92)
                {
                  v93 = v92;
                  v183 = *v194;
                  do
                  {
                    for (n = 0; n != v93; ++n)
                    {
                      if (*v194 != v183)
                      {
                        objc_enumerationMutation(v180);
                      }

                      v95 = *(*(&v193 + 1) + 8 * n);
                      v189 = 0u;
                      v190 = 0u;
                      v191 = 0u;
                      v192 = 0u;
                      v96 = [v95 objects];
                      v97 = [v96 countByEnumeratingWithState:&v189 objects:v217 count:16];
                      if (!v97)
                      {
                        v99 = v96;
                        goto LABEL_98;
                      }

                      v98 = v97;
                      v99 = 0;
                      v100 = *v190;
                      do
                      {
                        for (ii = 0; ii != v98; ++ii)
                        {
                          if (*v190 != v100)
                          {
                            objc_enumerationMutation(v96);
                          }

                          v102 = *(*(&v189 + 1) + 8 * ii);
                          if (!v99 || (v62)[2](v62, *(*(&v189 + 1) + 8 * ii), v99) == -1)
                          {
                            v103 = v102;

                            v99 = v103;
                          }
                        }

                        v98 = [v96 countByEnumeratingWithState:&v189 objects:v217 count:16];
                      }

                      while (v98);

                      if (v99)
                      {
                        [v176 addObject:v99];
LABEL_98:

                        continue;
                      }
                    }

                    v93 = [v180 countByEnumeratingWithState:&v193 objects:v218 count:16];
                  }

                  while (v93);
                }

                v76 = [v176 sortedArrayUsingComparator:v62];
                [v161 setObject:v76 forKeyedSubscript:v169];

                v63 = v168;
                v66 = v160;
              }

              v104 = v158 - [v66 count];
              v105 = a7 - [v63 count];
              v106 = vcvtmd_u64_f64(v105 / v104);
              if (v106 <= 1)
              {
                v107 = 1;
              }

              else
              {
                v107 = v106;
              }

              v108 = vcvtmd_u64_f64((a6 - v162) / v104);
              if (v108 <= 1)
              {
                v109 = 1;
              }

              else
              {
                v109 = v108;
              }

              v182 = [v76 mutableCopy];
              v185 = 0u;
              v186 = 0u;
              v187 = 0u;
              v188 = 0u;
              v173 = v76;
              v110 = [v173 countByEnumeratingWithState:&v185 objects:v216 count:16];
              if (!v110)
              {
                v115 = 0;
                v69 = v172;
                v118 = v162;
                goto LABEL_135;
              }

              v111 = v110;
              v112 = 0;
              v113 = v162;
              v114 = 0;
              v181 = (v107 + v105 - v107 * v104);
              v184 = v109 + a6 - v162 - v109 * v104;
              v115 = 0;
              v116 = *v186;
              while (2)
              {
                v117 = 0;
                v163 = v113 + v111;
                v118 = v113;
                v119 = v112 + 1;
                v177 = v112 + v111;
                v179 = v113;
                do
                {
                  if (*v186 != v116)
                  {
                    objc_enumerationMutation(v173);
                  }

                  v120 = *(*(&v185 + 1) + 8 * v117);
                  [v182 removeObject:v120];
                  if (v171[2](v171, v120))
                  {
                    [v168 addObject:v120];
                    if (++v114 >= v181)
                    {
                      v115 = 1;
                      v69 = v172;
                      goto LABEL_135;
                    }

                    v115 = 1;
                    v69 = v172;
                    if ([v168 count] >= a7)
                    {
                      goto LABEL_135;
                    }
                  }

                  else
                  {
                    v69 = v172;
                  }

                  if (++v118 >= a6)
                  {
                    if (a6 <= v179 + 1)
                    {
                      v118 = v179 + 1;
                    }

                    else
                    {
                      v118 = a6;
                    }

                    v121 = PLWallpaperGetLog();
                    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109120;
                      *v224 = v118;
                      v122 = v121;
                      v123 = "[PNSuggestionWallpaperUtilities] max (%d) number of total filter tries reached, stopping early.";
                      v124 = 8;
                      goto LABEL_131;
                    }

LABEL_132:

                    goto LABEL_135;
                  }

                  if (v119 >= v184)
                  {
                    v121 = PLWallpaperGetLog();
                    if (os_log_type_enabled(v121, OS_LOG_TYPE_INFO))
                    {
                      *buf = 67109378;
                      *v224 = v118;
                      *&v224[4] = 2112;
                      *&v224[6] = v169;
                      v122 = v121;
                      v123 = "[PNSuggestionWallpaperUtilities] max (%d) number of filter tries reached for person (%@), stopping early for person.";
                      v124 = 18;
LABEL_131:
                      _os_log_impl(&dword_1C6F5C000, v122, OS_LOG_TYPE_INFO, v123, buf, v124);
                    }

                    goto LABEL_132;
                  }

                  ++v117;
                  ++v119;
                }

                while (v111 != v117);
                v111 = [v173 countByEnumeratingWithState:&v185 objects:v216 count:16];
                v118 = v163;
                v113 = v163;
                v112 = v177;
                if (v111)
                {
                  continue;
                }

                break;
              }

LABEL_135:
              v162 = v118;

              if ([v182 count])
              {
                [v161 setObject:v182 forKeyedSubscript:v169];
              }

              else
              {
                [v170 removeObject:v169];
                ++v159;
              }

              v63 = v168;
              v66 = v160;
              v68 = 0x1E829F000;
              if (v115)
              {
                [v160 addObject:v169];
              }

LABEL_140:

LABEL_141:
              objc_autoreleasePoolPop(context);
              v70 = v165 + 1;
            }

            while (v165 + 1 < [v69 count]);
LABEL_142:
          }

          while ([v63 count] < a7);
        }

        v125 = [v66 count];
        v126 = PLWallpaperGetLog();
        v127 = os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT);
        v10 = v147;
        if (v125)
        {
          v14 = v146;
          if (v127)
          {
            v128 = [v160 count];
            *buf = 134217984;
            *v224 = v128;
            _os_log_impl(&dword_1C6F5C000, v126, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] %tu important people found in library to feature", buf, 0xCu);
          }

          v129 = mach_absolute_time();
          numer = info.numer;
          denom = info.denom;
          v132 = v146;
          v133 = v132;
          v9 = v154;
          v15 = v145;
          v27 = v142;
          if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v132))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v133, OS_SIGNPOST_INTERVAL_END, spid, "ColdStartPortraitWallpaper", "", buf, 2u);
          }

          if (os_log_type_enabled(v133, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v224 = "ColdStartPortraitWallpaper";
            *&v224[8] = 2048;
            *&v224[10] = ((((v129 - v149) * numer) / denom) / 1000000.0);
            _os_log_impl(&dword_1C6F5C000, v133, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v134 = PLWallpaperGetLog();
          if (os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT))
          {
            v135 = [v63 count];
            *buf = 134217984;
            *v224 = v135;
            _os_log_impl(&dword_1C6F5C000, v134, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] %tu assets selected as fallback wallpaper gallery featured photo suggestions", buf, 0xCu);
          }

          v40 = v63;
        }

        else
        {
          v15 = v145;
          v14 = v146;
          if (v127)
          {
            *buf = 0;
            _os_log_impl(&dword_1C6F5C000, v126, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] No candidate assets found for important people found in library, returning 0 fallback featured photos for wallpaper gallery", buf, 2u);
          }

          v136 = mach_absolute_time();
          v137 = info.numer;
          v138 = info.denom;
          v139 = v146;
          v140 = v139;
          v9 = v154;
          v27 = v142;
          if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v140, OS_SIGNPOST_INTERVAL_END, spid, "ColdStartPortraitWallpaper", "", buf, 2u);
          }

          if (os_log_type_enabled(v140, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            *v224 = "ColdStartPortraitWallpaper";
            *&v224[8] = 2048;
            *&v224[10] = ((((v136 - v149) * v137) / v138) / 1000000.0);
            _os_log_impl(&dword_1C6F5C000, v140, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
          }

          v40 = MEMORY[0x1E695E0F0];
        }

        v26 = v143;
        v25 = v144;
      }

      else
      {
        v47 = PLWallpaperGetLog();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1C6F5C000, v47, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] No people found in library that were present in the past 3 years, returning 0 fallback featured photos for wallpaper gallery", buf, 2u);
        }

        v48 = mach_absolute_time();
        v49 = info.numer;
        v50 = info.denom;
        v51 = v14;
        v52 = v51;
        if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v52, OS_SIGNPOST_INTERVAL_END, spid, "ColdStartPortraitWallpaper", "", buf, 2u);
        }

        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          *v224 = "ColdStartPortraitWallpaper";
          *&v224[8] = 2048;
          *&v224[10] = ((((v48 - v149) * v49) / v50) / 1000000.0);
          _os_log_impl(&dword_1C6F5C000, v52, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
        }

        v40 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v41 = PLWallpaperGetLog();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1C6F5C000, v41, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] Library has no assets, returning 0 fallback featured photos for wallpaper gallery", buf, 2u);
      }

      v42 = mach_absolute_time();
      v43 = info.numer;
      v44 = info.denom;
      v45 = v14;
      v46 = v45;
      if (v150 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v46, OS_SIGNPOST_INTERVAL_END, spid, "ColdStartPortraitWallpaper", "", buf, 2u);
      }

      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *v224 = "ColdStartPortraitWallpaper";
        *&v224[8] = 2048;
        *&v224[10] = ((((v42 - v149) * v43) / v44) / 1000000.0);
        _os_log_impl(&dword_1C6F5C000, v46, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
      }

      v40 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v40 = MEMORY[0x1E695E0F0];
  }

  return v40;
}

uint64_t __145__PNSuggestionWallpaperUtilities__coldStartPortraitWallpaperInPhotoLibrary_candidatePersons_passingFilterBlock_maximumNumberOfTries_targetCount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 type] == 1 && objc_msgSend(v6, "type") != 1)
  {
    goto LABEL_6;
  }

  if ([v6 type] == 1 && objc_msgSend(v5, "type") != 1)
  {
    goto LABEL_8;
  }

  v7 = *(a1 + 32);
  v8 = [v5 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 unsignedIntegerValue];

  v11 = *(a1 + 32);
  v12 = [v6 uuid];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v13 unsignedIntegerValue];

  if (v10 <= v14)
  {
    if (v14 <= v10)
    {
      v17 = [v5 name];
      v18 = [v17 length];

      v19 = [v6 name];
      v20 = [v19 length];

      if (v18 && !v20)
      {
        goto LABEL_6;
      }

      if (!v20 || v18)
      {
        v21 = [v5 uuid];
        v22 = [v6 uuid];
        v15 = [v21 compare:v22];

        goto LABEL_9;
      }
    }

LABEL_8:
    v15 = 1;
    goto LABEL_9;
  }

LABEL_6:
  v15 = -1;
LABEL_9:

  return v15;
}

double __145__PNSuggestionWallpaperUtilities__coldStartPortraitWallpaperInPhotoLibrary_candidatePersons_passingFilterBlock_maximumNumberOfTries_targetCount___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 creationDate];
  v6 = [v4 creationDate];

  [v5 timeIntervalSinceDate:v6];
  v8 = fabs(v7);

  return v8;
}

+ (id)coldStartDeviceOwnerWallpaperInPhotoLibrary:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLWallpaperGetLog();
  v6 = os_signpost_id_generate(v5);
  info = 0;
  mach_timebase_info(&info);
  v7 = v5;
  v8 = v7;
  v9 = v6 - 1;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "ColdStartMeWallpaperPeopleFetch", "", buf, 2u);
  }

  v10 = mach_absolute_time();
  v11 = [a1 _mePersonUUIDInPhotoLibrary:v4];
  if (v11)
  {
    spid = v6;
    v31 = v10;
    v12 = [a1 _personFetchOptionsWithPhotoLibrary:v4];
    v13 = [MEMORY[0x1E6978980] localIdentifierWithUUID:v11];
    v14 = MEMORY[0x1E6978980];
    v33 = v13;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v33 count:1];
    v16 = [v14 fetchPersonsWithLocalIdentifiers:v15 options:v12];

    v17 = mach_absolute_time();
    numer = info.numer;
    denom = info.denom;
    v20 = v8;
    v21 = v20;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v21, OS_SIGNPOST_INTERVAL_END, spid, "ColdStartMeWallpaperPeopleFetch", "", buf, 2u);
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "ColdStartMeWallpaperPeopleFetch";
      v36 = 2048;
      v37 = ((((v17 - v31) * numer) / denom) / 1000000.0);
      _os_log_impl(&dword_1C6F5C000, v21, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v22 = [a1 _coldStartPortraitWallpaperInPhotoLibrary:v4 candidatePersons:v16 passingFilterBlock:&__block_literal_global_252 maximumNumberOfTries:0x7FFFFFFFFFFFFFFFLL targetCount:0x7FFFFFFFFFFFFFFFLL];
  }

  else
  {
    v23 = PLWallpaperGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1C6F5C000, v23, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] No device owner found", buf, 2u);
    }

    v24 = mach_absolute_time();
    v26 = info.numer;
    v25 = info.denom;
    v27 = v8;
    v28 = v27;
    if (v9 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v28, OS_SIGNPOST_INTERVAL_END, v6, "ColdStartMeWallpaperPeopleFetch", "", buf, 2u);
    }

    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v35 = "ColdStartMeWallpaperPeopleFetch";
      v36 = 2048;
      v37 = ((((v24 - v10) * v26) / v25) / 1000000.0);
      _os_log_impl(&dword_1C6F5C000, v28, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
    }

    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

+ (id)coldStartPortraitWallpaperInPhotoLibrary:(id)a3 passingFilterBlock:(id)a4 maximumNumberOfTries:(unint64_t)a5
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v32 = a4;
  v8 = PLWallpaperGetLog();
  v9 = os_signpost_id_generate(v8);
  info = 0;
  mach_timebase_info(&info);
  v10 = v8;
  v11 = v10;
  v12 = v9 - 1;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ColdStartPortraitWallpaperPeopleFetch", "", buf, 2u);
  }

  spid = v9;

  v30 = mach_absolute_time();
  v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v31 = [objc_alloc(MEMORY[0x1E6978B08]) initWithPhotoLibrary:v7];
  v14 = [v31 personUUIDsWithNegativeFeedback];
  [v13 unionSet:v14];
  v15 = [a1 _mePersonUUIDInPhotoLibrary:v7];
  if (v15)
  {
    v16 = PLWallpaperGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v36 = v15;
      _os_log_impl(&dword_1C6F5C000, v16, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] exclude mePersonUUID %@", buf, 0xCu);
    }

    [v13 addObject:v15];
  }

  v17 = [a1 _personFetchOptionsWithPhotoLibrary:v7];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"NOT (%K IN %@)", @"personUUID", v13];
  [v17 setInternalPredicate:v18];

  v19 = [MEMORY[0x1E6978980] fetchPersonsWithOptions:v17];
  v20 = PLWallpaperGetLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [v19 count];
    *buf = 67109120;
    LODWORD(v36) = v21;
    _os_log_impl(&dword_1C6F5C000, v20, OS_LOG_TYPE_DEFAULT, "[PNSuggestionWallpaperUtilities] %d candidate people found in library", buf, 8u);
  }

  v22 = mach_absolute_time();
  numer = info.numer;
  denom = info.denom;
  v25 = v11;
  v26 = v25;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v26, OS_SIGNPOST_INTERVAL_END, spid, "ColdStartPortraitWallpaperPeopleFetch", "", buf, 2u);
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v36 = "ColdStartPortraitWallpaperPeopleFetch";
    v37 = 2048;
    v38 = ((((v22 - v30) * numer) / denom) / 1000000.0);
    _os_log_impl(&dword_1C6F5C000, v26, OS_LOG_TYPE_INFO, "[Performance] %s: %f ms", buf, 0x16u);
  }

  v27 = [a1 _coldStartPortraitWallpaperInPhotoLibrary:v7 candidatePersons:v19 passingFilterBlock:v32 maximumNumberOfTries:a5 targetCount:10];

  return v27;
}

+ (id)wallpaperGalleryPosterTitleFromPlaceNames:(id)a3 personName:(id)a4 isLocatedAtHome:(BOOL)a5
{
  v5 = a5;
  v26 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  v11 = 0;
  if (v10)
  {
    v12 = *v22;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        if ([v14 length])
        {
          if (!v11 || (v15 = [v14 length], v15 < objc_msgSend(v11, "length")))
          {
            v16 = v14;

            v11 = v16;
          }

          if ([v14 length] <= 0x1B)
          {
            v10 = v14;
            goto LABEL_15;
          }
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  if (v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v8;
  }

  if (v8)
  {
    v18 = v8;
  }

  else
  {
    v18 = v10;
  }

  if (v5)
  {
    v17 = v18;
  }

  v19 = v17;
  if (!v19 && v11)
  {
    v19 = v11;
  }

  return v19;
}

+ (id)wallpaperGalleryPosterTitleForSuggestion:(id)a3 withAsset:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    [v7 fetchPropertySetsIfNeeded];
    v18 = 0;
    v9 = [v8 photosOneUpProperties];
    v10 = [v9 placeNamesForLocalizedDetailedDescriptionIsHome:&v18];

    v11 = PLWallpaperGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v8 uuid];
      *buf = 138412802;
      v20 = v12;
      v21 = 1024;
      v22 = v18;
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_1C6F5C000, v11, OS_LOG_TYPE_DEBUG, "[PNSuggestionWallpaperUtilities] Asset UUID: %@. isLocatedAtHome: %d. Localized place names %@", buf, 0x1Cu);
    }

    v13 = [a1 _personNameForGalleryTitleFromSuggestion:v6];
    v14 = [a1 wallpaperGalleryPosterTitleFromPlaceNames:v10 personName:v13 isLocatedAtHome:v18];
  }

  else
  {
    v15 = PLWallpaperGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v6 uuid];
      *buf = 138412290;
      v20 = v16;
      _os_log_impl(&dword_1C6F5C000, v15, OS_LOG_TYPE_ERROR, "[PNSuggestionWallpaperUtilities] Error getting wallpaper asset for suggestion %@", buf, 0xCu);
    }

    v14 = 0;
  }

  return v14;
}

+ (id)wallpaperGallerySmartAlbumSuggestionsFromSuggestions:(id)a3
{
  v7[1] = *MEMORY[0x1E69E9840];
  v3 = [a1 wallpaperGalleryFeaturedPhotoSortedSuggestionsFromSuggestions:a3];
  if ([v3 count])
  {
    v4 = [v3 lastObject];
    v7[0] = v4;
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

+ (id)wallpaperGalleryFeaturedPhotoSortedSuggestionsFromSuggestions:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v5 fetchedObjects];

  v8 = [v6 initWithArray:v7];
  v9 = [a1 randomNumberGeneratorForWallpaperDonation];
  PFMutableArrayShuffleWithRandomNumberGenerator();

  return v8;
}

+ (id)fetchWallpaperGallerySuggestionsInPhotoLibrary:(id)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = [a3 librarySpecificFetchOptions];
  v4 = MEMORY[0x1E696AB28];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"state", 4];
  v11[0] = v5;
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %d AND %K <= %d", @"subtype", 602, @"subtype", 605];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v8 = [v4 andPredicateWithSubpredicates:v7];
  [v3 setPredicate:v8];

  v9 = [MEMORY[0x1E6978AE8] fetchWallpaperSuggestionsWithFeaturedState:1 withOptions:v3];

  return v9;
}

+ (id)randomNumberGeneratorForWallpaperDonationWithDate:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"yyMMdd"];
  v5 = [v4 stringFromDate:v3];
  v6 = [v5 length];
  if (v6 < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = v9 + 1;
      v8 += (v9 + 1) * [v5 characterAtIndex:?];
      v9 = v10;
    }

    while (v7 != v10);
  }

  v11 = [objc_alloc(MEMORY[0x1E69C0838]) initWithSeed:v8];

  return v11;
}

+ (id)randomNumberGeneratorForWallpaperDonation
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 randomNumberGeneratorForWallpaperDonationWithDate:v3];

  return v4;
}

@end