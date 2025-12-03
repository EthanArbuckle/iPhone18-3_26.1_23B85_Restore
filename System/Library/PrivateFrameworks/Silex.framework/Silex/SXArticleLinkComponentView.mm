@interface SXArticleLinkComponentView
- (SXArticleLinkComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider interactionHandlerManager:(id)manager interactionHandlerFactory:(id)handlerFactory URLActionFactory:(id)self0 articleURLFactory:(id)self1;
- (SXComponentInteractionHandler)interactionHandler;
- (void)loadComponent:(id)component;
@end

@implementation SXArticleLinkComponentView

- (SXArticleLinkComponentView)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegate:(id)delegate componentStyleRendererFactory:(id)factory mediaSharingPolicyProvider:(id)policyProvider interactionHandlerManager:(id)manager interactionHandlerFactory:(id)handlerFactory URLActionFactory:(id)self0 articleURLFactory:(id)self1
{
  managerCopy = manager;
  handlerFactoryCopy = handlerFactory;
  actionFactoryCopy = actionFactory;
  lFactoryCopy = lFactory;
  v25.receiver = self;
  v25.super_class = SXArticleLinkComponentView;
  v18 = [(SXContainerComponentView *)&v25 initWithDOMObjectProvider:provider viewport:viewport presentationDelegate:delegate componentStyleRendererFactory:factory mediaSharingPolicyProvider:policyProvider];
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

- (void)loadComponent:(id)component
{
  v15.receiver = self;
  v15.super_class = SXArticleLinkComponentView;
  componentCopy = component;
  [(SXComponentView *)&v15 loadComponent:componentCopy];
  v5 = [(SXArticleLinkComponentView *)self interactionHandlerManager:v15.receiver];
  interactionHandler = [(SXArticleLinkComponentView *)self interactionHandler];
  [v5 removeInteractionHandler:interactionHandler componentView:self];

  articleURLFactory = [(SXArticleLinkComponentView *)self articleURLFactory];
  articleIdentifier = [componentCopy articleIdentifier];

  v9 = [articleURLFactory createArticleURLWithIdentifier:articleIdentifier];

  uRLActionFactory = [(SXArticleLinkComponentView *)self URLActionFactory];
  v11 = [uRLActionFactory actionForURL:v9];

  interactionHandlerFactory = [(SXArticleLinkComponentView *)self interactionHandlerFactory];
  v13 = [interactionHandlerFactory interactionHandlerForAction:v11];

  interactionHandlerManager = [(SXArticleLinkComponentView *)self interactionHandlerManager];
  [interactionHandlerManager addInteractionHandler:v13 componentView:self types:2];

  [(SXArticleLinkComponentView *)self setInteractionHandler:v13];
}

- (SXComponentInteractionHandler)interactionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionHandler);

  return WeakRetained;
}

@end