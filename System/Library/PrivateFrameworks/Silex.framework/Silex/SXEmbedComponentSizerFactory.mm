@interface SXEmbedComponentSizerFactory
- (SXEmbedComponentSizerFactory)initWithDOMObjectProvider:(id)provider embedDataProvider:(id)dataProvider;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXEmbedComponentSizerFactory

- (SXEmbedComponentSizerFactory)initWithDOMObjectProvider:(id)provider embedDataProvider:(id)dataProvider
{
  providerCopy = provider;
  dataProviderCopy = dataProvider;
  v12.receiver = self;
  v12.super_class = SXEmbedComponentSizerFactory;
  v9 = [(SXEmbedComponentSizerFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_DOMObjectProvider, provider);
    objc_storeStrong(&v10->_embedDataProvider, dataProvider);
  }

  return v10;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  v14 = [providerCopy componentStyleForComponent:componentCopy];
  v15 = [SXEmbedComponentSizer alloc];
  embedDataProvider = [(SXEmbedComponentSizerFactory *)self embedDataProvider];
  v17 = [(SXEmbedComponentSizer *)v15 initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v14 DOMObjectProvider:providerCopy layoutOptions:optionsCopy embedDataProvider:embedDataProvider];

  return v17;
}

@end