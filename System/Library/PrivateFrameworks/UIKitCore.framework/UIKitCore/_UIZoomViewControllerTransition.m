@interface _UIZoomViewControllerTransition
+ (id)_zoomWithOptions:(id)a3 sourceItemProvider:(id)a4;
+ (id)zoomWithOptions:(id)a3 sourceViewProvider:(id)a4;
- (BOOL)_isSupportedGivenTraits:(id)a3;
- (UIViewController)_associatedViewController;
- (id)_transitionControllerForViewController:(id)a3 traits:(id)a4 isAppearing:(BOOL)a5;
- (void)_didMoveToParentViewController:(id)a3;
- (void)_wasAssignedToViewController:(id)a3;
@end

@implementation _UIZoomViewControllerTransition

- (UIViewController)_associatedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__associatedViewController);

  return WeakRetained;
}

+ (id)zoomWithOptions:(id)a3 sourceViewProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] _init];
  [v8 set_viewProvider:v7];

  if (v6)
  {
    [v8 set_options:v6];
  }

  else
  {
    v9 = objc_opt_new();
    [v8 set_options:v9];
  }

  return v8;
}

+ (id)_zoomWithOptions:(id)a3 sourceItemProvider:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] _init];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71___UIZoomViewControllerTransition__zoomWithOptions_sourceItemProvider___block_invoke;
  v12[3] = &unk_1E710D8D0;
  v13 = v7;
  v9 = v7;
  [v8 set_viewProvider:v12];
  if (v6)
  {
    [v8 set_options:v6];
  }

  else
  {
    v10 = objc_opt_new();
    [v8 set_options:v10];
  }

  return v8;
}

- (id)_transitionControllerForViewController:(id)a3 traits:(id)a4 isAppearing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  if (!-[_UIZoomViewControllerTransition _isSupportedGivenTraits:](self, "_isSupportedGivenTraits:", a4) || ([v8 _overrideUseCustomPresentation] & 1) != 0 || (objc_msgSend(v8, "_overrideTransitioningDelegate"), v9 = objc_claimAutoreleasedReturnValue(), v9, v9))
  {
    v10 = 0;
  }

  else
  {
    v10 = [v8 _zoomTransitionController];
    [v10 setIsZoomingIn:v5];
  }

  return v10;
}

- (void)_wasAssignedToViewController:(id)a3
{
  v18 = a3;
  v4 = [(_UIZoomViewControllerTransition *)self _associatedViewController];

  if (v4)
  {
    v5 = [(_UIZoomViewControllerTransition *)self _associatedViewController];
    v6 = [v5 _zoomTransitionController];

    if (v6)
    {
      v7 = [v6 dismissInteraction];
      v8 = [v7 view];
      v9 = [v6 dismissInteraction];
      [v8 removeInteraction:v9];
    }

    [(_UIZoomViewControllerTransition *)self set_associatedViewController:0];
  }

  v10 = v18;
  if (v18)
  {
    [(_UIZoomViewControllerTransition *)self set_associatedViewController:v18];
    v11 = [v18 _zoomTransitionController];
    v12 = [v11 dismissInteraction];
    [v12 setDelegate:v11];

    v13 = [v18 traitCollection];
    v14 = [(_UIZoomViewControllerTransition *)self _isSupportedGivenTraits:v13];
    v15 = [v11 dismissInteraction];
    [v15 setIsEnabled:v14];

    [v11 setClientTransition:self];
    [v11 setOwningViewController:v18];
    v16 = [v18 view];
    v17 = [v11 dismissInteraction];
    [v16 addInteraction:v17];

    v10 = v18;
  }
}

- (void)_didMoveToParentViewController:(id)a3
{
  v4 = a3;
  v6 = [(_UIZoomViewControllerTransition *)self _associatedViewController];
  v5 = [v6 _zoomTransitionController];
  [v5 didMoveToParent:v4];
}

- (BOOL)_isSupportedGivenTraits:(id)a3
{
  v3 = a3;
  if (+[UIView _uip_transitionEnabled])
  {
    v4 = [v3 userInterfaceIdiom] == 1 || objc_msgSend(v3, "userInterfaceIdiom") == 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end