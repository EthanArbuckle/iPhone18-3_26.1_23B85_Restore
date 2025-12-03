@interface SUMediaPlayerViewController
+ (BOOL)_URLIsITunesU:(id)u;
+ (void)_sendPingRequestsForURLs:(id)ls URLBagKey:(id)key playerItem:(id)item;
+ (void)sendDownloadPingRequestsForMediaPlayerItem:(id)item;
+ (void)sendPlaybackPingRequestsForMediaPlayerItem:(id)item;
- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation;
- (SUMediaPlayerViewController)initWithMediaPlayerItem:(id)item;
- (id)_backgroundContainerView;
- (id)copyScriptViewController;
- (void)_dequeueOperation:(id)operation;
- (void)_enqueueOperation:(id)operation;
- (void)_loadBackgroundImage;
- (void)_prepareMediaItem;
- (void)_setIsActivePlayer:(BOOL)player;
- (void)_showBackgroundImage:(id)image;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)operation:(id)operation failedWithError:(id)error;
- (void)operationFinished:(id)finished;
- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SUMediaPlayerViewController

- (SUMediaPlayerViewController)initWithMediaPlayerItem:(id)item
{
  if (![item URL])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Must play a media item with a URL"];
  }

  v10.receiver = self;
  v10.super_class = SUMediaPlayerViewController;
  v5 = [(SUMediaPlayerViewController *)&v10 init];
  if (v5)
  {
    v5->_mediaItem = [item copy];
    [(SUMediaPlayerViewController *)v5 setModalPresentationStyle:0];
    v6 = objc_opt_new();
    v5->_playerViewController = v6;
    [(AVPlayerViewController *)v6 setDelegate:v5];
    v7 = [objc_alloc(MEMORY[0x1E6988098]) initWithURL:{-[SUMediaPlayerItem URL](v5->_mediaItem, "URL")}];
    [(AVPlayerViewController *)v5->_playerViewController setPlayer:v7];
    [v7 addObserver:v5 forKeyPath:@"currentItem.playbackLikelyToKeepUp" options:0 context:0];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__playbackFinishedNotification_ name:*MEMORY[0x1E6987A10] object:{-[AVPlayer currentItem](-[AVPlayerViewController player](-[SUMediaPlayerViewController playerViewController](v5, "playerViewController"), "player"), "currentItem")}];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if ([path isEqualToString:{@"currentItem.playbackLikelyToKeepUp", object, change, context}] && -[AVPlayerItem isPlaybackLikelyToKeepUp](-[AVPlayer currentItem](-[AVPlayerViewController player](-[SUMediaPlayerViewController playerViewController](self, "playerViewController"), "player"), "currentItem"), "isPlaybackLikelyToKeepUp"))
  {
    player = [(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player];

    [(AVPlayer *)player play];
  }
}

+ (void)sendDownloadPingRequestsForMediaPlayerItem:(id)item
{
  downloadPingURLs = [item downloadPingURLs];

  [self _sendPingRequestsForURLs:downloadPingURLs URLBagKey:@"podcast-get-episode" playerItem:item];
}

+ (void)sendPlaybackPingRequestsForMediaPlayerItem:(id)item
{
  playbackPingURLs = [item playbackPingURLs];

  [self _sendPingRequestsForURLs:playbackPingURLs URLBagKey:@"podcast-play-episode" playerItem:item];
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

- (BOOL)shouldAutorotateToInterfaceOrientation:(int64_t)orientation
{
  v5 = [objc_msgSend(MEMORY[0x1E69DC938] "currentDevice")];
  if (v5 != 1)
  {
    if ([[(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player] isExternalPlaybackActive])
    {
      LOBYTE(v5) = (orientation - 1) < 2;
    }

    else
    {
      LOBYTE(v5) = (orientation - 3) < 2;
    }
  }

  return v5;
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (!self->_playerState)
  {
    self->_playerState = 1;
    [(SUMediaPlayerViewController *)self _prepareMediaItem];
  }

  [(SUMediaPlayerViewController *)self _setIsActivePlayer:1];
  v5.receiver = self;
  v5.super_class = SUMediaPlayerViewController;
  [(SUMediaPlayerViewController *)&v5 viewWillAppear:appearCopy];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  [(SUClientInterface *)[(SUMediaPlayerViewController *)self clientInterface] _mediaPlayerViewControllerWillDismiss:self animated:disappear];
  v5.receiver = self;
  v5.super_class = SUMediaPlayerViewController;
  [(SUMediaPlayerViewController *)&v5 viewWillDisappear:disappearCopy];
}

- (void)operation:(id)operation failedWithError:(id)error
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [SUDialogManager newDialogWithError:error];
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

  [(SUMediaPlayerViewController *)self _dequeueOperation:operation];
}

- (void)operationFinished:(id)finished
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    self->_playerState = 2;
    [[(AVPlayerViewController *)[(SUMediaPlayerViewController *)self playerViewController] player] play];
    [objc_opt_class() sendPlaybackPingRequestsForMediaPlayerItem:self->_mediaItem];
  }

  [(SUMediaPlayerViewController *)self _dequeueOperation:finished];
}

- (void)playerViewController:(id)controller willEndFullScreenPresentationWithAnimationCoordinator:(id)coordinator
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __106__SUMediaPlayerViewController_playerViewController_willEndFullScreenPresentationWithAnimationCoordinator___block_invoke;
  v4[3] = &unk_1E8166F78;
  v4[4] = self;
  [coordinator animateAlongsideTransition:0 completion:v4];
}

+ (void)_sendPingRequestsForURLs:(id)ls URLBagKey:(id)key playerItem:(id)item
{
  v23 = *MEMORY[0x1E69E9840];
  if ([ls count])
  {
    mainQueue = [MEMORY[0x1E69E4798] mainQueue];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = [ls countByEnumeratingWithState:&v18 objects:v22 count:16];
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
            objc_enumerationMutation(ls);
          }

          [mainQueue addOperation:{objc_msgSend(MEMORY[0x1E69E47E0], "pingOperationWithUrl:", *(*(&v18 + 1) + 8 * i))}];
        }

        v11 = [ls countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }
  }

  else
  {
    itemIdentifier = [item itemIdentifier];
    if (itemIdentifier)
    {
      v15 = itemIdentifier;
      if ([item itemType] == 1007 && (objc_msgSend(self, "_URLIsITunesU:", objc_msgSend(item, "URL")) & 1) == 0)
      {
        mainQueue2 = [MEMORY[0x1E69E4798] mainQueue];
        v17 = [MEMORY[0x1E69E47E0] itemPingOperationWithIdentifier:v15 urlBagKey:key];

        [mainQueue2 addOperation:v17];
      }
    }
  }
}

+ (BOOL)_URLIsITunesU:(id)u
{
  v4 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"deimos.*\\.apple\\.com" options:1 error:0];
  host = [u host];
  v6 = [v4 rangeOfFirstMatchInString:host options:0 range:{0, objc_msgSend(host, "length")}];

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

- (void)_dequeueOperation:(id)operation
{
  [operation setDelegate:0];
  operations = self->_operations;

  [(NSMutableArray *)operations removeObjectIdenticalTo:operation];
}

- (void)_enqueueOperation:(id)operation
{
  operations = self->_operations;
  if (!operations)
  {
    operations = objc_alloc_init(MEMORY[0x1E695DF70]);
    self->_operations = operations;
  }

  [(NSMutableArray *)operations addObject:operation];
  [operation setDelegate:self];
  [operation setShouldMessageMainThread:1];
  mainQueue = [MEMORY[0x1E69E4798] mainQueue];

  [mainQueue addOperation:operation];
}

- (void)_loadBackgroundImage
{
  backgroundImageURL = [(SUMediaPlayerItem *)self->_mediaItem backgroundImageURL];
  if (backgroundImageURL)
  {
    v4 = backgroundImageURL;
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

- (void)_setIsActivePlayer:(BOOL)player
{
  v5 = +[SUClientApplicationController sharedController];
  v6 = v5;
  if (!player)
  {
    if ([v5 _activeMediaPlayer] != self)
    {
      return;
    }

    selfCopy = self;
    self = 0;
  }

  [v6 _setActiveMediaPlayer:self];
}

- (void)_showBackgroundImage:(id)image
{
  if (image)
  {
    _backgroundContainerView = [(SUMediaPlayerViewController *)self _backgroundContainerView];
    v15 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:image];
    [v15 setAutoresizingMask:45];
    [_backgroundContainerView bounds];
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