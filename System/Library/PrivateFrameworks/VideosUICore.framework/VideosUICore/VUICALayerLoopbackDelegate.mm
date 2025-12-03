@interface VUICALayerLoopbackDelegate
- (UIView)view;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (id)init:(id)init;
@end

@implementation VUICALayerLoopbackDelegate

- (id)init:(id)init
{
  initCopy = init;
  v8.receiver = self;
  v8.super_class = VUICALayerLoopbackDelegate;
  v5 = [(VUICALayerLoopbackDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, initCopy);
  }

  return v6;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  keyCopy = key;
  layerCopy = layer;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained actionForLayer:layerCopy forKey:keyCopy];

  return v9;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end