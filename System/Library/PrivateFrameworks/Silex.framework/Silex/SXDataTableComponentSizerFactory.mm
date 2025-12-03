@interface SXDataTableComponentSizerFactory
- (SXDataTableComponentSizerFactory)initWithDOMObjectProvider:(id)provider textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory recordValueTransformerFactory:(id)transformerFactory;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXDataTableComponentSizerFactory

- (SXDataTableComponentSizerFactory)initWithDOMObjectProvider:(id)provider textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory recordValueTransformerFactory:(id)transformerFactory
{
  providerCopy = provider;
  hostingCopy = hosting;
  factoryCopy = factory;
  transformerFactoryCopy = transformerFactory;
  v18.receiver = self;
  v18.super_class = SXDataTableComponentSizerFactory;
  v15 = [(SXDataTableComponentSizerFactory *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DOMObjectProvider, provider);
    objc_storeStrong(&v16->_textComponentLayoutHosting, hosting);
    objc_storeStrong(&v16->_textSourceFactory, factory);
    objc_storeStrong(&v16->_recordValueTransformerFactory, transformerFactory);
  }

  return v16;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  v14 = [providerCopy componentStyleForComponent:componentCopy];
  v15 = [SXDataTableComponentSizer alloc];
  textComponentLayoutHosting = [(SXDataTableComponentSizerFactory *)self textComponentLayoutHosting];
  textSourceFactory = [(SXDataTableComponentSizerFactory *)self textSourceFactory];
  recordValueTransformerFactory = [(SXDataTableComponentSizerFactory *)self recordValueTransformerFactory];
  v19 = [(SXDataTableComponentSizer *)v15 initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v14 DOMObjectProvider:providerCopy layoutOptions:optionsCopy textComponentLayoutHosting:textComponentLayoutHosting textSourceFactory:textSourceFactory recordValueTransformerFactory:recordValueTransformerFactory];

  return v19;
}

@end