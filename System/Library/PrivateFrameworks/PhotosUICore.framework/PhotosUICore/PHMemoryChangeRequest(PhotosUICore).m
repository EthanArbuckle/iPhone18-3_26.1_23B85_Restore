@interface PHMemoryChangeRequest(PhotosUICore)
+ (BOOL)_shouldSetCustomUserAssetsForAssetCollection:()PhotosUICore;
+ (id)_fetchCuratedAssetsForAssetCollection:()PhotosUICore people:includeGuestAssets:;
+ (id)px_creationRequestForAssetCollection:()PhotosUICore displayTitleInfo:people:ignoreCuration:;
@end

@implementation PHMemoryChangeRequest(PhotosUICore)

+ (BOOL)_shouldSetCustomUserAssetsForAssetCollection:()PhotosUICore
{
  v3 = a3;
  v4 = ([v3 customSortKey] != 1 || (objc_msgSend(v3, "customSortAscending") & 1) == 0) && (objc_msgSend(v3, "assetCollectionType") & 0xFFFFFFFFFFFFFFFDLL) != 4;

  return v4;
}

+ (id)_fetchCuratedAssetsForAssetCollection:()PhotosUICore people:includeGuestAssets:
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 photoLibrary];
  v10 = [PXPhotosAssetsFetcher sharedFetcherForPhotoLibrary:v9];

  if (a5)
  {
    v11 = 20;
  }

  else
  {
    v11 = 16;
  }

  if ([PXStoryPHAssetCollectionAssetsProducer shouldApplyDetailsViewContextForAssetCollection:v8])
  {
    v11 |= 0x20uLL;
  }

  v12 = objc_alloc_init(PXPhotosAssetsFetcherConfiguration);
  [(PXPhotosAssetsFetcherConfiguration *)v12 setCurationKind:2];
  [(PXPhotosAssetsFetcherConfiguration *)v12 setOptions:v11];
  v13 = [v7 fetchedObjects];

  [(PXPhotosAssetsFetcherConfiguration *)v12 setReferencePersons:v13];
  [(PXPhotosAssetsFetcherConfiguration *)v12 setCurationType:1];
  v14 = [v10 fetchAssetsInContainer:v8 configuration:v12];

  return v14;
}

+ (id)px_creationRequestForAssetCollection:()PhotosUICore displayTitleInfo:people:ignoreCuration:
{
  v76[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v64 = a4;
  v62 = a5;
  v55 = [MEMORY[0x1E695DF00] date];
  v61 = [v9 photoLibrary];
  v58 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v61];
  v10 = [v58 showUnsavedSyndicatedContentInMemories];
  v11 = [v61 px_standardLibrarySpecificFetchOptions];
  [v11 setIncludeGuestAssets:v10];
  v59 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:3];
  if (v64)
  {
    v12 = [v64 title];
    v63 = [v64 subtitle];
    v57 = [v64 fontName];
  }

  else
  {
    if ([v9 assetCollectionType] == 6 && MEMORY[0x1A590BA50](objc_msgSend(v9, "type")))
    {
      v12 = [v9 localizedSubtitle];
      v63 = [v9 localizedTitle];
    }

    else
    {
      v12 = [v9 localizedTitle];
      v63 = [v9 localizedSubtitle];
    }

    v57 = [v9 titleFontName];
  }

  v13 = [(__CFString *)v12 length];
  v14 = MEMORY[0x1E6978EE8];
  v15 = MEMORY[0x1E6978ED8];
  if (v13 || ![v62 count])
  {
    [v59 setObject:v12 forKeyedSubscript:*v14];
    [v59 setObject:v63 forKeyedSubscript:*v15];
    v60 = [MEMORY[0x1E6978900] preferredAttributesForMemoryCreationFromAssetCollection:v9 proposedAttributes:v59];
  }

  else
  {
    v16 = [v62 fetchedObjects];
    v17 = [PXPeopleUtilities memoryTitleStringFromPeople:v16];

    if ([v17 length])
    {
      v18 = [off_1E77217B8 defaultHelper];
      v19 = [v18 titleForDisplayableText:v17 titleCategory:2 options:0];

      v20 = v59;
      [v59 setObject:v19 forKeyedSubscript:*v14];
      v17 = v19;
    }

    else
    {
      v21 = PLMemoriesGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v73 = v62;
        _os_log_impl(&dword_1A3C1C000, v21, OS_LOG_TYPE_DEFAULT, "Empty string returned for people %@", buf, 0xCu);
      }

      v20 = v59;
    }

    v60 = [MEMORY[0x1E6978900] preferredAttributesForMemoryCreationFromPeople:v62 proposedAttributes:v20];
    v22 = [MEMORY[0x1E6978650] titleFontNameForTitleCategory:2];

    v57 = v22;
  }

  if (v60)
  {
    v23 = [v60 objectForKeyedSubscript:*v14];

    v24 = [v60 objectForKeyedSubscript:*v15];

    v63 = v24;
    v12 = v23;
  }

  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x3032000000;
  v70[3] = __Block_byref_object_copy__67269;
  v70[4] = __Block_byref_object_dispose__67270;
  v71 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __115__PHMemoryChangeRequest_PhotosUICore__px_creationRequestForAssetCollection_displayTitleInfo_people_ignoreCuration___block_invoke;
  aBlock[3] = &unk_1E77347C8;
  v69 = v70;
  v25 = v9;
  v67 = v25;
  v56 = v11;
  v68 = v56;
  v26 = _Block_copy(aBlock);
  v27 = [MEMORY[0x1E6978630] fetchRepresentativeAssetsInAssetCollection:v25];
  if (![v27 count])
  {
    v28 = v26[2](v26);
    v29 = [v28 count] == 0;

    if (!v29)
    {
      v30 = PLUIGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v73 = v27;
        v74 = 2112;
        v75 = v25;
        _os_log_impl(&dword_1A3C1C000, v30, OS_LOG_TYPE_FAULT, "photoanalysisd returned invalid representative assets:%@ for assetCollection:%@", buf, 0x16u);
      }

      v31 = v26[2](v26);

      v27 = v31;
    }
  }

  v32 = v26[2](v26);
  v33 = v32;
  v34 = *MEMORY[0x1E6978FE8];
  if (a6 && [v32 count] <= v34)
  {
    v35 = v33;
    v33 = v35;
  }

  else
  {
    v35 = [MEMORY[0x1E6978900] _fetchCuratedAssetsForAssetCollection:v25 people:v62 includeGuestAssets:v10];
    if ([v35 count] > v34)
    {
      PXAssertGetLog();
    }

    if ([v33 count] > v34)
    {
      v36 = v35;

      v35 = v36;
      v33 = v35;
      v27 = v35;
    }
  }

  if (![v35 count])
  {
    v37 = v26[2](v26);

    v35 = v37;
  }

  if ([(__CFString *)v12 length])
  {
    if (a6)
    {
      goto LABEL_43;
    }
  }

  else
  {

    v12 = @" ";
    if (a6)
    {
LABEL_43:
      v42 = [v35 firstObject];
      goto LABEL_44;
    }
  }

  if ([v25 supportsFastKeyAssetCuration])
  {
    v38 = MEMORY[0x1E6978630];
    v39 = [v62 fetchedObjects];
    v40 = [v38 fetchKeyCuratedAssetInAssetCollection:v25 referencePersons:v39];
  }

  else
  {
    v41 = PLUIGetLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v73 = v25;
      _os_log_impl(&dword_1A3C1C000, v41, OS_LOG_TYPE_DEFAULT, "%@ doesn't support fast key asset curation, falling back to uncurated key asset (for memory creation)", buf, 0xCu);
    }

    v40 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v25 options:v56];
  }

  v42 = [v40 firstObject];

  if (!v42)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (!-[__CFString length](v12, "length") || !v42 || ![v35 count] || !objc_msgSend(v27, "count"))
  {
    PXAssertGetLog();
  }

  v43 = [MEMORY[0x1E6978900] creationRequestForMemoryWithTitle:v12 subtitle:v63 creationDate:v55 category:0 subcategory:0 representativeAssets:v27 curatedAssets:v35 extendedCuratedAssets:v33 keyAsset:v42];
  if ([MEMORY[0x1E6978900] _shouldSetCustomUserAssetsForAssetCollection:v25])
  {
    [v43 setCustomUserAssets:v35];
  }

  if (v57)
  {
    v44 = [MEMORY[0x1E69788F0] movieDataWithTitleFontName:v57];
    [v43 setMovieData:v44];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v54 = v25;
    [v43 setPhotosGraphVersion:{objc_msgSend(v54, "photosGraphVersion")}];
    v45 = [v54 photosGraphProperties];
    if (v45)
    {
      v65 = 0;
      v52 = v45;
      v46 = [MEMORY[0x1E69788F0] px_photosGraphDataFromProperties:v45 error:&v65];
      v53 = v65;
      if (!v46)
      {
        PXAssertGetLog();
      }

      [v43 setPhotosGraphData:v46];

      v45 = v52;
    }
  }

  v48 = [v62 fetchedObjects];
  v49 = v48;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v76[0] = v25;
    v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:1];
  }

  v51 = v50;

  [v43 setQueryHintObjects:v51];
  _Block_object_dispose(v70, 8);

  return v43;
}

@end