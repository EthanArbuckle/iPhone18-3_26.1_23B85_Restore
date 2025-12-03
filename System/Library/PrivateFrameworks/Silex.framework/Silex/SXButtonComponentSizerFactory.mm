@interface SXButtonComponentSizerFactory
- (SXButtonComponentSizerFactory)initWithTextProvider:(id)provider textSourceFactory:(id)factory;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXButtonComponentSizerFactory

- (SXButtonComponentSizerFactory)initWithTextProvider:(id)provider textSourceFactory:(id)factory
{
  providerCopy = provider;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = SXButtonComponentSizerFactory;
  v9 = [(SXButtonComponentSizerFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_textProvider, provider);
    objc_storeStrong(&v10->_textSourceFactory, factory);
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
  v15 = [SXButtonComponentSizer alloc];
  textProvider = [(SXButtonComponentSizerFactory *)self textProvider];
  textComponentLayoutHosting = [(SXButtonComponentSizerFactory *)self textComponentLayoutHosting];
  textSourceFactory = [(SXButtonComponentSizerFactory *)self textSourceFactory];
  v19 = [(SXButtonComponentSizer *)v15 initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v14 DOMObjectProvider:providerCopy layoutOptions:optionsCopy textProvider:textProvider textComponentLayoutHosting:textComponentLayoutHosting textSourceFactory:textSourceFactory];

  return v19;
}

@end