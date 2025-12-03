@interface PXHighlightDiagnosticsViewController
- (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index;
- (PXHighlightDiagnosticsViewController)initWithHighlight:(id)highlight;
- (id)assetsForCurationType:(int64_t)type;
- (id)curationDebugInformationWithOptions:(id)options;
- (id)radarAttachmentURLs;
- (id)radarComponentInfoForRoute:(id)route;
- (id)radarTitleTemplate;
- (id)sourceDictionary;
@end

@implementation PXHighlightDiagnosticsViewController

- (id)radarTitleTemplate
{
  v2 = MEMORY[0x1E696AEC0];
  localizedTitle = [(PHPhotosHighlight *)self->_sourceHighlight localizedTitle];
  v4 = [v2 stringWithFormat:@"[CURATED LIBRARY] '%@'", localizedTitle];

  return v4;
}

- (id)radarComponentInfoForRoute:(id)route
{
  v3 = [route isEqualToString:@"Backend"];
  v4 = [PXCuratedAssetCollectionDiagnosticsRadarComponentInformation alloc];
  if (v3)
  {
    v5 = @"1393602";
    v6 = @"Photos Curated Library";
    v7 = @"all";
  }

  else
  {
    v5 = @"937048";
    v6 = @"Photos UI Library";
    v7 = @"iOS";
  }

  v8 = [(PXCuratedAssetCollectionDiagnosticsRadarComponentInformation *)v4 initWithComponentID:v5 name:v6 version:v7];

  return v8;
}

- (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index
{
  sourceHighlight = self->_sourceHighlight;
  sourceDictionary = [(PXHighlightDiagnosticsViewController *)self sourceDictionary];
  LOBYTE(index) = [PXHighlightDiagnosticsHelper generateSectionTitles:titles andTableContent:content forIndex:index sourceHighlight:sourceHighlight sourceDictionary:sourceDictionary];

  return index;
}

- (id)curationDebugInformationWithOptions:(id)options
{
  v44[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  localIdentifier = [(PHPhotosHighlight *)self->_sourceHighlight localIdentifier];
  v42 = 0;
  v34 = optionsCopy;
  v7 = [px_deprecated_appPhotoLibrary curationDebugInformationForAssetCollectionWithLocalIdentifier:localIdentifier options:optionsCopy error:&v42];
  v8 = v42;

  if ([(PHPhotosHighlight *)self->_sourceHighlight kind]== 3)
  {
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
    v44[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    [librarySpecificFetchOptions setSortDescriptors:v11];

    v30 = librarySpecificFetchOptions;
    v12 = [MEMORY[0x1E69789F0] fetchChildDayGroupHighlightsForHighlight:self->_sourceHighlight options:librarySpecificFetchOptions];
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v7 count])
    {
      v14 = 0;
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v33 = v13;
    v31 = v7;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v12;
    v15 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v39;
      do
      {
        v18 = 0;
        v19 = v8;
        do
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v38 + 1) + 8 * v18);
          v21 = [PXHighlightDiagnosticsHelper preprocessDictionaryForHighlight:v20 inPhotoLibrary:px_deprecated_appPhotoLibrary];
          v22 = [v21 mutableCopy];

          localIdentifier2 = [v20 localIdentifier];
          v37 = v19;
          v24 = [px_deprecated_appPhotoLibrary curationDebugInformationForAssetCollectionWithLocalIdentifier:localIdentifier2 options:v34 error:&v37];
          v8 = v37;

          [v22 addEntriesFromDictionary:v24];
          [v33 addObject:v22];
          if (v14)
          {
            if ([v14 count])
            {
              v25 = v35;
              v35[0] = MEMORY[0x1E69E9820];
              v35[1] = 3221225472;
              v26 = __76__PXHighlightDiagnosticsViewController_curationDebugInformationWithOptions___block_invoke_2;
            }

            else
            {
              v25 = v36;
              v36[0] = MEMORY[0x1E69E9820];
              v36[1] = 3221225472;
              v26 = __76__PXHighlightDiagnosticsViewController_curationDebugInformationWithOptions___block_invoke;
            }

            v25[2] = v26;
            v25[3] = &unk_1E773F238;
            v25[4] = v14;
            [v24 enumerateKeysAndObjectsUsingBlock:v25];
          }

          ++v18;
          v19 = v8;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v16);
    }

    if (v14)
    {
      v27 = v33;
      [v14 setObject:v33 forKeyedSubscript:@"childDebugInfos"];
      v7 = v14;
      v28 = v31;
    }

    else
    {
      v28 = v31;
      v7 = [v31 mutableCopy];
      v27 = v33;
      [v7 setObject:v33 forKeyedSubscript:@"childDebugInfos"];
    }
  }

  return v7;
}

void __76__PXHighlightDiagnosticsViewController_curationDebugInformationWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 mutableCopy];
    v7 = [v5 objectForKeyedSubscript:@"items"];
    v8 = [v7 mutableCopy];

    [v6 setObject:v8 forKeyedSubscript:@"items"];
    v9 = [v5 objectForKeyedSubscript:@"rootCluster"];
    v10 = [v9 mutableCopy];

    [v6 setObject:v10 forKeyedSubscript:@"rootCluster"];
    v11 = [v10 objectForKeyedSubscript:@"sortedObjects"];
    v12 = [v11 mutableCopy];

    [v10 setObject:v12 forKeyedSubscript:@"sortedObjects"];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v13];
  }

  else
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v13];
  }
}

void __76__PXHighlightDiagnosticsViewController_curationDebugInformationWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:v18];
    v7 = [v6 objectForKeyedSubscript:@"items"];
    v8 = [v5 objectForKeyedSubscript:@"items"];
    [v7 addEntriesFromDictionary:v8];

    v9 = [v5 objectForKeyedSubscript:@"rootCluster"];
    v10 = [v6 objectForKeyedSubscript:@"rootCluster"];
    v11 = MEMORY[0x1E696AD98];
    v12 = [v10 objectForKeyedSubscript:@"totalNumberOfItems"];
    v13 = [v12 unsignedIntegerValue];
    v14 = [v9 objectForKeyedSubscript:@"totalNumberOfItems"];
    v15 = [v11 numberWithUnsignedInteger:{objc_msgSend(v14, "unsignedIntegerValue") + v13}];
    [v10 setObject:v15 forKeyedSubscript:@"totalNumberOfItems"];

    v16 = [v10 objectForKeyedSubscript:@"sortedObjects"];
    v17 = [v9 objectForKeyedSubscript:@"sortedObjects"];
    [v16 addObjectsFromArray:v17];
  }
}

- (id)sourceDictionary
{
  sourceHighlight = self->_sourceHighlight;
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [PXHighlightDiagnosticsHelper preprocessDictionaryForHighlight:sourceHighlight inPhotoLibrary:px_deprecated_appPhotoLibrary];

  return v4;
}

- (id)radarAttachmentURLs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  sourceDictionary = [(PXHighlightDiagnosticsViewController *)self sourceDictionary];
  v5 = [sourceDictionary mutableCopy];

  fullCurationDebugInformation = [(PXCuratedAssetCollectionDiagnosticsViewController *)self fullCurationDebugInformation];
  if (fullCurationDebugInformation)
  {
    [v5 addEntriesFromDictionary:fullCurationDebugInformation];
  }

  v7 = PXFeedbackTapToRadarUtilitiesWriteDictionaryToPlistFile(v5, @"Photos-Highlight-Debug-Curation");
  if (v7)
  {
    [v3 addObject:v7];
  }

  hostLayoutDiagnosticDescription = [(PXCuratedAssetCollectionDiagnosticsViewController *)self hostLayoutDiagnosticDescription];
  v9 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(hostLayoutDiagnosticDescription, @"Photos-Highlight-Debug-Layout", @"txt");
  if (v9)
  {
    [v3 addObject:v9];
  }

  hostViewDiagnosticDescription = [(PXCuratedAssetCollectionDiagnosticsViewController *)self hostViewDiagnosticDescription];
  v11 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(hostViewDiagnosticDescription, @"Photos-Highlight-Debug-View", @"txt");
  if (v11)
  {
    [v3 addObject:v11];
  }

  return v3;
}

- (id)assetsForCurationType:(int64_t)type
{
  v15[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PHPhotosHighlight *)self->_sourceHighlight photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v15[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [librarySpecificFetchOptions setSortDescriptors:v9];

  [librarySpecificFetchOptions setHighlightCurationType:0];
  if ((type - 1) < 2)
  {
    v11 = librarySpecificFetchOptions;
    v12 = 1;
LABEL_7:
    [v11 setHighlightCurationType:v12];
    goto LABEL_8;
  }

  if (type == 3)
  {
    v11 = librarySpecificFetchOptions;
    v12 = 2;
    goto LABEL_7;
  }

  if (!type)
  {
    v10 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:self->_sourceHighlight referenceAsset:0];
    goto LABEL_9;
  }

LABEL_8:
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_sourceHighlight options:librarySpecificFetchOptions];
LABEL_9:
  v13 = v10;

  return v13;
}

- (PXHighlightDiagnosticsViewController)initWithHighlight:(id)highlight
{
  highlightCopy = highlight;
  v9.receiver = self;
  v9.super_class = PXHighlightDiagnosticsViewController;
  v6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PXHighlightDiagnosticsViewController *)v6 setTitle:@"Highlight Debug"];
    objc_storeStrong(&v7->_sourceHighlight, highlight);
  }

  return v7;
}

@end