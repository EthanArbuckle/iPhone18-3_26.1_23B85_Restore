@interface _VFXCoderMaterialPropertyTextureProviderHelper
- (id)cachedTextureWithURL:(id)a3 token:(id *)a4 didFallbackToDefaultTexture:(BOOL *)a5;
- (void)dealloc;
@end

@implementation _VFXCoderMaterialPropertyTextureProviderHelper

- (void)dealloc
{
  v3 = sub_1AF13099C(self->_engineContext);
  CFXGPUDeviceGetMTLDevice(v3);
  sub_1AF20C174();
  CFRelease(self->_engineContext);
  v4.receiver = self;
  v4.super_class = _VFXCoderMaterialPropertyTextureProviderHelper;
  [(_VFXCoderMaterialPropertyTextureProviderHelper *)&v4 dealloc];
}

- (id)cachedTextureWithURL:(id)a3 token:(id *)a4 didFallbackToDefaultTexture:(BOOL *)a5
{
  if (a4)
  {
    *a4 = 0;
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = sub_1AF28BC98;
  v30[3] = &unk_1E7A7E0E8;
  v30[4] = a3;
  v9 = sub_1AF198494(a3, 1, v30);
  v10 = v9;
  if (a4)
  {
    *a4 = v9;
  }

  v29 = 0;
  v11 = sub_1AF12E2AC(self->_engineContext);
  v15 = objc_msgSend_resourceManager(v11, v12, v13, v14);
  v16 = sub_1AF1C4F6C();
  v18 = objc_msgSend_renderResourceForImage_sampler_options_engineContext_didFallbackToDefaultTexture_(v15, v17, v10, v16, 0, self->_engineContext, &v29);
  CFAutorelease(v10);
  if (v29)
  {
    v22 = objc_msgSend_resourceManagerMonitor(v11, v19, v20, v21);
    if (v22)
    {
      v25 = v22;
      v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v23, @"VFXMaterialPropertyTextureProviderHelper could not find texture for %@", v24, a3);
      objc_msgSend_renderContext_didFallbackToDefaultTextureForSource_message_(v25, v27, v11, a3, v26);
    }
  }

  if (a5)
  {
    *a5 = v29;
  }

  return v18;
}

@end