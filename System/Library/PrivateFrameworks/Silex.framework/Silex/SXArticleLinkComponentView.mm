@interface SXArticleLinkComponentView
- (SXArticleLinkComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7 interactionHandlerManager:(id)a8 interactionHandlerFactory:(id)a9 URLActionFactory:(id)a10 articleURLFactory:(id)a11;
- (SXComponentInteractionHandler)interactionHandler;
- (void)loadComponent:(id)a3;
@end

@implementation SXArticleLinkComponentView

- (SXArticleLinkComponentView)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegate:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7 interactionHandlerManager:(id)a8 interactionHandlerFactory:(id)a9 URLActionFactory:(id)a10 articleURLFactory:(id)a11
{
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v21 = a11;
  v25.receiver = self;
  v25.super_class = SXArticleLinkComponentView;
  v18 = [(SXContainerComponentView *)&v25 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegate:a5 componentStyleRendererFactory:a6 mediaSharingPolicyProvider:a7];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_interactionHandlerManager, a8);
    objc_storeStrong(&v19->_interactionHandlerFactory, a9);
    objc_storeStrong(&v19->_URLActionFactory, a10);
    objc_storeStrong(&v19->_articleURLFactory, a11);
  }

  return v19;
}

- (void)loadComponent:(id)a3
{
  v15.receiver = self;
  v15.super_class = SXArticleLinkComponentView;
  v4 = a3;
  [(SXComponentView *)&v15 loadComponent:v4];
  v5 = [(SXArticleLinkComponentView *)self interactionHandlerManager:v15.receiver];
  v6 = [(SXArticleLinkComponentView *)self interactionHandler];
  [v5 removeInteractionHandler:v6 componentView:self];

  v7 = [(SXArticleLinkComponentView *)self articleURLFactory];
  v8 = [v4 articleIdentifier];

  v9 = [v7 createArticleURLWithIdentifier:v8];

  v10 = [(SXArticleLinkComponentView *)self URLActionFactory];
  v11 = [v10 actionForURL:v9];

  v12 = [(SXArticleLinkComponentView *)self interactionHandlerFactory];
  v13 = [v12 interactionHandlerForAction:v11];

  v14 = [(SXArticleLinkComponentView *)self interactionHandlerManager];
  [v14 addInteractionHandler:v13 componentView:self types:2];

  [(SXArticleLinkComponentView *)self setInteractionHandler:v13];
}

- (SXComponentInteractionHandler)interactionHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_interactionHandler);

  return WeakRetained;
}

@end