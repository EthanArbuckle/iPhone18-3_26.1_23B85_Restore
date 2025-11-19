@interface PUInternalAutoLoopFeedbackActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityViewController;
- (id)asset;
@end

@implementation PUInternalAutoLoopFeedbackActivity

- (id)activityViewController
{
  v3 = objc_alloc(MEMORY[0x1E69C3568]);
  v4 = [(PUInternalAutoLoopFeedbackActivity *)self asset];
  v5 = [v3 initWithAsset:v4 delegate:self];

  [v5 setModalPresentationStyle:0];

  return v5;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [(PXActivity *)self itemSourceController];
  v5 = [v4 isPreparingIndividualItems];

  v6 = [(PUInternalAutoLoopFeedbackActivity *)self asset];
  v7 = 0;
  if (PFOSVariantHasInternalUI() && v5)
  {
    if ([v6 canPlayLoopingVideo])
    {
      v7 = 1;
    }

    else
    {
      v7 = [v6 canPlayLongExposure];
    }
  }

  return v7;
}

- (id)asset
{
  v2 = [(PXActivity *)self itemSourceController];
  v3 = [v2 assets];
  if ([v3 count] == 1)
  {
    v4 = [v3 firstObject];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end