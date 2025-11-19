@interface VFXUIKitSource
- (VFXUIKitSource)init;
- (id)prepareWindowIfNeeded;
- (id)textureSource;
- (void)dealloc;
@end

@implementation VFXUIKitSource

- (VFXUIKitSource)init
{
  v3.receiver = self;
  v3.super_class = VFXUIKitSource;
  return [(VFXUIKitSource *)&v3 init];
}

- (id)prepareWindowIfNeeded
{
  if (!self->_uiWindow && !self->_windowPreparing)
  {
    self->_windowPreparing = 1;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    v5 = sub_1AF28DD50;
    v6 = &unk_1E7A7A770;
    v7 = self;
    if (pthread_main_np() == 1)
    {
      (v5)(block);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], block);
    }
  }

  return self->_uiWindow;
}

- (id)textureSource
{
  if (!objc_msgSend_prepareWindowIfNeeded(self, a2, v2, v3))
  {
    return 0;
  }

  v5 = objc_alloc_init(VFXTextureUIKitSource);
  v9 = objc_msgSend_uiView(self, v6, v7, v8);
  objc_msgSend_setUiView_(v5, v10, v9, v11);
  v15 = objc_msgSend_uiWindow(self, v12, v13, v14);
  objc_msgSend_setUiWindow_(v5, v16, v15, v17);
  objc_msgSend_setUiWindowLayer_(v5, v18, self->_uiWindowLayer, v19);
  objc_msgSend_setIsOpaque_(v5, v20, self->_isOpaque, v21);
  objc_msgSend_setSource_(v5, v22, self, v23);
  objc_msgSend_setup(v5, v24, v25, v26);
  objc_msgSend_registerUIKitSource_(_VFXUIKitSourceRegistry, v27, v5, v28);
  return v5;
}

- (void)dealloc
{
  uiWindow = self->_uiWindow;
  uiView = self->_uiView;
  self->_uiWindow = 0;
  self->_uiView = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF28E034;
  block[3] = &unk_1E7A7E198;
  block[4] = uiWindow;
  block[5] = uiView;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v5.receiver = self;
  v5.super_class = VFXUIKitSource;
  [(VFXUIKitSource *)&v5 dealloc];
}

@end