@interface SXDebugComponentViewFactory
- (SXDebugComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory invalidator:(id)invalidator;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXDebugComponentViewFactory

- (SXDebugComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory invalidator:(id)invalidator
{
  invalidatorCopy = invalidator;
  v17.receiver = self;
  v17.super_class = SXDebugComponentViewFactory;
  v14 = [(SXComponentViewFactory *)&v17 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_invalidator, invalidator);
  }

  return v15;
}

- (id)componentViewForComponent:(id)component
{
  v4 = [SXDebugComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  invalidator = [(SXDebugComponentViewFactory *)self invalidator];
  v11 = [(SXDebugComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory invalidator:invalidator];

  return v11;
}

@end