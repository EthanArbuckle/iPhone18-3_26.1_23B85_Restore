@interface SXIssueCoverComponentSizerFactory
- (SXIssueCoverComponentSizerFactory)initWithLayoutAttributesFactory:(id)factory;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
@end

@implementation SXIssueCoverComponentSizerFactory

- (SXIssueCoverComponentSizerFactory)initWithLayoutAttributesFactory:(id)factory
{
  factoryCopy = factory;
  v9.receiver = self;
  v9.super_class = SXIssueCoverComponentSizerFactory;
  v6 = [(SXIssueCoverComponentSizerFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_layoutOptionsFactory, factory);
  }

  return v7;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  v14 = [providerCopy componentStyleForComponent:componentCopy];
  v15 = [SXIssueCoverComponentSizer alloc];
  layoutOptionsFactory = [(SXIssueCoverComponentSizerFactory *)self layoutOptionsFactory];
  v17 = [(SXIssueCoverComponentSizer *)v15 initWithComponent:componentCopy componentLayout:layoutCopy componentStyle:v14 DOMObjectProvider:providerCopy layoutOptions:optionsCopy layoutOptionsFactory:layoutOptionsFactory];

  return v17;
}

@end