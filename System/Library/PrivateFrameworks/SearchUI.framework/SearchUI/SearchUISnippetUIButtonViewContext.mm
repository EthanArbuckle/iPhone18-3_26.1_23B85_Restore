@interface SearchUISnippetUIButtonViewContext
- (BOOL)deviceIsAuthenticated;
- (UIView)sourceView;
@end

@implementation SearchUISnippetUIButtonViewContext

- (BOOL)deviceIsAuthenticated
{
  v2 = [(SearchUISnippetUIButtonViewContext *)self sourceView];
  v3 = [SearchUIUtilities deviceIsAuthenticatedForView:v2];

  return v3;
}

- (UIView)sourceView
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceView);

  return WeakRetained;
}

@end