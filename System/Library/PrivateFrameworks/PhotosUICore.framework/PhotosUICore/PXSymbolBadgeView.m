@interface PXSymbolBadgeView
- (PXSymbolBadgeView)initWithIndex:(id)a3;
- (id)symbolForIndex:(id)a3;
- (void)setIndex:(id)a3;
@end

@implementation PXSymbolBadgeView

- (id)symbolForIndex:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if (symbolForIndex__onceToken != -1)
    {
      dispatch_once(&symbolForIndex__onceToken, &__block_literal_global_240313);
    }

    v4 = [v3 unsignedIntegerValue];
    v5 = [symbolForIndex__sSymbols count];
    v6 = [symbolForIndex__sSymbols objectAtIndexedSubscript:v4 % v5];
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

- (void)setIndex:(id)a3
{
  v4 = [(PXSymbolBadgeView *)self symbolForIndex:a3];
  [(PXTextSymbolView *)self setSymbol:v4];
}

- (PXSymbolBadgeView)initWithIndex:(id)a3
{
  v4 = [(PXSymbolBadgeView *)self symbolForIndex:a3];
  v7.receiver = self;
  v7.super_class = PXSymbolBadgeView;
  v5 = [(PXTextSymbolView *)&v7 initWithSymbol:v4];

  return v5;
}

@end