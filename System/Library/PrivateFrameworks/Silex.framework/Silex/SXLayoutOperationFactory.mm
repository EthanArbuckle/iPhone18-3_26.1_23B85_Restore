@interface SXLayoutOperationFactory
- (SXLayoutOperationFactory)initWithComponentSizerEngine:(id)a3 layoutBlueprintFactory:(id)a4 layouterFactory:(id)a5 layoutContextFactory:(id)a6 unitConverterFactory:(id)a7;
- (id)layoutOperationWithTask:(id)a3 DOMObjectProvider:(id)a4;
@end

@implementation SXLayoutOperationFactory

- (SXLayoutOperationFactory)initWithComponentSizerEngine:(id)a3 layoutBlueprintFactory:(id)a4 layouterFactory:(id)a5 layoutContextFactory:(id)a6 unitConverterFactory:(id)a7
{
  v20 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v21.receiver = self;
  v21.super_class = SXLayoutOperationFactory;
  v17 = [(SXLayoutOperationFactory *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_componentSizerEngine, a3);
    objc_storeStrong(&v18->_layoutBlueprintFactory, a4);
    objc_storeStrong(&v18->_layouterFactory, a5);
    objc_storeStrong(&v18->_layoutContextFactory, a6);
    objc_storeStrong(&v18->_unitConverterFactory, a7);
  }

  return v18;
}

- (id)layoutOperationWithTask:(id)a3 DOMObjectProvider:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [SXColumnLayouter alloc];
  v9 = [(SXLayoutOperationFactory *)self layouterFactory];
  v10 = [(SXLayoutOperationFactory *)self layoutContextFactory];
  v11 = [(SXLayoutOperationFactory *)self unitConverterFactory];
  v12 = [(SXColumnLayouter *)v8 initWithLayouterFactory:v9 layoutContextFactory:v10 unitConverterFactory:v11];

  v13 = [SXLayoutOperation alloc];
  v14 = [(SXLayoutOperationFactory *)self componentSizerEngine];
  v15 = [(SXLayoutOperationFactory *)self layoutBlueprintFactory];
  v16 = [(SXLayoutOperation *)v13 initWithTask:v7 layouter:v12 DOMObjectProvider:v6 componentSizerEngine:v14 layoutBlueprintFactory:v15];

  return v16;
}

@end