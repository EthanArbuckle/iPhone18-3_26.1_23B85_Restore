@interface SXButtonComponentViewFactory
- (SXButtonComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 interactionHandlerFactory:(id)a7 interactionHandlerManager:(id)a8;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXButtonComponentViewFactory

- (SXButtonComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 interactionHandlerFactory:(id)a7 interactionHandlerManager:(id)a8
{
  v15 = a7;
  v16 = a8;
  v20.receiver = self;
  v20.super_class = SXButtonComponentViewFactory;
  v17 = [(SXComponentViewFactory *)&v20 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_interactionHandlerFactory, a7);
    objc_storeStrong(&v18->_interactionHandlerManager, a8);
  }

  return v18;
}

- (id)componentViewForComponent:(id)a3
{
  v4 = a3;
  v5 = [SXButtonComponentView alloc];
  v6 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v7 = [(SXComponentViewFactory *)self viewport];
  v8 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v9 = [v8 presentationDelegate];
  v10 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v11 = [(SXButtonComponentView *)v5 initWithDOMObjectProvider:v6 viewport:v7 presentationDelegate:v9 componentStyleRendererFactory:v10];

  v12 = [SXButtonComponentActionProvider alloc];
  v13 = [v4 action];

  v14 = [(SXButtonComponentActionProvider *)v12 initWithAction:v13];
  v15 = [(SXButtonComponentViewFactory *)self interactionHandlerFactory];
  v16 = [(SXButtonComponentActionProvider *)v14 action];
  v17 = [v15 interactionHandlerForAction:v16];

  v18 = [(SXButtonComponentViewFactory *)self interactionHandlerManager];
  [v18 addInteractionHandler:v17 componentView:v11 types:2];

  return v11;
}

@end