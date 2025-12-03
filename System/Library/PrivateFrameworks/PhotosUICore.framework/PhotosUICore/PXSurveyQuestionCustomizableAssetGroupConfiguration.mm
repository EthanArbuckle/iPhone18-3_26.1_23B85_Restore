@interface PXSurveyQuestionCustomizableAssetGroupConfiguration
- (PXSurveyQuestionCustomizableAssetGroupConfiguration)initWithTitle:(id)title assetCollection:(id)collection customMaximumPreviewAssetCount:(id)count keyAssetLocalIdentifier:(id)identifier;
- (id)contentView;
@end

@implementation PXSurveyQuestionCustomizableAssetGroupConfiguration

- (id)contentView
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
    customMaximumPreviewAssetCount = [(PXSurveyQuestionCustomizableAssetGroupConfiguration *)self customMaximumPreviewAssetCount];
    keyAssetLocalIdentifier = [(PXSurveyQuestionCustomizableAssetGroupConfiguration *)self keyAssetLocalIdentifier];
    v9 = [(PXSurveyQuestionAssetGroupView *)v5 initWithAssetCollection:assetCollection customMaximumPreviewAssetCount:customMaximumPreviewAssetCount keyAssetLocalIdentifier:keyAssetLocalIdentifier];

    [(PXSurveyQuestionAssetGroupView *)v9 setDelegate:self];
    v10 = self->_contentView;
    self->_contentView = v9;
    v11 = v9;

    v3 = self->_contentView;
  }

  return v3;
}

- (PXSurveyQuestionCustomizableAssetGroupConfiguration)initWithTitle:(id)title assetCollection:(id)collection customMaximumPreviewAssetCount:(id)count keyAssetLocalIdentifier:(id)identifier
{
  countCopy = count;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = PXSurveyQuestionCustomizableAssetGroupConfiguration;
  v13 = [(PXSurveyQuestionAssetGroupConfiguration *)&v18 initWithTitle:title assetCollection:collection];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_customMaximumPreviewAssetCount, count);
    v15 = [identifierCopy copy];
    keyAssetLocalIdentifier = v14->_keyAssetLocalIdentifier;
    v14->_keyAssetLocalIdentifier = v15;
  }

  return v14;
}

@end