@interface VFXCaptureDeviceSource
- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
- (void)connectToProxy:(__CFXImageProxy *)proxy;
- (void)dealloc;
- (void)setCaptureDevice:(id)device;
@end

@implementation VFXCaptureDeviceSource

- (void)dealloc
{
  objc_msgSend_stopRunning(self->_captureSession, a2, v2, v3);

  sub_1AF28BE50(&self->_data);
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
    self->_textureCache = 0;
  }

  v6.receiver = self;
  v6.super_class = VFXCaptureDeviceSource;
  [(VFXTextureSource *)&v6 dealloc];
}

- (void)setCaptureDevice:(id)device
{
  if (self->_captureDevice != device)
  {
    objc_msgSend_stopRunning(self->_captureSession, a2, device, v3);

    self->_captureSession = 0;
    self->_captureDevice = device;
  }
}

- (void)connectToProxy:(__CFXImageProxy *)proxy
{
  sub_1AF27679C(proxy, self, 2);
  v4[0] = xmmword_1F24EBE18;
  v4[1] = *&off_1F24EBE28;
  sub_1AF276824(proxy, v4);
}

- (id)metalTextureWithEngineContext:(__CFXEngineContext *)context textureSampler:(id)sampler nextFrameTime:(double *)time status:(id *)status
{
  v49[2] = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_captureSession)
  {
    v45 = 0;
    v26 = objc_alloc(MEMORY[0x1E69870B0]);
    v28 = objc_msgSend_initWithDevice_error_(v26, v27, self->_captureDevice, &v45);
    if (v45)
    {
      v29 = sub_1AF0D5194();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF3A44();
      }

      goto LABEL_10;
    }

    v35 = objc_alloc_init(MEMORY[0x1E6987110]);
    self->_captureSession = v35;
    objc_msgSend_addInput_(v35, v36, v28, v37);

    objc_msgSend_commitConfiguration(self->_captureSession, v38, v39, v40);
    objc_msgSend_startRunning(self->_captureSession, v41, v42, v43);
  }

  v11 = sub_1AF12E2AC(context);
  if (!self->_data.videoOutput)
  {
    v12 = objc_alloc_init(MEMORY[0x1E6987178]);
    v13 = *MEMORY[0x1E6966130];
    v48[0] = *MEMORY[0x1E6966100];
    v48[1] = v13;
    v49[0] = MEMORY[0x1E695E118];
    v49[1] = &unk_1F25D4690;
    v15 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v49, v48, 2);
    objc_msgSend_setVideoSettings_(v12, v16, v15, v17);
    v21 = objc_msgSend_resourceQueue(v11, v18, v19, v20);
    objc_msgSend_setSampleBufferDelegate_queue_(v12, v22, self, v21);
    objc_msgSend_addOutput_(self->_captureSession, v23, v12, v24);
    self->_data.videoOutput = v12;
  }

  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
  if (mtlTextureForRenderer)
  {
    *status = 256;
    goto LABEL_15;
  }

  if (!self->_data.var0)
  {
    v44 = sub_1AF0D5194();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }

LABEL_10:
    mtlTextureForRenderer = 0;
    goto LABEL_15;
  }

  textureCache = self->_textureCache;
  if (!textureCache)
  {
    v31 = objc_msgSend_device(v11, v9, 0, v10);
    v46 = *MEMORY[0x1E6966010];
    v47 = &unk_1F25D43D8;
    v33 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v32, &v47, &v46, 1);
    CVMetalTextureCacheCreate(0, 0, v31, v33, &self->_textureCache);
    textureCache = self->_textureCache;
  }

  sub_1AF28BEAC(&self->_data, v11, textureCache, v10);
  *status = 257;
  mtlTextureForRenderer = self->_data.mtlTextureForRenderer;
LABEL_15:
  objc_sync_exit(self);
  return mtlTextureForRenderer;
}

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  objc_sync_enter(self);
  ImageBuffer = CMSampleBufferGetImageBuffer(buffer);
  if (ImageBuffer)
  {
    sub_1AF28BE04(&self->_data, v8, v9, v10);
    self->_data.var0 = CVPixelBufferRetain(ImageBuffer);
    self->_videoMirrored = objc_msgSend_isVideoMirrored(connection, v12, v13, v14);
    self->_width = CVPixelBufferGetWidth(ImageBuffer);
    self->_height = CVPixelBufferGetHeight(ImageBuffer);
  }

  else
  {
    v15 = sub_1AF0D5194();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF3A08();
    }
  }

  objc_sync_exit(self);
}

@end