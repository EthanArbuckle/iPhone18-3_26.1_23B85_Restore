@interface SXContainerComponentViewFactory
- (SXContainerComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXContainerComponentViewFactory

- (SXContainerComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider
{
  policyProviderCopy = policyProvider;
  v17.receiver = self;
  v17.super_class = SXContainerComponentViewFactory;
  v14 = [(SXComponentViewFactory *)&v17 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_mediaSharingPolicyProvider, policyProvider);
  }

  return v15;
}

- (id)componentViewForComponent:(id)component
{
  v4 = [SXContainerComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  mediaSharingPolicyProvider = [(SXContainerComponentViewFactory *)self mediaSharingPolicyProvider];
  v11 = [(SXContainerComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory mediaSharingPolicyProvider:mediaSharingPolicyProvider];

  return v11;
}

@end