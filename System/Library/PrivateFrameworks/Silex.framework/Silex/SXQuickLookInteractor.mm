@interface SXQuickLookInteractor
- (SXQuickLookInteractor)initWithFile:(id)a3 service:(id)a4;
- (SXQuickLookInteractorDelegate)delegate;
- (void)loadThumbnailWithSize:(CGSize)a3;
@end

@implementation SXQuickLookInteractor

- (SXQuickLookInteractor)initWithFile:(id)a3 service:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXQuickLookInteractor;
  v9 = [(SXQuickLookInteractor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_file, a3);
    objc_storeStrong(&v10->_service, a4);
  }

  return v10;
}

- (void)loadThumbnailWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  objc_initWeak(&location, self);
  v6 = [(SXQuickLookInteractor *)self service];
  v7 = [(SXQuickLookInteractor *)self file];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__SXQuickLookInteractor_loadThumbnailWithSize___block_invoke;
  v10[3] = &unk_1E8502068;
  objc_copyWeak(&v11, &location);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__SXQuickLookInteractor_loadThumbnailWithSize___block_invoke_2;
  v8[3] = &unk_1E8500610;
  objc_copyWeak(&v9, &location);
  [v6 fetchThumbnailForFile:v7 size:v10 onCompletion:v8 onError:{width, height}];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __47__SXQuickLookInteractor_loadThumbnailWithSize___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  [v4 didLoadThumbnail:v3];
}

void __47__SXQuickLookInteractor_loadThumbnailWithSize___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained delegate];
  [v1 failedToLoadThumbnail];
}

- (SXQuickLookInteractorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end