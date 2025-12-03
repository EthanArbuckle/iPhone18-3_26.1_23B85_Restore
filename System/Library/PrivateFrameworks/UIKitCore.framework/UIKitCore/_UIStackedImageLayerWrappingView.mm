@interface _UIStackedImageLayerWrappingView
- (CALayerDelegate)actionDelegate;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)dealloc;
@end

@implementation _UIStackedImageLayerWrappingView

- (void)dealloc
{
  objc_storeWeak(&self->_actionDelegate, 0);
  v3.receiver = self;
  v3.super_class = _UIStackedImageLayerWrappingView;
  [(UIView *)&v3 dealloc];
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  if (WeakRetained)
  {
    v9 = objc_loadWeakRetained(&self->_actionDelegate);
    v10 = [v9 actionForLayer:layerCopy forKey:keyCopy];
  }

  else
  {
    v12.receiver = self;
    v12.super_class = _UIStackedImageLayerWrappingView;
    v10 = [(UIView *)&v12 actionForLayer:layerCopy forKey:keyCopy];
  }

  return v10;
}

- (CALayerDelegate)actionDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_actionDelegate);

  return WeakRetained;
}

@end