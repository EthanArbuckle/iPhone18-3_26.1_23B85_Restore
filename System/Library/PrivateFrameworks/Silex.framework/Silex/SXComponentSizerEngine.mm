@interface SXComponentSizerEngine
- (SXComponentSizerEngine)init;
- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider;
- (void)addFactory:(id)factory;
- (void)removeFactory:(id)factory;
@end

@implementation SXComponentSizerEngine

- (SXComponentSizerEngine)init
{
  v6.receiver = self;
  v6.super_class = SXComponentSizerEngine;
  v2 = [(SXComponentSizerEngine *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(SXComponentTypeMatching);
    factoryMatching = v2->_factoryMatching;
    v2->_factoryMatching = v3;
  }

  return v2;
}

- (id)sizerForComponent:(id)component componentLayout:(id)layout layoutOptions:(id)options DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  optionsCopy = options;
  layoutCopy = layout;
  componentCopy = component;
  factoryMatching = [(SXComponentSizerEngine *)self factoryMatching];
  type = [componentCopy type];
  v16 = +[SXComponentTypeDescribing descriptionWithType:role:](SXComponentTypeDescribing, "descriptionWithType:role:", type, [componentCopy role]);
  v17 = [factoryMatching match:v16];

  v18 = [v17 sizerForComponent:componentCopy componentLayout:layoutCopy layoutOptions:optionsCopy DOMObjectProvider:providerCopy];

  return v18;
}

- (void)addFactory:(id)factory
{
  if (factory)
  {
    factoryCopy = factory;
    factoryMatching = [(SXComponentSizerEngine *)self factoryMatching];
    [factoryMatching addDescription:factoryCopy];
  }
}

- (void)removeFactory:(id)factory
{
  if (factory)
  {
    factoryCopy = factory;
    factoryMatching = [(SXComponentSizerEngine *)self factoryMatching];
    [factoryMatching removeDescription:factoryCopy];
  }
}

@end