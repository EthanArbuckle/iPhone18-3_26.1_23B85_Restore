@interface PXMemoryDiagnosticsViewController
- (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index;
- (PXMemoryDiagnosticsViewController)initWithMemory:(id)memory;
- (id)assetsForCurationType:(int64_t)type;
- (id)curationDebugInformationWithOptions:(id)options;
- (id)radarAttachmentURLs;
- (id)radarComponentInfoForRoute:(id)route;
- (id)radarDescriptionTemplate;
- (id)radarTitleTemplate;
- (id)sourceDictionary;
@end

@implementation PXMemoryDiagnosticsViewController

- (id)radarDescriptionTemplate
{
  v2 = MEMORY[0x1E696AEC0];
  localizedTitle = [(PHMemory *)self->_sourceMemory localizedTitle];
  v4 = [v2 stringWithFormat:@"\n- Do you like/dislike the memory? Why?\n\n- Is the title '%@' correct? What would be a better title?\n\n- Do you like the key asset? Would you have picked another one?\n\n- Was this the right time to show you this memory?\n\n- Did you receive a notification? If so, did you appreciate it?\n\n- Other feedback (people, music, movie, selected pictures, place, etc):\n\n", localizedTitle];

  return v4;
}

- (id)radarTitleTemplate
{
  v2 = MEMORY[0x1E696AEC0];
  localizedTitle = [(PHMemory *)self->_sourceMemory localizedTitle];
  v4 = [v2 stringWithFormat:@"[MEMORIES] '%@'", localizedTitle];

  return v4;
}

- (id)radarComponentInfoForRoute:(id)route
{
  v3 = [route isEqualToString:@"Backend"];
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
  sourceDictionary = [(PXMemoryDiagnosticsViewController *)self sourceDictionary];
  v5 = [sourceDictionary mutableCopy];

  fullCurationDebugInformation = [(PXCuratedAssetCollectionDiagnosticsViewController *)self fullCurationDebugInformation];
  if (fullCurationDebugInformation)
  {
    [v5 addEntriesFromDictionary:fullCurationDebugInformation];
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

  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  photoAnalysisClient = [px_deprecated_appPhotoLibrary photoAnalysisClient];
  v11 = *MEMORY[0x1E69BEA28];
  v19 = 0;
  v12 = [photoAnalysisClient requestExportGraphForPurpose:v11 error:&v19];
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

- (BOOL)generateSectionTitles:(id *)titles andTableContent:(id *)content forIndex:(int64_t)index
{
  if (index == 3)
  {
    indexCopy = 2;
  }

  else
  {
    indexCopy = index;
  }

  sourceMemory = self->_sourceMemory;
  sourceDictionary = [(PXMemoryDiagnosticsViewController *)self sourceDictionary];
  v10 = [PXMemoriesRelatedDiagnosticsHelper generateSectionTitles:titles andTableContent:content forIndex:indexCopy sourceMemory:sourceMemory sourceDictionary:sourceDictionary];

  return v10;
}

- (id)curationDebugInformationWithOptions:(id)options
{
  v4 = MEMORY[0x1E69789A8];
  optionsCopy = options;
  px_deprecated_appPhotoLibrary = [v4 px_deprecated_appPhotoLibrary];
  localIdentifier = [(PHMemory *)self->_sourceMemory localIdentifier];
  v10 = 0;
  v8 = [px_deprecated_appPhotoLibrary curationDebugInformationForAssetCollectionWithLocalIdentifier:localIdentifier options:optionsCopy error:&v10];

  return v8;
}

- (id)sourceDictionary
{
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  photoAnalysisClient = [px_deprecated_appPhotoLibrary photoAnalysisClient];
  localIdentifier = [(PHMemory *)self->_sourceMemory localIdentifier];
  v14 = 0;
  v6 = [photoAnalysisClient requestMemoryDebugInformationForMemoryWithLocalIdentifier:localIdentifier error:&v14];
  v7 = v14;

  photosGraphProperties = [(PHMemory *)self->_sourceMemory photosGraphProperties];
  localIdentifier2 = [(PHMemory *)self->_sourceMemory localIdentifier];
  photosGraphVersion = [(PHMemory *)self->_sourceMemory photosGraphVersion];

  px_deprecated_appPhotoLibrary2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v12 = [PXMemoriesRelatedDiagnosticsHelper preprocessDictionary:photosGraphProperties forMemoryWithLocalIdentifier:localIdentifier2 algorithmsVersion:photosGraphVersion inPhotoLibrary:px_deprecated_appPhotoLibrary2];

  return v12;
}

- (id)assetsForCurationType:(int64_t)type
{
  v15[2] = *MEMORY[0x1E69E9840];
  photoLibrary = [(PHMemory *)self->_sourceMemory photoLibrary];
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
    v10 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:self->_sourceMemory referenceAsset:0];
    goto LABEL_9;
  }

LABEL_8:
  v10 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:self->_sourceMemory options:librarySpecificFetchOptions];
LABEL_9:
  v13 = v10;

  return v13;
}

- (PXMemoryDiagnosticsViewController)initWithMemory:(id)memory
{
  memoryCopy = memory;
  v9.receiver = self;
  v9.super_class = PXMemoryDiagnosticsViewController;
  v6 = [(PXCuratedAssetCollectionDiagnosticsViewController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(PXMemoryDiagnosticsViewController *)v6 setTitle:@"Memory Debug"];
    objc_storeStrong(&v7->_sourceMemory, memory);
  }

  return v7;
}

@end