@interface SXQuickLookComponentViewFactory
- (SXQuickLookComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory fileProvider:(id)fileProvider quickLookModule:(id)module;
- (id)componentViewForComponent:(id)component;
@end

@implementation SXQuickLookComponentViewFactory

- (SXQuickLookComponentViewFactory)initWithDOMObjectProvider:(id)provider viewport:(id)viewport presentationDelegateProvider:(id)delegateProvider componentStyleRendererFactory:(id)factory fileProvider:(id)fileProvider quickLookModule:(id)module
{
  fileProviderCopy = fileProvider;
  moduleCopy = module;
  v20.receiver = self;
  v20.super_class = SXQuickLookComponentViewFactory;
  v17 = [(SXComponentViewFactory *)&v20 initWithDOMObjectProvider:provider viewport:viewport presentationDelegateProvider:delegateProvider componentStyleRendererFactory:factory];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_quickLookModule, module);
    objc_storeStrong(&v18->_fileProvider, fileProvider);
  }

  return v18;
}

- (id)componentViewForComponent:(id)component
{
  v4 = [SXQuickLookComponentView alloc];
  dOMObjectProvider = [(SXComponentViewFactory *)self DOMObjectProvider];
  viewport = [(SXComponentViewFactory *)self viewport];
  presentationDelegateProvider = [(SXComponentViewFactory *)self presentationDelegateProvider];
  presentationDelegate = [presentationDelegateProvider presentationDelegate];
  componentStyleRendererFactory = [(SXComponentViewFactory *)self componentStyleRendererFactory];
  fileProvider = [(SXQuickLookComponentViewFactory *)self fileProvider];
  quickLookModule = [(SXQuickLookComponentViewFactory *)self quickLookModule];
  v12 = [(SXQuickLookComponentView *)v4 initWithDOMObjectProvider:dOMObjectProvider viewport:viewport presentationDelegate:presentationDelegate componentStyleRendererFactory:componentStyleRendererFactory fileProvider:fileProvider quickLookModule:quickLookModule];

  return v12;
}

@end