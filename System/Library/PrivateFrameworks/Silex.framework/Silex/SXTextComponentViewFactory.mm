@interface SXTextComponentViewFactory
- (SXTangierController)tangierController;
- (SXTextComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory tangierController:(id)controller;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXTextComponentViewFactory

- (SXTextComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory tangierController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = SXTextComponentViewFactory;
  v13 = [(SXComponentViewFactory *)&v16 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_tangierController, controllerCopy);
  }

  return v14;
}

- (id)componentViewForComponent:(id)component
{
  v4 = [SXTextComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  tangierController = [(SXTextComponentViewFactory *)self tangierController];
  v11 = [(SXTextComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory tangierController:tangierController];

  return v11;
}

- (SXTangierController)tangierController
{
  WeakRetained = objc_loadWeakRetained(&self->_tangierController);

  return WeakRetained;
}

@end