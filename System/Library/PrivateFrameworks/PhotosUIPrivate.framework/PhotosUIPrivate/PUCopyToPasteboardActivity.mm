@interface PUCopyToPasteboardActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (PXActivityItemSourceController)itemSourceController;
- (id)activityTitle;
@end

@implementation PUCopyToPasteboardActivity

- (PXActivityItemSourceController)itemSourceController
{
  WeakRetained = objc_loadWeakRetained(&self->_itemSourceController);

  return WeakRetained;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemsCopy = items;
  itemSourceController = [(PUCopyToPasteboardActivity *)self itemSourceController];
  isPreparingIndividualItems = [itemSourceController isPreparingIndividualItems];

  mEMORY[0x1E69C3A18] = [MEMORY[0x1E69C3A18] sharedInstance];
  allowCopyingVideos = [mEMORY[0x1E69C3A18] allowCopyingVideos];

  v9 = allowCopyingVideos & isPreparingIndividualItems;
  if (allowCopyingVideos & 1) == 0 && (isPreparingIndividualItems)
  {
    itemSourceController2 = [(PUCopyToPasteboardActivity *)self itemSourceController];
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    if (itemSourceController2 && (v11 = itemSourceController2, [itemSourceController2 requestAssetsMediaTypeCount], v11, *(&v14 + 1)))
    {
      v9 = 0;
    }

    else
    {
      v13.receiver = self;
      v13.super_class = PUCopyToPasteboardActivity;
      v9 = [(UICopyToPasteboardActivity *)&v13 canPerformWithActivityItems:itemsCopy];
    }
  }

  return v9;
}

- (id)activityTitle
{
  itemSourceController = [(PUCopyToPasteboardActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  PXMediaTypeForAssets();
  [assets count];
  v4 = PXLocalizationKeyForMediaType();
  v5 = PULocalizedString(v4);

  return v5;
}

@end