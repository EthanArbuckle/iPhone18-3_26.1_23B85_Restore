@interface PXSuggestionsDataSourceManager
+ (id)typePredicateForDataSourceType:(unsigned __int16)type shouldShowUnsavedSyndicatedContentInFeaturedPhotos:(BOOL)photos;
- (PXSuggestionsDataSourceManager)init;
- (PXSuggestionsDataSourceManager)initWithDataSourceType:(unsigned __int16)type libraryFilterState:(id)state;
- (PXSuggestionsDataSourceManager)initWithLibraryFilterState:(id)state fetchResultProvider:(id)provider;
- (id)_createNewDataSourceWithFetchResult:(id)result;
- (void)_handleChangeWithDetails:(id)details;
- (void)_resetDataSource;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
@end

@implementation PXSuggestionsDataSourceManager

- (void)_handleChangeWithDetails:(id)details
{
  v17[1] = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  v5 = [PXSuggestionsDataSource alloc];
  fetchResultAfterChanges = [detailsCopy fetchResultAfterChanges];
  v7 = [(PXSuggestionsDataSource *)v5 initWithSuggestionsFetchResult:fetchResultAfterChanges];

  if ([detailsCopy hasIncrementalChanges])
  {
    dataSource = [(PXSectionedDataSourceManager *)self dataSource];
    v9 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:detailsCopy];
    v10 = [off_1E77218B0 alloc];
    identifier = [dataSource identifier];
    identifier2 = [(PXSuggestionsDataSource *)v7 identifier];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    v16 = &unk_1F1909FA0;
    v17[0] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v10 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoChanges itemChangeDetailsBySection:v14 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v15 = 0;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v7 changeDetails:v15];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXConfigurationObservationContext == context)
  {
    if ((changeCopy & 0x10) != 0)
    {
LABEL_4:
      v11 = observableCopy;
      [(PXSuggestionsDataSourceManager *)self _resetDataSource];
      observableCopy = v11;
    }
  }

  else
  {
    if (PXLibraryFilterStateObservationContext_25402 != context)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSourceManager.m" lineNumber:218 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (changeCopy)
    {
      goto LABEL_4;
    }
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  suggestions = [dataSource suggestions];
  if (suggestions)
  {
    v6 = [queueCopy changeDetailsForFetchResult:suggestions];
    if (v6)
    {
      [(PXSuggestionsDataSourceManager *)self _handleChangeWithDetails:v6];
    }
  }
}

- (void)_resetDataSource
{
  fetchResultProvider = [(PXSuggestionsDataSourceManager *)self fetchResultProvider];
  libraryFilterState = [(PXSuggestionsDataSourceManager *)self libraryFilterState];
  if (fetchResultProvider && libraryFilterState)
  {
    v4 = fetchResultProvider[2](fetchResultProvider, [libraryFilterState sharingFilter]);
    fetchResult = self->_fetchResult;
    self->_fetchResult = v4;

    v6 = [(PXSuggestionsDataSourceManager *)self _createNewDataSourceWithFetchResult:self->_fetchResult];
    [(PXSectionedDataSourceManager *)self setDataSource:v6 changeDetails:0];
  }
}

- (id)_createNewDataSourceWithFetchResult:(id)result
{
  v25[2] = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy)
  {
    v6 = resultCopy;
  }

  else
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    librarySpecificFetchOptions = [px_deprecated_appPhotoLibrary librarySpecificFetchOptions];

    baseFetchPredicate = [objc_opt_class() baseFetchPredicate];
    contentSyndicationConfigurationProvider = [(PXSuggestionsDataSourceManager *)self contentSyndicationConfigurationProvider];
    showUnsavedSyndicatedContentInFeaturedPhotos = [contentSyndicationConfigurationProvider showUnsavedSyndicatedContentInFeaturedPhotos];

    v12 = [objc_opt_class() typePredicateForDataSourceType:-[PXSuggestionsDataSourceManager dataSourceType](self shouldShowUnsavedSyndicatedContentInFeaturedPhotos:{"dataSourceType"), showUnsavedSyndicatedContentInFeaturedPhotos}];
    libraryFilterState = [(PXSuggestionsDataSourceManager *)self libraryFilterState];
    viewMode = [libraryFilterState viewMode];
    if (viewMode == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2 * (viewMode != 1);
    }

    [librarySpecificFetchOptions setSharingFilter:v15];

    v16 = MEMORY[0x1E696AB28];
    v25[0] = baseFetchPredicate;
    v25[1] = v12;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];

    [librarySpecificFetchOptions setPredicate:v18];
    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v24[0] = v19;
    v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v24[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [librarySpecificFetchOptions setSortDescriptors:v21];

    [librarySpecificFetchOptions setFetchLimit:12];
    v6 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:librarySpecificFetchOptions];
  }

  v22 = [[PXSuggestionsDataSource alloc] initWithSuggestionsFetchResult:v6];

  return v22;
}

- (PXSuggestionsDataSourceManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSourceManager.m" lineNumber:127 description:{@"%s is not available as initializer", "-[PXSuggestionsDataSourceManager init]"}];

  abort();
}

- (PXSuggestionsDataSourceManager)initWithLibraryFilterState:(id)state fetchResultProvider:(id)provider
{
  stateCopy = state;
  providerCopy = provider;
  v22.receiver = self;
  v22.super_class = PXSuggestionsDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryFilterState, state);
    v11 = [providerCopy copy];
    fetchResultProvider = v10->_fetchResultProvider;
    v10->_fetchResultProvider = v11;

    [(PXSuggestionsDataSourceManager *)v10 _resetDataSource];
    photoLibrary = [(PHFetchResult *)v10->_fetchResult photoLibrary];
    [photoLibrary px_registerChangeObserver:v10];

    photoLibrary2 = [(PXLibraryFilterState *)v10->_libraryFilterState photoLibrary];
    v15 = photoLibrary2;
    if (photoLibrary2)
    {
      px_deprecated_appPhotoLibrary = photoLibrary2;
    }

    else
    {
      px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    v17 = px_deprecated_appPhotoLibrary;

    v18 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v17];
    contentSyndicationConfigurationProvider = v10->_contentSyndicationConfigurationProvider;
    v10->_contentSyndicationConfigurationProvider = v18;
    v20 = v18;

    [(PXContentSyndicationConfigurationProvider *)v10->_contentSyndicationConfigurationProvider registerChangeObserver:v10 context:PXConfigurationObservationContext];
    [(PXLibraryFilterState *)v10->_libraryFilterState registerChangeObserver:v10 context:PXLibraryFilterStateObservationContext_25402];
  }

  return v10;
}

- (PXSuggestionsDataSourceManager)initWithDataSourceType:(unsigned __int16)type libraryFilterState:(id)state
{
  stateCopy = state;
  v17.receiver = self;
  v17.super_class = PXSuggestionsDataSourceManager;
  v8 = [(PXSectionedDataSourceManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_dataSourceType = type;
    objc_storeStrong(&v8->_libraryFilterState, state);
    [(PXSuggestionsDataSourceManager *)v9 _resetDataSource];
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [px_deprecated_appPhotoLibrary px_registerChangeObserver:v9];

    photoLibrary = [(PXLibraryFilterState *)v9->_libraryFilterState photoLibrary];
    v12 = photoLibrary;
    if (photoLibrary)
    {
      px_deprecated_appPhotoLibrary2 = photoLibrary;
    }

    else
    {
      px_deprecated_appPhotoLibrary2 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    v14 = px_deprecated_appPhotoLibrary2;

    v15 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v14];
    objc_storeStrong(&v9->_contentSyndicationConfigurationProvider, v15);
    if (v9->_dataSourceType == 2)
    {
      [(PXContentSyndicationConfigurationProvider *)v9->_contentSyndicationConfigurationProvider registerChangeObserver:v9 context:PXConfigurationObservationContext];
    }

    [(PXLibraryFilterState *)v9->_libraryFilterState registerChangeObserver:v9 context:PXLibraryFilterStateObservationContext_25402];
  }

  return v9;
}

+ (id)typePredicateForDataSourceType:(unsigned __int16)type shouldShowUnsavedSyndicatedContentInFeaturedPhotos:(BOOL)photos
{
  type = 0;
  v16[2] = *MEMORY[0x1E69E9840];
  if (type <= 1)
  {
    if (type)
    {
      if (type != 1)
      {
        goto LABEL_12;
      }

      *&type = 1;
    }

    goto LABEL_11;
  }

  if (type == 3)
  {
    *&type = 4;
LABEL_11:
    type = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %d", photos, type];
    goto LABEL_12;
  }

  if (type == 2)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"featuredState == %d", 1];
    predicateForAllFeaturedStateEnabledSuggestionTypesForWidget = [MEMORY[0x1E6978AE8] predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
    v8 = MEMORY[0x1E696AB28];
    v16[0] = predicateForAllFeaturedStateEnabledSuggestionTypesForWidget;
    v16[1] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    type = [v8 andPredicateWithSubpredicates:v9];

    if (!photos)
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"subtype != %d", 306];
      v11 = MEMORY[0x1E696AB28];
      v15[0] = type;
      v15[1] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v13 = [v11 andPredicateWithSubpredicates:v12];

      type = v13;
    }
  }

LABEL_12:

  return type;
}

@end