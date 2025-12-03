@interface SXDOMFactory
- (SXDOMFactory)initWithDocumentProvider:(id)provider;
- (id)createDOM;
@end

@implementation SXDOMFactory

- (SXDOMFactory)initWithDocumentProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SXDOMFactory;
  v6 = [(SXDOMFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_documentProvider, provider);
  }

  return v7;
}

- (id)createDOM
{
  documentProvider = [(SXDOMFactory *)self documentProvider];
  document = [documentProvider document];

  v4 = [SXComponents alloc];
  components = [document components];
  nSArray = [components NSArray];
  v24 = [(SXComponents *)v4 initWithArray:nSArray];

  v23 = objc_alloc_init(SXDOMAnalysis);
  v18 = [SXDOM alloc];
  componentLayouts = [document componentLayouts];
  nSDictionary = [componentLayouts NSDictionary];
  componentStyles = [document componentStyles];
  nSDictionary2 = [componentStyles NSDictionary];
  componentTextStyles = [document componentTextStyles];
  nSDictionary3 = [componentTextStyles NSDictionary];
  textStyles = [document textStyles];
  nSDictionary4 = [textStyles NSDictionary];
  resources = [document resources];
  nSDictionary5 = [resources NSDictionary];
  autoplacement = [document autoplacement];
  documentStyle = [document documentStyle];
  metadata = [document metadata];
  v19 = [(SXDOM *)v18 initWithComponents:v24 componentLayouts:nSDictionary componentStyles:nSDictionary2 componentTextStyles:nSDictionary3 textStyles:nSDictionary4 resources:nSDictionary5 autoPlacement:autoplacement documentStyle:documentStyle analysis:v23 metadata:metadata];

  return v19;
}

@end