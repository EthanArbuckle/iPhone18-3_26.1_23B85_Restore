@interface VFXCoreAnimationSource
- (BOOL)isOpaque;
- (id)textureSource;
- (void)dealloc;
- (void)setLayer:(id)layer;
@end

@implementation VFXCoreAnimationSource

- (id)textureSource
{
  v3 = objc_alloc_init(VFXTextureCoreAnimationSource);
  v7 = objc_msgSend_layer(self, v4, v5, v6);
  objc_msgSend_setLayer_(v3, v8, v7, v9);
  return v3;
}

- (BOOL)isOpaque
{
  v4 = objc_msgSend_layer(self, a2, v2, v3);

  return objc_msgSend_isOpaque(v4, v5, v6, v7);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXCoreAnimationSource;
  [(VFXCoreAnimationSource *)&v3 dealloc];
}

- (void)setLayer:(id)layer
{
  layer = self->_layer;
  if (layer != layer)
  {

    self->_layer = layer;
  }
}

@end