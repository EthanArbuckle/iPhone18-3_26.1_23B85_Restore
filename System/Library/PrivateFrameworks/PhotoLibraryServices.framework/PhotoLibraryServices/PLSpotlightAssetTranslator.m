@interface PLSpotlightAssetTranslator
+ (BOOL)_indexLocalDateCreated;
+ (id)_adjustmentStyleCastForAsset:(id)a3;
+ (id)_albumsUUIDsForAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 assetCounts:(id *)a6;
+ (id)_audioClassificationsForAsset:(id)a3;
+ (id)_contentRatingForAsset:(id)a3 fetchHelper:(id)a4;
+ (id)_highlightUUIDsForAsset:(id)a3 libraryIdentifier:(int64_t)a4 assetCounts:(id *)a5;
+ (id)_humanActionScenesForAsset:(id)a3 fetchHelper:(id)a4 thumbnailMap:(id)a5;
+ (id)_jsonRepresentationForCSPersons:(id)a3;
+ (id)_jsonRepresentationForScenesFromAsset:(id)a3 fetchHelper:(id)a4 indexingContext:(id)a5 isSensitiveLocation:(BOOL *)a6 thumbnailMap:(id)a7;
+ (id)_libraryScopeForAsset:(id)a3;
+ (id)_locationNamesForAsset:(id)a3 graphLocations:(id)a4 countrySynonymProvider:(id)a5;
+ (id)_mediaTypesForAsset:(id)a3;
+ (id)_memoryUUIDsForAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 assetCounts:(id *)a6;
+ (id)_nameForContributor:(id)a3;
+ (id)_partsOfDayForAsset:(id)a3;
+ (id)_partsOfWeekForAsset:(id)a3;
+ (id)_personsForAsset:(id)a3 fetchHelper:(id)a4 thumbnailMap:(id)a5;
+ (id)_privateEncryptedComputeScenesForAsset:(id)a3 fetchHelper:(id)a4 csuTaxonomyObjectStore:(id)a5 locale:(id)a6 isSensitiveLocation:(BOOL *)a7;
+ (id)_revGeoLocationNamesForAsset:(id)a3 countrySynonymProvider:(id)a4;
+ (id)_scenesForAsset:(id)a3 fetchHelper:(id)a4 sceneTaxonomyProvider:(id)a5 thumbnailMap:(id)a6;
+ (id)_sharedLibraryContributorsForAsset:(id)a3;
+ (id)_spotlightSearchableAttributesForAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 indexingContext:(id)a6 documentObservation:(id)a7 propertySets:(unint64_t)a8 embeddingsFetcher:(id)a9;
+ (id)_utilityTypesForAsset:(id)a3 indexingContext:(id)a4;
+ (id)jsonDictionaryFromAsset:(id)a3 libraryIdentifier:(int64_t)a4 indexingContext:(id)a5 includeEmbeddingData:(BOOL)a6 redacted:(BOOL)a7;
+ (id)jsonRepresentationKeys;
+ (id)partialSpotlightSearchableItemFromAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 propertySets:(unint64_t)a6 indexingContext:(id)a7 documentObservation:(id)a8 embeddingsFetcher:(id)a9;
+ (void)_getGraphAttributesForMomentFromFetchHelper:(id)a3 indexingContext:(id)a4 businessNames:(id *)a5 businessCategories:(id *)a6 eventNames:(id *)a7 eventCategories:(id *)a8 eventPerformers:(id *)a9 meanings:(id *)a10 holidays:(id *)a11 locationKeywords:(id *)a12;
+ (void)updateThumbnailMap:(id)a3 withMADEmbedding:(id)a4;
@end

@implementation PLSpotlightAssetTranslator

+ (id)_jsonRepresentationForScenesFromAsset:(id)a3 fetchHelper:(id)a4 indexingContext:(id)a5 isSensitiveLocation:(BOOL *)a6 thumbnailMap:(id)a7
{
  v59 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (v13)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_17:
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1377 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];

    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  v46 = [MEMORY[0x1E696AAA8] currentHandler];
  [v46 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1376 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (a6)
  {
    goto LABEL_4;
  }

LABEL_18:
  v48 = [MEMORY[0x1E696AAA8] currentHandler];
  [v48 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1378 description:{@"Invalid parameter not satisfying: %@", @"outSensitiveLocation"}];

LABEL_4:
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = [v15 sceneTaxonomyProvider];
  v20 = [a1 _scenesForAsset:v13 fetchHelper:v14 sceneTaxonomyProvider:v19 thumbnailMap:v16];
  [v18 addObjectsFromArray:v20];

  v21 = [a1 _audioClassificationsForAsset:v13];
  [v18 addObjectsFromArray:v21];

  v50 = v16;
  v22 = [a1 _humanActionScenesForAsset:v13 fetchHelper:v14 thumbnailMap:v16];
  [v18 addObjectsFromArray:v22];

  v57 = 0;
  v23 = [v15 csuTaxonomyObjectStore];
  v51 = v15;
  v24 = [v15 locale];
  v49 = v23;
  v25 = [a1 _privateEncryptedComputeScenesForAsset:v13 fetchHelper:v14 csuTaxonomyObjectStore:v23 locale:v24 isSensitiveLocation:&v57];
  [v18 addObjectsFromArray:v25];

  *a6 = v57;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v18;
  v26 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v54;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v54 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v30 = *(*(&v53 + 1) + 8 * i);
        v31 = objc_opt_new();
        v32 = [v30 label];
        [v31 setObject:v32 forKeyedSubscript:@"label"];

        v33 = [v30 synonyms];
        [v31 setObject:v33 forKeyedSubscript:@"synonyms"];

        v34 = MEMORY[0x1E696AD98];
        [v30 confidence];
        v35 = [v34 numberWithDouble:?];
        [v31 setObject:v35 forKeyedSubscript:@"confidence"];

        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v30, "sceneIdentifier")}];
        [v31 setObject:v36 forKeyedSubscript:@"sceneIdentifier"];

        v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "sceneType")}];
        [v31 setObject:v37 forKeyedSubscript:@"sceneType"];

        v38 = [v30 sceneType];
        v39 = @"unknown";
        if (v38 <= 8)
        {
          v39 = off_1E756F588[v38];
        }

        v40 = v39;
        [v31 setObject:v40 forKeyedSubscript:@"sceneType_humanReadable"];

        v41 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "mediaType")}];
        [v31 setObject:v41 forKeyedSubscript:@"mediaType"];

        [v30 boundingBox];
        v42 = NSStringFromRect(v61);
        [v31 setObject:v42 forKeyedSubscript:@"boundingBox"];

        v43 = MEMORY[0x1E696AD98];
        [v30 sceneArea];
        v44 = [v43 numberWithFloat:?];
        [v31 setObject:v44 forKeyedSubscript:@"sceneArea"];

        [v17 addObject:v31];
      }

      v27 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v27);
  }

  return v17;
}

+ (id)_jsonRepresentationForCSPersons:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = objc_opt_new();
        v11 = [v9 displayName];
        [v10 setObject:v11 forKeyedSubscript:@"displayName"];

        v12 = [v9 photosPersonIdentifier];
        [v10 setObject:v12 forKeyedSubscript:@"photosPersonIdentifier"];

        v13 = [v9 contactIdentifier];
        [v10 setObject:v13 forKeyedSubscript:@"contactIdentifier"];

        v14 = [v9 nameAlternatives];
        [v10 setObject:v14 forKeyedSubscript:@"nameAlternatives"];

        v15 = [v9 faceAttributes];
        [v10 setObject:v15 forKeyedSubscript:@"faceAttributes"];

        v16 = [v9 personType];
        [v10 setObject:v16 forKeyedSubscript:@"personType"];

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)jsonDictionaryFromAsset:(id)a3 libraryIdentifier:(int64_t)a4 indexingContext:(id)a5 includeEmbeddingData:(BOOL)a6 redacted:(BOOL)a7
{
  v126 = a6;
  v153 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v139 = a5;
  v11 = [PLSearchIndexingLazyFetchHelper alloc];
  v12 = [v10 managedObjectContext];
  v125 = a4;
  v138 = [(PLSearchIndexingLazyFetchHelper *)v11 initWithObject:v10 libraryIdentifier:a4 managedObjectContext:v12];

  v13 = [v10 additionalAttributes];
  v14 = [v10 mediaAnalysisAttributes];
  v137 = objc_alloc_init(MEMORY[0x1E696AC80]);
  if ([v10 kind] == 1)
  {
    v136 = objc_alloc_init(PLSearchThumbnailMap);
  }

  else
  {
    v136 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v16 = [v10 uuid];
  [v15 setObject:v16 forKeyedSubscript:@"uuid"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "hidden")}];
  [v15 setObject:v17 forKeyedSubscript:@"hidden"];

  v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v10, "trashedState")}];
  [v15 setObject:v18 forKeyedSubscript:@"trashedState"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "reverseLocationDataIsValid")}];
  [v15 setObject:v19 forKeyedSubscript:@"photosReverseLocationDataIsValid"];

  [v15 setObject:@"com.apple.photos.search.result.collection.asset" forKeyedSubscript:@"photosResultType"];
  v20 = [v10 formattedCameraModel];
  [v15 setObject:v20 forKeyedSubscript:@"photosAcquisitionModel"];

  v21 = [v10 moment];
  v22 = [v21 uuid];
  [v15 setObject:v22 forKeyedSubscript:@"photosContainerIdentifier"];

  v23 = [v10 uniformTypeIdentifier];
  [v15 setObject:v23 forKeyedSubscript:@"photosContentType"];

  v24 = [v10 title];
  [v15 setObject:v24 forKeyedSubscript:@"photosTitle"];

  v25 = [v10 longDescription];
  [v15 setObject:v25 forKeyedSubscript:@"photosContentDescription"];

  v26 = MEMORY[0x1E696AD98];
  [v10 curationScore];
  v27 = [v26 numberWithDouble:?];
  [v15 setObject:v27 forKeyedSubscript:@"photosCurationScore"];

  v28 = MEMORY[0x1E696AD98];
  [v10 overallAestheticScore];
  v29 = [v28 numberWithFloat:?];
  [v15 setObject:v29 forKeyedSubscript:@"photosAestheticScore"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v10, "isFavorite")}];
  [v15 setObject:v30 forKeyedSubscript:@"photosFavorited"];

  v31 = [a1 _mediaTypesForAsset:v10];
  [v15 setObject:v31 forKeyedSubscript:@"photosMediaTypes"];

  v32 = [a1 _adjustmentStyleCastForAsset:v10];
  [v15 setObject:v32 forKeyedSubscript:@"photosPhotographicStyles"];

  v33 = [a1 _contentRatingForAsset:v10 fetchHelper:v138];
  [v15 setObject:v33 forKeyedSubscript:@"photosContentRating"];

  v34 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v13, "sceneAnalysisVersion")}];
  [v15 setObject:v34 forKeyedSubscript:@"photosSceneAnalysisVersion"];

  v35 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v13, "faceAnalysisVersion")}];
  [v15 setObject:v35 forKeyedSubscript:@"photosFaceAnalysisVersion"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v14, "mediaAnalysisVersion")}];
  [v15 setObject:v36 forKeyedSubscript:@"photosMediaAnalysisVersion"];

  v37 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v14, "mediaAnalysisImageVersion")}];
  [v15 setObject:v37 forKeyedSubscript:@"photosMediaAnalysisImageVersion"];

  v38 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v14, "characterRecognitionVersion")}];
  [v15 setObject:v38 forKeyedSubscript:@"photosCharacterRecognitionAnalysisVersion"];

  v39 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v14, "vaAnalysisVersion")}];
  [v15 setObject:v39 forKeyedSubscript:@"photosPrivateEncryptedComputeAnalysisVersion"];

  v40 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v14, "vaLocationAnalysisVersion")}];
  [v15 setObject:v40 forKeyedSubscript:@"photosLocationPrivateEncryptedComputeAnalysisVersion"];

  v41 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v14, "imageEmbeddingVersion")}];
  [v15 setObject:v41 forKeyedSubscript:@"photosMediaAnalysisImageEmbeddingVersion"];

  v42 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v14, "videoEmbeddingVersion")}];
  [v15 setObject:v42 forKeyedSubscript:@"photosMediaAnalysisVideoEmbeddingVersion"];

  v43 = [v10 localDateCreated];
  v127 = v14;
  if ([a1 _indexLocalDateCreated])
  {
    v44 = v43;
    [v15 setObject:&unk_1F0FBC748 forKeyedSubscript:@"photosTimeZoneOffset"];
    [v15 setObject:&unk_1F0FBC748 forKeyedSubscript:@"photosInferredTimeZoneOffset"];
  }

  else
  {
    v44 = [v10 dateCreated];
    v45 = [v13 timeZoneName];
    if (v45)
    {
      [v15 setObject:v45 forKeyedSubscript:@"photosTimeZoneName"];
    }

    else
    {
      v46 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:v46 forKeyedSubscript:@"photosTimeZoneName"];
    }

    v47 = [v13 timeZoneOffset];
    if (v47)
    {
      [v15 setObject:v47 forKeyedSubscript:@"photosTimeZoneOffset"];
    }

    else
    {
      v48 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:v48 forKeyedSubscript:@"photosTimeZoneOffset"];
    }

    v49 = [v13 inferredTimeZoneOffset];
    if (v49)
    {
      [v15 setObject:v49 forKeyedSubscript:@"photosInferredTimeZoneOffset"];
    }

    else
    {
      v50 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:v50 forKeyedSubscript:@"photosInferredTimeZoneOffset"];
    }
  }

  v129 = v44;
  v51 = [v137 stringFromDate:v44];
  [v15 setObject:v51 forKeyedSubscript:@"photosContentCreationDate"];

  v52 = [v10 addedDate];
  v53 = [v137 stringFromDate:v52];
  [v15 setObject:v53 forKeyedSubscript:@"photosContentAddedDate"];

  v54 = [v139 searchIndexDateFormatter];
  v55 = [v54 localizedMonthStringsFromDate:v43];
  v123 = v54;
  v56 = [v54 newLocalizedComponentsFromDate:v43 includeMonth:0];
  v122 = v55;
  [v15 setObject:v55 forKeyedSubscript:@"photosContentCreationDateMonths"];
  v121 = v56;
  [v15 setObject:v56 forKeyedSubscript:@"photosContentCreationDateYears"];
  v57 = [v10 moment];

  v128 = v13;
  v124 = v43;
  if (v57)
  {
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    [a1 _getGraphAttributesForMomentFromFetchHelper:v138 indexingContext:v139 businessNames:&v150 businessCategories:&v149 eventNames:&v148 eventCategories:&v147 eventPerformers:&v146 meanings:&v145 holidays:&v144 locationKeywords:&v143];
    v135 = v150;
    v134 = v149;
    v133 = v148;
    v132 = v147;
    v58 = v146;
    v131 = v145;
    v130 = v144;
    v59 = v143;
  }

  else
  {
    v60 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v61 = [v10 uuid];
      *buf = 138412290;
      v152 = v61;
      _os_log_impl(&dword_19BF1F000, v60, OS_LOG_TYPE_INFO, "No Moment set for asset: %@. No Knowledge Graph data for this asset.", buf, 0xCu);
    }

    v59 = 0;
    v130 = 0;
    v131 = 0;
    v58 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v135 = 0;
  }

  v62 = [v10 dateCreated];
  v63 = [v139 calendar];
  v64 = [PLSpotlightTranslatorUtilities seasonsForDate:v62 calendar:v63];

  v65 = [v139 countrySynonymProvider];
  v119 = v59;
  v66 = [a1 _locationNamesForAsset:v10 graphLocations:v59 countrySynonymProvider:v65];

  [v15 setObject:v135 forKeyedSubscript:@"photosBusinessNames"];
  [v15 setObject:v134 forKeyedSubscript:@"photosBusinessCategories"];
  [v15 setObject:v133 forKeyedSubscript:@"photosEventNames"];
  [v15 setObject:v132 forKeyedSubscript:@"photosEventCategories"];
  v120 = v58;
  [v15 setObject:v58 forKeyedSubscript:@"photosEventPerformers"];
  [v15 setObject:v131 forKeyedSubscript:@"photosMeanings"];
  [v15 setObject:v130 forKeyedSubscript:@"photosHolidays"];
  v118 = v64;
  [v15 setObject:v64 forKeyedSubscript:@"photosSeasons"];
  v67 = [a1 _partsOfDayForAsset:v10];
  [v15 setObject:v67 forKeyedSubscript:@"photosPartsOfDay"];

  v68 = [a1 _partsOfWeekForAsset:v10];
  [v15 setObject:v68 forKeyedSubscript:@"photosPartsOfWeek"];

  v117 = v66;
  [v15 setObject:v66 forKeyedSubscript:@"photosLocationKeywords"];
  if ([v10 kind] == 1)
  {
    v69 = MEMORY[0x1E696AD98];
    [v10 duration];
    v70 = [v69 numberWithDouble:?];
    [v15 setObject:v70 forKeyedSubscript:@"photosDuration"];
  }

  if ([v139 isSharedLibraryEnabled])
  {
    v71 = [a1 _libraryScopeForAsset:v10];
    [v15 setObject:v71 forKeyedSubscript:@"photosLibraryName"];

    v72 = [a1 _sharedLibraryContributorsForAsset:v10];
    v73 = [a1 _jsonRepresentationForCSPersons:v72];
    [v15 setObject:v73 forKeyedSubscript:@"photosSharedLibraryContributors"];
  }

  v74 = [MEMORY[0x1E695DF00] now];
  v75 = [v137 stringFromDate:v74];
  [v15 setObject:v75 forKeyedSubscript:@"photosDonationTimestamp"];

  v76 = [v10 importedByBundleIdentifier];
  v77 = [v10 importedByDisplayName];
  if (PLShouldConstructDisplayNameForAppBundle(v76, v77))
  {
    v78 = PLSyndicatedDisplayNameForAppBundle(v76, v77);
    [v15 setObject:v78 forKeyedSubscript:@"photosSavedFromAppName"];
    [v15 setObject:v76 forKeyedSubscript:@"photosSavedFromAppBundleIdentifier"];
  }

  v115 = v77;
  v116 = v76;
  v79 = [v10 documentObservation];
  v80 = [PLSearchOCRUtilities jsonOCRTextLinesFromDocumentObservation:v79];
  [v15 setObject:v80 forKeyedSubscript:@"photosTextContentPieces"];

  v114 = [a1 _personsForAsset:v10 fetchHelper:v138 thumbnailMap:v136];
  v81 = [a1 _jsonRepresentationForCSPersons:?];
  v113 = v81;
  if ([v81 count])
  {
    v82 = v81;
  }

  else
  {
    v82 = 0;
  }

  [v15 setObject:v82 forKeyedSubscript:@"photosPeople"];
  buf[0] = 0;
  v83 = [a1 _jsonRepresentationForScenesFromAsset:v10 fetchHelper:v138 indexingContext:v139 isSensitiveLocation:buf thumbnailMap:v136];
  v112 = v83;
  if ([v83 count])
  {
    v84 = v83;
  }

  else
  {
    v84 = 0;
  }

  [v15 setObject:v84 forKeyedSubscript:@"photosSceneClassifications"];
  v85 = [MEMORY[0x1E696AD98] numberWithBool:buf[0]];
  [v15 setObject:v85 forKeyedSubscript:@"photosSensitiveLocation"];

  v86 = [a1 _utilityTypesForAsset:v10 indexingContext:v139];
  [v15 setObject:v86 forKeyedSubscript:@"photosUtilityTypes"];

  v87 = [PLKeywordManager keywordsForAsset:v10];
  v88 = [v87 allObjects];
  [v15 setObject:v88 forKeyedSubscript:@"photosKeywords"];

  v142 = 0;
  v89 = [a1 _albumsUUIDsForAsset:v10 fetchHelper:v138 libraryIdentifier:v125 assetCounts:&v142];
  v90 = v142;
  [v15 setObject:v89 forKeyedSubscript:@"photosAlbumUUIDs"];

  v111 = v90;
  [v15 setObject:v90 forKeyedSubscript:@"photosAlbumAssetCounts"];
  v141 = 0;
  v91 = [a1 _memoryUUIDsForAsset:v10 fetchHelper:v138 libraryIdentifier:v125 assetCounts:&v141];
  v92 = v141;
  [v15 setObject:v91 forKeyedSubscript:@"photosMemoryUUIDs"];

  [v15 setObject:v92 forKeyedSubscript:@"photosMemoryAssetCounts"];
  v140 = 0;
  v93 = a1;
  v94 = [a1 _highlightUUIDsForAsset:v10 libraryIdentifier:v125 assetCounts:&v140];
  v95 = v140;
  [v15 setObject:v94 forKeyedSubscript:@"photosHighlightUUIDs"];

  [v15 setObject:v95 forKeyedSubscript:@"photosHighlightAssetCounts"];
  v96 = objc_alloc_init(PLSearchIndexingEmbeddingsFetcher);
  v97 = [(PLSearchIndexingEmbeddingsFetcher *)v96 embeddingForAsset:v10 indexingContext:v139 allowFetchIfMissing:1];
  v98 = [v97 result];
  v99 = [v98 csEmbedding];
  v100 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v97, "isSuccess")}];
  [v15 setObject:v100 forKeyedSubscript:@"hasPhotoEmbedding"];

  if (v126 && !a7)
  {
    v101 = PLSearchJSONForCSEmbedding(v99);
    if (v101)
    {
      [v15 setObject:v101 forKeyedSubscript:@"photoEmbedding"];
    }

    else
    {
      v102 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:v102 forKeyedSubscript:@"photoEmbedding"];
    }
  }

  v103 = MEMORY[0x1E696AD98];
  v104 = [v99 vectors];
  v105 = [v103 numberWithUnsignedInteger:{objc_msgSend(v104, "count")}];
  [v15 setObject:v105 forKeyedSubscript:@"photosEmbeddingCount"];

  [v93 updateThumbnailMap:v136 withMADEmbedding:v98];
  v106 = v129;
  if (_os_feature_enabled_impl())
  {
    v107 = [(PLSearchThumbnailMap *)v136 jsonDictionary];
    if (v107)
    {
      [v15 setObject:v107 forKeyedSubscript:@"photosThumbnailMap"];
    }

    else
    {
      v108 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:v108 forKeyedSubscript:@"photosThumbnailMap"];

      v106 = v129;
    }
  }

  return v15;
}

+ (id)jsonRepresentationKeys
{
  v4[66] = *MEMORY[0x1E69E9840];
  v4[0] = @"photosAcquisitionModel";
  v4[1] = @"photosContainerIdentifier";
  v4[2] = @"photosContentType";
  v4[3] = @"photosContentCreationDate";
  v4[4] = @"photosContentCreationDateMonths";
  v4[5] = @"photosContentCreationDateYears";
  v4[6] = @"photosContentAddedDate";
  v4[7] = @"photosTitle";
  v4[8] = @"photosContentDescription";
  v4[9] = @"photosCurationScore";
  v4[10] = @"photosAestheticScore";
  v4[11] = @"photosFavorited";
  v4[12] = @"photosMediaTypes";
  v4[13] = @"photosPhotographicStyles";
  v4[14] = @"photosContentRating";
  v4[15] = @"photosSceneAnalysisVersion";
  v4[16] = @"photosFaceAnalysisVersion";
  v4[17] = @"photosMediaAnalysisVersion";
  v4[18] = @"photosMediaAnalysisImageVersion";
  v4[19] = @"photosPrivateEncryptedComputeAnalysisVersion";
  v4[20] = @"photosLocationPrivateEncryptedComputeAnalysisVersion";
  v4[21] = @"photosCharacterRecognitionAnalysisVersion";
  v4[22] = @"photosMediaAnalysisImageEmbeddingVersion";
  v4[23] = @"photosMediaAnalysisVideoEmbeddingVersion";
  v4[24] = @"photosTimeZoneName";
  v4[25] = @"photosTimeZoneOffset";
  v4[26] = @"photosInferredTimeZoneOffset";
  v4[27] = @"photosLocationKeywords";
  v4[28] = @"photosSeasons";
  v4[29] = @"photosPartsOfDay";
  v4[30] = @"photosPartsOfWeek";
  v4[31] = @"photosBusinessNames";
  v4[32] = @"photosBusinessCategories";
  v4[33] = @"photosEventNames";
  v4[34] = @"photosEventCategories";
  v4[35] = @"photosEventPerformers";
  v4[36] = @"photosMeanings";
  v4[37] = @"photosHolidays";
  v4[38] = @"photosResultType";
  v4[39] = @"photosDuration";
  v4[40] = @"photosLibraryName";
  v4[41] = @"photosSharedLibraryContributors";
  v4[42] = @"photosDonationTimestamp";
  v4[43] = @"photosSavedFromAppName";
  v4[44] = @"photosSavedFromAppBundleIdentifier";
  v4[45] = @"photosFilename";
  v4[46] = @"photosTextContentPieces";
  v4[47] = @"photosPeople";
  v4[48] = @"photosSceneClassifications";
  v4[49] = @"photosUtilityTypes";
  v4[50] = @"photosKeywords";
  v4[51] = @"photosAlbumUUIDs";
  v4[52] = @"photosAlbumAssetCounts";
  v4[53] = @"photosMemoryUUIDs";
  v4[54] = @"photosMemoryAssetCounts";
  v4[55] = @"photosHighlightUUIDs";
  v4[56] = @"photosHighlightAssetCounts";
  v4[57] = @"photosSensitiveLocation";
  v4[58] = @"photosReverseLocationDataIsValid";
  v4[59] = @"photosEmbeddingCount";
  v4[60] = @"photosThumbnailMap";
  v4[61] = @"photoEmbedding";
  v4[62] = @"uuid";
  v4[63] = @"hidden";
  v4[64] = @"trashedState";
  v4[65] = @"hasPhotoEmbedding";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:66];

  return v2;
}

+ (BOOL)_indexLocalDateCreated
{
  if (_indexLocalDateCreated_onceToken != -1)
  {
    dispatch_once(&_indexLocalDateCreated_onceToken, &__block_literal_global_40847);
  }

  return _indexLocalDateCreated_indexLocalDateCreated;
}

void __52__PLSpotlightAssetTranslator__indexLocalDateCreated__block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v0 registerDefaults:&unk_1F0FC0730];
  _indexLocalDateCreated_indexLocalDateCreated = [v0 BOOLForKey:@"indexLocalDateCreated"];
  v1 = PLSearchBackendModelTranslationGetLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    if (_indexLocalDateCreated_indexLocalDateCreated)
    {
      v2 = @"YES";
    }

    else
    {
      v2 = @"NO";
    }

    v3 = v2;
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_19BF1F000, v1, OS_LOG_TYPE_DEFAULT, "indexLocalDateCreated: %@.", &v4, 0xCu);
  }
}

+ (id)_highlightUUIDsForAsset:(id)a3 libraryIdentifier:(int64_t)a4 assetCounts:(id *)a5
{
  v9 = a3;
  if (v9)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1043 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1044 description:{@"Invalid parameter not satisfying: %@", @"outAssetCounts"}];

LABEL_3:
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = [v9 dayGroupHighlightBeingAssets];
  v13 = [PLPhotosHighlight isEligibleForSearchIndexingPredicateForLibraryIdentifier:a4];
  v14 = [v13 evaluateWithObject:v12];

  if (v14)
  {
    v15 = [v12 uuid];
    [v10 addObject:v15];

    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "dayGroupAssetsCount")}];
    [v11 addObject:v16];
  }

  v17 = v11;
  *a5 = v11;

  return v10;
}

+ (id)_memoryUUIDsForAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 assetCounts:(id *)a6
{
  v34 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v28 = v10;
  if (!v10)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1026 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!a6)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"outAssetCounts"}];
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = [v11 memoriesEligibleForSearchIndexing];
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v30;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v30 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        v20 = [v19 uuid];
        [v12 addObject:v20];

        v21 = MEMORY[0x1E696AD98];
        v22 = [v19 curatedAssets];
        v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "count")}];
        [v13 addObject:v23];
      }

      v16 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v24 = v13;
  *a6 = v13;

  return v12;
}

+ (id)_albumsUUIDsForAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 assetCounts:(id *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v26 = v10;
  if (!v10)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1009 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!a6)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:1010 description:{@"Invalid parameter not satisfying: %@", @"outAssetCounts"}];
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = [v11 albumsEligibleForSearchIndexing];
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        v20 = [v19 uuid];
        [v12 addObject:v20];

        v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "cachedCount")}];
        [v13 addObject:v21];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v22 = v13;
  *a6 = v13;

  return v12;
}

+ (id)_nameForContributor:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 nameComponents];
  if (v4)
  {
    v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v4 style:0 options:0];
  }

  else
  {
    v6 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "No name for contributor: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_sharedLibraryContributorsForAsset:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = v3;
  obj = [v3 libraryScopeContributors];
  v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v26)
  {
    v24 = *v28;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v27 + 1) + 8 * i);
        v6 = [a1 _nameForContributor:v5];
        v7 = [v5 emailAddress];
        v8 = [v5 phoneNumber];
        v9 = objc_opt_new();
        if ([v5 isCurrentUser])
        {
          v10 = PLServicesSharedLibraryLocalizedFrameworkString();
          [v9 addObject:v10];
          v11 = PLServicesSharedLibraryLocalizedFrameworkString();
          [v9 addObject:v11];
        }

        v12 = PLServicesSharedLibraryLocalizedFrameworkString();
        if ([v6 length])
        {
          v13 = PFStringWithValidatedFormat();
          [v9 addObject:{v13, v6}];
        }

        if ([v7 length])
        {
          v14 = PFStringWithValidatedFormat();
          [v9 addObject:{v14, v7}];
        }

        if ([v8 length])
        {
          v15 = PFStringWithValidatedFormat();
          [v9 addObject:{v15, v8}];
        }

        v16 = [v9 firstObject];
        if ([v16 length])
        {
          [v9 removeObject:v16];
          v17 = objc_alloc(MEMORY[0x1E6964E50]);
          v18 = [v5 uuid];
          v19 = [v17 initWithDisplayName:v16 handles:0 handleIdentifier:0 photosPersonIdentifier:v18 isPhotosPerson:1 personType:1 nameAlternatives:v9 faceAttributes:0];

          [v23 addObject:v19];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  return v23;
}

+ (id)_libraryScopeForAsset:(id)a3
{
  [a3 hasLibraryScope];
  v3 = PLServicesSharedLibraryLocalizedFrameworkString();

  return v3;
}

+ (id)_revGeoLocationNamesForAsset:(id)a3 countrySynonymProvider:(id)a4
{
  v61 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    [v42 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (([v7 reverseLocationDataIsValid] & 1) == 0)
  {
    v20 = PLSearchBackendModelTranslationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_35;
    }

    v36 = [v7 uuid];
    *buf = 138543362;
    v60 = v36;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Invalid RevGeo location data for asset: %{public}@. Not indexing locations.", buf, 0xCu);
    goto LABEL_34;
  }

  v10 = [v7 locationInfo];
  v11 = [v10 isHome];

  if (v11)
  {
    v12 = PLMomentsLocalizedFrameworkString(@"MOMENT_HOME");
    [v9 addObject:v12];
    v13 = PLSearchLocalizedSynonymsForKey(@"SEARCH_HOME");
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v53;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v53 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v9 addObject:*(*(&v52 + 1) + 8 * i)];
        }

        v15 = [v13 countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v15);
    }
  }

  v18 = [v7 locationInfo];
  v19 = [v7 placeAnnotation];
  v20 = [v18 placeWithAnnotation:v19];

  if (v20)
  {
    v43 = v7;
    v21 = &qword_19C60BC20;
    do
    {
      v22 = *v21;
      v23 = [v20 placeInfosForOrderType];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
      v25 = [v23 objectForKeyedSubscript:v24];

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v26 = v25;
      v27 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v49;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v49 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = [*(*(&v48 + 1) + 8 * j) placeName];
            [v9 addObject:v31];
          }

          v28 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v28);
      }

      --v21;
    }

    while (v21 >= _revGeoLocationNamesForAsset_countrySynonymProvider__revGeoDominantOrderTypes);
    v7 = v43;
    v32 = [v43 locationInfo];
    v33 = [v32 countryCode];

    if (v33)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v34 = [v43 locationInfo];
      v35 = [v34 countryCode];
      v36 = [v8 synonymsForCountryCode:v35];

      v37 = [v36 countByEnumeratingWithState:&v44 objects:v56 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v45;
        do
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v45 != v39)
            {
              objc_enumerationMutation(v36);
            }

            [v9 addObject:*(*(&v44 + 1) + 8 * k)];
          }

          v38 = [v36 countByEnumeratingWithState:&v44 objects:v56 count:16];
        }

        while (v38);
      }

LABEL_34:
    }
  }

LABEL_35:

  return v9;
}

+ (id)_locationNamesForAsset:(id)a3 graphLocations:(id)a4 countrySynonymProvider:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v12 = [a1 _revGeoLocationNamesForAsset:v9 countrySynonymProvider:v11];
  v13 = [v9 reverseLocationData];
  v14 = [v9 reverseLocationDataIsValid];
  v15 = v14;
  if (v13 && v14)
  {
    [v12 addObjectsFromArray:v10];
  }

  else if ([v10 count])
  {
    v16 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      if (v15)
      {
        v17 = @"valid";
      }

      else
      {
        v17 = @"invalid";
      }

      if (v13)
      {
        v18 = @"present";
      }

      else
      {
        v18 = @"nil";
      }

      v19 = [v9 uuid];
      *buf = 138544130;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = v19;
      v40 = 2112;
      v41 = v10;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "Location data is %{public}@ / %{public}@ for asset %{public}@. Not indexing Graph locations: %@", buf, 0x2Au);
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v20 = [v12 copy];
  v21 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = PLSearchStringByTrimmingApostrophes(*(*(&v29 + 1) + 8 * i));
        [v12 addObject:v25];
      }

      v22 = [v20 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v22);
  }

  v26 = [v12 allObjects];

  return v26;
}

+ (id)_utilityTypesForAsset:(id)a3 indexingContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x1E696AAA8] currentHandler];
  [v14 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:827 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];

LABEL_3:
  v10 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PLSpotlightAssetTranslator__utilityTypesForAsset_indexingContext___block_invoke;
  v15[3] = &unk_1E756CFB0;
  v11 = v10;
  v16 = v11;
  PLSearchEnumerateSearchStringsForUtilityCollections(v7, v9, v15);

  return v11;
}

+ (id)_privateEncryptedComputeScenesForAsset:(id)a3 fetchHelper:(id)a4 csuTaxonomyObjectStore:(id)a5 locale:(id)a6 isSensitiveLocation:(BOOL *)a7
{
  v82 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v57 = v13;
  if (!v13)
  {
    v54 = [MEMORY[0x1E696AAA8] currentHandler];
    [v54 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:758 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (a7)
    {
      goto LABEL_3;
    }

LABEL_58:
    v55 = [MEMORY[0x1E696AAA8] currentHandler];
    [v55 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:759 description:{@"Invalid parameter not satisfying: %@", @"outSensitiveLocation"}];

    goto LABEL_3;
  }

  if (!a7)
  {
    goto LABEL_58;
  }

LABEL_3:
  v61 = v16;
  *a7 = 0;
  v56 = v14;
  v17 = [v14 allSceneClassifications];
  v60 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (!v18)
  {
    v20 = 0;
    goto LABEL_54;
  }

  v19 = v18;
  v20 = 0;
  v66 = *v73;
  v21 = *MEMORY[0x1E695F050];
  v22 = *(MEMORY[0x1E695F050] + 8);
  v23 = *(MEMORY[0x1E695F050] + 16);
  v24 = *(MEMORY[0x1E695F050] + 24);
  v58 = a7;
  v59 = v15;
  do
  {
    v25 = 0;
    v64 = v19;
    do
    {
      if (*v73 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v72 + 1) + 8 * v25);
      v27 = [v26 classificationType];
      v28 = v27;
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:v27];
      v30 = [&unk_1F0FBFAC0 containsObject:v29];

      if (v27 == 4 || v30 != 0)
      {
        v32 = [v26 sceneIdentifier];
        v33 = [PLSpotlightTranslatorUtilities CSSceneTypeForPLSceneClassificationType:v27];
        if (v33)
        {
          v34 = v33;
          if (v27 > 7)
          {
            v35 = 1;
          }

          else
          {
            v35 = word_19C60B090[v27];
          }

          v71 = v20;
          v36 = [v15 entityForIdentifier:v32 idType:v35 error:&v71];
          v37 = v71;

          if (!v36 || v37)
          {
            v38 = PLSearchBackendSceneTaxonomyGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v78 = v32;
              v39 = v38;
              v40 = OS_LOG_TYPE_ERROR;
              v41 = "CSU: CSU entity not found in MAD database. Ignoring any PrivateEncryptedCompute scenes for scene identifier: %llu";
              v42 = 12;
LABEL_26:
              _os_log_impl(&dword_19BF1F000, v39, v40, v41, buf, v42);
            }

LABEL_27:
            v19 = v64;
          }

          else
          {
            *a7 |= [v36 sensitiveLocation];
            if ([v36 sensitiveLocation])
            {
              v38 = PLSearchBackendSceneTaxonomyGetLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                v78 = v28;
                v79 = 2048;
                v80 = v32;
                v39 = v38;
                v40 = OS_LOG_TYPE_DEBUG;
                v41 = "CSU: CSU entity not eligible for search. Skipping Scene (%lu, %llu)";
                v42 = 22;
                goto LABEL_26;
              }

              goto LABEL_27;
            }

            v63 = v34;
            v38 = [v36 localizedLabelWithLocale:v61];
            if ([v38 length])
            {
              v43 = objc_opt_new();
              v62 = v36;
              v44 = [v36 localizedSynonymsWithLocale:v61];
              v67 = 0u;
              v68 = 0u;
              v69 = 0u;
              v70 = 0u;
              v45 = [v44 countByEnumeratingWithState:&v67 objects:v76 count:16];
              if (v45)
              {
                v46 = v45;
                v47 = *v68;
                do
                {
                  for (i = 0; i != v46; ++i)
                  {
                    if (*v68 != v47)
                    {
                      objc_enumerationMutation(v44);
                    }

                    v49 = *(*(&v67 + 1) + 8 * i);
                    if (v49 && [*(*(&v67 + 1) + 8 * i) length])
                    {
                      if ([v49 isEqualToString:v38])
                      {
                        v50 = PLSearchBackendSceneTaxonomyGetLog();
                        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v78 = v38;
                          v79 = 2048;
                          v80 = v32;
                          _os_log_impl(&dword_19BF1F000, v50, OS_LOG_TYPE_ERROR, "CSU: Duplicate PrivateEncryptedCompute label: '%@' found in synonyms for Scene ID: %llu", buf, 0x16u);
                        }
                      }

                      else
                      {
                        [v43 addObject:v49];
                      }
                    }
                  }

                  v46 = [v44 countByEnumeratingWithState:&v67 objects:v76 count:16];
                }

                while (v46);
              }

              v51 = objc_alloc(MEMORY[0x1E6964E60]);
              [v26 confidence];
              v52 = [v51 initWithLabel:v38 synonyms:v43 confidence:v32 sceneIdentifier:?];
              [v52 setSceneType:v63];
              [v52 setBoundingBox:{v21, v22, v23, v24}];
              [v60 addObject:v52];

              a7 = v58;
              v15 = v59;
              v19 = v64;
              v36 = v62;
            }

            else
            {
              v43 = PLSearchBackendSceneTaxonomyGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v78 = v32;
                _os_log_impl(&dword_19BF1F000, v43, OS_LOG_TYPE_ERROR, "CSU: Failed to get localized text from CSU for PEC sceneIdentifier: %llu", buf, 0xCu);
              }

              v19 = v64;
            }

            v37 = 0;
          }
        }

        else
        {
          v36 = PLSearchBackendSceneTaxonomyGetLog();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v78 = v32;
            _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_ERROR, "CSU: Unsupported scene classification type for scene identifier: %llu", buf, 0xCu);
          }

          v37 = v20;
          v19 = v64;
        }

        v20 = v37;
      }

      ++v25;
    }

    while (v25 != v19);
    v19 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
  }

  while (v19);
LABEL_54:

  return v60;
}

+ (id)_scenesForAsset:(id)a3 fetchHelper:(id)a4 sceneTaxonomyProvider:(id)a5 thumbnailMap:(id)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v11)
  {
    if (v13)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:734 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v13)
    {
      goto LABEL_3;
    }
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:735 description:{@"Invalid parameter not satisfying: %@", @"sceneTaxonomyProvider"}];

LABEL_3:
  v15 = [v11 additionalAttributes];
  v16 = [v15 sceneAnalysisVersion];

  v17 = [v13 searchIndexSceneTaxonomyForSceneAnalysisVersion:v16];
  if (v17)
  {
    v18 = PLSearchAssetContainsDetectionTypeDog(v11, v12);
    v19 = MEMORY[0x1E695DFD8];
    v20 = [v12 allSceneClassifications];
    v21 = [v19 setWithArray:v20];

    v22 = [PLSpotlightTranslatorUtilities spotlightScenesFromScenes:v21 sceneTaxonomy:v17 thumbnailMap:v14 includeDogScenes:v18];
  }

  else
  {
    if (v16)
    {
      v23 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = [v11 uuid];
        *buf = 67109378;
        v29 = v16;
        v30 = 2112;
        v31 = v24;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Could not open taxonomy for scene analysis version: %i, unable to index scenes for asset: %@", buf, 0x12u);
      }
    }

    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

+ (id)_adjustmentStyleCastForAsset:(id)a3
{
  v3 = MEMORY[0x1E695DF70];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 currentSleetCast];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PLSpotlightAssetTranslator__adjustmentStyleCastForAsset___block_invoke;
  v10[3] = &unk_1E756CFD8;
  v11 = v5;
  v7 = v5;
  PLSearchStringsForAdjustmentStyleCast(v6, v10);
  v8 = [v7 copy];

  return v8;
}

void __59__PLSpotlightAssetTranslator__adjustmentStyleCastForAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    [*(a1 + 32) addObject:v5];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(a1 + 32) addObject:{*(*(&v12 + 1) + 8 * v11++), v12}];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

+ (id)_mediaTypesForAsset:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:572 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([v5 RAWBadgeAttribute] - 1 <= 2)
  {
    v7 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v7];
  }

  v8 = [v5 kind];
  if (v8)
  {
    if (v8 != 1)
    {
      goto LABEL_10;
    }

    v9 = @"SEARCH_MEDIA_TYPE_VIDEOS";
  }

  else
  {
    v9 = @"SEARCH_MEDIA_TYPE_PHOTOS";
  }

  v10 = PLServicesLocalizedFrameworkString();
  [v6 addObject:v10];

  v11 = PLSearchLocalizedSynonymsForKey(v9);
  v12 = [v11 allObjects];
  [v6 addObjectsFromArray:v12];

LABEL_10:
  v13 = [v5 kindSubtype];
  if (v13 > 0x64u)
  {
    if (v13 == 103 || v13 == 102 || v13 == 101)
    {
      goto LABEL_18;
    }
  }

  else if (v13 == 1 || v13 == 2 || v13 == 10)
  {
LABEL_18:
    v14 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v14];
  }

  if ([v5 playbackVariation] == 3)
  {
    v15 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v15];
  }

  v16 = [v5 playbackStyle];
  if (v16 == 5 || v16 == 2)
  {
    v17 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v17];
  }

  if (([v5 avalanchePickType] & 0x10) != 0)
  {
    v18 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v18];
  }

  v19 = [v5 depthType];
  if (v19 == 1)
  {
    v21 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v21];

    if (v13 != 2)
    {
      goto LABEL_32;
    }

    v20 = PLServicesLivePortraitLocalizedFrameworkString();
  }

  else
  {
    if (v19 != 2)
    {
      goto LABEL_32;
    }

    v20 = PLServicesLocalizedFrameworkString();
  }

  v22 = v20;
  [v6 addObject:v20];

LABEL_32:
  if ([v5 isMagicCarpet])
  {
    v23 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v23];
  }

  if ([v5 spatialType])
  {
    v24 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v24];
  }

  v25 = [v5 additionalAttributes];
  v26 = [v25 cameraCaptureDevice];

  if (v26 == 2)
  {
    v27 = PLServicesFRSVLocalizedFrameworkString();
    [v6 addObject:v27];
  }

  else
  {
    if (v26 != 1)
    {
      goto LABEL_51;
    }

    v27 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v27];
    v28 = PLServicesLocalizedFrameworkString();
    if ([v28 length] && (objc_msgSend(v28, "isEqualToString:", @"NULL") & 1) == 0)
    {
      v29 = MEMORY[0x1E695DFD8];
      v30 = [v28 componentsSeparatedByString:@"|"];
      v31 = [v29 setWithArray:v30];

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v40;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v40 != v35)
            {
              objc_enumerationMutation(v32);
            }

            [v6 addObject:*(*(&v39 + 1) + 8 * i)];
          }

          v34 = [v32 countByEnumeratingWithState:&v39 objects:v43 count:16];
        }

        while (v34);
      }
    }
  }

LABEL_51:

  return v6;
}

+ (id)_personsForAsset:(id)a3 fetchHelper:(id)a4 thumbnailMap:(id)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v25 = a5;
  v24 = v9;
  if (!v9)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"asset", 0}];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = [v10 allDetectedFaces];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 associatedPersonForFaceOrTorso:1 orTemporal:1];
        if ([v18 shouldIndexOnAssetsForSearch])
        {
          v19 = [PLSpotlightTranslatorUtilities spotlightPersonFromPLPerson:v18 face:v17 fetchHelper:v10];
          [v11 addObject:v19];
          v20 = [v17 thumbnailIdentifier];
          if ([v20 length])
          {
            v21 = [v18 personUUID];
            [v25 setOrReplaceThumbnailIdentifierIfEarlier:v20 forLookupIdentifier:v21];
          }
        }

        else
        {
          v19 = PLSearchBackendModelTranslationGetLog();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_14;
          }

          v20 = [v18 personUUID];
          *buf = 138412290;
          v31 = v20;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Person not valid for indexing: %@", buf, 0xCu);
        }

LABEL_14:
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)_contentRatingForAsset:(id)a3 fetchHelper:(id)a4
{
  v5 = a4;
  v6 = [a3 additionalAttributes];
  v7 = MEMORY[0x1E695DFD8];
  v8 = [v5 allSceneClassifications];

  v9 = [v7 setWithArray:v8];

  v10 = +[PLSpotlightTranslatorUtilities contentRatingFromScenes:algorithmVersion:](PLSpotlightTranslatorUtilities, "contentRatingFromScenes:algorithmVersion:", v9, [v6 sceneAnalysisVersion]);

  return v10;
}

+ (id)_humanActionScenesForAsset:(id)a3 fetchHelper:(id)a4 thumbnailMap:(id)a5
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a5;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [v6 allDetectedFaces];
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) detectionTraits];
        v15 = [PLSpotlightTranslatorUtilities spotlightScenesFromDetectionTraits:v14 thumbnailMap:v7];

        [v8 addObjectsFromArray:v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)_audioClassificationsForAsset:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 additionalAttributes];

  v6 = [v5 temporalSceneClassifications];
  v7 = [PLSpotlightTranslatorUtilities spotlightAudioClassificationsFromScenes:v6];

  [v4 addObjectsFromArray:v7];

  return v4;
}

+ (id)_partsOfWeekForAsset:(id)a3
{
  v3 = [a3 localDateCreated];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E69C1AB8];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PLSpotlightAssetTranslator__partsOfWeekForAsset___block_invoke;
    v8[3] = &unk_1E756CFD8;
    v6 = v4;
    v9 = v6;
    [v5 partOfWeekLocalizedStringsForLocalDate:v3 result:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

void __51__PLSpotlightAssetTranslator__partsOfWeekForAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    [*(a1 + 32) addObject:v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 length])
        {
          [*(a1 + 32) addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (id)_partsOfDayForAsset:(id)a3
{
  v3 = [a3 localDateCreated];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E69C1AB0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PLSpotlightAssetTranslator__partsOfDayForAsset___block_invoke;
    v8[3] = &unk_1E756CFD8;
    v6 = v4;
    v9 = v6;
    [v5 partOfDayLocalizedStringsForLocalDate:v3 result:v8];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

void __50__PLSpotlightAssetTranslator__partsOfDayForAsset___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v5 length])
  {
    [*(a1 + 32) addObject:v5];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if ([v12 length])
        {
          [*(a1 + 32) addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

+ (void)_getGraphAttributesForMomentFromFetchHelper:(id)a3 indexingContext:(id)a4 businessNames:(id *)a5 businessCategories:(id *)a6 eventNames:(id *)a7 eventCategories:(id *)a8 eventPerformers:(id *)a9 meanings:(id *)a10 holidays:(id *)a11 locationKeywords:(id *)a12
{
  v76 = *MEMORY[0x1E69E9840];
  v19 = a3;
  v60 = a4;
  v61 = v19;
  if (v19)
  {
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_23:
    v44 = [MEMORY[0x1E696AAA8] currentHandler];
    [v44 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"outBusinessNames"}];

    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  v43 = [MEMORY[0x1E696AAA8] currentHandler];
  [v43 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"fetchHelper"}];

  if (!a5)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (a6)
  {
    goto LABEL_4;
  }

LABEL_24:
  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  [v45 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"outBusinessCategories"}];

LABEL_4:
  if (!a7)
  {
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"outEventNames"}];
  }

  if (!a8)
  {
    v47 = [MEMORY[0x1E696AAA8] currentHandler];
    [v47 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"outEventCategories"}];
  }

  v20 = a11;
  if (!a9)
  {
    v48 = [MEMORY[0x1E696AAA8] currentHandler];
    [v48 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"outEventPerformers"}];

    v20 = a11;
  }

  v21 = a12;
  if (a10)
  {
    if (v20)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"outMeanings"}];

    v21 = a12;
    if (a11)
    {
      goto LABEL_12;
    }
  }

  v50 = [MEMORY[0x1E696AAA8] currentHandler];
  [v50 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"outHolidays"}];

  v21 = a12;
LABEL_12:
  v56 = a5;
  v57 = a6;
  v58 = a7;
  v59 = a8;
  if (!v21)
  {
    v51 = [MEMORY[0x1E696AAA8] currentHandler];
    [v51 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"outLocationKeywords"}];
  }

  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v27 = objc_opt_new();
  v28 = objc_opt_new();
  v29 = objc_opt_new();
  v30 = [v60 locale];
  v31 = [v30 localeIdentifier];

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __201__PLSpotlightAssetTranslator__getGraphAttributesForMomentFromFetchHelper_indexingContext_businessNames_businessCategories_eventNames_eventCategories_eventPerformers_meanings_holidays_locationKeywords___block_invoke;
  v66[3] = &unk_1E756C0A0;
  v55 = v22;
  v67 = v55;
  v53 = v23;
  v68 = v53;
  v52 = v24;
  v69 = v52;
  v32 = v25;
  v70 = v32;
  v33 = v26;
  v71 = v33;
  v34 = v27;
  v72 = v34;
  v35 = v28;
  v73 = v35;
  v36 = v29;
  v74 = v36;
  v54 = v31;
  [v61 enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:v31 withBlock:v66];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v37 = [v36 copy];
  v38 = [v37 countByEnumeratingWithState:&v62 objects:v75 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v63;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v63 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = PLSearchStringByTrimmingApostrophes(*(*(&v62 + 1) + 8 * i));
        [v36 addObject:v42];
      }

      v39 = [v37 countByEnumeratingWithState:&v62 objects:v75 count:16];
    }

    while (v39);
  }

  *v56 = [v55 copy];
  *v57 = [v53 copy];
  *v58 = [v52 copy];
  *v59 = [v32 copy];
  *a9 = [v33 copy];
  *a10 = [v34 copy];
  *a12 = [v35 copy];
  *a11 = [v36 allObjects];
}

void __201__PLSpotlightAssetTranslator__getGraphAttributesForMomentFromFetchHelper_indexingContext_businessNames_businessCategories_eventNames_eventCategories_eventPerformers_meanings_holidays_locationKeywords___block_invoke(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 type];
  if (v3 > 1609)
  {
    if (v3 > 1799)
    {
      if (v3 == 1800)
      {
        v5 = 48;
        goto LABEL_7;
      }

      if (v3 == 1801)
      {
        v5 = 64;
        goto LABEL_7;
      }

      v4 = v3 == 1802;
      v6 = v11;
      if (v4)
      {
        v5 = 56;
        goto LABEL_8;
      }
    }

    else
    {
      if (v3 == 1610)
      {
        v5 = 72;
        goto LABEL_7;
      }

      if (v3 == 1700)
      {
        v5 = 32;
        goto LABEL_7;
      }

      v4 = v3 == 1701;
      v6 = v11;
      if (v4)
      {
        v5 = 40;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v4 = (v3 - 1000) > 8 || ((1 << (v3 + 24)) & 0x183) == 0;
    if (!v4)
    {
      v5 = 80;
LABEL_7:
      v6 = v11;
LABEL_8:
      v7 = *(a1 + v5);
      v8 = [v6 label];
      [v7 addObject:v8];

      v9 = *(a1 + v5);
      v10 = [v11 synonyms];
      [v9 addObjectsFromArray:v10];

      v6 = v11;
      goto LABEL_9;
    }

    if (v3 == 1102)
    {
      v5 = 88;
      goto LABEL_7;
    }

    v4 = v3 == 1600;
    v6 = v11;
    if (v4)
    {
      v5 = 72;
      goto LABEL_8;
    }
  }

LABEL_9:
}

+ (void)updateThumbnailMap:(id)a3 withMADEmbedding:(id)a4
{
  v5 = a3;
  v6 = [a4 thumbnailIdentifiers];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PLSpotlightAssetTranslator_updateThumbnailMap_withMADEmbedding___block_invoke;
  v8[3] = &unk_1E756C078;
  v9 = v5;
  v7 = v5;
  [v6 enumerateObjectsUsingBlock:v8];
}

void __66__PLSpotlightAssetTranslator_updateThumbnailMap_withMADEmbedding___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (([v6 isEqualToString:@"NULL"] & 1) == 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"embeddingIndex/%tu", a3];
    [*(a1 + 32) setOrReplaceThumbnailIdentifierIfEarlier:v6 forLookupIdentifier:v5];
  }
}

+ (id)_spotlightSearchableAttributesForAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 indexingContext:(id)a6 documentObservation:(id)a7 propertySets:(unint64_t)a8 embeddingsFetcher:(id)a9
{
  v175 = a8;
  v196 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v176 = a4;
  v178 = a6;
  v14 = a7;
  v15 = a9;
  v179 = v13;
  if (!v13)
  {
    v150 = [MEMORY[0x1E696AAA8] currentHandler];
    [v150 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!v178)
  {
    v151 = [MEMORY[0x1E696AAA8] currentHandler];
    [v151 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];
  }

  v16 = [v13 dateCreated];
  v17 = [MEMORY[0x1E695DF00] distantPast];
  if ([v16 isEqualToDate:v17])
  {
    v18 = [v13 importedByBundleIdentifier];
    v19 = [v18 isEqualToString:*MEMORY[0x1E69BFF00]];

    if (v19)
    {
      v20 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_ERROR))
      {
        v21 = [v13 uuid];
        v22 = [v13 additionalAttributes];
        v23 = [v22 syndicationIdentifier];
        *buf = 138543618;
        v193 = v21;
        v194 = 2114;
        v195 = v23;
        _os_log_impl(&dword_19BF1F000, &v20->super, OS_LOG_TYPE_ERROR, "Not creating CSSI attributeSet (dateCreated = distantPast) Messages asset %{public}@ %{public}@", buf, 0x16u);
      }

      v24 = 0;
      goto LABEL_46;
    }
  }

  else
  {
  }

  if ([v13 kind] == 1)
  {
    v20 = objc_alloc_init(PLSearchThumbnailMap);
  }

  else
  {
    v20 = 0;
  }

  v25 = objc_alloc_init(MEMORY[0x1E6964E90]);
  v26 = v25;
  v173 = v20;
  v177 = v25;
  if (v175)
  {
    [v25 setPhotosResultType:@"com.apple.photos.search.result.collection.asset"];
    v27 = [v13 formattedCameraModel];
    [v26 setPhotosAcquisitionModel:v27];

    v28 = [v13 moment];
    v29 = [v28 uuid];
    [v26 setPhotosContainerIdentifier:v29];

    v30 = [v13 uniformTypeIdentifier];
    [v26 setPhotosContentType:v30];

    v31 = [v13 title];
    [v26 setPhotosTitle:v31];

    v32 = [v13 longDescription];
    [v26 setPhotosContentDescription:v32];

    v33 = MEMORY[0x1E696AD98];
    [v13 curationScore];
    v34 = [v33 numberWithDouble:?];
    [v26 setPhotosCurationScore:v34];

    v35 = MEMORY[0x1E696AD98];
    [v13 overallAestheticScore];
    v36 = [v35 numberWithFloat:?];
    [v26 setPhotosAestheticScore:v36];

    v37 = [a1 _personsForAsset:v13 fetchHelper:v176 thumbnailMap:v20];
    [v26 setPhotosPeople:v37];

    v38 = [a1 _mediaTypesForAsset:v13];
    [v26 setPhotosMediaTypes:v38];

    v39 = [a1 _adjustmentStyleCastForAsset:v13];
    [v26 setPhotosPhotographicStyles:v39];

    v40 = [v13 dateCreated];
    v41 = [v178 calendar];
    v42 = [PLSpotlightTranslatorUtilities seasonsForDate:v40 calendar:v41];
    [v177 setPhotosSeasons:v42];

    v43 = [a1 _contentRatingForAsset:v13 fetchHelper:v176];
    [v177 setPhotosContentRating:v43];

    v44 = [a1 _utilityTypesForAsset:v13 indexingContext:v178];
    [v177 setPhotosUtilityTypes:v44];

    if ([v13 isFavorite])
    {
      v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "isFavorite")}];
      [v177 setPhotosFavorited:v45];

      v46 = PLServicesLocalizedFrameworkString();
      [v177 setPhotosFavorites:v46];
    }

    v170 = v14;
    v47 = [v13 additionalAttributes];
    v169 = v15;
    if ([a1 _indexLocalDateCreated])
    {
      v48 = [v13 localDateCreated];
      [v177 setPhotosTimeZoneOffset:&unk_1F0FBC748];
      [v177 setPhotosInferredTimeZoneOffset:&unk_1F0FBC748];
    }

    else
    {
      v48 = [v13 dateCreated];
      v49 = [v47 inferredTimeZoneOffset];
      [v177 setPhotosInferredTimeZoneOffset:v49];

      v50 = [v47 timeZoneOffset];
      [v177 setPhotosTimeZoneOffset:v50];

      v51 = [v47 timeZoneName];
      [v177 setPhotosTimeZoneName:v51];
    }

    [v177 setPhotosContentCreationDate:v48];
    v52 = [v178 searchIndexDateFormatter];
    v53 = [v52 localizedMonthStringsFromDate:v48];
    v166 = v52;
    v167 = v48;
    v54 = [v52 newLocalizedComponentsFromDate:v48 includeMonth:0];
    v165 = v53;
    [v177 setPhotosContentCreationDateMonths:v53];
    v164 = v54;
    [v177 setPhotosContentCreationDateYears:v54];
    v55 = [v13 addedDate];
    [v177 setPhotosContentAddedDate:v55];

    v56 = objc_opt_new();
    v57 = [v178 sceneTaxonomyProvider];
    v58 = [a1 _scenesForAsset:v13 fetchHelper:v176 sceneTaxonomyProvider:v57 thumbnailMap:v20];
    [v56 addObjectsFromArray:v58];

    v59 = [a1 _audioClassificationsForAsset:v13];
    [v56 addObjectsFromArray:v59];

    v60 = [a1 _humanActionScenesForAsset:v13 fetchHelper:v176 thumbnailMap:v20];
    [v56 addObjectsFromArray:v60];

    v191 = 0;
    v61 = [v178 csuTaxonomyObjectStore];
    v62 = [v178 locale];
    v162 = v61;
    v63 = [a1 _privateEncryptedComputeScenesForAsset:v13 fetchHelper:v176 csuTaxonomyObjectStore:v61 locale:v62 isSensitiveLocation:&v191];
    [v56 addObjectsFromArray:v63];

    v64 = [MEMORY[0x1E696AD98] numberWithBool:v191];
    v65 = [v178 photosSensitiveLocationKey];
    [v177 setValue:v64 forCustomKey:v65];

    v163 = v56;
    [v177 setPhotosSceneClassifications:v56];
    [v177 setPhotosDonationState:&unk_1F0FBC760];
    v66 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v47, "sceneAnalysisVersion")}];
    [v177 setPhotosSceneAnalysisVersion:v66];

    v67 = MEMORY[0x1E696AD98];
    v68 = [v13 mediaAnalysisAttributes];
    v69 = [v67 numberWithShort:{objc_msgSend(v68, "characterRecognitionVersion")}];
    [v177 setPhotosCharacterRecognitionAnalysisVersion:v69];

    v168 = v47;
    v70 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(v47, "faceAnalysisVersion")}];
    [v177 setPhotosFaceAnalysisVersion:v70];

    v71 = MEMORY[0x1E696AD98];
    v72 = [v13 mediaAnalysisAttributes];
    v73 = [v71 numberWithUnsignedLongLong:{objc_msgSend(v72, "mediaAnalysisVersion")}];
    [v177 setPhotosMediaAnalysisVersion:v73];

    v74 = MEMORY[0x1E696AD98];
    v75 = [v13 mediaAnalysisAttributes];
    v76 = [v74 numberWithShort:{objc_msgSend(v75, "mediaAnalysisImageVersion")}];
    [v177 setPhotosMediaAnalysisImageVersion:v76];

    v77 = MEMORY[0x1E696AD98];
    v78 = [v13 mediaAnalysisAttributes];
    v79 = [v77 numberWithShort:{objc_msgSend(v78, "vaAnalysisVersion")}];
    [v177 setPhotosPrivateEncryptedComputeAnalysisVersion:v79];

    v80 = MEMORY[0x1E696AD98];
    v81 = [v13 mediaAnalysisAttributes];
    v82 = [v80 numberWithShort:{objc_msgSend(v81, "vaLocationAnalysisVersion")}];
    [v177 setPhotosLocationPrivateEncryptedComputeAnalysisVersion:v82];

    v83 = MEMORY[0x1E696AD98];
    v84 = [v13 mediaAnalysisAttributes];
    v85 = [v83 numberWithShort:{objc_msgSend(v84, "imageEmbeddingVersion")}];
    [v177 setPhotosImageEmbeddingVersion:v85];

    v86 = MEMORY[0x1E696AD98];
    v87 = [v13 mediaAnalysisAttributes];
    v88 = [v86 numberWithShort:{objc_msgSend(v87, "videoEmbeddingVersion")}];
    [v177 setPhotosVideoEmbeddingVersion:v88];

    v89 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v13, "reverseLocationDataIsValid")}];
    v90 = [v178 photosReverseLocationDataIsValidKey];
    [v177 setValue:v89 forCustomKey:v90];

    if ([v13 kind] == 1)
    {
      v91 = MEMORY[0x1E696AD98];
      [v13 duration];
      v92 = [v91 numberWithDouble:?];
      [v177 setPhotosDuration:v92];
    }

    if (_shouldIndexAssetUUIDForDebugging_onceToken != -1)
    {
      dispatch_once(&_shouldIndexAssetUUIDForDebugging_onceToken, &__block_literal_global_385);
    }

    if (_shouldIndexAssetUUIDForDebugging_shouldIndexAssetUUIDForDebugging == 1)
    {
      v93 = [v13 uuid];
      [v177 setPhotosDisplayName:v93];
    }

    if ([v178 isSharedLibraryEnabled])
    {
      v94 = [a1 _libraryScopeForAsset:v13];
      [v177 setPhotosLibraryName:v94];

      v95 = [a1 _sharedLibraryContributorsForAsset:v13];
      [v177 setPhotosSharedLibraryContributors:v95];
    }

    v96 = [MEMORY[0x1E695DF00] now];
    [v177 setPhotosDonationTimestamp:v96];

    v97 = [v13 importedByBundleIdentifier];
    v98 = [v13 importedByDisplayName];
    if (PLShouldConstructDisplayNameForAppBundle(v97, v98))
    {
      v99 = PLSyndicatedDisplayNameForAppBundle(v97, v98);
      [v177 setPhotosSavedFromAppName:v99];
      [v177 setPhotosSavedFromAppBundleIdentifier:v97];
    }

    v161 = v97;
    v100 = [a1 _partsOfDayForAsset:v13];
    [v177 setPhotosPartsOfDay:v100];

    v101 = [a1 _partsOfWeekForAsset:v13];
    [v177 setPhotosPartsOfWeek:v101];

    v102 = [PLKeywordManager keywordsForAsset:v13];
    v103 = [v102 allObjects];
    [v177 setPhotosKeywords:v103];

    v190 = 0;
    v104 = [a1 _albumsUUIDsForAsset:v13 fetchHelper:v176 libraryIdentifier:a5 assetCounts:&v190];
    v105 = v190;
    v106 = [v178 photosAlbumUUIDsKey];
    v159 = v104;
    [v177 setValue:v104 forCustomKey:v106];

    v107 = [v178 photosAlbumAssetCountsKey];
    v158 = v105;
    [v177 setValue:v105 forCustomKey:v107];

    v189 = 0;
    v108 = [a1 _memoryUUIDsForAsset:v13 fetchHelper:v176 libraryIdentifier:a5 assetCounts:&v189];
    v109 = v189;
    v110 = [v178 photosMemoryUUIDsKey];
    v157 = v108;
    [v177 setValue:v108 forCustomKey:v110];

    v111 = [v178 photosMemoryAssetCountsKey];
    v156 = v109;
    [v177 setValue:v109 forCustomKey:v111];

    v188 = 0;
    v112 = [a1 _highlightUUIDsForAsset:v13 libraryIdentifier:a5 assetCounts:&v188];
    v113 = v188;
    v114 = [v178 photosHighlightUUIDsKey];
    v172 = v112;
    [v177 setValue:v112 forCustomKey:v114];

    v115 = [v178 photosHighlightAssetCountsKey];
    v155 = v113;
    [v177 setValue:v113 forCustomKey:v115];

    v116 = [v13 moment];

    v160 = v98;
    if (v116)
    {
      v186 = 0;
      v187 = 0;
      v184 = 0;
      v185 = 0;
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v181 = 0;
      [a1 _getGraphAttributesForMomentFromFetchHelper:v176 indexingContext:v178 businessNames:&v187 businessCategories:&v186 eventNames:&v185 eventCategories:&v184 eventPerformers:&v183 meanings:&v182 holidays:&v181 locationKeywords:&v180];
      v117 = v187;
      v118 = v186;
      v119 = v185;
      v120 = v184;
      v121 = v183;
      v122 = v182;
      v123 = v181;
      v124 = v180;
      v125 = a1;
    }

    else
    {
      v126 = PLSearchBackendModelTranslationGetLog();
      v125 = a1;
      if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
      {
        v127 = [v179 uuid];
        *buf = 138412290;
        v193 = v127;
        _os_log_impl(&dword_19BF1F000, v126, OS_LOG_TYPE_INFO, "No Moment set for asset: %@. No Knowledge Graph data for this asset.", buf, 0xCu);

        v125 = a1;
      }

      v117 = 0;
      v118 = 0;
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v122 = 0;
      v123 = 0;
      v124 = 0;
    }

    v154 = v117;
    [v177 setPhotosBusinessNames:v117];
    v153 = v118;
    [v177 setPhotosBusinessCategories:v118];
    v152 = v119;
    [v177 setPhotosEventNames:v119];
    [v177 setPhotosEventCategories:v120];
    [v177 setPhotosEventPerformers:v121];
    [v177 setPhotosMeanings:v122];
    [v177 setPhotosHolidays:v123];
    v128 = [v178 countrySynonymProvider];
    v129 = v124;
    v130 = [v125 _locationNamesForAsset:v179 graphLocations:v124 countrySynonymProvider:v128];
    [v177 setPhotosLocationKeywords:v130];

    v131 = [v179 photoLibrary];
    v132 = [v131 libraryServicesManager];
    v133 = [v132 wellKnownPhotoLibraryIdentifier];

    if (v133 <= 1)
    {
      v134 = [v179 uuid];
      v135 = PLServicesLocalizedFrameworkString();
      [PLSpotlightTranslatorUtilities tagCSSearchableItem:v177 entityInstanceIdentifier:v134 typeIdentifier:@"AssetEntity" typeDisplayName:v135 displayTitle:&stru_1F0F06D80 displaySubtitle:0];
    }

    v15 = v169;
    v14 = v170;
    v20 = v173;
    v26 = v177;
  }

  if ((v175 & 2) != 0)
  {
    v136 = [PLSearchOCRUtilities spotlightTextLinesFromDocumentObservation:v14];
    [v26 setPhotosTextContentPieces:v136];
  }

  v137 = [v15 embeddingForAsset:v179 indexingContext:v178 allowFetchIfMissing:1];
  if ([v137 isSuccess])
  {
    v138 = [v137 result];
    v139 = [v138 csEmbedding];
    [v177 setPhotoEmbedding:v139];
    v140 = MEMORY[0x1E696AD98];
    v141 = [v139 vectors];
    v142 = [v140 numberWithUnsignedInteger:{objc_msgSend(v141, "count")}];
    [v178 photosEmbeddingCountKey];
    v143 = v15;
    v145 = v144 = v14;
    [v177 setValue:v142 forCustomKey:v145];

    v14 = v144;
    v15 = v143;

    v20 = v173;
    [a1 updateThumbnailMap:v173 withMADEmbedding:v138];
  }

  v146 = _os_feature_enabled_impl();
  if ((v175 & 1) != 0 && v146)
  {
    v147 = [(PLSearchThumbnailMap *)v20 data];
    v148 = [v178 photosThumbnailMapKey];
    [v177 setValue:v147 forCustomKey:v148];
  }

  v24 = v177;
LABEL_46:

  return v24;
}

+ (id)partialSpotlightSearchableItemFromAsset:(id)a3 fetchHelper:(id)a4 libraryIdentifier:(int64_t)a5 propertySets:(unint64_t)a6 indexingContext:(id)a7 documentObservation:(id)a8 embeddingsFetcher:(id)a9
{
  v15 = a3;
  v43 = a4;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  if (v15)
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v38 = [MEMORY[0x1E696AAA8] currentHandler];
    [v38 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v16)
    {
      goto LABEL_3;
    }
  }

  v39 = [MEMORY[0x1E696AAA8] currentHandler];
  [v39 handleFailureInMethod:a2 object:a1 file:@"PLSpotlightAssetTranslator.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];

LABEL_3:
  if (a6)
  {
    v19 = a6;
  }

  else
  {
    v19 = 3;
  }

  v20 = [PLSpotlightDonationUtilities spotlightUniqueIdentifierForAsset:v15];
  v21 = [v15 photoLibrary];
  v22 = [v21 libraryServicesManager];
  v23 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [v22 wellKnownPhotoLibraryIdentifier]);

  v24 = [a1 _spotlightSearchableAttributesForAsset:v15 fetchHelper:v43 libraryIdentifier:a5 indexingContext:v16 documentObservation:v17 propertySets:v19 embeddingsFetcher:v18];
  if (v24)
  {
    v40 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v20 domainIdentifier:v23 attributeSet:v24];
    v25 = [v15 photoLibrary];
    [v25 libraryServicesManager];
    v26 = v23;
    v27 = v20;
    v28 = v16;
    v30 = v29 = v17;
    v42 = v15;
    v31 = v19;
    v32 = v18;
    v33 = [v30 wellKnownPhotoLibraryIdentifier];

    v17 = v29;
    v16 = v28;
    v20 = v27;
    v23 = v26;

    v34 = v33 == 3;
    v18 = v32;
    v34 = !v34 && v31 == 3;
    v35 = v40;
    v15 = v42;
    v36 = !v34;
    [v40 setIsUpdate:v36];
  }

  else
  {
    v35 = 0;
  }

  return v35;
}

@end