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
- (id)_findNavigatorHostingForStrategy:(unint64_t)a3;
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
- (void)_setHostView:(id)a3;
- (void)_updateHostViewConformance;
- (void)_willChangeNavigatorPlacement:(id)a3;
- (void)didMoveToView:(id)a3;
- (void)dismissFindNavigator;
- (void)findNext;
- (void)findPrevious;
- (void)presentFindNavigatorShowingReplace:(BOOL)showingReplace;
- (void)setReplacementText:(NSString *)replacementText;
- (void)setSearchText:(NSString *)searchText;
- (void)setSearchableObject:(id)a3;
- (void)updateResultCount;
@end

@implementation UIFindInteraction

- (void)dismissFindNavigator
{
  v3 = [(UIFindInteraction *)self view];
  v4 = [v3 window];

  if (v4)
  {
    v5 = [(UIFindInteraction *)self _findNavigatorHosting];
    [v5 dismissFindNavigatorEndingActiveSession:1];
  }
}

- (void)_updateHostViewConformance
{
  v3 = [(UIFindInteraction *)self _hostView];
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

  v5 = [(UIFindInteraction *)self _hostView];
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
  v3 = [v2 isFindNavigatorVisible];

  return v3;
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

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 addObserver:v6 selector:sel__systemInputAssistantCenterVisibilityChanged_ name:0x1EFB455F0 object:0];

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    [v11 addObserver:v6 selector:sel__keyboardDidChangePlacementNotification_ name:@"UIKeyboardDidChangeFrameNotification" object:0];
  }

  return v6;
}

- (void)didMoveToView:(id)a3
{
  objc_storeWeak(&self->_view, a3);

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

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"UIFindInteractionFindSessionDidBeginNotification" object:self->_activeFindSession];

  [(UIFindInteraction *)self _resetToolbarHidingAndHostViewController];
  v7 = objc_loadWeakRetained(&self->_view);
  v8 = [v7 _viewControllerForAncestor];
  v9 = [v8 navigationController];
  obj = [v9 _outermostNavigationController];

  if (obj)
  {
    objc_storeWeak(&self->_hostNavigationViewController, obj);
    *&self->_findInteractionFlags = *&self->_findInteractionFlags & 0xFE | ((obj[1296] & 0x40) != 0);
    [(UINavigationController *)obj _setRequiresToolbarHiddenForFindAndReplace:?];
  }
}

- (void)_resetToolbarHidingAndHostViewController
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 24));
    if (WeakRetained)
    {
      v3 = WeakRetained;
      [(UINavigationController *)WeakRetained _setRequiresToolbarHiddenForFindAndReplace:?];
      objc_storeWeak((a1 + 24), 0);
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

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"UIFindInteractionFindSessionDidEndNotification" object:self->_activeFindSession];
}

- (id)_createActiveFindSessionIfNecessary
{
  activeFindSession = self->_activeFindSession;
  if (!activeFindSession)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = [(UIFindInteraction *)self view];
    v6 = [WeakRetained findInteraction:self sessionForView:v5];
    v7 = self->_activeFindSession;
    self->_activeFindSession = v6;

    v8 = [(UIFindInteraction *)self view];
    [(UIFindSession *)self->_activeFindSession setSearchableResponder:v8];

    [(UIFindSession *)self->_activeFindSession setParentInteraction:self];
    [(UIFindSession *)self->_activeFindSession setReplacementText:self->_replacementText];
    [(UIFindSession *)self->_activeFindSession setSearchText:self->_searchText];
    activeFindSession = self->_activeFindSession;
  }

  v9 = [(UIFindSession *)activeFindSession searchText];

  if (!v9)
  {
    v10 = +[UIFindInteraction _globalFindBuffer];
    [(UIFindSession *)self->_activeFindSession setSearchText:v10];
  }

  v11 = self->_activeFindSession;

  return v11;
}

- (id)_findNavigatorSceneComponent
{
  v2 = [(UIFindInteraction *)self view];
  v3 = [_UIFindNavigatorSceneComponent sceneComponentForView:v2];

  return v3;
}

- (unint64_t)_computedHostingStrategy
{
  v2 = [(UIFindInteraction *)self view];
  v3 = [v2 window];
  v4 = [v3 windowScene];
  v5 = [v4 keyboardSceneDelegate];

  v6 = [v5 systemInputAssistantViewController];
  v7 = [v6 view];
  v8 = [v7 window];

  if (v8)
  {
    v9 = [v5 systemInputAssistantViewController];
    v10 = [v9 _hidesCenterViewForActiveWindowingMode];

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v11 = +[UIKeyboardImpl sharedInstance];
    v12 = [v5 visualModeManager];
    v13 = [v12 shouldShowWithinAppWindow];

    v14 = [v5 scene];
    v15 = [v14 traitCollection];
    v16 = [v15 horizontalSizeClass];

    if (v13 && v16 == 1)
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

- (id)_findNavigatorHostingForStrategy:(unint64_t)a3
{
  if (a3 == 1)
  {
    v12 = [(UIFindInteraction *)self _findNavigatorSceneComponent];
  }

  else if (a3 == 2)
  {
    if (!self->_findNavigatorHarness)
    {
      v4 = objc_alloc_init(_UIFindNavigatorHarness);
      [(UIFindInteraction *)self setFindNavigatorHarness:v4];
    }

    v5 = [(UIFindInteraction *)self _hostView];
    if (objc_opt_respondsToSelector())
    {
      v6 = [v5 scrollView];

      v5 = v6;
    }

    v7 = [(UIFindInteraction *)self findNavigatorHarness];
    [v7 setHostView:v5];

    v8 = [(UIFindInteraction *)self _hostScrollView];
    v9 = [(UIFindInteraction *)self findNavigatorHarness];
    [v9 setHostScrollView:v8];

    v10 = [(UIFindInteraction *)self view];
    v11 = [(UIFindInteraction *)self findNavigatorHarness];
    [v11 setInteractionView:v10];

    v12 = [(UIFindInteraction *)self findNavigatorHarness];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)_findNavigatorHosting
{
  v3 = [(UIFindInteraction *)self _computedHostingStrategy];

  return [(UIFindInteraction *)self _findNavigatorHostingForStrategy:v3];
}

- (void)_recomputeHostingStrategyIfNecessary
{
  v3 = [(UIFindInteraction *)self _computedHostingStrategy];
  v4 = [(UIFindInteraction *)self _findNavigatorHostingForStrategy:self->_lastUsedHostingStrategy];
  if ([v4 isFindNavigatorVisible] && v3 != self->_lastUsedHostingStrategy)
  {
    v5 = [v4 findNavigatorViewController];
    v6 = [v5 findNavigatorView];
    v7 = [v6 mode] == 1;

    v8 = [MEMORY[0x1E695DFD0] mainRunLoop];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __57__UIFindInteraction__recomputeHostingStrategyIfNecessary__block_invoke;
    v9[3] = &unk_1E70F5AF0;
    v10 = v4;
    v11 = self;
    v12 = v7;
    [v8 performBlock:v9];

    self->_lastUsedHostingStrategy = v3;
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
  v5 = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  if (v5)
  {
    v12 = v5;
    v6 = [(UIFindSession *)self->_activeFindSession supportsReplacement];
    v7 = [(UIFindInteraction *)self view];
    v8 = [_UIContextMenuSceneComponent sceneComponentForView:v7];
    [v8 dismissActiveMenus];

    v9 = [(UIFindInteraction *)self _findNavigatorHosting];
    v10 = [(UIFindInteraction *)self view];
    v11 = [v10 traitCollection];
    [v9 presentFindNavigatorWithFindSession:v12 showingReplace:v6 & v3 idiom:{objc_msgSend(v11, "userInterfaceIdiom")}];

    self->_lastUsedHostingStrategy = [(UIFindInteraction *)self _computedHostingStrategy];
    [(UIFindInteraction *)self _didBeginActiveFindSession];

    v5 = v12;
  }
}

- (id)_currentFindNavigatorController
{
  v2 = [(UIFindInteraction *)self _findNavigatorHosting];
  v3 = [v2 findNavigatorViewController];

  return v3;
}

- (void)updateResultCount
{
  v2 = [(UIFindInteraction *)self _currentFindNavigatorController];
  [v2 updateViewForActiveFindSession];
}

- (void)findNext
{
  v2 = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  [v2 highlightNextResultInDirection:0];
}

- (void)findPrevious
{
  v2 = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  [v2 highlightNextResultInDirection:1];
}

- (NSString)searchText
{
  activeFindSession = self->_activeFindSession;
  if (activeFindSession)
  {
    v4 = [(UIFindSession *)activeFindSession searchText];
  }

  else
  {
    v4 = self->_searchText;
  }

  return v4;
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

  v6 = [(UIFindInteraction *)self _currentFindNavigatorController];
  v7 = [v6 viewIfLoaded];

  if (v7)
  {
    v8 = [(UIFindInteraction *)self _currentFindNavigatorController];
    v9 = [v8 findNavigatorView];
    v10 = [v9 searchTextField];
    [v10 setText:v11];
  }
}

- (NSString)replacementText
{
  activeFindSession = self->_activeFindSession;
  if (activeFindSession)
  {
    v4 = [(UIFindSession *)activeFindSession replacementText];
  }

  else
  {
    v4 = self->_replacementText;
  }

  return v4;
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

  v6 = [(UIFindInteraction *)self _currentFindNavigatorController];
  v7 = [v6 viewIfLoaded];

  if (v7)
  {
    v8 = [(UIFindInteraction *)self _currentFindNavigatorController];
    v9 = [v8 findNavigatorView];
    v10 = [v9 replaceTextField];
    [v10 setText:v11];
  }
}

- (void)_setHostView:(id)a3
{
  objc_storeWeak(&self->_alternateHostView, a3);

  [(UIFindInteraction *)self _updateHostViewConformance];
}

- (UITextSearchOptions)_configuredSearchOptions
{
  v2 = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
  v3 = [v2 configuredSearchOptions];

  return v3;
}

- (void)_willChangeNavigatorPlacement:(id)a3
{
  if (*&self->_privateDelegateDoes)
  {
    v5 = a3;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained _findInteraction:self navigatorPlacementWillChange:v5];
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
    v8 = [WeakRetained _findInteractionScrollViewForInsetAdjustment:self];
  }

  else
  {
    v4 = [(UIFindInteraction *)self _hostView];
    v5 = [v4 __isKindOfUIScrollView];

    v3 = [(UIFindInteraction *)self _hostView];
    if (v5)
    {
      goto LABEL_10;
    }

    NSClassFromString(&cfstr_Wkwebview.isa);
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_3:
      v3 = 0;
      goto LABEL_10;
    }

    WeakRetained = [(UIFindInteraction *)self _hostView];
    v8 = [WeakRetained scrollView];
  }

  v3 = v8;

LABEL_10:

  return v3;
}

- (id)searchableObject
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(UIFindSession *)self->_activeFindSession searchableObject];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSearchableObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(UIFindInteraction *)self _createActiveFindSessionIfNecessary];
    [v4 setSearchableObject:v5];
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end