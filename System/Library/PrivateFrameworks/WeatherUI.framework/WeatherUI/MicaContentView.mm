@interface MicaContentView
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)willMoveToWindow:(id)window;
@end

@implementation MicaContentView

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  selfCopy = self;
  MicaContentView.willMove(toWindow:)(window);
}

- (void)layoutSublayersOfLayer:(id)layer
{
  layerCopy = layer;
  selfCopy = self;
  MicaContentView.layoutSublayers(of:)(layerCopy);
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  sub_1BCE1D280();
  layerCopy = layer;
  selfCopy = self;
  v8 = MicaContentView.action(for:forKey:)();

  return v8;
}

@end