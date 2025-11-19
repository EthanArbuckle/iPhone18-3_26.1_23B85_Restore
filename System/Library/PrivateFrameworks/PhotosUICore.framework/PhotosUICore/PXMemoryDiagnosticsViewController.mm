@interface PXMemoryDiagnosticsViewController
- (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5;
- (PXMemoryDiagnosticsViewController)initWithMemory:(id)a3;
- (id)assetsForCurationType:(int64_t)a3;
- (id)curationDebugInformationWithOptions:(id)a3;
- (id)radarAttachmentURLs;
- (id)radarComponentInfoForRoute:(id)a3;
- (id)radarDescriptionTemplate;
- (id)radarTitleTemplate;
- (id)sourceDictionary;
@end

@implementation PXMemoryDiagnosticsViewController

- (id)radarDescriptionTemplate
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PHMemory *)self->_sourceMemory localizedTitle];
  v4 = [v2 stringWithFormat:@"\n- Do you like/dislike the memory? Why?\n\n- Is the title '%@' correct? What would be a better title?\n\n- Do you like the key asset? Would you have picked another one?\n\n- Was this the right time to show you this memory?\n\n- Did you receive a notification? If so, did you appreciate it?\n\n- Other feedback (people, music, movie, selected pictures, place, etc):\n\n", v3];

  return v4;
}

- (id)radarTitleTemplate
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PHMemory *)self->_sourceMemory localizedTitle];
  v4 = [v2 stringWithFormat:@"[MEMORIES] '%@'", v3];

  return v4;
}

- (id)radarComponentInfoForRoute:(id)a3
{
  v3 = [a3 isEqualToString:@"Backend"];
  v4 = [PXCuratedAssetCollectionDiagnosticsRadarComponentInformation alloc];
  if (v3)
  {
    v5 = @"936729";
    v6 = @"Photos Memories";
    v7 = @"all";
  }

  else
  {
    v5 = @"681154";
    v6 = @"Photos UI Memories";
    v7 = @"iOS";
  }

  v8 = [(PXCuratedAssetCollectionDiagnosticsRadarComponentInformation *)v4 initWithComponentID:v5 name:v6 version:v7];

  return v8;
}

- (id)radarAttachmentURLs
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [(PXMemoryDiagnosticsViewController *)self sourceDictionary];
  v5 = [v4 mutableCopy];

  v6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)self fullCurationDebugInformation];
  if (v6)
  {
    [v5 addEntriesFromDictionary:v6];
  }

  v7 = [PXMemoriesRelatedDiagnosticsHelper getSummaryFromProviderItem:self->_sourceMemory];
  if (v7)
  {
    [v5 setObject:v7 forKey:@"memorySummary"];
  }

  v8 = PXFeedbackTapToRadarUtilitiesWriteDictionaryToPlistFile(v5, @"MemoryInfoAndCuration");
  if (v8)
  {
    [v3 addObject:v8];
  }

  v9 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v10 = [v9 photoAnalysisClient];
  v11 = *MEMORY[0x1E69BEA28];
  v19 = 0;
  v12 = [v10 requestExportGraphForPurpose:v11 error:&v19];
  v13 = v19;

  if (v12)
  {
    v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v12];
    if (v14)
    {
      [v3 addObject:v14];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v21 = v13;
    _os_log_error_impl(&dword_1A3C1C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error exporting the graph for TTR: %@", buf, 0xCu);
  }

  if ([(PHMemory *)self->_sourceMemory isGenerative])
  {

    sourceMemory = self->_sourceMemory;
    v18 = 0;
    v16 = [MEMORY[0x1E69C1558] memoryCreationDiagnosticFilesForMemory:sourceMemory error:&v18];
    v13 = v18;
    if (v16)
    {
      [v3 addObjectsFromArray:v16];
    }
  }

  return v3;
}

- (BOOL)generateSectionTitles:(id *)a3 andTableContent:(id *)a4 forIndex:(int64_t)a5
{
  if (a5 == 3)
  {
    v7 = 2;
  }

  else
  {
    v7 = a5;
  }

  sourceMemory = self->_sourceMemory;
  v9 = [(PXMemoryDiagnosticsViewController *)self sourceDictionary];
  v10 = [PXMemoriesRelatedDiagnosticsHelper generateSectionTitles:a3 andTableContent:a4 forIndex:v7 sourceMemory:sourceMemory sourceDictionary:v9];

  return v10;
}

- (id)curationDebugInformationWithOptions:(id)a3
{
  v4 = MEMORY[0x1E69789A8];
  v5 = a3;
  v6 = [v4 px_deprecated_appPhotoLibrary];
  v7 = [(PHMemory *)self->_sourceMemory localIdentifier];
  v10 = 0;
  v8 = [v6 curationDebugInformationForAssetCollectionWithLocalIdentifier:v7 options:v5 error:&v10];

  return v8;
}

- (id)sourceDictionary
{
  v3 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v4 = [v3 photoAnalysisClient];
  v5 = [(PHMemory *)self->_sourceMemory localIdentifier];
  v14 = 0;
  v6 = [v4 requestMemoryDebugInformationForMemoryWithLocalIdentifier:v5 error:&v14];
  v7 = v14;

  v8 = [(PHMemory *)self->_sourceMemory photosGraphProperties];
  v9 = [(PHMemory *)self->_sourceMemory localIdentifier];
  v10 = [(PHMemory *)self->_sourceMemory photosGraphVersion];

  v11 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v12 = [PXMemoriesRelatedDiagnosticsHelper preprocessDictionary:v8 forMemoryWithLocalIdentifier:v9 algorithmsVersion:v10 inPhotoLibrary:v11];

  return v12;
}

- (id)assetsForCurationType:(int64_t)a3
{
  v15[2] = *MEMORY[0x1E69E9840];
  v5 = [(PHMemory *)self->_sourceMemory photoLibrary];
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
    v10 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:self->_sourceMemory referenceAsset:0];
    goto LABEL_9;
  }

LABEL_8:
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_sourceMemory options:v6];
LABEL_9:
  v13 = v10;

  return v13;
}

- (PXMemoryDiagnosticsViewController)initWithMemory:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXMemoryDiagnosticsViewController;
  v6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PXMemoryDiagnosticsViewController *)v6 setTitle:@"Memory Debug"];
    objc_storeStrong(&v7->_sourceMemory, a3);
  }

  return v7;
}

@end