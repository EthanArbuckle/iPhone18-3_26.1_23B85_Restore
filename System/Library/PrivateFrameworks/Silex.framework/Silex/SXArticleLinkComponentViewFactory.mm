@interface SXArticleLinkComponentViewFactory
- (SXArticleLinkComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7 interactionHandlerManager:(id)a8 interactionHandlerFactory:(id)a9 URLActionFactory:(id)a10 articleURLFactory:(id)a11;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXArticleLinkComponentViewFactory

- (SXArticleLinkComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 mediaSharingPolicyProvider:(id)a7 interactionHandlerManager:(id)a8 interactionHandlerFactory:(id)a9 URLActionFactory:(id)a10 articleURLFactory:(id)a11
{
  v24 = a8;
  v23 = a9;
  v22 = a10;
  v21 = a11;
  v25.receiver = self;
  v25.super_class = SXArticleLinkComponentViewFactory;
  v18 = [(SXContainerComponentViewFactory *)&v25 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6 mediaSharingPolicyProvider:a7];
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

- (id)componentViewForComponent:(id)a3
{
  v16 = [SXArticleLinkComponentView alloc];
  v15 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v4 = [(SXComponentViewFactory *)self viewport];
  v5 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v6 = [v5 presentationDelegate];
  v7 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v8 = [(SXContainerComponentViewFactory *)self mediaSharingPolicyProvider];
  v9 = [(SXArticleLinkComponentViewFactory *)self interactionHandlerManager];
  v10 = [(SXArticleLinkComponentViewFactory *)self interactionHandlerFactory];
  v11 = [(SXArticleLinkComponentViewFactory *)self URLActionFactory];
  v12 = [(SXArticleLinkComponentViewFactory *)self articleURLFactory];
  v13 = [(SXArticleLinkComponentView *)v16 initWithDOMObjectProvider:v15 viewport:v4 presentationDelegate:v6 componentStyleRendererFactory:v7 mediaSharingPolicyProvider:v8 interactionHandlerManager:v9 interactionHandlerFactory:v10 URLActionFactory:v11 articleURLFactory:v12];

  return v13;
}

@end