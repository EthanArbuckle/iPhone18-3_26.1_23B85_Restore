@interface VUIEpisodeDetailViewController
- (VUIEpisodeDetailViewController)initWithMediaItem:(id)a3;
- (VUIEpisodeDetailViewControllerDelegate)delegate;
- (void)_configureNavigationBar;
- (void)_handleNetworkChanges;
- (void)dealloc;
- (void)didTapPlay;
- (void)dismissPopover;
- (void)dismissTapped:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation VUIEpisodeDetailViewController

- (VUIEpisodeDetailViewController)initWithMediaItem:(id)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v18.receiver = self;
  v18.super_class = VUIEpisodeDetailViewController;
  v6 = [(VUIEpisodeDetailViewController *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mediaItem, a3);
    v8 = objc_alloc_init(VUIViewControllerContentPresenter);
    contentPresenter = v7->_contentPresenter;
    v7->_contentPresenter = v8;

    [(VUIViewControllerContentPresenter *)v7->_contentPresenter setLogName:@"VUIEpisodeDetailViewController"];
    objc_initWeak(&location, v7);
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __52__VUIEpisodeDetailViewController_initWithMediaItem___block_invoke;
    v15[3] = &unk_1E872E760;
    objc_copyWeak(&v16, &location);
    v11 = [(VUIEpisodeDetailViewController *)v7 registerForTraitChanges:v10 withHandler:v15];

    v12 = *MEMORY[0x1E69DF878];
    if (_os_feature_enabled_impl())
    {

      v12 = @"networkReachabilityDidChange";
    }

    v13 = [MEMORY[0x1E696AD88] defaultCenter];
    [v13 addObserver:v7 selector:sel__handleNetworkChanges name:v12 object:0];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __52__VUIEpisodeDetailViewController_initWithMediaItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained view];
  [v1 bounds];
  v3 = v2;
  v5 = v4;

  v6 = [WeakRetained detailView];
  v7 = [WeakRetained mediaItem];
  [VUIEpisodeDetailView configureEpisodeDetailView:v6 withMedia:v7 viewSize:v3, v5];

  v8 = [WeakRetained detailView];
  [v8 sizeThatFits:{v3, v5}];
  v10 = v9;
  v12 = v11;

  v13 = [WeakRetained detailView];
  [v13 setContentSize:{v10, v12}];
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIEpisodeDetailViewController;
  [(VUIEpisodeDetailViewController *)&v4 dealloc];
}

- (void)viewDidLoad
{
  v16.receiver = self;
  v16.super_class = VUIEpisodeDetailViewController;
  [(VUIEpisodeDetailViewController *)&v16 viewDidLoad];
  [(VUIEpisodeDetailViewController *)self _configureNavigationBar];
  v3 = [(VUIEpisodeDetailViewController *)self navigationItem];
  [v3 setLargeTitleDisplayMode:2];
  v4 = [VUIEpisodeDetailView alloc];
  v5 = [(VUIEpisodeDetailView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  detailView = self->_detailView;
  self->_detailView = v5;

  [(VUIEpisodeDetailView *)self->_detailView setEpisodeViewDelegate:self];
  v7 = [(VUIEpisodeDetailViewController *)self contentPresenter];
  [v7 setContentView:self->_detailView];

  v8 = [(VUIEpisodeDetailViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;

  [VUIEpisodeDetailView configureEpisodeDetailView:self->_detailView withMedia:self->_mediaItem viewSize:v10, v12];
  v13 = [(VUIEpisodeDetailViewController *)self contentPresenter];
  [v13 setCurrentContentViewType:3];

  v14 = [(VUIEpisodeDetailViewController *)self view];
  v15 = [MEMORY[0x1E69DF678] makeAccessibilityIdentifierString:*MEMORY[0x1E69DF7C8] additionalString:@"Library.id=EpisodeDetail"];
  [v14 setAccessibilityIdentifier:v15];
}

- (void)viewDidAppear:(BOOL)a3
{
  v8.receiver = self;
  v8.super_class = VUIEpisodeDetailViewController;
  [(VUIEpisodeDetailViewController *)&v8 viewDidAppear:a3];
  if (!self->_tapGestureRecognizer)
  {
    v4 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_dismissTapped_];
    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = v4;

    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setNumberOfTapsRequired:1];
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setCancelsTouchesInView:0];
    [(UITapGestureRecognizer *)self->_tapGestureRecognizer setDelegate:self];
    v6 = [(VUIEpisodeDetailViewController *)self view];
    v7 = [v6 window];
    [v7 addGestureRecognizer:self->_tapGestureRecognizer];
  }

  [(VUIEpisodeDetailViewController *)self reportMetricsPageEvent];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = VUIEpisodeDetailViewController;
  [(VUIEpisodeDetailViewController *)&v7 viewWillDisappear:a3];
  if (self->_tapGestureRecognizer)
  {
    v4 = [(VUIEpisodeDetailViewController *)self view];
    v5 = [v4 window];
    [v5 removeGestureRecognizer:self->_tapGestureRecognizer];

    tapGestureRecognizer = self->_tapGestureRecognizer;
    self->_tapGestureRecognizer = 0;
  }
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v9.receiver = self;
  v9.super_class = VUIEpisodeDetailViewController;
  v7 = a4;
  [(VUIEpisodeDetailViewController *)&v9 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__VUIEpisodeDetailViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v8[3] = &unk_1E872E788;
  v8[4] = self;
  [v7 animateAlongsideTransition:0 completion:v8];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = VUIEpisodeDetailViewController;
  [(VUIEpisodeDetailViewController *)&v4 loadView];
  v3 = [(VUIEpisodeDetailViewController *)self contentPresenter];
  [v3 setRootViewForViewController:self];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = VUIEpisodeDetailViewController;
  [(VUIEpisodeDetailViewController *)&v5 viewWillLayoutSubviews];
  v3 = [(VUIEpisodeDetailViewController *)self contentPresenter];
  v4 = [(VUIEpisodeDetailViewController *)self view];
  [v4 bounds];
  [v3 configureCurrentViewFrameForBounds:?];
}

- (void)dismissTapped:(id)a3
{
  v19 = a3;
  if ([v19 state] == 3)
  {
    v4 = [(VUIEpisodeDetailViewController *)self view];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(VUIEpisodeDetailViewController *)self view];
    [v19 locationInView:v13];
    v21.x = v14;
    v21.y = v15;
    v22.origin.x = v6;
    v22.origin.y = v8;
    v22.size.width = v10;
    v22.size.height = v12;
    v16 = CGRectContainsPoint(v22, v21);

    if (!v16)
    {
      v17 = [(VUIEpisodeDetailViewController *)self view];
      v18 = [v17 window];
      [v18 removeGestureRecognizer:v19];

      [(VUIEpisodeDetailViewController *)self dismissPopover];
    }
  }
}

- (void)didTapPlay
{
  v3 = self->_mediaItem;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke;
  aBlock[3] = &unk_1E872D768;
  v4 = v3;
  v10 = v4;
  v5 = _Block_copy(aBlock);
  v6 = [(VUIEpisodeDetailViewController *)self presentingViewController];

  if (v6)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke_43;
    v7[3] = &unk_1E872D7E0;
    v8 = v5;
    [(VUIEpisodeDetailViewController *)self dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    v5[2](v5);
  }
}

void __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  if (*(a1 + 32))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [*v1 videosPlayable];
      v3 = [VUIMediaInfo alloc];
      v12[0] = v2;
      v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      v5 = [(VUIMediaInfo *)v3 initWithPlaybackContext:3 videosPlayables:v4 imageProxies:0 storeDictionary:0];

      v6 = [MEMORY[0x1E695DF00] date];
      [v5 setUserPlaybackInitiationDate:v6 openURLCompletionDate:0];

      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [VUIMediaInfo alloc], v11 = *v1, [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1], v8 = objc_claimAutoreleasedReturnValue(), v5 = -[VUIMediaInfo initWithPlaybackContext:vuiMediaItems:](v7, "initWithPlaybackContext:vuiMediaItems:", 3, v8), v8, -[NSObject setIntent:](v5, "setIntent:", 1), -[NSObject setAutomaticPlaybackStart:](v5, "setAutomaticPlaybackStart:", 0), !v5))
      {
LABEL_10:
        v5 = VUIDefaultLogObject();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke_cold_1(v1, v5);
        }

        goto LABEL_12;
      }
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke_2;
    v9[3] = &unk_1E872D768;
    v10 = *v1;
    [VUIActionPlay playMediaInfo:v5 watchType:0 isRentAndWatchNow:0 completion:v9];

    goto LABEL_12;
  }

  v5 = VUIDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke_cold_2(v5);
  }

LABEL_12:
}

- (void)dismissPopover
{
  v3 = [(VUIEpisodeDetailViewController *)self delegate];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__VUIEpisodeDetailViewController_dismissPopover__block_invoke;
  v5[3] = &unk_1E872D990;
  v6 = v3;
  v7 = self;
  v4 = v3;
  [(VUIEpisodeDetailViewController *)self dismissViewControllerAnimated:1 completion:v5];
}

uint64_t __48__VUIEpisodeDetailViewController_dismissPopover__block_invoke(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return [v3 episodeDetailViewControllerWasDismissed:v4];
  }

  return result;
}

- (void)_configureNavigationBar
{
  v3 = +[VUIUtilities isIpadInterface];
  if (!v3)
  {
    v4 = [(VUIEpisodeDetailViewController *)self traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 1)
    {
      v6 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:0 target:self action:sel_dismissPopover];
      v7 = [(VUIEpisodeDetailViewController *)self navigationItem];
      [v7 setRightBarButtonItem:v6];
    }
  }

  v8 = [(VUIEpisodeDetailViewController *)self navigationController];
  [v8 setNavigationBarHidden:v3];
}

- (void)_handleNetworkChanges
{
  if (!+[VUITVAppLauncher isRemoteServerConnected])
  {
    v3 = [(VUIEpisodeDetailViewController *)self presentingViewController];

    if (v3)
    {
      v4 = [(VUIEpisodeDetailViewController *)self presentingViewController];
      [v4 dismissViewControllerAnimated:1 completion:0];
    }
  }
}

- (VUIEpisodeDetailViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __44__VUIEpisodeDetailViewController_didTapPlay__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_1E323F000, a2, OS_LOG_TYPE_ERROR, "Unable to start playback because mediaInfo is nil; mediaEntity: %@", &v3, 0xCu);
}

@end