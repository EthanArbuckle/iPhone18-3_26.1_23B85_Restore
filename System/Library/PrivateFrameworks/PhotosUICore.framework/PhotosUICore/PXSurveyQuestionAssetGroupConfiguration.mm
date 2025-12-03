@interface PXSurveyQuestionAssetGroupConfiguration
- (CGRect)contentRectForOneUp;
- (PXSurveyQuestionAssetGroupConfiguration)init;
- (PXSurveyQuestionAssetGroupConfiguration)initWithTitle:(id)title assetCollection:(id)collection;
- (UIView)contentView;
- (id)px_surveyQuestionAssetGroupViewMetadataDateRangeStringWithFormatter:(id)formatter assetGroupView:(id)view;
- (id)px_surveyQuestionAssetGroupViewMetadataLocationString:(id)string;
- (void)px_surveyQuestionAssetGroupViewWasTapped:(id)tapped;
@end

@implementation PXSurveyQuestionAssetGroupConfiguration

- (void)px_surveyQuestionAssetGroupViewWasTapped:(id)tapped
{
  assetCollection = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  v4 = MEMORY[0x1E6978630];
  photoLibrary = [assetCollection photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];
  v7 = [v4 fetchAssetsInAssetCollection:assetCollection options:librarySpecificFetchOptions];

  v8 = PXPhotosViewConfigurationForAssetCollectionWithExistingAssetsFetchResult(assetCollection, v7, 0, 0, 1);
  v9 = [[PXPhotosUIViewController alloc] initWithConfiguration:v8];
  handlers = [(PXSurveyQuestionAssetGroupConfiguration *)self handlers];
  pushViewControllerHandler = [handlers pushViewControllerHandler];

  if (pushViewControllerHandler)
  {
    handlers2 = [(PXSurveyQuestionAssetGroupConfiguration *)self handlers];
    pushViewControllerHandler2 = [handlers2 pushViewControllerHandler];
    (pushViewControllerHandler2)[2](pushViewControllerHandler2, v9, assetCollection);
  }
}

- (id)px_surveyQuestionAssetGroupViewMetadataDateRangeStringWithFormatter:(id)formatter assetGroupView:(id)view
{
  formatterCopy = formatter;
  assetCollection = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  startDate = [assetCollection startDate];
  v8 = [formatterCopy stringFromDate:startDate];

  assetCollection2 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  endDate = [assetCollection2 endDate];
  v11 = [formatterCopy stringFromDate:endDate];

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ - %@", v8, v11];

  return v12;
}

- (id)px_surveyQuestionAssetGroupViewMetadataLocationString:(id)string
{
  assetCollection = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
  localizedLocationNames = [assetCollection localizedLocationNames];
  firstObject = [localizedLocationNames firstObject];

  return firstObject;
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
    assetCollection = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
    v7 = [(PXSurveyQuestionAssetGroupView *)v5 initWithAssetCollection:assetCollection];

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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSurveyQuestionAssetGroupConfiguration.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXSurveyQuestionAssetGroupConfiguration init]"}];

  abort();
}

- (PXSurveyQuestionAssetGroupConfiguration)initWithTitle:(id)title assetCollection:(id)collection
{
  titleCopy = title;
  collectionCopy = collection;
  v12.receiver = self;
  v12.super_class = PXSurveyQuestionAssetGroupConfiguration;
  v8 = [(PXSurveyQuestionAssetGroupConfiguration *)&v12 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v8->_isStale = 0;
    objc_storeStrong(&v8->_assetCollection, collection);
  }

  return v8;
}

@end