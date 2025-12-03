@interface PLSpotlightAssetTranslator
+ (BOOL)_indexLocalDateCreated;
+ (id)_adjustmentStyleCastForAsset:(id)asset;
+ (id)_albumsUUIDsForAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier assetCounts:(id *)counts;
+ (id)_audioClassificationsForAsset:(id)asset;
+ (id)_contentRatingForAsset:(id)asset fetchHelper:(id)helper;
+ (id)_highlightUUIDsForAsset:(id)asset libraryIdentifier:(int64_t)identifier assetCounts:(id *)counts;
+ (id)_humanActionScenesForAsset:(id)asset fetchHelper:(id)helper thumbnailMap:(id)map;
+ (id)_jsonRepresentationForCSPersons:(id)persons;
+ (id)_jsonRepresentationForScenesFromAsset:(id)asset fetchHelper:(id)helper indexingContext:(id)context isSensitiveLocation:(BOOL *)location thumbnailMap:(id)map;
+ (id)_libraryScopeForAsset:(id)asset;
+ (id)_locationNamesForAsset:(id)asset graphLocations:(id)locations countrySynonymProvider:(id)provider;
+ (id)_mediaTypesForAsset:(id)asset;
+ (id)_memoryUUIDsForAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier assetCounts:(id *)counts;
+ (id)_nameForContributor:(id)contributor;
+ (id)_partsOfDayForAsset:(id)asset;
+ (id)_partsOfWeekForAsset:(id)asset;
+ (id)_personsForAsset:(id)asset fetchHelper:(id)helper thumbnailMap:(id)map;
+ (id)_privateEncryptedComputeScenesForAsset:(id)asset fetchHelper:(id)helper csuTaxonomyObjectStore:(id)store locale:(id)locale isSensitiveLocation:(BOOL *)location;
+ (id)_revGeoLocationNamesForAsset:(id)asset countrySynonymProvider:(id)provider;
+ (id)_scenesForAsset:(id)asset fetchHelper:(id)helper sceneTaxonomyProvider:(id)provider thumbnailMap:(id)map;
+ (id)_sharedLibraryContributorsForAsset:(id)asset;
+ (id)_spotlightSearchableAttributesForAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier indexingContext:(id)context documentObservation:(id)observation propertySets:(unint64_t)sets embeddingsFetcher:(id)fetcher;
+ (id)_utilityTypesForAsset:(id)asset indexingContext:(id)context;
+ (id)jsonDictionaryFromAsset:(id)asset libraryIdentifier:(int64_t)identifier indexingContext:(id)context includeEmbeddingData:(BOOL)data redacted:(BOOL)redacted;
+ (id)jsonRepresentationKeys;
+ (id)partialSpotlightSearchableItemFromAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier propertySets:(unint64_t)sets indexingContext:(id)context documentObservation:(id)observation embeddingsFetcher:(id)fetcher;
+ (void)_getGraphAttributesForMomentFromFetchHelper:(id)helper indexingContext:(id)context businessNames:(id *)names businessCategories:(id *)categories eventNames:(id *)eventNames eventCategories:(id *)eventCategories eventPerformers:(id *)performers meanings:(id *)self0 holidays:(id *)self1 locationKeywords:(id *)self2;
+ (void)updateThumbnailMap:(id)map withMADEmbedding:(id)embedding;
@end

@implementation PLSpotlightAssetTranslator

+ (id)_jsonRepresentationForScenesFromAsset:(id)asset fetchHelper:(id)helper indexingContext:(id)context isSensitiveLocation:(BOOL *)location thumbnailMap:(id)map
{
  v59 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  contextCopy = context;
  mapCopy = map;
  if (assetCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }

LABEL_17:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1377 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];

    if (location)
    {
      goto LABEL_4;
    }

    goto LABEL_18;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1376 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

  if (!contextCopy)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (location)
  {
    goto LABEL_4;
  }

LABEL_18:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1378 description:{@"Invalid parameter not satisfying: %@", @"outSensitiveLocation"}];

LABEL_4:
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  sceneTaxonomyProvider = [contextCopy sceneTaxonomyProvider];
  v20 = [self _scenesForAsset:assetCopy fetchHelper:helperCopy sceneTaxonomyProvider:sceneTaxonomyProvider thumbnailMap:mapCopy];
  [v18 addObjectsFromArray:v20];

  v21 = [self _audioClassificationsForAsset:assetCopy];
  [v18 addObjectsFromArray:v21];

  v50 = mapCopy;
  v22 = [self _humanActionScenesForAsset:assetCopy fetchHelper:helperCopy thumbnailMap:mapCopy];
  [v18 addObjectsFromArray:v22];

  v57 = 0;
  csuTaxonomyObjectStore = [contextCopy csuTaxonomyObjectStore];
  v51 = contextCopy;
  locale = [contextCopy locale];
  v49 = csuTaxonomyObjectStore;
  v25 = [self _privateEncryptedComputeScenesForAsset:assetCopy fetchHelper:helperCopy csuTaxonomyObjectStore:csuTaxonomyObjectStore locale:locale isSensitiveLocation:&v57];
  [v18 addObjectsFromArray:v25];

  *location = v57;
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
        label = [v30 label];
        [v31 setObject:label forKeyedSubscript:@"label"];

        synonyms = [v30 synonyms];
        [v31 setObject:synonyms forKeyedSubscript:@"synonyms"];

        v34 = MEMORY[0x1E696AD98];
        [v30 confidence];
        v35 = [v34 numberWithDouble:?];
        [v31 setObject:v35 forKeyedSubscript:@"confidence"];

        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v30, "sceneIdentifier")}];
        [v31 setObject:v36 forKeyedSubscript:@"sceneIdentifier"];

        v37 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v30, "sceneType")}];
        [v31 setObject:v37 forKeyedSubscript:@"sceneType"];

        sceneType = [v30 sceneType];
        v39 = @"unknown";
        if (sceneType <= 8)
        {
          v39 = off_1E756F588[sceneType];
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

+ (id)_jsonRepresentationForCSPersons:(id)persons
{
  v24 = *MEMORY[0x1E69E9840];
  personsCopy = persons;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = personsCopy;
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
        displayName = [v9 displayName];
        [v10 setObject:displayName forKeyedSubscript:@"displayName"];

        photosPersonIdentifier = [v9 photosPersonIdentifier];
        [v10 setObject:photosPersonIdentifier forKeyedSubscript:@"photosPersonIdentifier"];

        contactIdentifier = [v9 contactIdentifier];
        [v10 setObject:contactIdentifier forKeyedSubscript:@"contactIdentifier"];

        nameAlternatives = [v9 nameAlternatives];
        [v10 setObject:nameAlternatives forKeyedSubscript:@"nameAlternatives"];

        faceAttributes = [v9 faceAttributes];
        [v10 setObject:faceAttributes forKeyedSubscript:@"faceAttributes"];

        personType = [v9 personType];
        [v10 setObject:personType forKeyedSubscript:@"personType"];

        [v4 addObject:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v4;
}

+ (id)jsonDictionaryFromAsset:(id)asset libraryIdentifier:(int64_t)identifier indexingContext:(id)context includeEmbeddingData:(BOOL)data redacted:(BOOL)redacted
{
  dataCopy = data;
  v153 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  contextCopy = context;
  v11 = [PLSearchIndexingLazyFetchHelper alloc];
  managedObjectContext = [assetCopy managedObjectContext];
  identifierCopy = identifier;
  v138 = [(PLSearchIndexingLazyFetchHelper *)v11 initWithObject:assetCopy libraryIdentifier:identifier managedObjectContext:managedObjectContext];

  additionalAttributes = [assetCopy additionalAttributes];
  mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];
  v137 = objc_alloc_init(MEMORY[0x1E696AC80]);
  if ([assetCopy kind] == 1)
  {
    v136 = objc_alloc_init(PLSearchThumbnailMap);
  }

  else
  {
    v136 = 0;
  }

  v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uuid = [assetCopy uuid];
  [v15 setObject:uuid forKeyedSubscript:@"uuid"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(assetCopy, "hidden")}];
  [v15 setObject:v17 forKeyedSubscript:@"hidden"];

  v18 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(assetCopy, "trashedState")}];
  [v15 setObject:v18 forKeyedSubscript:@"trashedState"];

  v19 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(assetCopy, "reverseLocationDataIsValid")}];
  [v15 setObject:v19 forKeyedSubscript:@"photosReverseLocationDataIsValid"];

  [v15 setObject:@"com.apple.photos.search.result.collection.asset" forKeyedSubscript:@"photosResultType"];
  formattedCameraModel = [assetCopy formattedCameraModel];
  [v15 setObject:formattedCameraModel forKeyedSubscript:@"photosAcquisitionModel"];

  moment = [assetCopy moment];
  uuid2 = [moment uuid];
  [v15 setObject:uuid2 forKeyedSubscript:@"photosContainerIdentifier"];

  uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
  [v15 setObject:uniformTypeIdentifier forKeyedSubscript:@"photosContentType"];

  title = [assetCopy title];
  [v15 setObject:title forKeyedSubscript:@"photosTitle"];

  longDescription = [assetCopy longDescription];
  [v15 setObject:longDescription forKeyedSubscript:@"photosContentDescription"];

  v26 = MEMORY[0x1E696AD98];
  [assetCopy curationScore];
  v27 = [v26 numberWithDouble:?];
  [v15 setObject:v27 forKeyedSubscript:@"photosCurationScore"];

  v28 = MEMORY[0x1E696AD98];
  [assetCopy overallAestheticScore];
  v29 = [v28 numberWithFloat:?];
  [v15 setObject:v29 forKeyedSubscript:@"photosAestheticScore"];

  v30 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(assetCopy, "isFavorite")}];
  [v15 setObject:v30 forKeyedSubscript:@"photosFavorited"];

  v31 = [self _mediaTypesForAsset:assetCopy];
  [v15 setObject:v31 forKeyedSubscript:@"photosMediaTypes"];

  v32 = [self _adjustmentStyleCastForAsset:assetCopy];
  [v15 setObject:v32 forKeyedSubscript:@"photosPhotographicStyles"];

  v33 = [self _contentRatingForAsset:assetCopy fetchHelper:v138];
  [v15 setObject:v33 forKeyedSubscript:@"photosContentRating"];

  v34 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(additionalAttributes, "sceneAnalysisVersion")}];
  [v15 setObject:v34 forKeyedSubscript:@"photosSceneAnalysisVersion"];

  v35 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(additionalAttributes, "faceAnalysisVersion")}];
  [v15 setObject:v35 forKeyedSubscript:@"photosFaceAnalysisVersion"];

  v36 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(mediaAnalysisAttributes, "mediaAnalysisVersion")}];
  [v15 setObject:v36 forKeyedSubscript:@"photosMediaAnalysisVersion"];

  v37 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "mediaAnalysisImageVersion")}];
  [v15 setObject:v37 forKeyedSubscript:@"photosMediaAnalysisImageVersion"];

  v38 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "characterRecognitionVersion")}];
  [v15 setObject:v38 forKeyedSubscript:@"photosCharacterRecognitionAnalysisVersion"];

  v39 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "vaAnalysisVersion")}];
  [v15 setObject:v39 forKeyedSubscript:@"photosPrivateEncryptedComputeAnalysisVersion"];

  v40 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "vaLocationAnalysisVersion")}];
  [v15 setObject:v40 forKeyedSubscript:@"photosLocationPrivateEncryptedComputeAnalysisVersion"];

  v41 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "imageEmbeddingVersion")}];
  [v15 setObject:v41 forKeyedSubscript:@"photosMediaAnalysisImageEmbeddingVersion"];

  v42 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "videoEmbeddingVersion")}];
  [v15 setObject:v42 forKeyedSubscript:@"photosMediaAnalysisVideoEmbeddingVersion"];

  localDateCreated = [assetCopy localDateCreated];
  v127 = mediaAnalysisAttributes;
  if ([self _indexLocalDateCreated])
  {
    dateCreated = localDateCreated;
    [v15 setObject:&unk_1F0FBC748 forKeyedSubscript:@"photosTimeZoneOffset"];
    [v15 setObject:&unk_1F0FBC748 forKeyedSubscript:@"photosInferredTimeZoneOffset"];
  }

  else
  {
    dateCreated = [assetCopy dateCreated];
    timeZoneName = [additionalAttributes timeZoneName];
    if (timeZoneName)
    {
      [v15 setObject:timeZoneName forKeyedSubscript:@"photosTimeZoneName"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:null forKeyedSubscript:@"photosTimeZoneName"];
    }

    timeZoneOffset = [additionalAttributes timeZoneOffset];
    if (timeZoneOffset)
    {
      [v15 setObject:timeZoneOffset forKeyedSubscript:@"photosTimeZoneOffset"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:null2 forKeyedSubscript:@"photosTimeZoneOffset"];
    }

    inferredTimeZoneOffset = [additionalAttributes inferredTimeZoneOffset];
    if (inferredTimeZoneOffset)
    {
      [v15 setObject:inferredTimeZoneOffset forKeyedSubscript:@"photosInferredTimeZoneOffset"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:null3 forKeyedSubscript:@"photosInferredTimeZoneOffset"];
    }
  }

  v129 = dateCreated;
  v51 = [v137 stringFromDate:dateCreated];
  [v15 setObject:v51 forKeyedSubscript:@"photosContentCreationDate"];

  addedDate = [assetCopy addedDate];
  v53 = [v137 stringFromDate:addedDate];
  [v15 setObject:v53 forKeyedSubscript:@"photosContentAddedDate"];

  searchIndexDateFormatter = [contextCopy searchIndexDateFormatter];
  v55 = [searchIndexDateFormatter localizedMonthStringsFromDate:localDateCreated];
  v123 = searchIndexDateFormatter;
  v56 = [searchIndexDateFormatter newLocalizedComponentsFromDate:localDateCreated includeMonth:0];
  v122 = v55;
  [v15 setObject:v55 forKeyedSubscript:@"photosContentCreationDateMonths"];
  v121 = v56;
  [v15 setObject:v56 forKeyedSubscript:@"photosContentCreationDateYears"];
  moment2 = [assetCopy moment];

  v128 = additionalAttributes;
  v124 = localDateCreated;
  if (moment2)
  {
    v149 = 0;
    v150 = 0;
    v147 = 0;
    v148 = 0;
    v145 = 0;
    v146 = 0;
    v143 = 0;
    v144 = 0;
    [self _getGraphAttributesForMomentFromFetchHelper:v138 indexingContext:contextCopy businessNames:&v150 businessCategories:&v149 eventNames:&v148 eventCategories:&v147 eventPerformers:&v146 meanings:&v145 holidays:&v144 locationKeywords:&v143];
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
      uuid3 = [assetCopy uuid];
      *buf = 138412290;
      v152 = uuid3;
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

  dateCreated2 = [assetCopy dateCreated];
  calendar = [contextCopy calendar];
  v64 = [PLSpotlightTranslatorUtilities seasonsForDate:dateCreated2 calendar:calendar];

  countrySynonymProvider = [contextCopy countrySynonymProvider];
  v119 = v59;
  v66 = [self _locationNamesForAsset:assetCopy graphLocations:v59 countrySynonymProvider:countrySynonymProvider];

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
  v67 = [self _partsOfDayForAsset:assetCopy];
  [v15 setObject:v67 forKeyedSubscript:@"photosPartsOfDay"];

  v68 = [self _partsOfWeekForAsset:assetCopy];
  [v15 setObject:v68 forKeyedSubscript:@"photosPartsOfWeek"];

  v117 = v66;
  [v15 setObject:v66 forKeyedSubscript:@"photosLocationKeywords"];
  if ([assetCopy kind] == 1)
  {
    v69 = MEMORY[0x1E696AD98];
    [assetCopy duration];
    v70 = [v69 numberWithDouble:?];
    [v15 setObject:v70 forKeyedSubscript:@"photosDuration"];
  }

  if ([contextCopy isSharedLibraryEnabled])
  {
    v71 = [self _libraryScopeForAsset:assetCopy];
    [v15 setObject:v71 forKeyedSubscript:@"photosLibraryName"];

    v72 = [self _sharedLibraryContributorsForAsset:assetCopy];
    v73 = [self _jsonRepresentationForCSPersons:v72];
    [v15 setObject:v73 forKeyedSubscript:@"photosSharedLibraryContributors"];
  }

  v74 = [MEMORY[0x1E695DF00] now];
  v75 = [v137 stringFromDate:v74];
  [v15 setObject:v75 forKeyedSubscript:@"photosDonationTimestamp"];

  importedByBundleIdentifier = [assetCopy importedByBundleIdentifier];
  importedByDisplayName = [assetCopy importedByDisplayName];
  if (PLShouldConstructDisplayNameForAppBundle(importedByBundleIdentifier, importedByDisplayName))
  {
    v78 = PLSyndicatedDisplayNameForAppBundle(importedByBundleIdentifier, importedByDisplayName);
    [v15 setObject:v78 forKeyedSubscript:@"photosSavedFromAppName"];
    [v15 setObject:importedByBundleIdentifier forKeyedSubscript:@"photosSavedFromAppBundleIdentifier"];
  }

  v115 = importedByDisplayName;
  v116 = importedByBundleIdentifier;
  documentObservation = [assetCopy documentObservation];
  v80 = [PLSearchOCRUtilities jsonOCRTextLinesFromDocumentObservation:documentObservation];
  [v15 setObject:v80 forKeyedSubscript:@"photosTextContentPieces"];

  v114 = [self _personsForAsset:assetCopy fetchHelper:v138 thumbnailMap:v136];
  v81 = [self _jsonRepresentationForCSPersons:?];
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
  v83 = [self _jsonRepresentationForScenesFromAsset:assetCopy fetchHelper:v138 indexingContext:contextCopy isSensitiveLocation:buf thumbnailMap:v136];
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

  v86 = [self _utilityTypesForAsset:assetCopy indexingContext:contextCopy];
  [v15 setObject:v86 forKeyedSubscript:@"photosUtilityTypes"];

  v87 = [PLKeywordManager keywordsForAsset:assetCopy];
  allObjects = [v87 allObjects];
  [v15 setObject:allObjects forKeyedSubscript:@"photosKeywords"];

  v142 = 0;
  v89 = [self _albumsUUIDsForAsset:assetCopy fetchHelper:v138 libraryIdentifier:identifierCopy assetCounts:&v142];
  v90 = v142;
  [v15 setObject:v89 forKeyedSubscript:@"photosAlbumUUIDs"];

  v111 = v90;
  [v15 setObject:v90 forKeyedSubscript:@"photosAlbumAssetCounts"];
  v141 = 0;
  v91 = [self _memoryUUIDsForAsset:assetCopy fetchHelper:v138 libraryIdentifier:identifierCopy assetCounts:&v141];
  v92 = v141;
  [v15 setObject:v91 forKeyedSubscript:@"photosMemoryUUIDs"];

  [v15 setObject:v92 forKeyedSubscript:@"photosMemoryAssetCounts"];
  v140 = 0;
  selfCopy = self;
  v94 = [self _highlightUUIDsForAsset:assetCopy libraryIdentifier:identifierCopy assetCounts:&v140];
  v95 = v140;
  [v15 setObject:v94 forKeyedSubscript:@"photosHighlightUUIDs"];

  [v15 setObject:v95 forKeyedSubscript:@"photosHighlightAssetCounts"];
  v96 = objc_alloc_init(PLSearchIndexingEmbeddingsFetcher);
  v97 = [(PLSearchIndexingEmbeddingsFetcher *)v96 embeddingForAsset:assetCopy indexingContext:contextCopy allowFetchIfMissing:1];
  result = [v97 result];
  csEmbedding = [result csEmbedding];
  v100 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v97, "isSuccess")}];
  [v15 setObject:v100 forKeyedSubscript:@"hasPhotoEmbedding"];

  if (dataCopy && !redacted)
  {
    v101 = PLSearchJSONForCSEmbedding(csEmbedding);
    if (v101)
    {
      [v15 setObject:v101 forKeyedSubscript:@"photoEmbedding"];
    }

    else
    {
      null4 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:null4 forKeyedSubscript:@"photoEmbedding"];
    }
  }

  v103 = MEMORY[0x1E696AD98];
  vectors = [csEmbedding vectors];
  v105 = [v103 numberWithUnsignedInteger:{objc_msgSend(vectors, "count")}];
  [v15 setObject:v105 forKeyedSubscript:@"photosEmbeddingCount"];

  [selfCopy updateThumbnailMap:v136 withMADEmbedding:result];
  v106 = v129;
  if (_os_feature_enabled_impl())
  {
    jsonDictionary = [(PLSearchThumbnailMap *)v136 jsonDictionary];
    if (jsonDictionary)
    {
      [v15 setObject:jsonDictionary forKeyedSubscript:@"photosThumbnailMap"];
    }

    else
    {
      null5 = [MEMORY[0x1E695DFB0] null];
      [v15 setObject:null5 forKeyedSubscript:@"photosThumbnailMap"];

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

+ (id)_highlightUUIDsForAsset:(id)asset libraryIdentifier:(int64_t)identifier assetCounts:(id *)counts
{
  assetCopy = asset;
  if (assetCopy)
  {
    if (counts)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1043 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (counts)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1044 description:{@"Invalid parameter not satisfying: %@", @"outAssetCounts"}];

LABEL_3:
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  dayGroupHighlightBeingAssets = [assetCopy dayGroupHighlightBeingAssets];
  v13 = [PLPhotosHighlight isEligibleForSearchIndexingPredicateForLibraryIdentifier:identifier];
  v14 = [v13 evaluateWithObject:dayGroupHighlightBeingAssets];

  if (v14)
  {
    uuid = [dayGroupHighlightBeingAssets uuid];
    [v10 addObject:uuid];

    v16 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(dayGroupHighlightBeingAssets, "dayGroupAssetsCount")}];
    [v11 addObject:v16];
  }

  v17 = v11;
  *counts = v11;

  return v10;
}

+ (id)_memoryUUIDsForAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier assetCounts:(id *)counts
{
  v34 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  v28 = assetCopy;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1026 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!counts)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"outAssetCounts"}];
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  memoriesEligibleForSearchIndexing = [helperCopy memoriesEligibleForSearchIndexing];
  v15 = [memoriesEligibleForSearchIndexing countByEnumeratingWithState:&v29 objects:v33 count:16];
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
          objc_enumerationMutation(memoriesEligibleForSearchIndexing);
        }

        v19 = *(*(&v29 + 1) + 8 * i);
        uuid = [v19 uuid];
        [v12 addObject:uuid];

        v21 = MEMORY[0x1E696AD98];
        curatedAssets = [v19 curatedAssets];
        v23 = [v21 numberWithUnsignedInteger:{objc_msgSend(curatedAssets, "count")}];
        [v13 addObject:v23];
      }

      v16 = [memoriesEligibleForSearchIndexing countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v16);
  }

  v24 = v13;
  *counts = v13;

  return v12;
}

+ (id)_albumsUUIDsForAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier assetCounts:(id *)counts
{
  v32 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  v26 = assetCopy;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1009 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!counts)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:1010 description:{@"Invalid parameter not satisfying: %@", @"outAssetCounts"}];
  }

  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  albumsEligibleForSearchIndexing = [helperCopy albumsEligibleForSearchIndexing];
  v15 = [albumsEligibleForSearchIndexing countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(albumsEligibleForSearchIndexing);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        uuid = [v19 uuid];
        [v12 addObject:uuid];

        v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v19, "cachedCount")}];
        [v13 addObject:v21];
      }

      v16 = [albumsEligibleForSearchIndexing countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v22 = v13;
  *counts = v13;

  return v12;
}

+ (id)_nameForContributor:(id)contributor
{
  v10 = *MEMORY[0x1E69E9840];
  contributorCopy = contributor;
  nameComponents = [contributorCopy nameComponents];
  if (nameComponents)
  {
    v5 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:nameComponents style:0 options:0];
  }

  else
  {
    v6 = PLSearchBackendModelTranslationGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = contributorCopy;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "No name for contributor: %@", &v8, 0xCu);
    }

    v5 = 0;
  }

  return v5;
}

+ (id)_sharedLibraryContributorsForAsset:(id)asset
{
  v32 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v21 = assetCopy;
  obj = [assetCopy libraryScopeContributors];
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
        v6 = [self _nameForContributor:v5];
        emailAddress = [v5 emailAddress];
        phoneNumber = [v5 phoneNumber];
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

        if ([emailAddress length])
        {
          v14 = PFStringWithValidatedFormat();
          [v9 addObject:{v14, emailAddress}];
        }

        if ([phoneNumber length])
        {
          v15 = PFStringWithValidatedFormat();
          [v9 addObject:{v15, phoneNumber}];
        }

        firstObject = [v9 firstObject];
        if ([firstObject length])
        {
          [v9 removeObject:firstObject];
          v17 = objc_alloc(MEMORY[0x1E6964E50]);
          uuid = [v5 uuid];
          v19 = [v17 initWithDisplayName:firstObject handles:0 handleIdentifier:0 photosPersonIdentifier:uuid isPhotosPerson:1 personType:1 nameAlternatives:v9 faceAttributes:0];

          [v23 addObject:v19];
        }
      }

      v26 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v26);
  }

  return v23;
}

+ (id)_libraryScopeForAsset:(id)asset
{
  [asset hasLibraryScope];
  v3 = PLServicesSharedLibraryLocalizedFrameworkString();

  return v3;
}

+ (id)_revGeoLocationNamesForAsset:(id)asset countrySynonymProvider:(id)provider
{
  v61 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  providerCopy = provider;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:865 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (([assetCopy reverseLocationDataIsValid] & 1) == 0)
  {
    v20 = PLSearchBackendModelTranslationGetLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_35;
    }

    uuid = [assetCopy uuid];
    *buf = 138543362;
    v60 = uuid;
    _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEBUG, "Invalid RevGeo location data for asset: %{public}@. Not indexing locations.", buf, 0xCu);
    goto LABEL_34;
  }

  locationInfo = [assetCopy locationInfo];
  isHome = [locationInfo isHome];

  if (isHome)
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

  locationInfo2 = [assetCopy locationInfo];
  placeAnnotation = [assetCopy placeAnnotation];
  v20 = [locationInfo2 placeWithAnnotation:placeAnnotation];

  if (v20)
  {
    v43 = assetCopy;
    v21 = &qword_19C60BC20;
    do
    {
      v22 = *v21;
      placeInfosForOrderType = [v20 placeInfosForOrderType];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v22];
      v25 = [placeInfosForOrderType objectForKeyedSubscript:v24];

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

            placeName = [*(*(&v48 + 1) + 8 * j) placeName];
            [v9 addObject:placeName];
          }

          v28 = [v26 countByEnumeratingWithState:&v48 objects:v57 count:16];
        }

        while (v28);
      }

      --v21;
    }

    while (v21 >= _revGeoLocationNamesForAsset_countrySynonymProvider__revGeoDominantOrderTypes);
    assetCopy = v43;
    locationInfo3 = [v43 locationInfo];
    countryCode = [locationInfo3 countryCode];

    if (countryCode)
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      locationInfo4 = [v43 locationInfo];
      countryCode2 = [locationInfo4 countryCode];
      uuid = [providerCopy synonymsForCountryCode:countryCode2];

      v37 = [uuid countByEnumeratingWithState:&v44 objects:v56 count:16];
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
              objc_enumerationMutation(uuid);
            }

            [v9 addObject:*(*(&v44 + 1) + 8 * k)];
          }

          v38 = [uuid countByEnumeratingWithState:&v44 objects:v56 count:16];
        }

        while (v38);
      }

LABEL_34:
    }
  }

LABEL_35:

  return v9;
}

+ (id)_locationNamesForAsset:(id)asset graphLocations:(id)locations countrySynonymProvider:(id)provider
{
  v42 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  locationsCopy = locations;
  providerCopy = provider;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:841 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v12 = [self _revGeoLocationNamesForAsset:assetCopy countrySynonymProvider:providerCopy];
  reverseLocationData = [assetCopy reverseLocationData];
  reverseLocationDataIsValid = [assetCopy reverseLocationDataIsValid];
  v15 = reverseLocationDataIsValid;
  if (reverseLocationData && reverseLocationDataIsValid)
  {
    [v12 addObjectsFromArray:locationsCopy];
  }

  else if ([locationsCopy count])
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

      if (reverseLocationData)
      {
        v18 = @"present";
      }

      else
      {
        v18 = @"nil";
      }

      uuid = [assetCopy uuid];
      *buf = 138544130;
      v35 = v17;
      v36 = 2114;
      v37 = v18;
      v38 = 2114;
      v39 = uuid;
      v40 = 2112;
      v41 = locationsCopy;
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

  allObjects = [v12 allObjects];

  return allObjects;
}

+ (id)_utilityTypesForAsset:(id)asset indexingContext:(id)context
{
  assetCopy = asset;
  contextCopy = context;
  v9 = contextCopy;
  if (assetCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:827 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];

LABEL_3:
  v10 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__PLSpotlightAssetTranslator__utilityTypesForAsset_indexingContext___block_invoke;
  v15[3] = &unk_1E756CFB0;
  v11 = v10;
  v16 = v11;
  PLSearchEnumerateSearchStringsForUtilityCollections(assetCopy, v9, v15);

  return v11;
}

+ (id)_privateEncryptedComputeScenesForAsset:(id)asset fetchHelper:(id)helper csuTaxonomyObjectStore:(id)store locale:(id)locale isSensitiveLocation:(BOOL *)location
{
  v82 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  storeCopy = store;
  localeCopy = locale;
  v57 = assetCopy;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:758 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (location)
    {
      goto LABEL_3;
    }

LABEL_58:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:759 description:{@"Invalid parameter not satisfying: %@", @"outSensitiveLocation"}];

    goto LABEL_3;
  }

  if (!location)
  {
    goto LABEL_58;
  }

LABEL_3:
  v61 = localeCopy;
  *location = 0;
  v56 = helperCopy;
  allSceneClassifications = [helperCopy allSceneClassifications];
  v60 = objc_opt_new();
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = allSceneClassifications;
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
  locationCopy = location;
  v59 = storeCopy;
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
      classificationType = [v26 classificationType];
      v28 = classificationType;
      v29 = [MEMORY[0x1E696AD98] numberWithInteger:classificationType];
      v30 = [&unk_1F0FBFAC0 containsObject:v29];

      if (classificationType == 4 || v30 != 0)
      {
        sceneIdentifier = [v26 sceneIdentifier];
        v33 = [PLSpotlightTranslatorUtilities CSSceneTypeForPLSceneClassificationType:classificationType];
        if (v33)
        {
          v34 = v33;
          if (classificationType > 7)
          {
            v35 = 1;
          }

          else
          {
            v35 = word_19C60B090[classificationType];
          }

          v71 = v20;
          v36 = [storeCopy entityForIdentifier:sceneIdentifier idType:v35 error:&v71];
          v37 = v71;

          if (!v36 || v37)
          {
            v38 = PLSearchBackendSceneTaxonomyGetLog();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              *buf = 134217984;
              v78 = sceneIdentifier;
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
            *location |= [v36 sensitiveLocation];
            if ([v36 sensitiveLocation])
            {
              v38 = PLSearchBackendSceneTaxonomyGetLog();
              if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
              {
                *buf = 134218240;
                v78 = v28;
                v79 = 2048;
                v80 = sceneIdentifier;
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
                          v80 = sceneIdentifier;
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
              v52 = [v51 initWithLabel:v38 synonyms:v43 confidence:sceneIdentifier sceneIdentifier:?];
              [v52 setSceneType:v63];
              [v52 setBoundingBox:{v21, v22, v23, v24}];
              [v60 addObject:v52];

              location = locationCopy;
              storeCopy = v59;
              v19 = v64;
              v36 = v62;
            }

            else
            {
              v43 = PLSearchBackendSceneTaxonomyGetLog();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                *buf = 134217984;
                v78 = sceneIdentifier;
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
            v78 = sceneIdentifier;
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

+ (id)_scenesForAsset:(id)asset fetchHelper:(id)helper sceneTaxonomyProvider:(id)provider thumbnailMap:(id)map
{
  v32 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  providerCopy = provider;
  mapCopy = map;
  if (assetCopy)
  {
    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:734 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (providerCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:735 description:{@"Invalid parameter not satisfying: %@", @"sceneTaxonomyProvider"}];

LABEL_3:
  additionalAttributes = [assetCopy additionalAttributes];
  sceneAnalysisVersion = [additionalAttributes sceneAnalysisVersion];

  v17 = [providerCopy searchIndexSceneTaxonomyForSceneAnalysisVersion:sceneAnalysisVersion];
  if (v17)
  {
    v18 = PLSearchAssetContainsDetectionTypeDog(assetCopy, helperCopy);
    v19 = MEMORY[0x1E695DFD8];
    allSceneClassifications = [helperCopy allSceneClassifications];
    v21 = [v19 setWithArray:allSceneClassifications];

    v22 = [PLSpotlightTranslatorUtilities spotlightScenesFromScenes:v21 sceneTaxonomy:v17 thumbnailMap:mapCopy includeDogScenes:v18];
  }

  else
  {
    if (sceneAnalysisVersion)
    {
      v23 = PLSearchBackendSceneTaxonomyGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        uuid = [assetCopy uuid];
        *buf = 67109378;
        v29 = sceneAnalysisVersion;
        v30 = 2112;
        v31 = uuid;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Could not open taxonomy for scene analysis version: %i, unable to index scenes for asset: %@", buf, 0x12u);
      }
    }

    v22 = MEMORY[0x1E695E0F0];
  }

  return v22;
}

+ (id)_adjustmentStyleCastForAsset:(id)asset
{
  v3 = MEMORY[0x1E695DF70];
  assetCopy = asset;
  v5 = objc_alloc_init(v3);
  currentSleetCast = [assetCopy currentSleetCast];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__PLSpotlightAssetTranslator__adjustmentStyleCastForAsset___block_invoke;
  v10[3] = &unk_1E756CFD8;
  v11 = v5;
  v7 = v5;
  PLSearchStringsForAdjustmentStyleCast(currentSleetCast, v10);
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

+ (id)_mediaTypesForAsset:(id)asset
{
  v44 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:572 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([assetCopy RAWBadgeAttribute] - 1 <= 2)
  {
    v7 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v7];
  }

  kind = [assetCopy kind];
  if (kind)
  {
    if (kind != 1)
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
  allObjects = [v11 allObjects];
  [v6 addObjectsFromArray:allObjects];

LABEL_10:
  kindSubtype = [assetCopy kindSubtype];
  if (kindSubtype > 0x64u)
  {
    if (kindSubtype == 103 || kindSubtype == 102 || kindSubtype == 101)
    {
      goto LABEL_18;
    }
  }

  else if (kindSubtype == 1 || kindSubtype == 2 || kindSubtype == 10)
  {
LABEL_18:
    v14 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v14];
  }

  if ([assetCopy playbackVariation] == 3)
  {
    v15 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v15];
  }

  playbackStyle = [assetCopy playbackStyle];
  if (playbackStyle == 5 || playbackStyle == 2)
  {
    v17 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v17];
  }

  if (([assetCopy avalanchePickType] & 0x10) != 0)
  {
    v18 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v18];
  }

  depthType = [assetCopy depthType];
  if (depthType == 1)
  {
    v21 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v21];

    if (kindSubtype != 2)
    {
      goto LABEL_32;
    }

    v20 = PLServicesLivePortraitLocalizedFrameworkString();
  }

  else
  {
    if (depthType != 2)
    {
      goto LABEL_32;
    }

    v20 = PLServicesLocalizedFrameworkString();
  }

  v22 = v20;
  [v6 addObject:v20];

LABEL_32:
  if ([assetCopy isMagicCarpet])
  {
    v23 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v23];
  }

  if ([assetCopy spatialType])
  {
    v24 = PLServicesLocalizedFrameworkString();
    [v6 addObject:v24];
  }

  additionalAttributes = [assetCopy additionalAttributes];
  cameraCaptureDevice = [additionalAttributes cameraCaptureDevice];

  if (cameraCaptureDevice == 2)
  {
    v27 = PLServicesFRSVLocalizedFrameworkString();
    [v6 addObject:v27];
  }

  else
  {
    if (cameraCaptureDevice != 1)
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

+ (id)_personsForAsset:(id)asset fetchHelper:(id)helper thumbnailMap:(id)map
{
  v33 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  mapCopy = map;
  v24 = assetCopy;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"asset", 0}];
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  allDetectedFaces = [helperCopy allDetectedFaces];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [allDetectedFaces countByEnumeratingWithState:&v26 objects:v32 count:16];
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
          objc_enumerationMutation(allDetectedFaces);
        }

        v17 = *(*(&v26 + 1) + 8 * i);
        v18 = [v17 associatedPersonForFaceOrTorso:1 orTemporal:1];
        if ([v18 shouldIndexOnAssetsForSearch])
        {
          v19 = [PLSpotlightTranslatorUtilities spotlightPersonFromPLPerson:v18 face:v17 fetchHelper:helperCopy];
          [v11 addObject:v19];
          thumbnailIdentifier = [v17 thumbnailIdentifier];
          if ([thumbnailIdentifier length])
          {
            personUUID = [v18 personUUID];
            [mapCopy setOrReplaceThumbnailIdentifierIfEarlier:thumbnailIdentifier forLookupIdentifier:personUUID];
          }
        }

        else
        {
          v19 = PLSearchBackendModelTranslationGetLog();
          if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_14;
          }

          thumbnailIdentifier = [v18 personUUID];
          *buf = 138412290;
          v31 = thumbnailIdentifier;
          _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEBUG, "Person not valid for indexing: %@", buf, 0xCu);
        }

LABEL_14:
      }

      v14 = [allDetectedFaces countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v14);
  }

  return v11;
}

+ (id)_contentRatingForAsset:(id)asset fetchHelper:(id)helper
{
  helperCopy = helper;
  additionalAttributes = [asset additionalAttributes];
  v7 = MEMORY[0x1E695DFD8];
  allSceneClassifications = [helperCopy allSceneClassifications];

  v9 = [v7 setWithArray:allSceneClassifications];

  v10 = +[PLSpotlightTranslatorUtilities contentRatingFromScenes:algorithmVersion:](PLSpotlightTranslatorUtilities, "contentRatingFromScenes:algorithmVersion:", v9, [additionalAttributes sceneAnalysisVersion]);

  return v10;
}

+ (id)_humanActionScenesForAsset:(id)asset fetchHelper:(id)helper thumbnailMap:(id)map
{
  v22 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  mapCopy = map;
  v8 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  allDetectedFaces = [helperCopy allDetectedFaces];
  v10 = [allDetectedFaces countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(allDetectedFaces);
        }

        detectionTraits = [*(*(&v17 + 1) + 8 * i) detectionTraits];
        v15 = [PLSpotlightTranslatorUtilities spotlightScenesFromDetectionTraits:detectionTraits thumbnailMap:mapCopy];

        [v8 addObjectsFromArray:v15];
      }

      v11 = [allDetectedFaces countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  return v8;
}

+ (id)_audioClassificationsForAsset:(id)asset
{
  assetCopy = asset;
  v4 = objc_opt_new();
  additionalAttributes = [assetCopy additionalAttributes];

  temporalSceneClassifications = [additionalAttributes temporalSceneClassifications];
  v7 = [PLSpotlightTranslatorUtilities spotlightAudioClassificationsFromScenes:temporalSceneClassifications];

  [v4 addObjectsFromArray:v7];

  return v4;
}

+ (id)_partsOfWeekForAsset:(id)asset
{
  localDateCreated = [asset localDateCreated];
  if (localDateCreated)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E69C1AB8];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PLSpotlightAssetTranslator__partsOfWeekForAsset___block_invoke;
    v8[3] = &unk_1E756CFD8;
    v6 = v4;
    v9 = v6;
    [v5 partOfWeekLocalizedStringsForLocalDate:localDateCreated result:v8];
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

+ (id)_partsOfDayForAsset:(id)asset
{
  localDateCreated = [asset localDateCreated];
  if (localDateCreated)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = MEMORY[0x1E69C1AB0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PLSpotlightAssetTranslator__partsOfDayForAsset___block_invoke;
    v8[3] = &unk_1E756CFD8;
    v6 = v4;
    v9 = v6;
    [v5 partOfDayLocalizedStringsForLocalDate:localDateCreated result:v8];
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

+ (void)_getGraphAttributesForMomentFromFetchHelper:(id)helper indexingContext:(id)context businessNames:(id *)names businessCategories:(id *)categories eventNames:(id *)eventNames eventCategories:(id *)eventCategories eventPerformers:(id *)performers meanings:(id *)self0 holidays:(id *)self1 locationKeywords:(id *)self2
{
  v76 = *MEMORY[0x1E69E9840];
  helperCopy = helper;
  contextCopy = context;
  v61 = helperCopy;
  if (helperCopy)
  {
    if (names)
    {
      goto LABEL_3;
    }

LABEL_23:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"outBusinessNames"}];

    if (categories)
    {
      goto LABEL_4;
    }

    goto LABEL_24;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:372 description:{@"Invalid parameter not satisfying: %@", @"fetchHelper"}];

  if (!names)
  {
    goto LABEL_23;
  }

LABEL_3:
  if (categories)
  {
    goto LABEL_4;
  }

LABEL_24:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:374 description:{@"Invalid parameter not satisfying: %@", @"outBusinessCategories"}];

LABEL_4:
  if (!eventNames)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:375 description:{@"Invalid parameter not satisfying: %@", @"outEventNames"}];
  }

  if (!eventCategories)
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"outEventCategories"}];
  }

  holidaysCopy2 = holidays;
  if (!performers)
  {
    currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler6 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:377 description:{@"Invalid parameter not satisfying: %@", @"outEventPerformers"}];

    holidaysCopy2 = holidays;
  }

  keywordsCopy3 = keywords;
  if (meanings)
  {
    if (holidaysCopy2)
    {
      goto LABEL_12;
    }
  }

  else
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:378 description:{@"Invalid parameter not satisfying: %@", @"outMeanings"}];

    keywordsCopy3 = keywords;
    if (holidays)
    {
      goto LABEL_12;
    }
  }

  currentHandler8 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler8 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:379 description:{@"Invalid parameter not satisfying: %@", @"outHolidays"}];

  keywordsCopy3 = keywords;
LABEL_12:
  namesCopy = names;
  categoriesCopy = categories;
  eventNamesCopy = eventNames;
  eventCategoriesCopy = eventCategories;
  if (!keywordsCopy3)
  {
    currentHandler9 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler9 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:380 description:{@"Invalid parameter not satisfying: %@", @"outLocationKeywords"}];
  }

  v22 = objc_opt_new();
  v23 = objc_opt_new();
  v24 = objc_opt_new();
  v25 = objc_opt_new();
  v26 = objc_opt_new();
  v27 = objc_opt_new();
  v28 = objc_opt_new();
  v29 = objc_opt_new();
  locale = [contextCopy locale];
  localeIdentifier = [locale localeIdentifier];

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
  v54 = localeIdentifier;
  [v61 enumerateMomentSearchEntitiesWithIndexLocaleIdentifier:localeIdentifier withBlock:v66];
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

  *namesCopy = [v55 copy];
  *categoriesCopy = [v53 copy];
  *eventNamesCopy = [v52 copy];
  *eventCategoriesCopy = [v32 copy];
  *performers = [v33 copy];
  *meanings = [v34 copy];
  *keywords = [v35 copy];
  *holidays = [v36 allObjects];
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

+ (void)updateThumbnailMap:(id)map withMADEmbedding:(id)embedding
{
  mapCopy = map;
  thumbnailIdentifiers = [embedding thumbnailIdentifiers];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__PLSpotlightAssetTranslator_updateThumbnailMap_withMADEmbedding___block_invoke;
  v8[3] = &unk_1E756C078;
  v9 = mapCopy;
  v7 = mapCopy;
  [thumbnailIdentifiers enumerateObjectsUsingBlock:v8];
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

+ (id)_spotlightSearchableAttributesForAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier indexingContext:(id)context documentObservation:(id)observation propertySets:(unint64_t)sets embeddingsFetcher:(id)fetcher
{
  setsCopy = sets;
  v196 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  helperCopy = helper;
  contextCopy = context;
  observationCopy = observation;
  fetcherCopy = fetcher;
  v179 = assetCopy;
  if (!assetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:116 description:{@"Invalid parameter not satisfying: %@", @"asset"}];
  }

  if (!contextCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:117 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];
  }

  dateCreated = [assetCopy dateCreated];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  if ([dateCreated isEqualToDate:distantPast])
  {
    importedByBundleIdentifier = [assetCopy importedByBundleIdentifier];
    v19 = [importedByBundleIdentifier isEqualToString:*MEMORY[0x1E69BFF00]];

    if (v19)
    {
      v20 = PLSearchBackendModelTranslationGetLog();
      if (os_log_type_enabled(&v20->super, OS_LOG_TYPE_ERROR))
      {
        uuid = [assetCopy uuid];
        additionalAttributes = [assetCopy additionalAttributes];
        syndicationIdentifier = [additionalAttributes syndicationIdentifier];
        *buf = 138543618;
        v193 = uuid;
        v194 = 2114;
        v195 = syndicationIdentifier;
        _os_log_impl(&dword_19BF1F000, &v20->super, OS_LOG_TYPE_ERROR, "Not creating CSSI attributeSet (dateCreated = distantPast) Messages asset %{public}@ %{public}@", buf, 0x16u);
      }

      v24 = 0;
      goto LABEL_46;
    }
  }

  else
  {
  }

  if ([assetCopy kind] == 1)
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
  if (setsCopy)
  {
    [v25 setPhotosResultType:@"com.apple.photos.search.result.collection.asset"];
    formattedCameraModel = [assetCopy formattedCameraModel];
    [v26 setPhotosAcquisitionModel:formattedCameraModel];

    moment = [assetCopy moment];
    uuid2 = [moment uuid];
    [v26 setPhotosContainerIdentifier:uuid2];

    uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
    [v26 setPhotosContentType:uniformTypeIdentifier];

    title = [assetCopy title];
    [v26 setPhotosTitle:title];

    longDescription = [assetCopy longDescription];
    [v26 setPhotosContentDescription:longDescription];

    v33 = MEMORY[0x1E696AD98];
    [assetCopy curationScore];
    v34 = [v33 numberWithDouble:?];
    [v26 setPhotosCurationScore:v34];

    v35 = MEMORY[0x1E696AD98];
    [assetCopy overallAestheticScore];
    v36 = [v35 numberWithFloat:?];
    [v26 setPhotosAestheticScore:v36];

    v37 = [self _personsForAsset:assetCopy fetchHelper:helperCopy thumbnailMap:v20];
    [v26 setPhotosPeople:v37];

    v38 = [self _mediaTypesForAsset:assetCopy];
    [v26 setPhotosMediaTypes:v38];

    v39 = [self _adjustmentStyleCastForAsset:assetCopy];
    [v26 setPhotosPhotographicStyles:v39];

    dateCreated2 = [assetCopy dateCreated];
    calendar = [contextCopy calendar];
    v42 = [PLSpotlightTranslatorUtilities seasonsForDate:dateCreated2 calendar:calendar];
    [v177 setPhotosSeasons:v42];

    v43 = [self _contentRatingForAsset:assetCopy fetchHelper:helperCopy];
    [v177 setPhotosContentRating:v43];

    v44 = [self _utilityTypesForAsset:assetCopy indexingContext:contextCopy];
    [v177 setPhotosUtilityTypes:v44];

    if ([assetCopy isFavorite])
    {
      v45 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(assetCopy, "isFavorite")}];
      [v177 setPhotosFavorited:v45];

      v46 = PLServicesLocalizedFrameworkString();
      [v177 setPhotosFavorites:v46];
    }

    v170 = observationCopy;
    additionalAttributes2 = [assetCopy additionalAttributes];
    v169 = fetcherCopy;
    if ([self _indexLocalDateCreated])
    {
      localDateCreated = [assetCopy localDateCreated];
      [v177 setPhotosTimeZoneOffset:&unk_1F0FBC748];
      [v177 setPhotosInferredTimeZoneOffset:&unk_1F0FBC748];
    }

    else
    {
      localDateCreated = [assetCopy dateCreated];
      inferredTimeZoneOffset = [additionalAttributes2 inferredTimeZoneOffset];
      [v177 setPhotosInferredTimeZoneOffset:inferredTimeZoneOffset];

      timeZoneOffset = [additionalAttributes2 timeZoneOffset];
      [v177 setPhotosTimeZoneOffset:timeZoneOffset];

      timeZoneName = [additionalAttributes2 timeZoneName];
      [v177 setPhotosTimeZoneName:timeZoneName];
    }

    [v177 setPhotosContentCreationDate:localDateCreated];
    searchIndexDateFormatter = [contextCopy searchIndexDateFormatter];
    v53 = [searchIndexDateFormatter localizedMonthStringsFromDate:localDateCreated];
    v166 = searchIndexDateFormatter;
    v167 = localDateCreated;
    v54 = [searchIndexDateFormatter newLocalizedComponentsFromDate:localDateCreated includeMonth:0];
    v165 = v53;
    [v177 setPhotosContentCreationDateMonths:v53];
    v164 = v54;
    [v177 setPhotosContentCreationDateYears:v54];
    addedDate = [assetCopy addedDate];
    [v177 setPhotosContentAddedDate:addedDate];

    v56 = objc_opt_new();
    sceneTaxonomyProvider = [contextCopy sceneTaxonomyProvider];
    v58 = [self _scenesForAsset:assetCopy fetchHelper:helperCopy sceneTaxonomyProvider:sceneTaxonomyProvider thumbnailMap:v20];
    [v56 addObjectsFromArray:v58];

    v59 = [self _audioClassificationsForAsset:assetCopy];
    [v56 addObjectsFromArray:v59];

    v60 = [self _humanActionScenesForAsset:assetCopy fetchHelper:helperCopy thumbnailMap:v20];
    [v56 addObjectsFromArray:v60];

    v191 = 0;
    csuTaxonomyObjectStore = [contextCopy csuTaxonomyObjectStore];
    locale = [contextCopy locale];
    v162 = csuTaxonomyObjectStore;
    v63 = [self _privateEncryptedComputeScenesForAsset:assetCopy fetchHelper:helperCopy csuTaxonomyObjectStore:csuTaxonomyObjectStore locale:locale isSensitiveLocation:&v191];
    [v56 addObjectsFromArray:v63];

    v64 = [MEMORY[0x1E696AD98] numberWithBool:v191];
    photosSensitiveLocationKey = [contextCopy photosSensitiveLocationKey];
    [v177 setValue:v64 forCustomKey:photosSensitiveLocationKey];

    v163 = v56;
    [v177 setPhotosSceneClassifications:v56];
    [v177 setPhotosDonationState:&unk_1F0FBC760];
    v66 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(additionalAttributes2, "sceneAnalysisVersion")}];
    [v177 setPhotosSceneAnalysisVersion:v66];

    v67 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes = [assetCopy mediaAnalysisAttributes];
    v69 = [v67 numberWithShort:{objc_msgSend(mediaAnalysisAttributes, "characterRecognitionVersion")}];
    [v177 setPhotosCharacterRecognitionAnalysisVersion:v69];

    v168 = additionalAttributes2;
    v70 = [MEMORY[0x1E696AD98] numberWithShort:{objc_msgSend(additionalAttributes2, "faceAnalysisVersion")}];
    [v177 setPhotosFaceAnalysisVersion:v70];

    v71 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes2 = [assetCopy mediaAnalysisAttributes];
    v73 = [v71 numberWithUnsignedLongLong:{objc_msgSend(mediaAnalysisAttributes2, "mediaAnalysisVersion")}];
    [v177 setPhotosMediaAnalysisVersion:v73];

    v74 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes3 = [assetCopy mediaAnalysisAttributes];
    v76 = [v74 numberWithShort:{objc_msgSend(mediaAnalysisAttributes3, "mediaAnalysisImageVersion")}];
    [v177 setPhotosMediaAnalysisImageVersion:v76];

    v77 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes4 = [assetCopy mediaAnalysisAttributes];
    v79 = [v77 numberWithShort:{objc_msgSend(mediaAnalysisAttributes4, "vaAnalysisVersion")}];
    [v177 setPhotosPrivateEncryptedComputeAnalysisVersion:v79];

    v80 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes5 = [assetCopy mediaAnalysisAttributes];
    v82 = [v80 numberWithShort:{objc_msgSend(mediaAnalysisAttributes5, "vaLocationAnalysisVersion")}];
    [v177 setPhotosLocationPrivateEncryptedComputeAnalysisVersion:v82];

    v83 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes6 = [assetCopy mediaAnalysisAttributes];
    v85 = [v83 numberWithShort:{objc_msgSend(mediaAnalysisAttributes6, "imageEmbeddingVersion")}];
    [v177 setPhotosImageEmbeddingVersion:v85];

    v86 = MEMORY[0x1E696AD98];
    mediaAnalysisAttributes7 = [assetCopy mediaAnalysisAttributes];
    v88 = [v86 numberWithShort:{objc_msgSend(mediaAnalysisAttributes7, "videoEmbeddingVersion")}];
    [v177 setPhotosVideoEmbeddingVersion:v88];

    v89 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(assetCopy, "reverseLocationDataIsValid")}];
    photosReverseLocationDataIsValidKey = [contextCopy photosReverseLocationDataIsValidKey];
    [v177 setValue:v89 forCustomKey:photosReverseLocationDataIsValidKey];

    if ([assetCopy kind] == 1)
    {
      v91 = MEMORY[0x1E696AD98];
      [assetCopy duration];
      v92 = [v91 numberWithDouble:?];
      [v177 setPhotosDuration:v92];
    }

    if (_shouldIndexAssetUUIDForDebugging_onceToken != -1)
    {
      dispatch_once(&_shouldIndexAssetUUIDForDebugging_onceToken, &__block_literal_global_385);
    }

    if (_shouldIndexAssetUUIDForDebugging_shouldIndexAssetUUIDForDebugging == 1)
    {
      uuid3 = [assetCopy uuid];
      [v177 setPhotosDisplayName:uuid3];
    }

    if ([contextCopy isSharedLibraryEnabled])
    {
      v94 = [self _libraryScopeForAsset:assetCopy];
      [v177 setPhotosLibraryName:v94];

      v95 = [self _sharedLibraryContributorsForAsset:assetCopy];
      [v177 setPhotosSharedLibraryContributors:v95];
    }

    v96 = [MEMORY[0x1E695DF00] now];
    [v177 setPhotosDonationTimestamp:v96];

    importedByBundleIdentifier2 = [assetCopy importedByBundleIdentifier];
    importedByDisplayName = [assetCopy importedByDisplayName];
    if (PLShouldConstructDisplayNameForAppBundle(importedByBundleIdentifier2, importedByDisplayName))
    {
      v99 = PLSyndicatedDisplayNameForAppBundle(importedByBundleIdentifier2, importedByDisplayName);
      [v177 setPhotosSavedFromAppName:v99];
      [v177 setPhotosSavedFromAppBundleIdentifier:importedByBundleIdentifier2];
    }

    v161 = importedByBundleIdentifier2;
    v100 = [self _partsOfDayForAsset:assetCopy];
    [v177 setPhotosPartsOfDay:v100];

    v101 = [self _partsOfWeekForAsset:assetCopy];
    [v177 setPhotosPartsOfWeek:v101];

    v102 = [PLKeywordManager keywordsForAsset:assetCopy];
    allObjects = [v102 allObjects];
    [v177 setPhotosKeywords:allObjects];

    v190 = 0;
    v104 = [self _albumsUUIDsForAsset:assetCopy fetchHelper:helperCopy libraryIdentifier:identifier assetCounts:&v190];
    v105 = v190;
    photosAlbumUUIDsKey = [contextCopy photosAlbumUUIDsKey];
    v159 = v104;
    [v177 setValue:v104 forCustomKey:photosAlbumUUIDsKey];

    photosAlbumAssetCountsKey = [contextCopy photosAlbumAssetCountsKey];
    v158 = v105;
    [v177 setValue:v105 forCustomKey:photosAlbumAssetCountsKey];

    v189 = 0;
    v108 = [self _memoryUUIDsForAsset:assetCopy fetchHelper:helperCopy libraryIdentifier:identifier assetCounts:&v189];
    v109 = v189;
    photosMemoryUUIDsKey = [contextCopy photosMemoryUUIDsKey];
    v157 = v108;
    [v177 setValue:v108 forCustomKey:photosMemoryUUIDsKey];

    photosMemoryAssetCountsKey = [contextCopy photosMemoryAssetCountsKey];
    v156 = v109;
    [v177 setValue:v109 forCustomKey:photosMemoryAssetCountsKey];

    v188 = 0;
    v112 = [self _highlightUUIDsForAsset:assetCopy libraryIdentifier:identifier assetCounts:&v188];
    v113 = v188;
    photosHighlightUUIDsKey = [contextCopy photosHighlightUUIDsKey];
    v172 = v112;
    [v177 setValue:v112 forCustomKey:photosHighlightUUIDsKey];

    photosHighlightAssetCountsKey = [contextCopy photosHighlightAssetCountsKey];
    v155 = v113;
    [v177 setValue:v113 forCustomKey:photosHighlightAssetCountsKey];

    moment2 = [assetCopy moment];

    v160 = importedByDisplayName;
    if (moment2)
    {
      v186 = 0;
      v187 = 0;
      v184 = 0;
      v185 = 0;
      v182 = 0;
      v183 = 0;
      v180 = 0;
      v181 = 0;
      [self _getGraphAttributesForMomentFromFetchHelper:helperCopy indexingContext:contextCopy businessNames:&v187 businessCategories:&v186 eventNames:&v185 eventCategories:&v184 eventPerformers:&v183 meanings:&v182 holidays:&v181 locationKeywords:&v180];
      v117 = v187;
      v118 = v186;
      v119 = v185;
      v120 = v184;
      v121 = v183;
      v122 = v182;
      v123 = v181;
      v124 = v180;
      selfCopy3 = self;
    }

    else
    {
      v126 = PLSearchBackendModelTranslationGetLog();
      selfCopy3 = self;
      if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
      {
        uuid4 = [v179 uuid];
        *buf = 138412290;
        v193 = uuid4;
        _os_log_impl(&dword_19BF1F000, v126, OS_LOG_TYPE_INFO, "No Moment set for asset: %@. No Knowledge Graph data for this asset.", buf, 0xCu);

        selfCopy3 = self;
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
    countrySynonymProvider = [contextCopy countrySynonymProvider];
    v129 = v124;
    v130 = [selfCopy3 _locationNamesForAsset:v179 graphLocations:v124 countrySynonymProvider:countrySynonymProvider];
    [v177 setPhotosLocationKeywords:v130];

    photoLibrary = [v179 photoLibrary];
    libraryServicesManager = [photoLibrary libraryServicesManager];
    wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];

    if (wellKnownPhotoLibraryIdentifier <= 1)
    {
      uuid5 = [v179 uuid];
      v135 = PLServicesLocalizedFrameworkString();
      [PLSpotlightTranslatorUtilities tagCSSearchableItem:v177 entityInstanceIdentifier:uuid5 typeIdentifier:@"AssetEntity" typeDisplayName:v135 displayTitle:&stru_1F0F06D80 displaySubtitle:0];
    }

    fetcherCopy = v169;
    observationCopy = v170;
    v20 = v173;
    v26 = v177;
  }

  if ((setsCopy & 2) != 0)
  {
    v136 = [PLSearchOCRUtilities spotlightTextLinesFromDocumentObservation:observationCopy];
    [v26 setPhotosTextContentPieces:v136];
  }

  v137 = [fetcherCopy embeddingForAsset:v179 indexingContext:contextCopy allowFetchIfMissing:1];
  if ([v137 isSuccess])
  {
    result = [v137 result];
    csEmbedding = [result csEmbedding];
    [v177 setPhotoEmbedding:csEmbedding];
    v140 = MEMORY[0x1E696AD98];
    vectors = [csEmbedding vectors];
    v142 = [v140 numberWithUnsignedInteger:{objc_msgSend(vectors, "count")}];
    [contextCopy photosEmbeddingCountKey];
    v143 = fetcherCopy;
    v145 = v144 = observationCopy;
    [v177 setValue:v142 forCustomKey:v145];

    observationCopy = v144;
    fetcherCopy = v143;

    v20 = v173;
    [self updateThumbnailMap:v173 withMADEmbedding:result];
  }

  v146 = _os_feature_enabled_impl();
  if ((setsCopy & 1) != 0 && v146)
  {
    data = [(PLSearchThumbnailMap *)v20 data];
    photosThumbnailMapKey = [contextCopy photosThumbnailMapKey];
    [v177 setValue:data forCustomKey:photosThumbnailMapKey];
  }

  v24 = v177;
LABEL_46:

  return v24;
}

+ (id)partialSpotlightSearchableItemFromAsset:(id)asset fetchHelper:(id)helper libraryIdentifier:(int64_t)identifier propertySets:(unint64_t)sets indexingContext:(id)context documentObservation:(id)observation embeddingsFetcher:(id)fetcher
{
  assetCopy = asset;
  helperCopy = helper;
  contextCopy = context;
  observationCopy = observation;
  fetcherCopy = fetcher;
  if (assetCopy)
  {
    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

    if (contextCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLSpotlightAssetTranslator.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"indexingContext"}];

LABEL_3:
  if (sets)
  {
    setsCopy = sets;
  }

  else
  {
    setsCopy = 3;
  }

  v20 = [PLSpotlightDonationUtilities spotlightUniqueIdentifierForAsset:assetCopy];
  photoLibrary = [assetCopy photoLibrary];
  libraryServicesManager = [photoLibrary libraryServicesManager];
  v23 = +[PLSpotlightDonationUtilities domainIdentifierForPhotoLibraryIdentifier:](PLSpotlightDonationUtilities, "domainIdentifierForPhotoLibraryIdentifier:", [libraryServicesManager wellKnownPhotoLibraryIdentifier]);

  v24 = [self _spotlightSearchableAttributesForAsset:assetCopy fetchHelper:helperCopy libraryIdentifier:identifier indexingContext:contextCopy documentObservation:observationCopy propertySets:setsCopy embeddingsFetcher:fetcherCopy];
  if (v24)
  {
    v40 = [objc_alloc(MEMORY[0x1E6964E80]) initWithUniqueIdentifier:v20 domainIdentifier:v23 attributeSet:v24];
    photoLibrary2 = [assetCopy photoLibrary];
    [photoLibrary2 libraryServicesManager];
    v26 = v23;
    v27 = v20;
    v28 = contextCopy;
    v30 = v29 = observationCopy;
    v42 = assetCopy;
    v31 = setsCopy;
    v32 = fetcherCopy;
    wellKnownPhotoLibraryIdentifier = [v30 wellKnownPhotoLibraryIdentifier];

    observationCopy = v29;
    contextCopy = v28;
    v20 = v27;
    v23 = v26;

    v34 = wellKnownPhotoLibraryIdentifier == 3;
    fetcherCopy = v32;
    v34 = !v34 && v31 == 3;
    v35 = v40;
    assetCopy = v42;
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