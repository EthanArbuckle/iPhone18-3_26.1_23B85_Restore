@interface VFXTextureSource
- (double)textureSize;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)dealloc;
- (void)renderWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5;
- (void)setMTLTextureCache:(id)a3;
@end

@implementation VFXTextureSource

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXTextureSource;
  [(VFXTextureSource *)&v3 dealloc];
}

- (double)textureSize
{
  v3 = sub_1AF0D5194();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3BA4(a2);
  }

  __asm { FMOV            V0.2S, #1.0 }

  return result;
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  v10 = sub_1AF12E2AC(a3);
  if (!v10)
  {
    v11 = sub_1AF0D5194();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF3C20(v11);
    }
  }

  if (objc_msgSend_supportsMetal(self, v7, v8, v9))
  {
    result = objc_msgSend_MTLTextureCache(self, v12, v13, v14);
    if (!result)
    {
      objc_msgSend_textureSize(self, v16, v17, v18);
      v31 = 0uLL;
      v32 = 0;
      CFXTextureDescriptorMake2D(v19, v20, 0x47u, &v31);
      LOBYTE(v32) = 1;
      v24 = objc_msgSend_gpuDevice(v10, v21, v22, v23);
      v29 = v31;
      v30 = v32;
      v25 = CFXGPUDeviceCreateTexture(v24, &v29);
      objc_msgSend_setMTLTextureCache_(self, v26, v25, v27);
      return v25;
    }
  }

  else
  {
    v28 = sub_1AF0D5194();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3CA4(v28);
    }

    return 0;
  }

  return result;
}

- (void)renderWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5
{
  v6 = sub_1AF0D5194();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_1AFDF3BA4(a2);
  }
}

- (void)setMTLTextureCache:(id)a3
{
  mtlTextureCache = self->_mtlTextureCache;
  if (mtlTextureCache != a3)
  {

    self->_mtlTextureCache = a3;
  }
}

@end