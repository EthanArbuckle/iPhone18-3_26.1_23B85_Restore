@interface SXLayoutBlueprintFactory
- (SXLayoutBlueprintFactory)initWithComponentBlueprintFactory:(id)a3 unitConverterFactory:(id)a4;
- (id)createLayoutBlueprintWithLayoutOptions:(id)a3;
@end

@implementation SXLayoutBlueprintFactory

- (SXLayoutBlueprintFactory)initWithComponentBlueprintFactory:(id)a3 unitConverterFactory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXLayoutBlueprintFactory;
  v9 = [(SXLayoutBlueprintFactory *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_componentBlueprintFactory, a3);
    objc_storeStrong(&v10->_unitConverterFactory, a4);
  }

  return v10;
}

- (id)createLayoutBlueprintWithLayoutOptions:(id)a3
{
  v4 = a3;
  v5 = [[SXLayoutBlueprint alloc] initWithLayoutOptions:v4 componentBlueprintFactory:self->_componentBlueprintFactory unitConverterFactory:self->_unitConverterFactory];

  return v5;
}

@end