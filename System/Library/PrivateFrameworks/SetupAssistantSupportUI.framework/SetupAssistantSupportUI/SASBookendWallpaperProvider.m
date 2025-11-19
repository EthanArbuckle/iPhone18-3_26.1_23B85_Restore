@interface SASBookendWallpaperProvider
- (SASBookendWallpaperProviderDelegate)delegate;
- (id)_initWithVariant:(int64_t)a3 delegate:(id)a4;
- (id)_makeSnapshotRequestFetcher;
- (id)_makeWorkspaceSnapshotFetcher;
- (void)_fetchWallpaperUsingFetcher:(id)a3;
- (void)fetchWallpapers;
- (void)wallpaperFetcher:(id)a3 didFinishWithImage:(id)a4;
- (void)wallpaperFetcher:(id)a3 didFinishWithTexture:(id)a4;
- (void)wallpaperFetcher:(id)a3 failedToLoadWithError:(id)a4;
@end

@implementation SASBookendWallpaperProvider

- (id)_initWithVariant:(int64_t)a3 delegate:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = SASBookendWallpaperProvider;
  v7 = [(SASBookendWallpaperProvider *)&v13 init];
  v8 = v7;
  if (v7)
  {
    v7->_variant = a3;
    objc_storeWeak(&v7->_delegate, v6);
    v9 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, -1);
    v10 = dispatch_queue_create("com.apple.setupassistantsupport.wallpaper", v9);
    queue = v8->_queue;
    v8->_queue = v10;

    v8->_currentOrientation = 0;
  }

  return v8;
}

- (void)fetchWallpapers
{
  v3 = [(SASBookendWallpaperProvider *)self delegate];
  v4 = [v3 userInterfaceOrientation];

  if ([(SASBookendWallpaperProvider *)self shouldRefetchWallPaperForOrientation:v4])
  {
    [(SASBookendWallpaperProvider *)self setCurrentOrientation:v4];
    objc_initWeak(location, self);
    v5 = [(SASBookendWallpaperProvider *)self queue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __46__SASBookendWallpaperProvider_fetchWallpapers__block_invoke;
    v7[3] = &unk_279BB2A90;
    objc_copyWeak(&v8, location);
    v7[4] = self;
    dispatch_async(v5, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v6 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_265A4C000, v6, OS_LOG_TYPE_DEFAULT, "Wallpaper provider: Ignore Fetching wallpaper request", location, 2u);
    }
  }
}

uint64_t __46__SASBookendWallpaperProvider_fetchWallpapers__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = WeakRetained;
    v3 = [WeakRetained wallpaperFetcher];

    if (v3)
    {
      v4 = [v10 wallpaperFetcher];
      [v4 setDelegate:0];

      v5 = [v10 wallpaperFetcher];
      [v5 invalidate];

      [v10 setWallpaperFetcher:0];
    }

    v6 = [v10 variant];
    if (v6 == 1)
    {
      v7 = [v10 _makeSnapshotRequestFetcher];
    }

    else
    {
      if (v6)
      {
        goto LABEL_10;
      }

      v7 = [v10 _makeWorkspaceSnapshotFetcher];
    }

    v8 = v7;
    if (v7)
    {
      [*(a1 + 32) setWallpaperFetcher:v7];
      [v10 _fetchWallpaperUsingFetcher:v8];
    }
  }

LABEL_10:

  return MEMORY[0x2821F96F8]();
}

- (void)_fetchWallpaperUsingFetcher:(id)a3
{
  v5 = a3;
  [v5 setDelegate:self];
  v4 = [(SASBookendWallpaperProvider *)self queue];
  [v5 setQueue:v4];

  [v5 fetch];
}

- (id)_makeWorkspaceSnapshotFetcher
{
  v2 = objc_alloc_init(SASWallpaperWorkspaceSnapshotFetcher);

  return v2;
}

- (id)_makeSnapshotRequestFetcher
{
  v3 = objc_alloc_init(SASWallpaperPosterSnapshotRequestFetcher);
  [(SASBookendWallpaperProvider *)self setWallpaperFetcher:v3];
  [(SASWallpaperPosterSnapshotRequestFetcher *)v3 setVariant:[(SASBookendWallpaperProvider *)self variant]];
  v4 = [(SASBookendWallpaperProvider *)self delegate];
  -[SASWallpaperPosterSnapshotRequestFetcher setInterfaceStyle:](v3, "setInterfaceStyle:", [v4 userInterfaceStyle]);

  [(SASWallpaperPosterSnapshotRequestFetcher *)v3 setInterfaceOrientation:[(SASBookendWallpaperProvider *)self currentOrientation]];

  return v3;
}

- (void)wallpaperFetcher:(id)a3 didFinishWithTexture:(id)a4
{
  v5 = a4;
  v6 = [(SASBookendWallpaperProvider *)self delegate];
  [v6 wallpaperDidUpdateWithTexture:v5];
}

- (void)wallpaperFetcher:(id)a3 didFinishWithImage:(id)a4
{
  v5 = a4;
  v6 = [(SASBookendWallpaperProvider *)self delegate];
  [v6 wallpaperDidUpdate:v5];
}

- (void)wallpaperFetcher:(id)a3 failedToLoadWithError:(id)a4
{
  v9 = a3;
  v6 = a4;
  if ([(SASBookendWallpaperProvider *)self variant]|| (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = [(SASBookendWallpaperProvider *)self delegate];
    [v8 wallpaperFailedToLoadWithError:v6];
  }

  else
  {
    v7 = [(SASBookendWallpaperProvider *)self _makeSnapshotRequestFetcher];
  }
}

- (SASBookendWallpaperProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end