@interface SXDataTableComponentViewFactory
- (SXComponentController)componentController;
- (SXDataTableComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory imageViewFactory:(id)viewFactory componentActionHandler:(id)handler textComponentLayoutHosting:(id)hosting componentController:(id)self0 adIgnorableViewFactory:(id)self1 config:(id)self2;
- (SXTextComponentLayoutHosting)textComponentLayoutHosting;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXDataTableComponentViewFactory

- (SXDataTableComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory imageViewFactory:(id)viewFactory componentActionHandler:(id)handler textComponentLayoutHosting:(id)hosting componentController:(id)self0 adIgnorableViewFactory:(id)self1 config:(id)self2
{
  viewFactoryCopy = viewFactory;
  handlerCopy = handler;
  hostingCopy = hosting;
  controllerCopy = controller;
  ignorableViewFactoryCopy = ignorableViewFactory;
  configCopy = config;
  v28.receiver = self;
  v28.super_class = SXDataTableComponentViewFactory;
  v21 = [(SXComponentViewFactory *)&v28 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_imageViewFactory, viewFactory);
    objc_storeStrong(&v22->_componentActionHandler, handler);
    objc_storeWeak(&v22->_textComponentLayoutHosting, hostingCopy);
    objc_storeWeak(&v22->_componentController, controllerCopy);
    objc_storeStrong(&v22->_adIgnorableViewFactory, ignorableViewFactory);
    objc_storeStrong(&v22->_config, config);
  }

  return v22;
}

- (id)componentViewForComponent:(id)component
{
  v16 = [SXDataTableComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  imageViewFactory = [(SXDataTableComponentViewFactory *)self imageViewFactory];
  componentActionHandler = [(SXDataTableComponentViewFactory *)self componentActionHandler];
  textComponentLayoutHosting = [(SXDataTableComponentViewFactory *)self textComponentLayoutHosting];
  componentController = [(SXDataTableComponentViewFactory *)self componentController];
  adIgnorableViewFactory = [(SXDataTableComponentViewFactory *)self adIgnorableViewFactory];
  config = [(SXDataTableComponentViewFactory *)self config];
  v13 = [(SXDataTableComponentView *)v16 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory imageViewFactory:imageViewFactory componentActionHandler:componentActionHandler textComponentLayoutHosting:textComponentLayoutHosting componentController:componentController adIgnorableViewFactory:adIgnorableViewFactory config:config];

  return v13;
}

- (SXTextComponentLayoutHosting)textComponentLayoutHosting
{
  WeakRetained = objc_loadWeakRetained(&self->_textComponentLayoutHosting);

  return WeakRetained;
}

- (SXComponentController)componentController
{
  WeakRetained = objc_loadWeakRetained(&self->_componentController);

  return WeakRetained;
}

@end