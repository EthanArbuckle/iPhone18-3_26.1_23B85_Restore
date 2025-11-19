@interface VUICALayerLoopbackDelegate
- (UIView)view;
- (id)actionForLayer:(id)a3 forKey:(id)a4;
- (id)init:(id)a3;
@end

@implementation VUICALayerLoopbackDelegate

- (id)init:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = VUICALayerLoopbackDelegate;
  v5 = [(VUICALayerLoopbackDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_view, v4);
  }

  return v6;
}

- (id)actionForLayer:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_view);
  v9 = [WeakRetained actionForLayer:v7 forKey:v6];

  return v9;
}

- (UIView)view
{
  WeakRetained = objc_loadWeakRetained(&self->_view);

  return WeakRetained;
}

@end