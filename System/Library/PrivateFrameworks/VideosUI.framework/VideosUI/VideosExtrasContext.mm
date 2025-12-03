@interface VideosExtrasContext
- (BOOL)isMenuItemElementMainFeature:(id)feature;
- (VideosExtrasContext)init;
- (VideosExtrasContext)initWithApplicationJavascriptURL:(id)l storeID:(int64_t)d buyParameters:(id)parameters mediaItem:(id)item;
- (VideosExtrasContext)initWithMediaItem:(id)item;
- (VideosExtrasContext)initWithTVPMediaItem:(id)item;
- (VideosExtrasContextDelegate)delegate;
- (void)_configureForMediaItem:(id)item;
- (void)clearNavStack;
- (void)extrasBackButtonPressed;
- (void)extrasDoneButtonPressed;
- (void)extrasMenuItemSelected:(id)selected atIndex:(unint64_t)index;
- (void)extrasRequestReloadWithContext:(id)context;
- (void)extrasRequestsMediaPlayback:(id)playback isBackground:(BOOL)background;
- (void)extrasRequestsPlaybackStop;
- (void)extrasRootViewController:(id)controller extrasVisibilityNeedsUpdate:(BOOL)update;
- (void)extrasRootViewControllerDidLoadMainMenuItems:(id)items;
- (void)failWithError:(id)error;
- (void)setSelectedMainMenuIndex:(unint64_t)index;
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

- (VideosExtrasContext)initWithMediaItem:(id)item
{
  itemCopy = item;
  v5 = [(VideosExtrasContext *)self init];
  v6 = v5;
  if (v5)
  {
    [(VideosExtrasContext *)v5 _configureForMediaItem:itemCopy];
  }

  return v6;
}

- (VideosExtrasContext)initWithTVPMediaItem:(id)item
{
  itemCopy = item;
  v6 = [(VideosExtrasContext *)self init];
  if (v6)
  {
    v7 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5BB0]];
    javascriptURL = v6->_javascriptURL;
    v6->_javascriptURL = v7;

    v9 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5AE0]];
    v10 = [v9 copy];
    buyParameters = v6->_buyParameters;
    v6->_buyParameters = v10;

    v12 = [itemCopy mediaItemMetadataForProperty:*MEMORY[0x1E69D5DA8]];
    v6->_storeID = [v12 longLongValue];
    v6->_selectedMainMenuIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v6->_tvpMediaItem, item);
  }

  return v6;
}

- (VideosExtrasContext)initWithApplicationJavascriptURL:(id)l storeID:(int64_t)d buyParameters:(id)parameters mediaItem:(id)item
{
  lCopy = l;
  parametersCopy = parameters;
  itemCopy = item;
  v13 = [(VideosExtrasContext *)self init];
  if (v13)
  {
    v14 = [lCopy copy];
    javascriptURL = v13->_javascriptURL;
    v13->_javascriptURL = v14;

    v13->_storeID = d;
    v16 = [parametersCopy copy];
    buyParameters = v13->_buyParameters;
    v13->_buyParameters = v16;

    v13->_selectedMainMenuIndex = 0x7FFFFFFFFFFFFFFFLL;
    objc_storeStrong(&v13->_tvpMediaItem, item);
  }

  return v13;
}

- (void)_configureForMediaItem:(id)item
{
  itemCopy = item;
  v5 = [(MPMediaItem *)itemCopy valueForProperty:*MEMORY[0x1E696FB60]];
  self->_storeID = [v5 longLongValue];

  v6 = [(MPMediaItem *)itemCopy valueForProperty:*MEMORY[0x1E696FB70]];
  buyParameters = self->_buyParameters;
  self->_buyParameters = v6;

  self->_selectedMainMenuIndex = 0x7FFFFFFFFFFFFFFFLL;
  overriddenJavascriptURL = [objc_opt_class() overriddenJavascriptURL];
  javascriptURL = self->_javascriptURL;
  self->_javascriptURL = overriddenJavascriptURL;

  if (!self->_javascriptURL)
  {
    v10 = [(MPMediaItem *)itemCopy valueForProperty:*MEMORY[0x1E696FB50]];
    v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];
    v12 = self->_javascriptURL;
    self->_javascriptURL = v11;
  }

  mediaItem = self->_mediaItem;
  self->_mediaItem = itemCopy;
}

- (void)extrasRequestsMediaPlayback:(id)playback isBackground:(BOOL)background
{
  backgroundCopy = background;
  playbackCopy = playback;
  delegate = [(VideosExtrasContext *)self delegate];
  [delegate extrasRequestsMediaPlayback:playbackCopy isBackground:backgroundCopy];
}

- (void)extrasRequestsPlaybackStop
{
  delegate = [(VideosExtrasContext *)self delegate];
  [delegate extrasRequestsPlaybackStop];
}

- (void)extrasBackButtonPressed
{
  delegate = [(VideosExtrasContext *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VideosExtrasContext *)self delegate];
    [delegate2 extrasBackButtonPressed];
  }
}

- (void)extrasMenuItemSelected:(id)selected atIndex:(unint64_t)index
{
  selectedCopy = selected;
  delegate = [(VideosExtrasContext *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(VideosExtrasContext *)self delegate];
    [delegate2 extrasMenuItemSelected:selectedCopy atIndex:index];
  }
}

- (void)extrasDoneButtonPressed
{
  delegate = [(VideosExtrasContext *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(VideosExtrasContext *)self delegate];
    [delegate2 extrasDoneButtonPressed];
  }
}

- (void)extrasRequestReloadWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    contextCopy = [(VideosExtrasContext *)self featurePlaybackContext];
  }

  v6 = contextCopy;
  delegate = [(VideosExtrasContext *)self delegate];
  [delegate extrasRequestReloadWithContext:v6];
}

- (void)failWithError:(id)error
{
  errorCopy = error;
  delegate = [(VideosExtrasContext *)self delegate];
  [delegate extrasContext:self hadFatalError:errorCopy];
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

- (void)setSelectedMainMenuIndex:(unint64_t)index
{
  selectedMainMenuIndex = self->_selectedMainMenuIndex;
  if (selectedMainMenuIndex != index)
  {
    self->_selectedMainMenuIndex = index;
    extrasRootViewController = [(VideosExtrasContext *)self extrasRootViewController];
    [extrasRootViewController updateMenuButtonForSelectionAtIndex:self->_selectedMainMenuIndex deselectedIndex:selectedMainMenuIndex];
  }
}

- (void)clearNavStack
{
  v5[1] = *MEMORY[0x1E69E9840];
  navigationController = [(VideosExtrasRootViewController *)self->_extrasRootViewController navigationController];
  v3 = objc_alloc_init(MEMORY[0x1E69DD258]);
  v5[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  [navigationController setViewControllers:v4 animated:0];
}

- (BOOL)isMenuItemElementMainFeature:(id)feature
{
  attributes = [feature attributes];
  v4 = [attributes objectForKey:@"type"];
  v5 = [v4 isEqualToString:@"video"];

  return v5;
}

- (void)extrasRootViewControllerDidLoadMainMenuItems:(id)items
{
  delegate = [(VideosExtrasContext *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(VideosExtrasContext *)self delegate];
    [delegate2 extrasContextDidLoadMainMenuItems:self];
  }
}

- (void)extrasRootViewController:(id)controller extrasVisibilityNeedsUpdate:(BOOL)update
{
  updateCopy = update;
  delegate = [(VideosExtrasContext *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(VideosExtrasContext *)self delegate];
    [delegate2 extrasContext:self extrasVisibilityNeedsUpdate:updateCopy];
  }
}

- (VideosExtrasContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end