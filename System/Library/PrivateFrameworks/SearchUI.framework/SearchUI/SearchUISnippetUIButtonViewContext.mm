@interface SearchUISnippetUIButtonViewContext
- (BOOL)deviceIsAuthenticated;
- (UIView)sourceView;
@end

@implementation SearchUISnippetUIButtonViewContext

- (BOOL)deviceIsAuthenticated
{
  sourceView = [(SearchUISnippetUIButtonViewContext *)self sourceView];
  v3 = [SearchUIUtilities deviceIsAuthenticatedForView:sourceView];

  return v3;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end