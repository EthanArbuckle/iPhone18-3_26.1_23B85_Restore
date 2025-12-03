@interface SXLayouterFactory
- (SXLayouterFactory)initWithColumnCalculator:(id)calculator layoutContextFactory:(id)factory unitConverterFactory:(id)converterFactory;
- (id)createColumnLayouterWithDelegate:(id)delegate;
- (id)layouterForContainerComponentBlueprint:(id)blueprint delegate:(id)delegate;
@end

@implementation SXLayouterFactory

- (SXLayouterFactory)initWithColumnCalculator:(id)calculator layoutContextFactory:(id)factory unitConverterFactory:(id)converterFactory
{
  calculatorCopy = calculator;
  factoryCopy = factory;
  converterFactoryCopy = converterFactory;
  v15.receiver = self;
  v15.super_class = SXLayouterFactory;
  v12 = [(SXLayouterFactory *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_columnCalculator, calculator);
    objc_storeStrong(&v13->_layoutContextFactory, factory);
    objc_storeStrong(&v13->_unitConverterFactory, converterFactory);
  }

  return v13;
}

- (id)createColumnLayouterWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [SXColumnLayouter alloc];
  layoutContextFactory = [(SXLayouterFactory *)self layoutContextFactory];
  unitConverterFactory = [(SXLayouterFactory *)self unitConverterFactory];
  v8 = [(SXColumnLayouter *)v5 initWithLayouterFactory:self layoutContextFactory:layoutContextFactory unitConverterFactory:unitConverterFactory];

  [(SXColumnLayouter *)v8 setDelegate:delegateCopy];

  return v8;
}

- (id)layouterForContainerComponentBlueprint:(id)blueprint delegate:(id)delegate
{
  blueprintCopy = blueprint;
  delegateCopy = delegate;
  component = [blueprintCopy component];
  contentDisplay = [component contentDisplay];
  v10 = [contentDisplay conformsToProtocol:&unk_1F53D7F10];

  if (v10)
  {
    v11 = [SXCollectionLayouter alloc];
    columnCalculator = [(SXLayouterFactory *)self columnCalculator];
    unitConverterFactory = [(SXLayouterFactory *)self unitConverterFactory];
    v14 = [(SXCollectionLayouter *)v11 initWithContainerComponent:blueprintCopy layouterFactory:self columnCalculator:columnCalculator unitConverterFactory:unitConverterFactory];
LABEL_5:

    goto LABEL_7;
  }

  component2 = [blueprintCopy component];
  contentDisplay2 = [component2 contentDisplay];
  v17 = [contentDisplay2 conformsToProtocol:&unk_1F540FEA0];

  if (v17)
  {
    v18 = [SXHorizontalStackLayouter alloc];
    columnCalculator = [(SXLayouterFactory *)self columnCalculator];
    unitConverterFactory = [(SXLayouterFactory *)self layoutContextFactory];
    unitConverterFactory2 = [(SXLayouterFactory *)self unitConverterFactory];
    v14 = [(SXHorizontalStackLayouter *)&v18->super.isa initWithContainerComponent:blueprintCopy layouterFactory:self columnCalculator:columnCalculator layoutContextFactory:unitConverterFactory unitConverterFactory:unitConverterFactory2];

    goto LABEL_5;
  }

  v14 = [(SXLayouterFactory *)self createColumnLayouterWithDelegate:delegateCopy];
LABEL_7:
  [(SXCollectionLayouter *)v14 setDelegate:delegateCopy];

  return v14;
}

@end