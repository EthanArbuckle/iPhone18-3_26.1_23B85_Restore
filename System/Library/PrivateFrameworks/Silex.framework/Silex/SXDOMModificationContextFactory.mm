@interface SXDOMModificationContextFactory
- (SXDOMModificationContextFactory)initWithDocumentProvider:(id)provider;
- (id)createModificationContextWithLayoutOptions:(id)options;
@end

@implementation SXDOMModificationContextFactory

- (SXDOMModificationContextFactory)initWithDocumentProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXDOMModificationContextFactory;
  v6 = [(SXDOMModificationContextFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProvider, provider);
  }

  return v7;
}

- (id)createModificationContextWithLayoutOptions:(id)options
{
  optionsCopy = options;
  v5 = [SXDOMModificationContext alloc];
  documentProvider = [(SXDOMModificationContextFactory *)self documentProvider];
  document = [documentProvider document];
  specVersion = [document specVersion];
  documentProvider2 = [(SXDOMModificationContextFactory *)self documentProvider];
  document2 = [documentProvider2 document];
  metadata = [document2 metadata];
  experiment = [metadata experiment];
  v13 = [(SXDOMModificationContext *)v5 initWithLayoutOptions:optionsCopy specVersion:specVersion experiment:experiment];

  return v13;
}

@end