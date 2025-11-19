@interface PUCopyToPasteboardActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityTitle;
@end

@implementation PUCopyToPasteboardActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = a3;
  v5 = [(PUCopyToPasteboardActivity *)self itemSourceController];
  v6 = [v5 isPreparingIndividualItems];

  v7 = [MEMORY[0x1E69C3A18] sharedInstance];
  v8 = [v7 allowCopyingVideos];

  v9 = v8 & v6;
  if (v8 & 1) == 0 && (v6)
  {
    v10 = [(PUCopyToPasteboardActivity *)self itemSourceController];
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (v10 && (v11 = v10, [v10 requestAssetsMediaTypeCount], v11, *(&v14 + 1)))
    {
      v9 = 0;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = PUCopyToPasteboardActivity;
      v9 = [(UICopyToPasteboardActivity *)&v13 canPerformWithActivityItems:v4];
    }
  }

  return v9;
}

- (id)activityTitle
{
  v2 = [(PUCopyToPasteboardActivity *)self itemSourceController];
  v3 = [v2 assets];
  PXMediaTypeForAssets();
  [v3 count];
  v4 = PXLocalizationKeyForMediaType();
  v5 = PULocalizedString(v4);

  return v5;
}

@end