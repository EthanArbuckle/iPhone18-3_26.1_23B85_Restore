@interface PXSurveyQuestionAssetGroupConfiguration
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionAssetGroupConfiguration)init;
- (PXSurveyQuestionAssetGroupConfiguration)initWithTitle:(id)a3 assetCollection:(id)a4;
- (UIView)contentView;
- (id)px_surveyQuestionAssetGroupViewMetadataDateRangeStringWithFormatter:(id)a3 assetGroupView:(id)a4;
- (id)px_surveyQuestionAssetGroupViewMetadataLocationString:(id)a3;
- (void)px_surveyQuestionAssetGroupViewWasTapped:(id)a3;
@end

@implementation PXSurveyQuestionAssetGroupConfiguration

- (void)px_surveyQuestionAssetGroupViewWasTapped:(id)a3
{
  v14 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  v4 = MEMORY[0x1E6978630];
  v5 = [v14 photoLibrary];
  v6 = [v5 librarySpecificFetchOptions];
  v7 = [v4 fetchAssetsInAssetCollection:v14 options:v6];

  v8 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(v14, v7, 0, 0, 1);
  v9 = [[PXPhotosUIViewController alloc] initWithConfiguration:v8];
  v10 = [(PXSurveyQuestionAssetGroupConfiguration *)self handlers];
  v11 = [v10 pushViewControllerHandler];

  if (v11)
  {
    v12 = [(PXSurveyQuestionAssetGroupConfiguration *)self handlers];
    v13 = [v12 pushViewControllerHandler];
    (v13)[2](v13, v9, v14);
  }
}

- (id)px_surveyQuestionAssetGroupViewMetadataDateRangeStringWithFormatter:(id)a3 assetGroupView:(id)a4
{
  v5 = a3;
  v6 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  v7 = [v6 startDate];
  v8 = [v5 stringFromDate:v7];

  v9 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  v10 = [v9 endDate];
  v11 = [v5 stringFromDate:v10];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v8, v11];

  return v12;
}

- (id)px_surveyQuestionAssetGroupViewMetadataLocationString:(id)a3
{
  v3 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  v4 = [v3 localizedLocationNames];
  v5 = [v4 firstObject];

  return v5;
}

- (CGRect)contentRectForOneUp
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (UIView)contentView
{
  contentView = self->_contentView;
  if (contentView)
  {
    v3 = contentView;
  }

  else
  {
    v5 = [PXSurveyQuestionAssetGroupView alloc];
    v6 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
    v7 = [(PXSurveyQuestionAssetGroupView *)v5 initWithAssetCollection:v6];

    [(PXSurveyQuestionAssetGroupView *)v7 setDelegate:self];
    v8 = self->_contentView;
    self->_contentView = v7;
    v9 = v7;

    v3 = self->_contentView;
  }

  return v3;
}

- (PXSurveyQuestionAssetGroupConfiguration)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionAssetGroupConfiguration.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXSurveyQuestionAssetGroupConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionAssetGroupConfiguration)initWithTitle:(id)a3 assetCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionAssetGroupConfiguration;
  v8 = [(PXSurveyQuestionAssetGroupConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v8->_isStale = 0;
    objc_storeStrong(&v8->_assetCollection, a4);
  }

  return v8;
}

@end