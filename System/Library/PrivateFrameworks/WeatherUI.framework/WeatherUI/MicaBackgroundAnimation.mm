@interface MicaBackgroundAnimation
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)layoutSublayersOfLayer:(id)layer;
@end

@implementation MicaBackgroundAnimation

- (id)actionForLayer:(id)layer forKey:(id)key
{
  v6 = sub_1BCE1D280();
  v8 = v7;
  layerCopy = layer;
  selfCopy = self;
  v11 = MicaBackgroundAnimation.action(for:forKey:)(layerCopy, v6, v8);

  return v11;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  MicaBackgroundAnimation.layoutSublayers(of:)(layerCopy);
}

@end