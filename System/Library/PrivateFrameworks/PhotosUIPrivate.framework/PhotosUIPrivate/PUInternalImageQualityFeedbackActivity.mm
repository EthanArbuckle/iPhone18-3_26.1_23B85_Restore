@interface PUInternalImageQualityFeedbackActivity
- (BOOL)canPerformWithActivityItems:(id)items;
- (id)activityViewController;
- (id)assets;
- (void)feedbackImageQualityUIViewController:(id)controller didFinish:(BOOL)finish;
@end

@implementation PUInternalImageQualityFeedbackActivity

- (void)feedbackImageQualityUIViewController:(id)controller didFinish:(BOOL)finish
{
  [(UIActivity *)self activityDidFinish:finish];
  feedbackController = self->_feedbackController;
  self->_feedbackController = 0;
}

- (id)activityViewController
{
  feedbackController = self->_feedbackController;
  if (!feedbackController)
  {
    v4 = objc_alloc(MEMORY[0x1E69C3570]);
    assets = [(PUInternalImageQualityFeedbackActivity *)self assets];
    v6 = [v4 initWithAssets:assets delegate:self];
    v7 = self->_feedbackController;
    self->_feedbackController = v6;

    [(PXFeedbackImageQualityUIViewController *)self->_feedbackController setModalPresentationStyle:0];
    feedbackController = self->_feedbackController;
  }

  return feedbackController;
}

- (BOOL)canPerformWithActivityItems:(id)items
{
  mEMORY[0x1E69C3970] = [MEMORY[0x1E69C3970] sharedInstance];
  canShowInternalUI = [mEMORY[0x1E69C3970] canShowInternalUI];

  if (canShowInternalUI)
  {
    itemSourceController = [(PXActivity *)self itemSourceController];
    if ([itemSourceController isPreparingIndividualItems] && itemSourceController)
    {
      [itemSourceController requestAssetsMediaTypeCount];
    }
  }

  return 0;
}

- (id)assets
{
  itemSourceController = [(PXActivity *)self itemSourceController];
  v3 = MEMORY[0x1E695DEC8];
  assets = [itemSourceController assets];
  array = [assets array];
  v6 = [v3 arrayWithArray:array];

  return v6;
}

@end