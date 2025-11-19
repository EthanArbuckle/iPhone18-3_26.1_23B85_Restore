@interface PXHighlightDiagnosticsViewController
- (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5;
- (PXHighlightDiagnosticsViewController)initWithHighlight:(id)a3;
- (id)assetsForCurationType:(int64_t)a3;
- (id)curationDebugInformationWithOptions:(id)a3;
- (id)radarAttachmentURLs;
- (id)radarComponentInfoForRoute:(id)a3;
- (id)radarTitleTemplate;
- (id)sourceDictionary;
@end

@implementation PXHighlightDiagnosticsViewController

- (id)radarTitleTemplate
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PHPhotosHighlight *)self->_sourceHighlight localizedTitle];
  v4 = [v2 stringWithFormat:@"[CURATED LIBRARY] '%@'", v3];

  return v4;
}

- (id)radarComponentInfoForRoute:(id)a3
{
  v3 = [a3 isEqualToString:@"Backend"];
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

- (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5
{
  sourceHighlight = self->_sourceHighlight;
  v9 = [(PXHighlightDiagnosticsViewController *)self sourceDictionary];
  LOBYTE(a5) = [PXHighlightDiagnosticsHelper generateSectionTitles:a3 andTableContent:a4 forIndex:a5 sourceHighlight:sourceHighlight sourceDictionary:v9];

  return a5;
}

- (id)curationDebugInformationWithOptions:(id)a3
{
  v44[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v6 = [(PHPhotosHighlight *)self->_sourceHighlight localIdentifier];
  v42 = 0;
  v34 = v4;
  v7 = [v5 curationDebugInformationForAssetCollectionWithLocalIdentifier:v6 options:v4 error:&v42];
  v8 = v42;

  if ([(PHPhotosHighlight *)self->_sourceHighlight kind]== 3)
  {
    v9 = [v5 librarySpecificFetchOptions];
    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
    v44[0] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:1];
    [v9 setSortDescriptors:v11];

    v30 = v9;
    v12 = [MEMORY[0x1E69789F0] fetchChildDayGroupHighlightsForHighlight:self->_sourceHighlight options:v9];
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
          v21 = [PXHighlightDiagnosticsHelper preprocessDictionaryForHighlight:v20 inPhotoLibrary:v5];
          v22 = [v21 mutableCopy];

          v23 = [v20 localIdentifier];
          v37 = v19;
          v24 = [v5 curationDebugInformationForAssetCollectionWithLocalIdentifier:v23 options:v34 error:&v37];
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
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [PXHighlightDiagnosticsHelper preprocessDictionaryForHighlight:sourceHighlight inPhotoLibrary:v3];

  return v4;
}

- (id)radarAttachmentURLs
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PXHighlightDiagnosticsViewController *)self sourceDictionary];
  v5 = [v4 mutableCopy];

  v6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self fullCurationDebugInformation];
  if (v6)
  {
    [v5 addEntriesFromDictionary:v6];
  }

  v7 = PXFeedbackTapToRadarUtilitiesWriteDictionaryToPlistFile(v5, @"Photos-Highlight-Debug-Curation");
  if (v7)
  {
    [v3 addObject:v7];
  }

  v8 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self hostLayoutDiagnosticDescription];
  v9 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(v8, @"Photos-Highlight-Debug-Layout", @"txt");
  if (v9)
  {
    [v3 addObject:v9];
  }

  v10 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self hostViewDiagnosticDescription];
  v11 = PXFeedbackTapToRadarUtilitiesWriteStringToFileWithExtension(v10, @"Photos-Highlight-Debug-View", @"txt");
  if (v11)
  {
    [v3 addObject:v11];
  }

  return v3;
}

- (id)assetsForCurationType:(int64_t)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = [(PHPhotosHighlight *)self->_sourceHighlight photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];

  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v15[0] = v7;
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
  v15[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v6 setSortDescriptors:v9];

  [v6 setHighlightCurationType:0];
  if ((a3 - 1) < 2)
  {
    v11 = v6;
    v12 = 1;
LABEL_7:
    [v11 setHighlightCurationType:v12];
    goto LABEL_8;
  }

  if (a3 == 3)
  {
    v11 = v6;
    v12 = 2;
    goto LABEL_7;
  }

  if (!a3)
  {
    v10 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:self->_sourceHighlight referenceAsset:0];
    goto LABEL_9;
  }

LABEL_8:
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_sourceHighlight options:v6];
LABEL_9:
  v13 = v10;

  return v13;
}

- (PXHighlightDiagnosticsViewController)initWithHighlight:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXHighlightDiagnosticsViewController;
  v6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PXHighlightDiagnosticsViewController *)v6 setTitle:@"Highlight Debug"];
    objc_storeStrong(&v7->_sourceHighlight, a3);
  }

  return v7;
}

@end