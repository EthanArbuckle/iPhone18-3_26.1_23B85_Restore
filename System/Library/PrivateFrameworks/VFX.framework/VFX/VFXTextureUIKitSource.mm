@interface VFXTextureUIKitSource
- (CGSize)layerSizeInPixels;
- (double)layerContentsScaleFactor;
- (void)_layerTreeDidUpdate;
- (void)dealloc;
- (void)setup;
@end

@implementation VFXTextureUIKitSource

- (void)dealloc
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3);
  objc_msgSend_removeObserver_(v5, v6, self, v7);

  uiWindow = self->_uiWindow;
  uiView = self->_uiView;
  self->_uiWindow = 0;
  self->_uiView = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF28E1B0;
  block[3] = &unk_1E7A7E198;
  block[4] = uiWindow;
  block[5] = uiView;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  v10.receiver = self;
  v10.super_class = VFXTextureUIKitSource;
  [(VFXTextureCoreAnimationSource *)&v10 dealloc];
}

- (void)setup
{
  v5 = objc_msgSend_superlayer(self->_uiWindowLayer, a2, v2, v3);
  v9 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7, v8);

  objc_msgSend_addObserver_selector_name_object_(v9, v10, self, sel__layerTreeDidUpdate, @"VFXLayerTreeDidChange", v5);
}

- (double)layerContentsScaleFactor
{
  v4 = objc_msgSend_mainScreen(MEMORY[0x1E69DCEB0], a2, v2, v3);

  objc_msgSend_scale(v4, v5, v6, v7);
  return result;
}

- (CGSize)layerSizeInPixels
{
  objc_msgSend_bounds(self->_uiWindowLayer, a2, v2, v3);
  v6 = v5;
  v8 = v7;
  objc_msgSend_layerContentsScaleFactor(self, v9, v10, v11);
  v13 = v12 * v8;
  if (v12 == 0.0)
  {
    v13 = v8;
    v14 = v6;
  }

  else
  {
    v14 = v12 * v6;
  }

  result.height = v13;
  result.width = v14;
  return result;
}

- (void)_layerTreeDidUpdate
{
  v5 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2, v3);
  source = self->_source;

  objc_msgSend_postNotificationName_object_(v5, v6, @"VFXUITreeDidChange", source);
}

@end