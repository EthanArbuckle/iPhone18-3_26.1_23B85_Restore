@interface _UIViewControllerTransition
+ (id)zoomWithSourceViewProvider:(id)a3;
- (UIViewController)_associatedViewController;
- (id)_apiTransition;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setOptions:(id)a3;
@end

@implementation _UIViewControllerTransition

+ (id)zoomWithSourceViewProvider:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 set_viewProvider:v3];

  v5 = objc_opt_new();
  [v4 _setOptions:v5];

  return v4;
}

- (void)_setOptions:(id)a3
{
  v4 = a3;
  options = self->_options;
  p_options = &self->_options;
  if (options != v4)
  {
    if (!v4)
    {
      v4 = objc_opt_new();
    }

    obj = v4;
    objc_storeStrong(p_options, v4);
    v4 = obj;
  }
}

- (id)_apiTransition
{
  objc_initWeak(&location, self);
  v3 = objc_opt_new();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __45___UIViewControllerTransition__apiTransition__block_invoke;
  v15[3] = &unk_1E712CD88;
  objc_copyWeak(&v16, &location);
  [v3 setInteractiveDismissShouldBegin:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __45___UIViewControllerTransition__apiTransition__block_invoke_2;
  v13[3] = &unk_1E712CDB0;
  objc_copyWeak(&v14, &location);
  [v3 setAlignmentRectProvider:v13];
  v4 = [(_UIViewControllerTransition *)self _options];
  v5 = [v4 dimmingColor];
  [v3 setDimmingColor:v5];

  v6 = [(_UIViewControllerTransition *)self _options];
  v7 = [v6 dimmingVisualEffects];
  v8 = [v7 firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setDimmingVisualEffect:v8];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45___UIViewControllerTransition__apiTransition__block_invoke_3;
  v11[3] = &unk_1E7101740;
  objc_copyWeak(&v12, &location);
  v9 = [UIViewControllerTransition zoomWithOptions:v3 sourceViewProvider:v11];
  objc_destroyWeak(&v12);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&v16);

  objc_destroyWeak(&location);

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(_UIViewControllerTransition *)self _viewProvider];
  [v4 set_viewProvider:v5];

  v6 = [(_UIViewControllerTransition *)self _options];
  [v4 _setOptions:v6];

  v7 = [(_UIViewControllerTransition *)self _interactiveDismissShouldBeginHandler];
  [v4 set_interactiveDismissShouldBeginHandler:v7];

  return v4;
}

- (UIViewController)_associatedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__associatedViewController);

  return WeakRetained;
}

@end