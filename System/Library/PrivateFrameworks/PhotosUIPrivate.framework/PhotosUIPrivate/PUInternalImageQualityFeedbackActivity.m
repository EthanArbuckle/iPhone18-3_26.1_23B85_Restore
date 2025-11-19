@interface PUInternalImageQualityFeedbackActivity
- (BOOL)canPerformWithActivityItems:(id)a3;
- (id)activityViewController;
- (id)assets;
- (void)feedbackImageQualityUIViewController:(id)a3 didFinish:(BOOL)a4;
@end

@implementation PUInternalImageQualityFeedbackActivity

- (void)feedbackImageQualityUIViewController:(id)a3 didFinish:(BOOL)a4
{
  [(UIActivity *)self activityDidFinish:a4];
  feedbackController = self->_feedbackController;
  self->_feedbackController = 0;
}

- (id)activityViewController
{
  feedbackController = self->_feedbackController;
  if (!feedbackController)
  {
    v4 = objc_alloc(MEMORY[0x1E69C3570]);
    v5 = [(PUInternalImageQualityFeedbackActivity *)self assets];
    v6 = [v4 initWithAssets:v5 delegate:self];
    v7 = self->_feedbackController;
    self->_feedbackController = v6;

    [(PXFeedbackImageQualityUIViewController *)self->_feedbackController setModalPresentationStyle:0];
    feedbackController = self->_feedbackController;
  }

  return feedbackController;
}

- (BOOL)canPerformWithActivityItems:(id)a3
{
  v4 = [MEMORY[0x1E69C3970] sharedInstance];
  v5 = [v4 canShowInternalUI];

  if (v5)
  {
    v6 = [(PXActivity *)self itemSourceController];
    if ([v6 isPreparingIndividualItems] && v6)
    {
      [v6 requestAssetsMediaTypeCount];
    }
  }

  return 0;
}

- (id)assets
{
  v2 = [(PXActivity *)self itemSourceController];
  v3 = MEMORY[0x1E695DEC8];
  v4 = [v2 assets];
  v5 = [v4 array];
  v6 = [v3 arrayWithArray:v5];

  return v6;
}

@end