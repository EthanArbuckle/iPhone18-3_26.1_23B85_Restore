@interface PXSuggestionsDataSourceManager
+ (id)typePredicateForDataSourceType:(unsigned __int16)a3 shouldShowUnsavedSyndicatedContentInFeaturedPhotos:(BOOL)a4;
- (PXSuggestionsDataSourceManager)init;
- (PXSuggestionsDataSourceManager)initWithDataSourceType:(unsigned __int16)a3 libraryFilterState:(id)a4;
- (PXSuggestionsDataSourceManager)initWithLibraryFilterState:(id)a3 fetchResultProvider:(id)a4;
- (id)_createNewDataSourceWithFetchResult:(id)a3;
- (void)_handleChangeWithDetails:(id)a3;
- (void)_resetDataSource;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
@end

@implementation PXSuggestionsDataSourceManager

- (void)_handleChangeWithDetails:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [PXSuggestionsDataSource alloc];
  v6 = [v4 fetchResultAfterChanges];
  v7 = [(PXSuggestionsDataSource *)v5 initWithSuggestionsFetchResult:v6];

  if ([v4 hasIncrementalChanges])
  {
    v8 = [(PXSectionedDataSourceManager *)self dataSource];
    v9 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v4];
    v10 = [off_1E77218B0 alloc];
    v11 = [v8 identifier];
    v12 = [(PXSuggestionsDataSource *)v7 identifier];
    v13 = [off_1E7721450 changeDetailsWithNoChanges];
    v16 = &unk_1F1909FA0;
    v17[0] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v15 = [v10 initWithFromDataSourceIdentifier:v11 toDataSourceIdentifier:v12 sectionChanges:v13 itemChangeDetailsBySection:v14 subitemChangeDetailsByItemBySection:0];
  }

  else
  {
    v15 = 0;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v7 changeDetails:v15];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (PXConfigurationObservationContext == a5)
  {
    if ((v6 & 0x10) != 0)
    {
LABEL_4:
      v11 = v9;
      [(PXSuggestionsDataSourceManager *)self _resetDataSource];
      v9 = v11;
    }
  }

  else
  {
    if (PXLibraryFilterStateObservationContext_25402 != a5)
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSourceManager.m" lineNumber:218 description:@"Code which should be unreachable has been reached"];

      abort();
    }

    if (v6)
    {
      goto LABEL_4;
    }
  }
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v7 = a3;
  v4 = [(PXSectionedDataSourceManager *)self dataSource];
  v5 = [v4 suggestions];
  if (v5)
  {
    v6 = [v7 changeDetailsForFetchResult:v5];
    if (v6)
    {
      [(PXSuggestionsDataSourceManager *)self _handleChangeWithDetails:v6];
    }
  }
}

- (void)_resetDataSource
{
  v7 = [(PXSuggestionsDataSourceManager *)self fetchResultProvider];
  v3 = [(PXSuggestionsDataSourceManager *)self libraryFilterState];
  if (v7 && v3)
  {
    v4 = v7[2](v7, [v3 sharingFilter]);
    fetchResult = self->_fetchResult;
    self->_fetchResult = v4;

    v6 = [(PXSuggestionsDataSourceManager *)self _createNewDataSourceWithFetchResult:self->_fetchResult];
    [(PXSectionedDataSourceManager *)self setDataSource:v6 changeDetails:0];
  }
}

- (id)_createNewDataSourceWithFetchResult:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v8 = [v7 librarySpecificFetchOptions];

    v9 = [objc_opt_class() baseFetchPredicate];
    v10 = [(PXSuggestionsDataSourceManager *)self contentSyndicationConfigurationProvider];
    v11 = [v10 showUnsavedSyndicatedContentInFeaturedPhotos];

    v12 = [objc_opt_class() typePredicateForDataSourceType:-[PXSuggestionsDataSourceManager dataSourceType](self shouldShowUnsavedSyndicatedContentInFeaturedPhotos:{"dataSourceType"), v11}];
    v13 = [(PXSuggestionsDataSourceManager *)self libraryFilterState];
    v14 = [v13 viewMode];
    if (v14 == 2)
    {
      v15 = 1;
    }

    else
    {
      v15 = 2 * (v14 != 1);
    }

    [v8 setSharingFilter:v15];

    v16 = MEMORY[0x1E696AB28];
    v25[0] = v9;
    v25[1] = v12;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v18 = [v16 andPredicateWithSubpredicates:v17];

    [v8 setPredicate:v18];
    v19 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v24[0] = v19;
    v20 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"uuid" ascending:1];
    v24[1] = v20;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
    [v8 setSortDescriptors:v21];

    [v8 setFetchLimit:12];
    v6 = [MEMORY[0x1E6978AE8] fetchSuggestionsWithOptions:v8];
  }

  v22 = [[PXSuggestionsDataSource alloc] initWithSuggestionsFetchResult:v6];

  return v22;
}

- (PXSuggestionsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSuggestionsDataSourceManager.m" lineNumber:127 description:{@"%s is not available as initializer", "-[PXSuggestionsDataSourceManager init]"}];

  abort();
}

- (PXSuggestionsDataSourceManager)initWithLibraryFilterState:(id)a3 fetchResultProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = PXSuggestionsDataSourceManager;
  v9 = [(PXSectionedDataSourceManager *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_libraryFilterState, a3);
    v11 = [v8 copy];
    fetchResultProvider = v10->_fetchResultProvider;
    v10->_fetchResultProvider = v11;

    [(PXSuggestionsDataSourceManager *)v10 _resetDataSource];
    v13 = [(PHFetchResult *)v10->_fetchResult photoLibrary];
    [v13 px_registerChangeObserver:v10];

    v14 = [(PXLibraryFilterState *)v10->_libraryFilterState photoLibrary];
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    v17 = v16;

    v18 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:v17];
    contentSyndicationConfigurationProvider = v10->_contentSyndicationConfigurationProvider;
    v10->_contentSyndicationConfigurationProvider = v18;
    v20 = v18;

    [(PXContentSyndicationConfigurationProvider *)v10->_contentSyndicationConfigurationProvider registerChangeObserver:v10 context:PXConfigurationObservationContext];
    [(PXLibraryFilterState *)v10->_libraryFilterState registerChangeObserver:v10 context:PXLibraryFilterStateObservationContext_25402];
  }

  return v10;
}

- (PXSuggestionsDataSourceManager)initWithDataSourceType:(unsigned __int16)a3 libraryFilterState:(id)a4
{
  v7 = a4;
  v17.receiver = self;
  v17.super_class = PXSuggestionsDataSourceManager;
  v8 = [(PXSectionedDataSourceManager *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_dataSourceType = a3;
    objc_storeStrong(&v8->_libraryFilterState, a4);
    [(PXSuggestionsDataSourceManager *)v9 _resetDataSource];
    v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    [v10 px_registerChangeObserver:v9];

    v11 = [(PXLibraryFilterState *)v9->_libraryFilterState photoLibrary];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    }

    v14 = v13;

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

+ (id)typePredicateForDataSourceType:(unsigned __int16)a3 shouldShowUnsavedSyndicatedContentInFeaturedPhotos:(BOOL)a4
{
  v4 = 0;
  v16[2] = *MEMORY[0x1E69E9840];
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_12;
      }

      *&a3 = 1;
    }

    goto LABEL_11;
  }

  if (a3 == 3)
  {
    *&a3 = 4;
LABEL_11:
    v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"type == %d", a4, a3];
    goto LABEL_12;
  }

  if (a3 == 2)
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"featuredState == %d", 1];
    v7 = [MEMORY[0x1E6978AE8] predicateForAllFeaturedStateEnabledSuggestionTypesForWidget];
    v8 = MEMORY[0x1E696AB28];
    v16[0] = v7;
    v16[1] = v6;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v4 = [v8 andPredicateWithSubpredicates:v9];

    if (!a4)
    {
      v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"subtype != %d", 306];
      v11 = MEMORY[0x1E696AB28];
      v15[0] = v4;
      v15[1] = v10;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
      v13 = [v11 andPredicateWithSubpredicates:v12];

      v4 = v13;
    }
  }

LABEL_12:

  return v4;
}

@end