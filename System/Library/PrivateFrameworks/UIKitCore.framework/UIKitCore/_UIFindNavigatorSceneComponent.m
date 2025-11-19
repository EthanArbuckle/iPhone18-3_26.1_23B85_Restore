@interface _UIFindNavigatorSceneComponent
+ (id)sceneComponentForView:(id)a3;
- (BOOL)_keyboardIsPreservingFindNavigatorAsRestorableResponder;
- (BOOL)_monitorsView:(id)a3;
- (BOOL)isFindNavigatorVisible;
- (UIScene)_scene;
- (_UIFindNavigatorSceneComponent)initWithScene:(id)a3;
- (id)_searchableView;
- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5;
- (void)_sendPlacementUpdate;
- (void)dismissFindNavigatorEndingActiveSession:(BOOL)a3;
- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)a3;
- (void)presentFindNavigatorWithFindSession:(id)a3 showingReplace:(BOOL)a4 idiom:(int64_t)a5;
@end

@implementation _UIFindNavigatorSceneComponent

+ (id)sceneComponentForView:(id)a3
{
  v3 = [a3 _window];
  v4 = [v3 windowScene];

  if (v4)
  {
    v5 = [v4 _sceneComponentForKey:@"_UIFindNavigatorSceneComponentKey"];
    if (!v5)
    {
      v5 = [[_UIFindNavigatorSceneComponent alloc] initWithScene:v4];
      [v4 _registerSceneComponent:v5 forKey:@"_UIFindNavigatorSceneComponentKey"];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (_UIFindNavigatorSceneComponent)initWithScene:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _UIFindNavigatorSceneComponent;
  v5 = [(_UIFindNavigatorSceneComponent *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scene, v4);
  }

  return v6;
}

- (BOOL)_keyboardIsPreservingFindNavigatorAsRestorableResponder
{
  v2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v3 = [v2 findNavigatorView];

  v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
  if (v3)
  {
    v5 = [v3 searchTextField];
    if ([v4 _isPreservedRestorableResponder:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = [v3 replaceTextField];
      v6 = [v4 _isPreservedRestorableResponder:v7];
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
  v3 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  v4 = [v3 isFirstResponder];

  if (v4)
  {
    return 1;
  }

  v6 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v7 = [v6 findNavigatorView];

  if (v7)
  {
    if ([(_UIFindNavigatorSceneComponent *)self _keyboardIsPreservingFindNavigatorAsRestorableResponder])
    {
      v5 = 1;
    }

    else
    {
      v8 = [v7 firstResponder];
      v5 = [v7 _containsResponder:v8];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)presentFindNavigatorWithFindSession:(id)a3 showingReplace:(BOOL)a4 idiom:(int64_t)a5
{
  v5 = a4;
  v35 = a3;
  v7 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];

  if (!v7)
  {
    v8 = [(UIInputViewController *)[_UIFindNavigatorViewController alloc] initWithNibName:0 bundle:0];
    [(_UIFindNavigatorSceneComponent *)self setFindNavigatorViewController:v8];
  }

  v9 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];

  if (!v9)
  {
    v10 = [_UIFindNavigatorResponder alloc];
    v11 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    v12 = [(_UIFindNavigatorResponder *)v10 initWithFindNavigatorViewController:v11];
    [(_UIFindNavigatorSceneComponent *)self setFindNavigatorResponder:v12];

    v13 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    v14 = [v13 findNavigatorView];

    v15 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
    v16 = [v15 inputAssistantItem];
    v17 = [v14 searchTextField];
    [v17 setInputAssistantItem:v16];

    v18 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
    v19 = [v18 inputAssistantItem];
    v20 = [v14 replaceTextField];
    [v20 setInputAssistantItem:v19];
  }

  v21 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v22 = [v35 searchableResponder];
  [v21 _overrideInputAccessoryViewNextResponderWithResponder:v22];

  if (v5)
  {
    v23 = [v35 supportsReplacement];
  }

  else
  {
    v23 = 0;
  }

  v24 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  [v24 setFindSession:v35];

  v25 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  [v25 setFindNavigatorViewControllerDelegate:self];

  v26 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v27 = [v26 findNavigatorView];

  [v27 setMode:v23];
  [v27 setVisibleSeparatorEdges:10];
  [v27 setIntrinsicHeightDerivedFromAssistantBar:1];
  [v27 setUsesOpaqueBackground:0];
  v28 = [v35 searchableResponderAsView];
  v29 = v28;
  if (v28)
  {
    v30 = [v28 window];
    [v30 _registerSubtreeMonitor:self];
  }

  v31 = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  v32 = [v31 window];
  [v32 makeKeyWindow];

  v33 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [v33 setCanBecomeFirstResponder:1];

  v34 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [v34 becomeFirstResponderAndFocusFindField];
}

- (void)dismissFindNavigatorEndingActiveSession:(BOOL)a3
{
  v3 = a3;
  v5 = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  v6 = [v5 window];
  [v6 _unregisterSubtreeMonitor:self];

  v7 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v17 = [v7 findSession];

  if (v17 && v3)
  {
    v8 = [v17 parentInteraction];
    [v8 _didEndActiveFindSession];
  }

  if ([(_UIFindNavigatorSceneComponent *)self _keyboardIsPreservingFindNavigatorAsRestorableResponder])
  {
    v9 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    v10 = [v9 findNavigatorView];

    v11 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v12 = [v10 searchTextField];
    [v11 _clearPreservedInputViewsWithRestorableResponder:v12];

    v13 = [v10 replaceTextField];
    [v11 _clearPreservedInputViewsWithRestorableResponder:v13];
  }

  v14 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [v14 setCanBecomeFirstResponder:0];

  v15 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  [v15 resignFirstResponder];

  v16 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  [v16 resignFirstResponderAndFinishSearching];
}

- (void)_sendPlacementUpdate
{
  v3 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v11 = [v3 findSession];

  v4 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v5 = [v4 findNavigatorView];
  v6 = [v5 traitCollection];

  v7 = [(_UIFindNavigatorSceneComponent *)self findNavigatorResponder];
  v8 = [v7 hostingTypeForTraitCollection:v6];

  v9 = objc_alloc_init(_UIFindNavigatorKeyboardPlacement);
  [(_UIFindNavigatorKeyboardPlacement *)v9 setAsInputAccessoryView:v8 == 1];
  v10 = [v11 parentInteraction];
  [v10 _willChangeNavigatorPlacement:v9];
}

- (id)_searchableView
{
  v2 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
  v3 = [v2 findSession];
  v4 = [v3 searchableResponderAsView];

  return v4;
}

- (BOOL)_monitorsView:(id)a3
{
  v4 = a3;
  v5 = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  v6 = [v5 isDescendantOfView:v4];

  return v6;
}

- (void)_monitoredView:(id)a3 willMoveFromSuperview:(id)a4 toSuperview:(id)a5
{
  v7 = a3;
  v8 = [(_UIFindNavigatorSceneComponent *)self _searchableView];
  v9 = [v8 isDescendantOfView:v7];

  if (!a5 && v9)
  {

    [(_UIFindNavigatorSceneComponent *)self dismissFindNavigatorEndingActiveSession:1];
  }
}

- (void)findNavigatorViewControllerViewDidChangeIntrinsicContentSize:(id)a3
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v4 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    v7 = [v4 remoteInputViewHost];

    [v7 updateInputViewsIfNecessary];
  }

  else
  {
    v7 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v7 setUpdateAssistantView:1];
    v5 = [(_UIFindNavigatorSceneComponent *)self findNavigatorViewController];
    v6 = [v5 findNavigatorView];
    [v6 _didChangeKeyplaneWithContext:v7];
  }
}

- (UIScene)_scene
{
  WeakRetained = objc_loadWeakRetained(&self->_scene);

  return WeakRetained;
}

@end