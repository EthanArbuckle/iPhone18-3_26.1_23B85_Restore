@interface SXQuickLookEventHandler
- (SXQuickLookEventHandler)initWithInteractor:(id)a3 router:(id)a4;
- (SXQuickLookEventHandlerDelegate)delegate;
- (void)didLoadThumbnail:(id)a3;
- (void)didTapThumbnailView:(id)a3;
- (void)failedToLoadThumbnail;
- (void)requestThumbnailWithSize:(CGSize)a3;
@end

@implementation SXQuickLookEventHandler

- (SXQuickLookEventHandler)initWithInteractor:(id)a3 router:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXQuickLookEventHandler;
  v9 = [(SXQuickLookEventHandler *)&v12 init];
  v10 = v9;
  if (v7)
  {
    objc_storeStrong(&v9->_interactor, a3);
    objc_storeStrong(&v10->_router, a4);
  }

  return v10;
}

- (void)requestThumbnailWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(SXQuickLookEventHandler *)self interactor];
  [v5 loadThumbnailWithSize:{width, height}];
}

- (void)didTapThumbnailView:(id)a3
{
  v4 = a3;
  v8 = [[SXQuickLookTransitionContext alloc] initWithOriginView:v4];

  v5 = [(SXQuickLookEventHandler *)self router];
  v6 = [(SXQuickLookEventHandler *)self interactor];
  v7 = [v6 file];
  [v5 presentFile:v7 transitionContext:v8];
}

- (void)didLoadThumbnail:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SXQuickLookEventHandler_didLoadThumbnail___block_invoke;
  v6[3] = &unk_1E84FEC78;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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