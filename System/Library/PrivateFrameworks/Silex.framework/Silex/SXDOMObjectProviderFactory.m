@interface SXDOMObjectProviderFactory
- (SXDOMObjectProviderFactory)initWithDocumentControllerProvider:(id)a3 componentStyleMerger:(id)a4 componentTextStyleMerger:(id)a5;
- (id)createDOMObjectProvider;
@end

@implementation SXDOMObjectProviderFactory

- (SXDOMObjectProviderFactory)initWithDocumentControllerProvider:(id)a3 componentStyleMerger:(id)a4 componentTextStyleMerger:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXDOMObjectProviderFactory;
  v12 = [(SXDOMObjectProviderFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_documentControllerProvider, a3);
    objc_storeStrong(&v13->_componentStyleMerger, a4);
    objc_storeStrong(&v13->_componentTextStyleMerger, a5);
  }

  return v13;
}

- (id)createDOMObjectProvider
{
  v3 = [SXDOMObjectProvider alloc];
  v4 = [(SXDOMObjectProviderFactory *)self documentControllerProvider];
  v5 = [(SXDOMObjectProviderFactory *)self componentStyleMerger];
  v6 = [(SXDOMObjectProviderFactory *)self componentTextStyleMerger];
  v7 = [(SXDOMObjectProvider *)v3 initWithDocumentControllerProvider:v4 componentStyleMerger:v5 componentTextStyleMerger:v6];

  return v7;
}

@end