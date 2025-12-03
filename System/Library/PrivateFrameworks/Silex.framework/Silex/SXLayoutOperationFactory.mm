@interface SXLayoutOperationFactory
- (SXLayoutOperationFactory)initWithComponentSizerEngine:(id)engine layoutBlueprintFactory:(id)factory layouterFactory:(id)layouterFactory layoutContextFactory:(id)contextFactory unitConverterFactory:(id)converterFactory;
- (id)layoutOperationWithTask:(id)task DOMObjectProvider:(id)provider;
@end

@implementation SXLayoutOperationFactory

- (SXLayoutOperationFactory)initWithComponentSizerEngine:(id)engine layoutBlueprintFactory:(id)factory layouterFactory:(id)layouterFactory layoutContextFactory:(id)contextFactory unitConverterFactory:(id)converterFactory
{
  engineCopy = engine;
  factoryCopy = factory;
  layouterFactoryCopy = layouterFactory;
  contextFactoryCopy = contextFactory;
  converterFactoryCopy = converterFactory;
  v21.receiver = self;
  v21.super_class = SXLayoutOperationFactory;
  v17 = [(SXLayoutOperationFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_componentSizerEngine, engine);
    objc_storeStrong(&v18->_layoutBlueprintFactory, factory);
    objc_storeStrong(&v18->_layouterFactory, layouterFactory);
    objc_storeStrong(&v18->_layoutContextFactory, contextFactory);
    objc_storeStrong(&v18->_unitConverterFactory, converterFactory);
  }

  return v18;
}

- (id)layoutOperationWithTask:(id)task DOMObjectProvider:(id)provider
{
  providerCopy = provider;
  taskCopy = task;
  v8 = [SXColumnLayouter alloc];
  layouterFactory = [(SXLayoutOperationFactory *)self layouterFactory];
  layoutContextFactory = [(SXLayoutOperationFactory *)self layoutContextFactory];
  unitConverterFactory = [(SXLayoutOperationFactory *)self unitConverterFactory];
  v12 = [(SXColumnLayouter *)v8 initWithLayouterFactory:layouterFactory layoutContextFactory:layoutContextFactory unitConverterFactory:unitConverterFactory];

  v13 = [SXLayoutOperation alloc];
  componentSizerEngine = [(SXLayoutOperationFactory *)self componentSizerEngine];
  layoutBlueprintFactory = [(SXLayoutOperationFactory *)self layoutBlueprintFactory];
  v16 = [(SXLayoutOperation *)v13 initWithTask:taskCopy layouter:v12 DOMObjectProvider:providerCopy componentSizerEngine:componentSizerEngine layoutBlueprintFactory:layoutBlueprintFactory];

  return v16;
}

@end