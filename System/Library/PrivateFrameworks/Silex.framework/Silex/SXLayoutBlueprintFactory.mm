@interface SXLayoutBlueprintFactory
- (SXLayoutBlueprintFactory)initWithComponentBlueprintFactory:(id)factory unitConverterFactory:(id)converterFactory;
- (id)createLayoutBlueprintWithLayoutOptions:(id)options;
@end

@implementation SXLayoutBlueprintFactory

- (SXLayoutBlueprintFactory)initWithComponentBlueprintFactory:(id)factory unitConverterFactory:(id)converterFactory
{
  factoryCopy = factory;
  converterFactoryCopy = converterFactory;
  v12.receiver = self;
  v12.super_class = SXLayoutBlueprintFactory;
  v9 = [(SXLayoutBlueprintFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentBlueprintFactory, factory);
    objc_storeStrong(&v10->_unitConverterFactory, converterFactory);
  }

  return v10;
}

- (id)createLayoutBlueprintWithLayoutOptions:(id)options
{
  optionsCopy = options;
  v5 = [[SXLayoutBlueprint alloc] initWithLayoutOptions:optionsCopy componentBlueprintFactory:self->_componentBlueprintFactory unitConverterFactory:self->_unitConverterFactory];

  return v5;
}

@end