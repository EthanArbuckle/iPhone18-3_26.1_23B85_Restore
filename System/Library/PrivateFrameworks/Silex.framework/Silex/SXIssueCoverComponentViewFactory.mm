@interface SXIssueCoverComponentViewFactory
- (SXIssueCoverComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory viewProvider:(id)viewProvider;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXIssueCoverComponentViewFactory

- (SXIssueCoverComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory viewProvider:(id)viewProvider
{
  viewProviderCopy = viewProvider;
  v17.receiver = self;
  v17.super_class = SXIssueCoverComponentViewFactory;
  v14 = [(SXComponentViewFactory *)&v17 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_viewProvider, viewProvider);
  }

  return v15;
}

- (id)componentViewForComponent:(id)component
{
  v4 = [SXIssueCoverComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewProvider = [(SXIssueCoverComponentViewFactory *)self viewProvider];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  viewProvider2 = [(SXIssueCoverComponentViewFactory *)self viewProvider];
  v11 = [(SXIssueCoverComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewProvider presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory viewProvider:viewProvider2];

  return v11;
}

@end