@interface SXArticleLinkComponentViewFactory
- (SXArticleLinkComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider interactionHandlerManager:(id)manager interactionHandlerFactory:(id)handlerFactory URLActionFactory:(id)self0 articleURLFactory:(id)self1;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXArticleLinkComponentViewFactory

- (SXArticleLinkComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider interactionHandlerManager:(id)manager interactionHandlerFactory:(id)handlerFactory URLActionFactory:(id)self0 articleURLFactory:(id)self1
{
  managerCopy = manager;
  handlerFactoryCopy = handlerFactory;
  actionFactoryCopy = actionFactory;
  lFactoryCopy = lFactory;
  v25.receiver = self;
  v25.super_class = SXArticleLinkComponentViewFactory;
  v18 = [(SXContainerComponentViewFactory *)&v25 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory mediaSharingPolicyProvider:policyProvider];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_interactionHandlerManager, manager);
    objc_storeStrong(&v19->_interactionHandlerFactory, handlerFactory);
    objc_storeStrong(&v19->_URLActionFactory, actionFactory);
    objc_storeStrong(&v19->_articleURLFactory, lFactory);
  }

  return v19;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXArticleLinkComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  mediaSharingPolicyProvider = [(SXContainerComponentViewFactory *)self mediaSharingPolicyProvider];
  interactionHandlerManager = [(SXArticleLinkComponentViewFactory *)self interactionHandlerManager];
  interactionHandlerFactory = [(SXArticleLinkComponentViewFactory *)self interactionHandlerFactory];
  uRLActionFactory = [(SXArticleLinkComponentViewFactory *)self URLActionFactory];
  articleURLFactory = [(SXArticleLinkComponentViewFactory *)self articleURLFactory];
  v13 = [(SXArticleLinkComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory mediaSharingPolicyProvider:mediaSharingPolicyProvider interactionHandlerManager:interactionHandlerManager interactionHandlerFactory:interactionHandlerFactory URLActionFactory:uRLActionFactory articleURLFactory:articleURLFactory];

  return v13;
}

@end