@interface PXSurveyQuestionCustomizableAssetGroupConfiguration
- (PXSurveyQuestionCustomizableAssetGroupConfiguration)initWithTitle:(id)a3 assetCollection:(id)a4 customMaximumPreviewAssetCount:(id)a5 keyAssetLocalIdentifier:(id)a6;
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
    v6 = [(PXSurveyQuestionAssetGroupConfiguration *)self assetCollection];
    v7 = [(PXSurveyQuestionCustomizableAssetGroupConfiguration *)self customMaximumPreviewAssetCount];
    v8 = [(PXSurveyQuestionCustomizableAssetGroupConfiguration *)self keyAssetLocalIdentifier];
    v9 = [(PXSurveyQuestionAssetGroupView *)v5 initWithAssetCollection:v6 customMaximumPreviewAssetCount:v7 keyAssetLocalIdentifier:v8];

    [(PXSurveyQuestionAssetGroupView *)v9 setDelegate:self];
    v10 = self->_contentView;
    self->_contentView = v9;
    v11 = v9;

    v3 = self->_contentView;
  }

  return v3;
}

- (PXSurveyQuestionCustomizableAssetGroupConfiguration)initWithTitle:(id)a3 assetCollection:(id)a4 customMaximumPreviewAssetCount:(id)a5 keyAssetLocalIdentifier:(id)a6
{
  v11 = a5;
  v12 = a6;
  v18.receiver = self;
  v18.super_class = PXSurveyQuestionCustomizableAssetGroupConfiguration;
  v13 = [(PXSurveyQuestionAssetGroupConfiguration *)&v18 initWithTitle:a3 assetCollection:a4];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_customMaximumPreviewAssetCount, a5);
    v15 = [v12 copy];
    keyAssetLocalIdentifier = v14->_keyAssetLocalIdentifier;
    v14->_keyAssetLocalIdentifier = v15;
  }

  return v14;
}

@end