@interface SXButtonComponentViewFactory
- (SXButtonComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory interactionHandlerFactory:(id)handlerFactory interactionHandlerManager:(id)manager;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXButtonComponentViewFactory

- (SXButtonComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory interactionHandlerFactory:(id)handlerFactory interactionHandlerManager:(id)manager
{
  handlerFactoryCopy = handlerFactory;
  managerCopy = manager;
  v20.receiver = self;
  v20.super_class = SXButtonComponentViewFactory;
  v17 = [(SXComponentViewFactory *)&v20 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_interactionHandlerFactory, handlerFactory);
    objc_storeStrong(&v18->_interactionHandlerManager, manager);
  }

  return v18;
}

- (id)componentViewForComponent:(id)component
{
  componentCopy = component;
  v5 = [SXButtonComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v11 = [(SXButtonComponentView *)v5 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory];

  v12 = [SXButtonComponentActionProvider alloc];
  action = [componentCopy action];

  v14 = [(SXButtonComponentActionProvider *)v12 initWithAction:action];
  interactionHandlerFactory = [(SXButtonComponentViewFactory *)self interactionHandlerFactory];
  action2 = [(SXButtonComponentActionProvider *)v14 action];
  v17 = [interactionHandlerFactory interactionHandlerForAction:action2];

  interactionHandlerManager = [(SXButtonComponentViewFactory *)self interactionHandlerManager];
  [interactionHandlerManager addInteractionHandler:v17 componentView:v11 types:2];

  return v11;
}

@end