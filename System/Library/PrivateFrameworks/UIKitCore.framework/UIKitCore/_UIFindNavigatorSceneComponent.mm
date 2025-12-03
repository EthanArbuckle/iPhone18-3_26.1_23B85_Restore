@interface _UIFindNavigatorSceneComponent
+ (id)sceneComponentForView:(id)view;
- (BOOL)_keyboardIsPreservingFindNavigatorAsRestorableResponder;
- (BOOL)_monitorsView:(id)view;
- (BOOL)isFindNavigatorVisible;
- (UIScene)_scene;
- (_UIFindNavigatorSceneComponent)initWithScene:(id)scene;
- (id)_searchableView;
- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview;
- (void)_sendPlacementUpdate;
- (void)dismissFindNavigatorEndingActiveSession:(BOOL)session;
- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)size;
- (void)presentFindNavigatorWithFindSession:(id)session showingReplace:(BOOL)replace idiom:(int64_t)idiom;
@end

@implementation _UIFindNavigatorSceneComponent

+ (id)sceneComponentForView:(id)view
{
  _window = [view _window];
  windowScene = [_window windowScene];

  if (windowScene)
  {
    v5 = [windowScene _sceneComponentForKey:@"_UIFindNavigatorSceneComponentKey"];
    if (!v5)
    {
      v5 = [[_UIFindNavigatorSceneComponent alloc] initWithScene:windowScene];
      [windowScene _registerSceneComponent:v5 forKey:@"_UIFindNavigatorSceneComponentKey"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFindNavigatorSceneComponent)initWithScene:(id)scene
{
  sceneCopy = scene;
  v8.receiver = self;
  v8.super_class = _UIFindNavigatorSceneComponent;
  v5 = [(_UIFindNavigatorSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, sceneCopy);
  }

  return v6;
}

- (BOOL)_keyboardIsPreservingFindNavigatorAsRestorableResponder
{
  findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findNavigatorView = [findNavigatorViewController findNavigatorView];

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if (findNavigatorView)
  {
    searchTextField = [findNavigatorView searchTextField];
    if ([v4 _isPreservedRestorableResponder:searchTextField])
    {
      v6 = 1;
    }

    else
    {
      replaceTextField = [findNavigatorView replaceTextField];
      v6 = [v4 _isPreservedRestorableResponder:replaceTextField];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isFindNavigatorVisible
{
  findNavigatorResponder = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  isFirstResponder = [findNavigatorResponder isFirstResponder];

  if (isFirstResponder)
  {
    return 1;
  }

  findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findNavigatorView = [findNavigatorViewController findNavigatorView];

  if (findNavigatorView)
  {
    if ([(_UIFindNavigatorSceneComponent *)self _keyboardIsPreservingFindNavigatorAsRestorableResponder])
    {
      v5 = 1;
    }

    else
    {
      firstResponder = [findNavigatorView firstResponder];
      v5 = [findNavigatorView _containsResponder:firstResponder];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)presentFindNavigatorWithFindSession:(id)session showingReplace:(BOOL)replace idiom:(int64_t)idiom
{
  replaceCopy = replace;
  sessionCopy = session;
  findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];

  if (!findNavigatorViewController)
  {
    v8 = [(UIInputViewController *)[_UIFindNavigatorViewController alloc] initWithNibName:0 bundle:0];
    [(_UIFindNavigatorSceneComponent *)self setFindNavigatorViewController:v8];
  }

  findNavigatorResponder = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];

  if (!findNavigatorResponder)
  {
    v10 = [_UIFindNavigatorResponder alloc];
    findNavigatorViewController2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    v12 = [(_UIFindNavigatorResponder *)v10 initWithFindNavigatorViewController:findNavigatorViewController2];
    [(_UIFindNavigatorSceneComponent *)self setFindNavigatorResponder:v12];

    findNavigatorViewController3 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    findNavigatorView = [findNavigatorViewController3 findNavigatorView];

    findNavigatorResponder2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
    inputAssistantItem = [findNavigatorResponder2 inputAssistantItem];
    searchTextField = [findNavigatorView searchTextField];
    [searchTextField setInputAssistantItem:inputAssistantItem];

    findNavigatorResponder3 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
    inputAssistantItem2 = [findNavigatorResponder3 inputAssistantItem];
    replaceTextField = [findNavigatorView replaceTextField];
    [replaceTextField setInputAssistantItem:inputAssistantItem2];
  }

  findNavigatorViewController4 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  searchableResponder = [sessionCopy searchableResponder];
  [findNavigatorViewController4 _overrideInputAccessoryViewNextResponderWithResponder:searchableResponder];

  if (replaceCopy)
  {
    supportsReplacement = [sessionCopy supportsReplacement];
  }

  else
  {
    supportsReplacement = 0;
  }

  findNavigatorViewController5 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  [findNavigatorViewController5 setFindSession:sessionCopy];

  findNavigatorViewController6 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  [findNavigatorViewController6 setFindNavigatorViewControllerDelegate:self];

  findNavigatorViewController7 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findNavigatorView2 = [findNavigatorViewController7 findNavigatorView];

  [findNavigatorView2 setMode:supportsReplacement];
  [findNavigatorView2 setVisibleSeparatorEdges:10];
  [findNavigatorView2 setIntrinsicHeightDerivedFromAssistantBar:1];
  [findNavigatorView2 setUsesOpaqueBackground:0];
  searchableResponderAsView = [sessionCopy searchableResponderAsView];
  v29 = searchableResponderAsView;
  if (searchableResponderAsView)
  {
    window = [searchableResponderAsView window];
    [window _registerSubtreeMonitor:self];
  }

  _searchableView = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  window2 = [_searchableView window];
  [window2 makeKeyWindow];

  findNavigatorResponder4 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [findNavigatorResponder4 setCanBecomeFirstResponder:1];

  findNavigatorResponder5 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [findNavigatorResponder5 becomeFirstResponderAndFocusFindField];
}

- (void)dismissFindNavigatorEndingActiveSession:(BOOL)session
{
  sessionCopy = session;
  _searchableView = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  window = [_searchableView window];
  [window _unregisterSubtreeMonitor:self];

  findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findSession = [findNavigatorViewController findSession];

  if (findSession && sessionCopy)
  {
    parentInteraction = [findSession parentInteraction];
    [parentInteraction _didEndActiveFindSession];
  }

  if ([(_UIFindNavigatorSceneComponent *)self _keyboardIsPreservingFindNavigatorAsRestorableResponder])
  {
    findNavigatorViewController2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    findNavigatorView = [findNavigatorViewController2 findNavigatorView];

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    searchTextField = [findNavigatorView searchTextField];
    [v11 _clearPreservedInputViewsWithRestorableResponder:searchTextField];

    replaceTextField = [findNavigatorView replaceTextField];
    [v11 _clearPreservedInputViewsWithRestorableResponder:replaceTextField];
  }

  findNavigatorResponder = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [findNavigatorResponder setCanBecomeFirstResponder:0];

  findNavigatorResponder2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [findNavigatorResponder2 resignFirstResponder];

  findNavigatorViewController3 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  [findNavigatorViewController3 resignFirstResponderAndFinishSearching];
}

- (void)_sendPlacementUpdate
{
  findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findSession = [findNavigatorViewController findSession];

  findNavigatorViewController2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findNavigatorView = [findNavigatorViewController2 findNavigatorView];
  traitCollection = [findNavigatorView traitCollection];

  findNavigatorResponder = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  v8 = [findNavigatorResponder hostingTypeForTraitCollection:traitCollection];

  v9 = objc_alloc_init(_UIFindNavigatorKeyboardPlacement);
  [(_UIFindNavigatorKeyboardPlacement *)v9 setAsInputAccessoryView:v8 == 1];
  parentInteraction = [findSession parentInteraction];
  [parentInteraction _willChangeNavigatorPlacement:v9];
}

- (id)_searchableView
{
  findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  findSession = [findNavigatorViewController findSession];
  searchableResponderAsView = [findSession searchableResponderAsView];

  return searchableResponderAsView;
}

- (BOOL)_monitorsView:(id)view
{
  viewCopy = view;
  _searchableView = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  v6 = [_searchableView isDescendantOfView:viewCopy];

  return v6;
}

- (void)_monitoredView:(id)view willMoveFromSuperview:(id)superview toSuperview:(id)toSuperview
{
  viewCopy = view;
  _searchableView = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  v9 = [_searchableView isDescendantOfView:viewCopy];

  if (!toSuperview && v9)
  {

    [(_UIFindNavigatorSceneComponent *)self dismissFindNavigatorEndingActiveSession:1];
  }
}

- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)size
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    remoteInputViewHost = [v4 remoteInputViewHost];

    [remoteInputViewHost updateInputViewsIfNecessary];
  }

  else
  {
    remoteInputViewHost = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [remoteInputViewHost setUpdateAssistantView:1];
    findNavigatorViewController = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    findNavigatorView = [findNavigatorViewController findNavigatorView];
    [findNavigatorView _didChangeKeyplaneWithContext:remoteInputViewHost];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end