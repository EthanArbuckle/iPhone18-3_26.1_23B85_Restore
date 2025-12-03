@interface SXTextComponentSizerFactory
- (SXTextComponentSizerFactory)initWithDOMObjectProvider:(id)provider textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXTextComponentSizerFactory

- (SXTextComponentSizerFactory)initWithDOMObjectProvider:(id)provider textComponentLayoutHosting:(id)hosting textSourceFactory:(id)factory
{
  providerCopy = provider;
  hostingCopy = hosting;
  factoryCopy = factory;
  v15.receiver = self;
  v15.super_class = SXTextComponentSizerFactory;
  v12 = [(SXTextComponentSizerFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_DOMObjectProvider, provider);
    objc_storeStrong(&v13->_textComponentLayoutHosting, hosting);
    objc_storeStrong(&v13->_textSourceFactory, factory);
  }

  return v13;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  v14 = [providerCopy componentStyleForComponent:componentCopy];
  v15 = [SXTextComponentSizer alloc];
  textComponentLayoutHosting = [(SXTextComponentSizerFactory *)self textComponentLayoutHosting];
  textSourceFactory = [(SXTextComponentSizerFactory *)self textSourceFactory];
  v18 = [(SXTextComponentSizer *)v15 initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v14 DOMObjectProvider:providerCopy layoutOptions:optionsCopy textComponentLayoutHosting:textComponentLayoutHosting textSourceFactory:textSourceFactory];

  return v18;
}

@end