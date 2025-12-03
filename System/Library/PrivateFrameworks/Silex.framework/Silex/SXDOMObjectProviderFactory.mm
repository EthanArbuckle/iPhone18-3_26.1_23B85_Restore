@interface SXDOMObjectProviderFactory
- (SXDOMObjectProviderFactory)initWithDocumentControllerProvider:(id)provider componentStyleMerger:(id)merger componentTextStyleMerger:(id)styleMerger;
- (id)createDOMObjectProvider;
@end

@implementation SXDOMObjectProviderFactory

- (SXDOMObjectProviderFactory)initWithDocumentControllerProvider:(id)provider componentStyleMerger:(id)merger componentTextStyleMerger:(id)styleMerger
{
  providerCopy = provider;
  mergerCopy = merger;
  styleMergerCopy = styleMerger;
  v15.receiver = self;
  v15.super_class = SXDOMObjectProviderFactory;
  v12 = [(SXDOMObjectProviderFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentControllerProvider, provider);
    objc_storeStrong(&v13->_componentStyleMerger, merger);
    objc_storeStrong(&v13->_componentTextStyleMerger, styleMerger);
  }

  return v13;
}

- (id)createDOMObjectProvider
{
  v3 = [SXDOMObjectProvider alloc];
  documentControllerProvider = [(SXDOMObjectProviderFactory *)self documentControllerProvider];
  componentStyleMerger = [(SXDOMObjectProviderFactory *)self componentStyleMerger];
  componentTextStyleMerger = [(SXDOMObjectProviderFactory *)self componentTextStyleMerger];
  v7 = [(SXDOMObjectProvider *)v3 initWithDocumentControllerProvider:documentControllerProvider componentStyleMerger:componentStyleMerger componentTextStyleMerger:componentTextStyleMerger];

  return v7;
}

@end