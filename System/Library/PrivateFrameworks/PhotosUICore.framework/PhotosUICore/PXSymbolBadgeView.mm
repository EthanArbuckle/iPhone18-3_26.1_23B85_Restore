@interface PXSymbolBadgeView
- (PXSymbolBadgeView)initWithIndex:(id)index;
- (id)symbolForIndex:(id)index;
- (void)setIndex:(id)index;
@end

@implementation PXSymbolBadgeView

- (id)symbolForIndex:(id)index
{
  indexCopy = index;
  if (indexCopy)
  {
    if (symbolForIndex__onceToken != -1)
    {
      dispatch_once(&symbolForIndex__onceToken, &__block_literal_global_240313);
    }

    unsignedIntegerValue = [indexCopy unsignedIntegerValue];
    v5 = [symbolForIndex__sSymbols count];
    v6 = [symbolForIndex__sSymbols objectAtIndexedSubscript:unsignedIntegerValue % v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __36__PXSymbolBadgeView_symbolForIndex___block_invoke()
{
  v0 = symbolForIndex__sSymbols;
  symbolForIndex__sSymbols = &unk_1F1911980;
}

- (void)setIndex:(id)index
{
  v4 = [(PXSymbolBadgeView *)self symbolForIndex:index];
  [(PXTextSymbolView *)self setSymbol:v4];
}

- (PXSymbolBadgeView)initWithIndex:(id)index
{
  v4 = [(PXSymbolBadgeView *)self symbolForIndex:index];
  v7.receiver = self;
  v7.super_class = PXSymbolBadgeView;
  v5 = [(PXTextSymbolView *)&v7 initWithSymbol:v4];

  return v5;
}

@end