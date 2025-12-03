@interface UIFindInteraction
- (BOOL)isFindNavigatorVisible;
- (NSString)replacementText;
- (NSString)searchText;
- (UIFindInteraction)initWithSessionDelegate:(id)sessionDelegate;
- (UITextSearchOptions)_configuredSearchOptions;
- (UIView)_hostView;
- (UIView)view;
- (id)_createActiveFindSessionIfNecessary;
- (id)_currentFindNavigatorController;
- (id)_findNavigatorHosting;
- (id)_findNavigatorHostingForStrategy:(unint64_t)strategy;
- (id)_findNavigatorSceneComponent;
- (id)_hostScrollView;
- (id)delegate;
- (id)searchableObject;
- (unint64_t)_computedHostingStrategy;
- (unint64_t)_currentHostingStrategy;
- (void)_didBeginActiveFindSession;
- (void)_didEndActiveFindSession;
- (void)_recomputeHostingStrategyIfNecessary;
- (void)_resetToolbarHidingAndHostViewController;
- (void)_setHostView:(id)view;
- (void)_updateHostViewConformance;
- (void)_willChangeNavigatorPlacement:(id)placement;
- (void)didMoveToView:(id)view;
- (void)dismissFindNavigator;
- (void)findNext;
- (void)findPrevious;
- (void)presentFindNavigatorShowingReplace:(BOOL)showingReplace;
- (void)setReplacementText:(NSString *)replacementText;
- (void)setSearchText:(NSString *)searchText;
- (void)setSearchableObject:(id)object;
- (void)updateResultCount;
@end

@implementation UIFindInteraction

- (void)dismissFindNavigator
{
  view = [(UIFindInteraction *)self view];
  window = [view window];

  if (window)
  {
    _findNavigatorHosting = [(UIFindInteraction *)self _findNavigatorHosting];
    [_findNavigatorHosting dismissFindNavigatorEndingActiveSession:1];
  }
}

- (void)_updateHostViewConformance
{
  _hostView = [(UIFindInteraction *)self _hostView];
  NSClassFromString(&cfstr_Mfcomposewebvi.isa);
  if (objc_opt_isKindOfClass())
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *&self->_hostViewIs = *&self->_hostViewIs & 0xFD | v4;

  _hostView2 = [(UIFindInteraction *)self _hostView];
  NSClassFromString(&cfstr_Wkwebview.isa);
  *&self->_hostViewIs = *&self->_hostViewIs & 0xFE | objc_opt_isKindOfClass() & 1;
}

- (UIView)_hostView
{
  WeakRetained = objc_loadWeakRetained(&self->_alternateHostView);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained;
  }

  else
  {
    v5 = objc_loadWeakRetained(&self->_view);
  }

  v6 = v5;

  return v6;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

- (BOOL)isFindNavigatorVisible
{
  if (!self->_activeFindSession)
  {
    return 0;
  }

  v2 = [(UIFindInteraction *)self _findNavigatorHostingForStrategy:self->_lastUsedHostingStrategy];
  isFindNavigatorVisible = [v2 isFindNavigatorVisible];

  return isFindNavigatorVisible;
}

- (UIFindInteraction)initWithSessionDelegate:(id)sessionDelegate
{
  v4 = sessionDelegate;
  v13.receiver = self;
  v13.super_class = UIFindInteraction;
  v5 = [(UIFindInteraction *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_delegate, v4);
    *&v6->_privateDelegateDoes = *&v6->_privateDelegateDoes & 0xFE | objc_opt_respondsToSelector() & 1;

    WeakRetained = objc_loadWeakRetained(&v6->_delegate);
    if (objc_opt_respondsToSelector())
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    *&v6->_privateDelegateDoes = *&v6->_privateDelegateDoes & 0xFD | v9;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v6 selector:sel__systemInputAssistantCenterVisibilityChanged_ name:0x1EFB455F0 object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v6 selector:sel__keyboardDidChangePlacementNotification_ name:@"UIKeyboardDidChangeFrameNotification" object:0];
  }

  return v6;
}

- (void)didMoveToView:(id)view
{
  objc_storeWeak(&self->_view, view);

  [(UIFindInteraction *)self _updateHostViewConformance];
}

- (void)_didBeginActiveFindSession
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 findInteraction:self didBeginFindSession:self->_activeFindSession];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIFindInteractionFindSessionDidBeginNotification" object:self->_activeFindSession];

  [(UIFindInteraction *)self _resetToolbarHidingAndHostViewController];
  v7 = objc_loadWeakRetained(&self->_view);
  _viewControllerForAncestor = [v7 _viewControllerForAncestor];
  navigationController = [_viewControllerForAncestor navigationController];
  obj = [navigationController _outermostNavigationController];

  if (obj)
  {
    objc_storeWeak(&self->_hostNavigationViewController, obj);
    *&self->_findInteractionFlags = *&self->_findInteractionFlags & 0xFE | ((obj[1296] & 0x40) != 0);
    [(UINavigationController *)obj _setRequiresToolbarHiddenForFindAndReplace:?];
  }
}

- (void)_resetToolbarHidingAndHostViewController
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 24));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [(UINavigationController *)WeakRetained _setRequiresToolbarHiddenForFindAndReplace:?];
      objc_storeWeak((self + 24), 0);
      WeakRetained = v3;
    }
  }
}

- (void)_didEndActiveFindSession
{
  [(UIFindSession *)self->_activeFindSession invalidateFoundResults];
  [(UIFindInteraction *)self _resetToolbarHidingAndHostViewController];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 findInteraction:self didEndFindSession:self->_activeFindSession];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"UIFindInteractionFindSessionDidEndNotification" object:self->_activeFindSession];
}

- (id)_createActiveFindSessionIfNecessary
{
  activeFindSession = self->_activeFindSession;
  if (!activeFindSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    view = [(UIFindInteraction *)self view];
    v6 = [WeakRetained findInteraction:self sessionForView:view];
    v7 = self->_activeFindSession;
    self->_activeFindSession = v6;

    view2 = [(UIFindInteraction *)self view];
    [(UIFindSession *)self->_activeFindSession setSearchableResponder:view2];

    [(UIFindSession *)self->_activeFindSession setParentInteraction:self];
    [(UIFindSession *)self->_activeFindSession setReplacementText:self->_replacementText];
    [(UIFindSession *)self->_activeFindSession setSearchText:self->_searchText];
    activeFindSession = self->_activeFindSession;
  }

  searchText = [(UIFindSession *)activeFindSession searchText];

  if (!searchText)
  {
    v10 = +[UIFindInteraction _globalFindBuffer];
    [(UIFindSession *)self->_activeFindSession setSearchText:v10];
  }

  v11 = self->_activeFindSession;

  return v11;
}

- (id)_findNavigatorSceneComponent
{
  view = [(UIFindInteraction *)self view];
  v3 = [_UIFindNavigatorSceneComponent sceneComponentForView:view];

  return v3;
}

- (unint64_t)_computedHostingStrategy
{
  view = [(UIFindInteraction *)self view];
  window = [view window];
  windowScene = [window windowScene];
  keyboardSceneDelegate = [windowScene keyboardSceneDelegate];

  systemInputAssistantViewController = [keyboardSceneDelegate systemInputAssistantViewController];
  view2 = [systemInputAssistantViewController view];
  window2 = [view2 window];

  if (window2)
  {
    systemInputAssistantViewController2 = [keyboardSceneDelegate systemInputAssistantViewController];
    _hidesCenterViewForActiveWindowingMode = [systemInputAssistantViewController2 _hidesCenterViewForActiveWindowingMode];

    if (_hidesCenterViewForActiveWindowingMode)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = +[UIKeyboardImpl sharedInstance];
    visualModeManager = [keyboardSceneDelegate visualModeManager];
    shouldShowWithinAppWindow = [visualModeManager shouldShowWithinAppWindow];

    scene = [keyboardSceneDelegate scene];
    traitCollection = [scene traitCollection];
    horizontalSizeClass = [traitCollection horizontalSizeClass];

    if (shouldShowWithinAppWindow && horizontalSizeClass == 1)
    {
      goto LABEL_12;
    }
  }

  v17 = +[UIKeyboardImpl activeInstance];
  if (([v17 isMinimized] & 1) == 0)
  {
    if (+[UIKeyboardImpl isSplit])
    {
    }

    else
    {
      v19 = +[UIKeyboardImpl isFloating];

      if (!v19)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    v18 = 2;
    goto LABEL_13;
  }

LABEL_8:
  v18 = 1;
LABEL_13:

  return v18;
}

- (unint64_t)_currentHostingStrategy
{
  result = self->_lastUsedHostingStrategy;
  if (!result)
  {
    result = [(UIFindInteraction *)self _computedHostingStrategy];
    self->_lastUsedHostingStrategy = result;
  }

  return result;
}

- (id)_findNavigatorHostingForStrategy:(unint64_t)strategy
{
  if (strategy == 1)
  {
    _findNavigatorSceneComponent = [(UIFindInteraction *)self _findNavigatorSceneComponent];
  }

  else if (strategy == 2)
  {
    if (!self->_findNavigatorHarness)
    {
      v4 = objc_alloc_init(_UIFindNavigatorHarness);
      [(UIFindInteraction *)self setFindNavigatorHarness:v4];
    }

    _hostView = [(UIFindInteraction *)self _hostView];
    if (objc_opt_respondsToSelector())
    {
      scrollView = [_hostView scrollView];

      _hostView = scrollView;
    }

    findNavigatorHarness = [(UIFindInteraction *)self findNavigatorHarness];
    [findNavigatorHarness setHostView:_hostView];

    _hostScrollView = [(UIFindInteraction *)self _hostScrollView];
    findNavigatorHarness2 = [(UIFindInteraction *)self findNavigatorHarness];
    [findNavigatorHarness2 setHostScrollView:_hostScrollView];

    view = [(UIFindInteraction *)self view];
    findNavigatorHarness3 = [(UIFindInteraction *)self findNavigatorHarness];
    [findNavigatorHarness3 setInteractionView:view];

    _findNavigatorSceneComponent = [(UIFindInteraction *)self findNavigatorHarness];
  }

  else
  {
    _findNavigatorSceneComponent = 0;
  }

  return _findNavigatorSceneComponent;
}

- (id)_findNavigatorHosting
{
  _computedHostingStrategy = [(UIFindInteraction *)self _computedHostingStrategy];

  return [(UIFindInteraction *)self _findNavigatorHostingForStrategy:_computedHostingStrategy];
}

- (void)_recomputeHostingStrategyIfNecessary
{
  _computedHostingStrategy = [(UIFindInteraction *)self _computedHostingStrategy];
  v4 = [(UIFindInteraction *)self _findNavigatorHostingForStrategy:self->_lastUsedHostingStrategy];
  if ([v4 isFindNavigatorVisible] && _computedHostingStrategy != self->_lastUsedHostingStrategy)
  {
    findNavigatorViewController = [v4 findNavigatorViewController];
    findNavigatorView = [findNavigatorViewController findNavigatorView];
    v7 = [findNavigatorView mode] == 1;

    mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__UIFindInteraction__recomputeHostingStrategyIfNecessary__block_invoke;
    v9[3] = &unk_1E70F5AF0;
    v10 = v4;
    selfCopy = self;
    v12 = v7;
    [mainRunLoop performBlock:v9];

    self->_lastUsedHostingStrategy = _computedHostingStrategy;
  }
}

void __57__UIFindInteraction__recomputeHostingStrategyIfNecessary__block_invoke(uint64_t a1)
{
  [*(a1 + 32) dismissFindNavigatorEndingActiveSession:0];
  v6 = [*(a1 + 40) _findNavigatorHosting];
  v2 = [*(a1 + 40) activeFindSession];
  v3 = *(a1 + 48);
  v4 = [*(a1 + 40) view];
  v5 = [v4 traitCollection];
  [v6 presentFindNavigatorWithFindSession:v2 showingReplace:v3 idiom:{objc_msgSend(v5, "userInterfaceIdiom")}];
}

- (void)presentFindNavigatorShowingReplace:(BOOL)showingReplace
{
  v3 = showingReplace;
  _createActiveFindSessionIfNecessary = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  if (_createActiveFindSessionIfNecessary)
  {
    v12 = _createActiveFindSessionIfNecessary;
    supportsReplacement = [(UIFindSession *)self->_activeFindSession supportsReplacement];
    view = [(UIFindInteraction *)self view];
    v8 = [_UIContextMenuSceneComponent sceneComponentForView:view];
    [v8 dismissActiveMenus];

    _findNavigatorHosting = [(UIFindInteraction *)self _findNavigatorHosting];
    view2 = [(UIFindInteraction *)self view];
    traitCollection = [view2 traitCollection];
    [_findNavigatorHosting presentFindNavigatorWithFindSession:v12 showingReplace:supportsReplacement & v3 idiom:{objc_msgSend(traitCollection, "userInterfaceIdiom")}];

    self->_lastUsedHostingStrategy = [(UIFindInteraction *)self _computedHostingStrategy];
    [(UIFindInteraction *)self _didBeginActiveFindSession];

    _createActiveFindSessionIfNecessary = v12;
  }
}

- (id)_currentFindNavigatorController
{
  _findNavigatorHosting = [(UIFindInteraction *)self _findNavigatorHosting];
  findNavigatorViewController = [_findNavigatorHosting findNavigatorViewController];

  return findNavigatorViewController;
}

- (void)updateResultCount
{
  _currentFindNavigatorController = [(UIFindInteraction *)self _currentFindNavigatorController];
  [_currentFindNavigatorController updateViewForActiveFindSession];
}

- (void)findNext
{
  _createActiveFindSessionIfNecessary = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  [_createActiveFindSessionIfNecessary highlightNextResultInDirection:0];
}

- (void)findPrevious
{
  _createActiveFindSessionIfNecessary = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  [_createActiveFindSessionIfNecessary highlightNextResultInDirection:1];
}

- (NSString)searchText
{
  activeFindSession = self->_activeFindSession;
  if (activeFindSession)
  {
    searchText = [(UIFindSession *)activeFindSession searchText];
  }

  else
  {
    searchText = self->_searchText;
  }

  return searchText;
}

- (void)setSearchText:(NSString *)searchText
{
  v11 = searchText;
  objc_storeStrong(&self->_searchText, searchText);
  activeFindSession = self->_activeFindSession;
  if (activeFindSession)
  {
    [(UIFindSession *)activeFindSession setSearchText:v11];
  }

  _currentFindNavigatorController = [(UIFindInteraction *)self _currentFindNavigatorController];
  viewIfLoaded = [_currentFindNavigatorController viewIfLoaded];

  if (viewIfLoaded)
  {
    _currentFindNavigatorController2 = [(UIFindInteraction *)self _currentFindNavigatorController];
    findNavigatorView = [_currentFindNavigatorController2 findNavigatorView];
    searchTextField = [findNavigatorView searchTextField];
    [searchTextField setText:v11];
  }
}

- (NSString)replacementText
{
  activeFindSession = self->_activeFindSession;
  if (activeFindSession)
  {
    replacementText = [(UIFindSession *)activeFindSession replacementText];
  }

  else
  {
    replacementText = self->_replacementText;
  }

  return replacementText;
}

- (void)setReplacementText:(NSString *)replacementText
{
  v11 = replacementText;
  objc_storeStrong(&self->_replacementText, replacementText);
  activeFindSession = self->_activeFindSession;
  if (activeFindSession)
  {
    [(UIFindSession *)activeFindSession setReplacementText:v11];
  }

  _currentFindNavigatorController = [(UIFindInteraction *)self _currentFindNavigatorController];
  viewIfLoaded = [_currentFindNavigatorController viewIfLoaded];

  if (viewIfLoaded)
  {
    _currentFindNavigatorController2 = [(UIFindInteraction *)self _currentFindNavigatorController];
    findNavigatorView = [_currentFindNavigatorController2 findNavigatorView];
    replaceTextField = [findNavigatorView replaceTextField];
    [replaceTextField setText:v11];
  }
}

- (void)_setHostView:(id)view
{
  objc_storeWeak(&self->_alternateHostView, view);

  [(UIFindInteraction *)self _updateHostViewConformance];
}

- (UITextSearchOptions)_configuredSearchOptions
{
  _createActiveFindSessionIfNecessary = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  configuredSearchOptions = [_createActiveFindSessionIfNecessary configuredSearchOptions];

  return configuredSearchOptions;
}

- (void)_willChangeNavigatorPlacement:(id)placement
{
  if (*&self->_privateDelegateDoes)
  {
    placementCopy = placement;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _findInteraction:self navigatorPlacementWillChange:placementCopy];
  }
}

- (id)_hostScrollView
{
  if ((*&self->_hostViewIs & 2) != 0 && (*&self->_privateDelegateDoes & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*&self->_privateDelegateDoes & 2) != 0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    scrollView = [WeakRetained _findInteractionScrollViewForInsetAdjustment:self];
  }

  else
  {
    _hostView = [(UIFindInteraction *)self _hostView];
    __isKindOfUIScrollView = [_hostView __isKindOfUIScrollView];

    _hostView2 = [(UIFindInteraction *)self _hostView];
    if (__isKindOfUIScrollView)
    {
      goto LABEL_10;
    }

    NSClassFromString(&cfstr_Wkwebview.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_3:
      _hostView2 = 0;
      goto LABEL_10;
    }

    WeakRetained = [(UIFindInteraction *)self _hostView];
    scrollView = [WeakRetained scrollView];
  }

  _hostView2 = scrollView;

LABEL_10:

  return _hostView2;
}

- (id)searchableObject
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    searchableObject = [(UIFindSession *)self->_activeFindSession searchableObject];
  }

  else
  {
    searchableObject = 0;
  }

  return searchableObject;
}

- (void)setSearchableObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _createActiveFindSessionIfNecessary = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
    [_createActiveFindSessionIfNecessary setSearchableObject:objectCopy];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end