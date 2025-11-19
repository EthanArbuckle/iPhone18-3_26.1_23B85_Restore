@interface VFXCaptureDeviceOutputConsumerSource
- (VFXCaptureDeviceOutputConsumerSource)initWithOptions:(id)a3;
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5 status:(id *)a6;
- (void)_setPixelBuffer:(__CVBuffer *)a3;
- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer;
- (void)connectToProxy:(__CFXImageProxy *)a3;
- (void)dealloc;
- (void)setPixelBuffer:(__CVBuffer *)a3 fromDevice:(id)a4;
- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3 fromDevice:(id)a4;
@end

@implementation VFXCaptureDeviceOutputConsumerSource

- (VFXCaptureDeviceOutputConsumerSource)initWithOptions:(id)a3
{
  v13.receiver = self;
  v13.super_class = VFXCaptureDeviceOutputConsumerSource;
  v4 = [(VFXCaptureDeviceOutputConsumerSource *)&v13 init];
  v7 = v4;
  if (v4)
  {
    v4->_videoMirrored = 0;
    v4->_automaticallyAdjustsVideoMirroring = 1;
    v8 = objc_msgSend_objectForKeyedSubscript_(a3, v5, @"VFXCaptureDeviceOutputConsumerOptionContainsAlpha", v6);
    v7->_containsAlpha = objc_msgSend_BOOLValue(v8, v9, v10, v11);
  }

  return v7;
}

- (void)dealloc
{
  sub_1AF28BE50(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v4.receiver = self;
  v4.super_class = VFXCaptureDeviceOutputConsumerSource;
  [(VFXTextureSource *)&v4 dealloc];
}

- (void)connectToProxy:(__CFXImageProxy *)a3
{
  sub_1AF27679C(a3, self, 3);
  v4[0] = xmmword_1F24EBE38;
  v4[1] = *&off_1F24EBE48;
  sub_1AF276824(a3, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)a3 textureSampler:(id)a4 nextFrameTime:(double *)a5 status:(id *)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *a6 = 256;
  }

  else if (self->_data.var0)
  {
    v10 = sub_1AF12E2AC(a3);
    v13 = v10;
    textureCache = self->_textureCache;
    if (!textureCache)
    {
      v15 = objc_msgSend_device(v10, v11, 0, v12);
      v19 = *MEMORY[0x1E6966010];
      v20[0] = &unk_1F25D43D8;
      v17 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v16, v20, &v19, 1);
      CVMetalTextureCacheCreate(0, 0, v15, v17, &self->_textureCache);
      textureCache = self->_textureCache;
    }

    sub_1AF28BEAC(&self->_data, v13, textureCache, v12);
    *a6 = 257;
    mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  }

  else
  {
    mtlTextureForRenderer = 0;
  }

  objc_sync_exit(self);
  return mtlTextureForRenderer;
}

- (void)setSampleBuffer:(opaqueCMSampleBuffer *)a3 fromDevice:(id)a4
{
  if (a4 && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = objc_msgSend_position(a4, a2, a3, a4) == 2;
  }

  MEMORY[0x1EEE66B58](self, sel__setSampleBuffer_, a3, a4);
}

- (void)_setSampleBuffer:(opaqueCMSampleBuffer *)ImageBuffer
{
  objc_sync_enter(self);
  if (ImageBuffer)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(ImageBuffer);
  }

  if (self->_data.var0 != ImageBuffer)
  {
    sub_1AF28BE04(&self->_data, v5, v6, v7);
    var0 = self->_data.var0;
    if (var0 != ImageBuffer)
    {
      if (var0)
      {
        CFRelease(var0);
        self->_data.var0 = 0;
      }

      if (ImageBuffer)
      {
        v9 = CFRetain(ImageBuffer);
      }

      else
      {
        v9 = 0;
      }

      self->_data.var0 = v9;
    }
  }

  if (ImageBuffer)
  {
    self->_width = CVPixelBufferGetWidth(ImageBuffer);
    self->_height = CVPixelBufferGetHeight(ImageBuffer);
  }

  else
  {
    v10 = sub_1AF0D5194();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }
  }

  objc_sync_exit(self);
}

- (void)setPixelBuffer:(__CVBuffer *)a3 fromDevice:(id)a4
{
  if (a4 && self->_automaticallyAdjustsVideoMirroring)
  {
    self->_videoMirrored = objc_msgSend_position(a4, a2, a3, a4) == 2;
  }

  MEMORY[0x1EEE66B58](self, sel__setPixelBuffer_, a3, a4);
}

- (void)_setPixelBuffer:(__CVBuffer *)a3
{
  objc_sync_enter(self);
  if (self->_data.var0 != a3)
  {
    sub_1AF28BE04(&self->_data, v5, v6, v7);
    var0 = self->_data.var0;
    if (var0 != a3)
    {
      if (var0)
      {
        CFRelease(var0);
        self->_data.var0 = 0;
      }

      if (a3)
      {
        v9 = CFRetain(a3);
      }

      else
      {
        v9 = 0;
      }

      self->_data.var0 = v9;
    }
  }

  if (a3)
  {
    self->_width = CVPixelBufferGetWidth(a3);
    self->_height = CVPixelBufferGetHeight(a3);
    if (!CVPixelBufferGetIOSurface(a3))
    {
      v10 = sub_1AF0D5194();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3ABC();
      }
    }
  }

  objc_sync_exit(self);
}

@end