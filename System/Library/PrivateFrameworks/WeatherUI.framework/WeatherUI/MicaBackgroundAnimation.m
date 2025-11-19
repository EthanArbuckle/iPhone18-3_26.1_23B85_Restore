@interface MicaBackgroundAnimation
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (void)layoutSublayersOfLayer:(id)a3;
@end

@implementation MicaBackgroundAnimation

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = sub_1BCE1D280();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = MicaBackgroundAnimation.action(for:forKey:)(v9, v6, v8);

  return v11;
}

- (void)layoutSublayersOfLayer:(id)a3
{
  v4 = a3;
  v5 = self;
  MicaBackgroundAnimation.layoutSublayers(of:)(v4);
}

@end