@interface SXLayouterFactory
- (SXLayouterFactory)initWithColumnCalculator:(id)a3 layoutContextFactory:(id)a4 unitConverterFactory:(id)a5;
- (id)createColumnLayouterWithDelegate:(id)a3;
- (id)layouterForContainerComponentBlueprint:(id)a3 delegate:(id)a4;
@end

@implementation SXLayouterFactory

- (SXLayouterFactory)initWithColumnCalculator:(id)a3 layoutContextFactory:(id)a4 unitConverterFactory:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SXLayouterFactory;
  v12 = [(SXLayouterFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_columnCalculator, a3);
    objc_storeStrong(&v13->_layoutContextFactory, a4);
    objc_storeStrong(&v13->_unitConverterFactory, a5);
  }

  return v13;
}

- (id)createColumnLayouterWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [SXColumnLayouter alloc];
  v6 = [(SXLayouterFactory *)self layoutContextFactory];
  v7 = [(SXLayouterFactory *)self unitConverterFactory];
  v8 = [(SXColumnLayouter *)v5 initWithLayouterFactory:self layoutContextFactory:v6 unitConverterFactory:v7];

  [(SXColumnLayouter *)v8 setDelegate:v4];

  return v8;
}

- (id)layouterForContainerComponentBlueprint:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 component];
  v9 = [v8 contentDisplay];
  v10 = [v9 conformsToProtocol:&unk_1F53D7F10];

  if (v10)
  {
    v11 = [SXCollectionLayouter alloc];
    v12 = [(SXLayouterFactory *)self columnCalculator];
    v13 = [(SXLayouterFactory *)self unitConverterFactory];
    v14 = [(SXCollectionLayouter *)v11 initWithContainerComponent:v6 layouterFactory:self columnCalculator:v12 unitConverterFactory:v13];
LABEL_5:

    goto LABEL_7;
  }

  v15 = [v6 component];
  v16 = [v15 contentDisplay];
  v17 = [v16 conformsToProtocol:&unk_1F540FEA0];

  if (v17)
  {
    v18 = [SXHorizontalStackLayouter alloc];
    v12 = [(SXLayouterFactory *)self columnCalculator];
    v13 = [(SXLayouterFactory *)self layoutContextFactory];
    v19 = [(SXLayouterFactory *)self unitConverterFactory];
    v14 = [(SXHorizontalStackLayouter *)&v18->super.isa initWithContainerComponent:v6 layouterFactory:self columnCalculator:v12 layoutContextFactory:v13 unitConverterFactory:v19];

    goto LABEL_5;
  }

  v14 = [(SXLayouterFactory *)self createColumnLayouterWithDelegate:v7];
LABEL_7:
  [(SXCollectionLayouter *)v14 setDelegate:v7];

  return v14;
}

@end