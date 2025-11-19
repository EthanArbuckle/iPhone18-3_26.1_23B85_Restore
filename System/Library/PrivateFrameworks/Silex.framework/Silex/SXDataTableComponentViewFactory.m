@interface SXDataTableComponentViewFactory
- (SXComponentController)componentController;
- (SXDataTableComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 imageViewFactory:(id)a7 componentActionHandler:(id)a8 textComponentLayoutHosting:(id)a9 componentController:(id)a10 adIgnorableViewFactory:(id)a11 config:(id)a12;
- (SXTextComponentLayoutHosting)textComponentLayoutHosting;
- (id)componentViewForComponent:(id)a3;
@end

@implementation SXDataTableComponentViewFactory

- (SXDataTableComponentViewFactory)initWithDOMObjectProvider:(id)a3 viewport:(id)a4 presentationDelegateProvider:(id)a5 componentStyleRendererFactory:(id)a6 imageViewFactory:(id)a7 componentActionHandler:(id)a8 textComponentLayoutHosting:(id)a9 componentController:(id)a10 adIgnorableViewFactory:(id)a11 config:(id)a12
{
  v27 = a7;
  v26 = a8;
  v18 = a9;
  v19 = a10;
  v25 = a11;
  v20 = a12;
  v28.receiver = self;
  v28.super_class = SXDataTableComponentViewFactory;
  v21 = [(SXComponentViewFactory *)&v28 initWithDOMObjectProvider:a3 viewport:a4 presentationDelegateProvider:a5 componentStyleRendererFactory:a6];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_imageViewFactory, a7);
    objc_storeStrong(&v22->_componentActionHandler, a8);
    objc_storeWeak(&v22->_textComponentLayoutHosting, v18);
    objc_storeWeak(&v22->_componentController, v19);
    objc_storeStrong(&v22->_adIgnorableViewFactory, a11);
    objc_storeStrong(&v22->_config, a12);
  }

  return v22;
}

- (id)componentViewForComponent:(id)a3
{
  v16 = [SXDataTableComponentView alloc];
  v15 = [(SXComponentViewFactory *)self DOMObjectProvider];
  v4 = [(SXComponentViewFactory *)self viewport];
  v17 = [(SXComponentViewFactory *)self presentationDelegateProvider];
  v5 = [v17 presentationDelegate];
  v6 = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  v7 = [(SXDataTableComponentViewFactory *)self imageViewFactory];
  v8 = [(SXDataTableComponentViewFactory *)self componentActionHandler];
  v9 = [(SXDataTableComponentViewFactory *)self textComponentLayoutHosting];
  v10 = [(SXDataTableComponentViewFactory *)self componentController];
  v11 = [(SXDataTableComponentViewFactory *)self adIgnorableViewFactory];
  v12 = [(SXDataTableComponentViewFactory *)self config];
  v13 = [(SXDataTableComponentView *)v16 initWithDOMObjectProvider:v15 viewport:v4 presentationDelegate:v5 componentStyleRendererFactory:v6 imageViewFactory:v7 componentActionHandler:v8 textComponentLayoutHosting:v9 componentController:v10 adIgnorableViewFactory:v11 config:v12];

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