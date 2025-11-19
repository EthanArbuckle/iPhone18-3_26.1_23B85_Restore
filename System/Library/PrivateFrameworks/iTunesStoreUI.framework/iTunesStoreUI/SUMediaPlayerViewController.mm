@interface SUMediaPlayerViewController
+ (BOOL)_URLIsITunesU:(id)a3;
+ (void)_sendPingRequestsForURLs:(id)a3 URLBagKey:(id)a4 playerItem:(id)a5;
+ (void)sendDownloadPingRequestsForMediaPlayerItem:(id)a3;
+ (void)sendPlaybackPingRequestsForMediaPlayerItem:(id)a3;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3;
- (SUMediaPlayerViewController)initWithMediaPlayerItem:(id)a3;
- (id)_backgroundContainerView;
- (id)copyScriptViewController;
- (void)_dequeueOperation:(id)a3;
- (void)_enqueueOperation:(id)a3;
- (void)_loadBackgroundImage;
- (void)_prepareMediaItem;
- (void)_setIsActivePlayer:(BOOL)a3;
- (void)_showBackgroundImage:(id)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)operation:(id)a3 failedWithError:(id)a4;
- (void)operationFinished:(id)a3;
- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SUMediaPlayerViewController

- (SUMediaPlayerViewController)initWithMediaPlayerItem:(id)a3
{
  if (![a3 URL])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must play a media item with a URL"];
  }

  v10.receiver = self;
  v10.super_class = SUMediaPlayerViewController;
  v5 = [(SUMediaPlayerViewController *)&v10 init];
  if (v5)
  {
    v5->_mediaItem = [a3 copy];
    [(SUMediaPlayerViewController *)v5 setModalPresentationStyle:0];
    v6 = objc_opt_new();
    v5->_playerViewController = v6;
    [(AVPlayerViewController *)v6 setDelegate:v5];
    v7 = [objc_alloc(MEMORY[0x1E6988098]) initWithURL:{-[SUMediaPlayerItem URL](v5->_mediaItem, "URL")}];
    [(AVPlayerViewController *)v5->_playerViewController setPlayer:v7];
    [v7 addObserver:v5 forKeyPath:@"currentItem.playbackLikelyToKeepUp" options:0 context:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:v5 selector:sel__playbackFinishedNotification_ name:*MEMORY[0x1E6987A10] object:{-[AVPlayer currentItem](-[AVPlayerViewController player](-[SUMediaPlayerViewController playerViewController](v5, "playerViewController"), "player"), "currentItem")}];
  }

  return v5;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [[(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player] removeObserver:self forKeyPath:@"currentItem.playbackLikelyToKeepUp"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  operations = self->_operations;
  v4 = [(NSMutableArray *)operations countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(operations);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [v8 setDelegate:0];
        [v8 cancel];
      }

      v5 = [(NSMutableArray *)operations countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9.receiver = self;
  v9.super_class = SUMediaPlayerViewController;
  [(SUMediaPlayerViewController *)&v9 dealloc];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if ([a3 isEqualToString:{@"currentItem.playbackLikelyToKeepUp", a4, a5, a6}] && -[AVPlayerItem isPlaybackLikelyToKeepUp](-[AVPlayer currentItem](-[AVPlayerViewController player](-[SUMediaPlayerViewController playerViewController](self, "playerViewController"), "player"), "currentItem"), "isPlaybackLikelyToKeepUp"))
  {
    v7 = [(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player];

    [(AVPlayer *)v7 play];
  }
}

+ (void)sendDownloadPingRequestsForMediaPlayerItem:(id)a3
{
  v5 = [a3 downloadPingURLs];

  [a1 _sendPingRequestsForURLs:v5 URLBagKey:@"podcast-get-episode" playerItem:a3];
}

+ (void)sendPlaybackPingRequestsForMediaPlayerItem:(id)a3
{
  v5 = [a3 playbackPingURLs];

  [a1 _sendPingRequestsForURLs:v5 URLBagKey:@"podcast-play-episode" playerItem:a3];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = SUMediaPlayerViewController;
  [(SUMediaPlayerViewController *)&v3 viewDidLoad];
  [(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] showFullScreenPresentationFromView:[(SUMediaPlayerViewController *)self view] completion:0];
}

- (id)copyScriptViewController
{
  v3 = objc_alloc_init(SUScriptMediaPlayerViewController);
  [(SUScriptViewController *)v3 setNativeViewController:self];
  return v3;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)a3
{
  v5 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (v5 != 1)
  {
    if ([[(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player] isExternalPlaybackActive])
    {
      LOBYTE(v5) = (a3 - 1) < 2;
    }

    else
    {
      LOBYTE(v5) = (a3 - 3) < 2;
    }
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  if (!self->_playerState)
  {
    self->_playerState = 1;
    [(SUMediaPlayerViewController *)self _prepareMediaItem];
  }

  [(SUMediaPlayerViewController *)self _setIsActivePlayer:1];
  v5.receiver = self;
  v5.super_class = SUMediaPlayerViewController;
  [(SUMediaPlayerViewController *)&v5 viewWillAppear:v3];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  [(SUClientInterface *)[(SUMediaPlayerViewController *)self clientInterface] _mediaPlayerViewControllerWillDismiss:self animated:a3];
  v5.receiver = self;
  v5.super_class = SUMediaPlayerViewController;
  [(SUMediaPlayerViewController *)&v5 viewWillDisappear:v3];
}

- (void)operation:(id)a3 failedWithError:(id)a4
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SUDialogManager newDialogWithError:a4];
    [[(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player] pause];
    [(SUClientInterface *)[(SUMediaPlayerViewController *)self clientInterface] _presentDialog:v7];
    [(UIViewController *)self dismissAnimated:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(UIView *)self->_backgroundContainerView removeFromSuperview];
    }
  }

  [(SUMediaPlayerViewController *)self _dequeueOperation:a3];
}

- (void)operationFinished:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_playerState = 2;
    [[(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player] play];
    [objc_opt_class() sendPlaybackPingRequestsForMediaPlayerItem:self->_mediaItem];
  }

  [(SUMediaPlayerViewController *)self _dequeueOperation:a3];
}

- (void)playerViewController:(id)a3 willEndFullScreenPresentationWithAnimationCoordinator:(id)a4
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__SUMediaPlayerViewController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v4[3] = &unk_1E8166F78;
  v4[4] = self;
  [a4 animateAlongsideTransition:0 completion:v4];
}

+ (void)_sendPingRequestsForURLs:(id)a3 URLBagKey:(id)a4 playerItem:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  if ([a3 count])
  {
    v9 = [MEMORY[0x1E69E4798] mainQueue];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(a3);
          }

          [v9 addOperation:{objc_msgSend(MEMORY[0x1E69E47E0], "pingOperationWithUrl:", *(*(&v18 + 1) + 8 * i))}];
        }

        v11 = [a3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v14 = [a5 itemIdentifier];
    if (v14)
    {
      v15 = v14;
      if ([a5 itemType] == 1007 && (objc_msgSend(a1, "_URLIsITunesU:", objc_msgSend(a5, "URL")) & 1) == 0)
      {
        v16 = [MEMORY[0x1E69E4798] mainQueue];
        v17 = [MEMORY[0x1E69E47E0] itemPingOperationWithIdentifier:v15 urlBagKey:a4];

        [v16 addOperation:v17];
      }
    }
  }
}

+ (BOOL)_URLIsITunesU:(id)a3
{
  v4 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"deimos.*\\.apple\\.com" options:1 error:0];
  v5 = [a3 host];
  v6 = [v4 rangeOfFirstMatchInString:v5 options:0 range:{0, objc_msgSend(v5, "length")}];

  return v6 != 0x7FFFFFFFFFFFFFFFLL;
}

- (id)_backgroundContainerView
{
  result = self->_backgroundContainerView;
  if (!result)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    self->_backgroundContainerView = v4;
    [(UIView *)v4 setAutoresizingMask:18];
    -[UIView setBackgroundColor:](self->_backgroundContainerView, "setBackgroundColor:", [MEMORY[0x1E69DC888] blackColor]);
    return self->_backgroundContainerView;
  }

  return result;
}

- (void)_dequeueOperation:(id)a3
{
  [a3 setDelegate:0];
  operations = self->_operations;

  [(NSMutableArray *)operations removeObjectIdenticalTo:a3];
}

- (void)_enqueueOperation:(id)a3
{
  operations = self->_operations;
  if (!operations)
  {
    operations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_operations = operations;
  }

  [(NSMutableArray *)operations addObject:a3];
  [a3 setDelegate:self];
  [a3 setShouldMessageMainThread:1];
  v6 = [MEMORY[0x1E69E4798] mainQueue];

  [v6 addOperation:a3];
}

- (void)_loadBackgroundImage
{
  v3 = [(SUMediaPlayerItem *)self->_mediaItem backgroundImageURL];
  if (v3)
  {
    v4 = v3;
    v7 = objc_alloc_init(MEMORY[0x1E69E47E0]);
    v5 = objc_alloc_init(SUImageDataProvider);
    -[SUImageDataProvider setFillColor:](v5, "setFillColor:", [MEMORY[0x1E69DC888] blackColor]);
    [v7 setDataProvider:v5];

    v6 = [objc_alloc(MEMORY[0x1E69D4A08]) initWithURL:v4];
    [v7 setRequestProperties:v6];

    [(SUMediaPlayerViewController *)self _enqueueOperation:v7];
  }
}

- (void)_prepareMediaItem
{
  v3 = [[SUPrepareMediaItemOperation alloc] initWithMediaPlayerItem:self->_mediaItem];
  [(SUMediaPlayerViewController *)self _enqueueOperation:v3];
}

- (void)_setIsActivePlayer:(BOOL)a3
{
  v5 = +[SUClientApplicationController sharedController];
  v6 = v5;
  if (!a3)
  {
    if ([v5 _activeMediaPlayer] != self)
    {
      return;
    }

    v7 = self;
    self = 0;
  }

  [v6 _setActiveMediaPlayer:self];
}

- (void)_showBackgroundImage:(id)a3
{
  if (a3)
  {
    v5 = [(SUMediaPlayerViewController *)self _backgroundContainerView];
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:a3];
    [v15 setAutoresizingMask:45];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    [v15 frame];
    v11 = (v7 - v10) * 0.5;
    v13 = (v9 - v12) * 0.5;
    [v15 setFrame:{floorf(v11), floorf(v13)}];
    [(UIView *)self->_backgroundContainerView addSubview:v15];
  }

  else
  {
    backgroundContainerView = self->_backgroundContainerView;

    [(UIView *)backgroundContainerView removeFromSuperview];
  }
}

@end