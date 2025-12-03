@interface PUInternalAutoLoopFeedbackActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityViewController;
- (id)asset;
@end

@implementation PUInternalAutoLoopFeedbackActivity

- (id)activityViewController
{
  v3 = objc_alloc(MEMORY[0x1E69C3568]);
  asset = [(PUInternalAutoLoopFeedbackActivity *)self asset];
  v5 = [v3 initWithAsset:asset delegate:self];

  [v5 setModalPresentationStyle:0];

  return v5;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  isPreparingIndividualItems = [itemSourceController isPreparingIndividualItems];

  asset = [(PUInternalAutoLoopFeedbackActivity *)self asset];
  canPlayLongExposure = 0;
  if (PFOSVariantHasInternalUI() && isPreparingIndividualItems)
  {
    if ([asset canPlayLoopingVideo])
    {
      canPlayLongExposure = 1;
    }

    else
    {
      canPlayLongExposure = [asset canPlayLongExposure];
    }
  }

  return canPlayLongExposure;
}

- (id)asset
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  assets = [itemSourceController assets];
  if ([assets count] == 1)
  {
    firstObject = [assets firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

@end