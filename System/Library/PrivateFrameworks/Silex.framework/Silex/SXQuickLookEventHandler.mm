@interface SXQuickLookEventHandler
- (SXQuickLookEventHandler)initWithInteractor:(id)interactor router:(id)router;
- (SXQuickLookEventHandlerDelegate)delegate;
- (void)didLoadThumbnail:(id)thumbnail;
- (void)didTapThumbnailView:(id)view;
- (void)failedToLoadThumbnail;
- (void)requestThumbnailWithSize:(CGSize)size;
@end

@implementation SXQuickLookEventHandler

- (SXQuickLookEventHandler)initWithInteractor:(id)interactor router:(id)router
{
  interactorCopy = interactor;
  routerCopy = router;
  v12.receiver = self;
  v12.super_class = SXQuickLookEventHandler;
  v9 = [(SXQuickLookEventHandler *)&v12 init];
  v10 = v9;
  if (interactorCopy)
  {
    objc_storeStrong(&v9->_interactor, interactor);
    objc_storeStrong(&v10->_router, router);
  }

  return v10;
}

- (void)requestThumbnailWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  interactor = [(SXQuickLookEventHandler *)self interactor];
  [interactor loadThumbnailWithSize:{width, height}];
}

- (void)didTapThumbnailView:(id)view
{
  viewCopy = view;
  v8 = [[SXQuickLookTransitionContext alloc] initWithOriginView:viewCopy];

  router = [(SXQuickLookEventHandler *)self router];
  interactor = [(SXQuickLookEventHandler *)self interactor];
  file = [interactor file];
  [router presentFile:file transitionContext:v8];
}

- (void)didLoadThumbnail:(id)thumbnail
{
  thumbnailCopy = thumbnail;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SXQuickLookEventHandler_didLoadThumbnail___block_invoke;
  v6[3] = &unk_1E84FEC78;
  v6[4] = self;
  v7 = thumbnailCopy;
  v5 = thumbnailCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __44__SXQuickLookEventHandler_didLoadThumbnail___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 showThumbnailImage:*(a1 + 40)];
}

- (void)failedToLoadThumbnail
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__SXQuickLookEventHandler_failedToLoadThumbnail__block_invoke;
  block[3] = &unk_1E84FED18;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __48__SXQuickLookEventHandler_failedToLoadThumbnail__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) delegate];
  v1 = SXBundle();
  v2 = [v1 localizedStringForKey:@"Failed to load thumbnail" value:&stru_1F532F6C0 table:0];
  [v3 showThumbnailErrorWithMessage:v2];
}

- (SXQuickLookEventHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end