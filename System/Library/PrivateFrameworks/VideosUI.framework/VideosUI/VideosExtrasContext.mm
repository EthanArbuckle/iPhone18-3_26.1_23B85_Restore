@interface VideosExtrasContext
- (BOOL)isMenuItemElementMainFeature:(id)a3;
- (VideosExtrasContext)init;
- (VideosExtrasContext)initWithApplicationJavascriptURL:(id)a3 storeID:(int64_t)a4 buyParameters:(id)a5 mediaItem:(id)a6;
- (VideosExtrasContext)initWithMediaItem:(id)a3;
- (VideosExtrasContext)initWithTVPMediaItem:(id)a3;
- (VideosExtrasContextDelegate)delegate;
- (void)_configureForMediaItem:(id)a3;
- (void)clearNavStack;
- (void)extrasBackButtonPressed;
- (void)extrasDoneButtonPressed;
- (void)extrasMenuItemSelected:(id)a3 atIndex:(unint64_t)a4;
- (void)extrasRequestReloadWithContext:(id)a3;
- (void)extrasRequestsMediaPlayback:(id)a3 isBackground:(BOOL)a4;
- (void)extrasRequestsPlaybackStop;
- (void)extrasRootViewController:(id)a3 extrasVisibilityNeedsUpdate:(BOOL)a4;
- (void)extrasRootViewControllerDidLoadMainMenuItems:(id)a3;
- (void)failWithError:(id)a3;
- (void)setSelectedMainMenuIndex:(unint64_t)a3;
- (void)startIfNecessary;
@end

@implementation VideosExtrasContext

- (VideosExtrasContext)init
{
  v6.receiver = self;
  v6.super_class = VideosExtrasContext;
  v2 = [(VideosExtrasContext *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(objc_msgSend(objc_opt_class() "extrasRootViewControllerClass"))];
    extrasRootViewController = v2->_extrasRootViewController;
    v2->_extrasRootViewController = v3;

    [(VideosExtrasRootViewController *)v2->_extrasRootViewController setDelegate:v2];
  }

  return v2;
}

- (VideosExtrasContext)initWithMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasContext *)self init];
  v6 = v5;
  if (v5)
  {
    [(VideosExtrasContext *)v5 _configureForMediaItem:v4];
  }

  return v6;
}

- (VideosExtrasContext)initWithTVPMediaItem:(id)a3
{
  v5 = a3;
  v6 = [(VideosExtrasContext *)self init];
  if (v6)
  {
    v7 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB0]];
    javascriptURL = v6->_javascriptURL;
    v6->_javascriptURL = v7;

    v9 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE0]];
    v10 = [v9 copy];
    buyParameters = v6->_buyParameters;
    v6->_buyParameters = v10;

    v12 = [v5 mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
    v6->_storeID = [v12 longLongValue];
    v6->_selectedMainMenuIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v6->_tvpMediaItem, a3);
  }

  return v6;
}

- (VideosExtrasContext)initWithApplicationJavascriptURL:(id)a3 storeID:(int64_t)a4 buyParameters:(id)a5 mediaItem:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = [(VideosExtrasContext *)self init];
  if (v13)
  {
    v14 = [v10 copy];
    javascriptURL = v13->_javascriptURL;
    v13->_javascriptURL = v14;

    v13->_storeID = a4;
    v16 = [v11 copy];
    buyParameters = v13->_buyParameters;
    v13->_buyParameters = v16;

    v13->_selectedMainMenuIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v13->_tvpMediaItem, a6);
  }

  return v13;
}

- (void)_configureForMediaItem:(id)a3
{
  v4 = a3;
  v5 = [(MPMediaItem *)v4 valueForProperty:*MEMORY[0x1E696FB60]];
  self->_storeID = [v5 longLongValue];

  v6 = [(MPMediaItem *)v4 valueForProperty:*MEMORY[0x1E696FB70]];
  buyParameters = self->_buyParameters;
  self->_buyParameters = v6;

  self->_selectedMainMenuIndex = 0x7FFFFFFFFFFFFFFFLL;
  v8 = [objc_opt_class() overriddenJavascriptURL];
  javascriptURL = self->_javascriptURL;
  self->_javascriptURL = v8;

  if (!self->_javascriptURL)
  {
    v10 = [(MPMediaItem *)v4 valueForProperty:*MEMORY[0x1E696FB50]];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    v12 = self->_javascriptURL;
    self->_javascriptURL = v11;
  }

  mediaItem = self->_mediaItem;
  self->_mediaItem = v4;
}

- (void)extrasRequestsMediaPlayback:(id)a3 isBackground:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(VideosExtrasContext *)self delegate];
  [v7 extrasRequestsMediaPlayback:v6 isBackground:v4];
}

- (void)extrasRequestsPlaybackStop
{
  v2 = [(VideosExtrasContext *)self delegate];
  [v2 extrasRequestsPlaybackStop];
}

- (void)extrasBackButtonPressed
{
  v3 = [(VideosExtrasContext *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VideosExtrasContext *)self delegate];
    [v5 extrasBackButtonPressed];
  }
}

- (void)extrasMenuItemSelected:(id)a3 atIndex:(unint64_t)a4
{
  v9 = a3;
  v6 = [(VideosExtrasContext *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VideosExtrasContext *)self delegate];
    [v8 extrasMenuItemSelected:v9 atIndex:a4];
  }
}

- (void)extrasDoneButtonPressed
{
  v3 = [(VideosExtrasContext *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(VideosExtrasContext *)self delegate];
    [v5 extrasDoneButtonPressed];
  }
}

- (void)extrasRequestReloadWithContext:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [(VideosExtrasContext *)self featurePlaybackContext];
  }

  v6 = v4;
  v5 = [(VideosExtrasContext *)self delegate];
  [v5 extrasRequestReloadWithContext:v6];
}

- (void)failWithError:(id)a3
{
  v4 = a3;
  v5 = [(VideosExtrasContext *)self delegate];
  [v5 extrasContext:self hadFatalError:v4];
}

- (void)startIfNecessary
{
  if (![(VideosExtrasContext *)self isStarted])
  {
    [(VideosExtrasContext *)self setIsStarted:1];
    extrasRootViewController = self->_extrasRootViewController;

    [(VideosExtrasRootViewController *)extrasRootViewController start];
  }
}

- (void)setSelectedMainMenuIndex:(unint64_t)a3
{
  selectedMainMenuIndex = self->_selectedMainMenuIndex;
  if (selectedMainMenuIndex != a3)
  {
    self->_selectedMainMenuIndex = a3;
    v5 = [(VideosExtrasContext *)self extrasRootViewController];
    [v5 updateMenuButtonForSelectionAtIndex:self->_selectedMainMenuIndex deselectedIndex:selectedMainMenuIndex];
  }
}

- (void)clearNavStack
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [(VideosExtrasRootViewController *)self->_extrasRootViewController navigationController];
  v3 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [v2 setViewControllers:v4 animated:0];
}

- (BOOL)isMenuItemElementMainFeature:(id)a3
{
  v3 = [a3 attributes];
  v4 = [v3 objectForKey:@"type"];
  v5 = [v4 isEqualToString:@"video"];

  return v5;
}

- (void)extrasRootViewControllerDidLoadMainMenuItems:(id)a3
{
  v4 = [(VideosExtrasContext *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(VideosExtrasContext *)self delegate];
    [v6 extrasContextDidLoadMainMenuItems:self];
  }
}

- (void)extrasRootViewController:(id)a3 extrasVisibilityNeedsUpdate:(BOOL)a4
{
  v4 = a4;
  v6 = [(VideosExtrasContext *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VideosExtrasContext *)self delegate];
    [v8 extrasContext:self extrasVisibilityNeedsUpdate:v4];
  }
}

- (VideosExtrasContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end