@interface MicaContentView
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)layoutSublayersOfLayer:(id)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation MicaContentView

- (void)willMoveToWindow:(id)a3
{
  v5 = a3;
  v6 = self;
  MicaContentView.willMove(toWindow:)(a3);
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  MicaContentView.layoutSublayers(of:)(v4);
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  sub_1BCE1D280();
  v6 = a3;
  v7 = self;
  v8 = MicaContentView.action(for:forKey:)();

  return v8;
}

@end