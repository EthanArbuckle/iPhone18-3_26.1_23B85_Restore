@interface _UIViewControllerTransition
+ (id)zoomWithSourceViewProvider:(id)provider;
- (UIViewController)_associatedViewController;
- (id)_apiTransition;
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setOptions:(id)options;
@end

@implementation _UIViewControllerTransition

+ (id)zoomWithSourceViewProvider:(id)provider
{
  providerCopy = provider;
  v4 = objc_opt_new();
  [v4 set_viewProvider:providerCopy];

  v5 = objc_opt_new();
  [v4 _setOptions:v5];

  return v4;
}

- (void)_setOptions:(id)options
{
  optionsCopy = options;
  options = self->_options;
  p_options = &self->_options;
  if (options != optionsCopy)
  {
    if (!optionsCopy)
    {
      optionsCopy = objc_opt_new();
    }

    obj = optionsCopy;
    objc_storeStrong(p_options, optionsCopy);
    optionsCopy = obj;
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
  _options = [(_UIViewControllerTransition *)self _options];
  dimmingColor = [_options dimmingColor];
  [v3 setDimmingColor:dimmingColor];

  _options2 = [(_UIViewControllerTransition *)self _options];
  dimmingVisualEffects = [_options2 dimmingVisualEffects];
  firstObject = [dimmingVisualEffects firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setDimmingVisualEffect:firstObject];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  _viewProvider = [(_UIViewControllerTransition *)self _viewProvider];
  [v4 set_viewProvider:_viewProvider];

  _options = [(_UIViewControllerTransition *)self _options];
  [v4 _setOptions:_options];

  _interactiveDismissShouldBeginHandler = [(_UIViewControllerTransition *)self _interactiveDismissShouldBeginHandler];
  [v4 set_interactiveDismissShouldBeginHandler:_interactiveDismissShouldBeginHandler];

  return v4;
}

- (UIViewController)_associatedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->__associatedViewController);

  return WeakRetained;
}

@end