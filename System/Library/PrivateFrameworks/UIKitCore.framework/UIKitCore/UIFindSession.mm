@interface UIFindSession
- (UIFindInteraction)parentInteraction;
- (UIResponder)divergentResponder;
- (UIResponder)searchableResponder;
- (UITextSearchOptions)configuredSearchOptions;
- (UIView)searchableResponderAsView;
@end

@implementation UIFindSession

- (UITextSearchOptions)configuredSearchOptions
{
  configuredSearchOptions = self->_configuredSearchOptions;
  if (!configuredSearchOptions)
  {
    v4 = +[UITextSearchOptions defaultSearchOptions];
    v5 = self->_configuredSearchOptions;
    self->_configuredSearchOptions = v4;

    configuredSearchOptions = self->_configuredSearchOptions;
  }

  return configuredSearchOptions;
}

- (UIView)searchableResponderAsView
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableResponder);
  v4 = [WeakRetained __isKindOfUIView];

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_searchableResponder);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIResponder)divergentResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_divergentResponderForSession);
  if (!WeakRetained || (v4 = WeakRetained, v5 = objc_loadWeakRetained(&self->_divergentResponderForSession), [v5 _window], v6 = objc_claimAutoreleasedReturnValue(), v6, v5, v4, !v6))
  {
    v7 = [(UIFindSession *)self searchableResponder];
    v8 = [v7 _window];
    v9 = [v8 _deepestActionResponder];
    objc_storeWeak(&self->_divergentResponderForSession, v9);
  }

  v10 = objc_loadWeakRetained(&self->_divergentResponderForSession);

  return v10;
}

- (UIFindInteraction)parentInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_parentInteraction);

  return WeakRetained;
}

- (UIResponder)searchableResponder
{
  WeakRetained = objc_loadWeakRetained(&self->_searchableResponder);

  return WeakRetained;
}

@end