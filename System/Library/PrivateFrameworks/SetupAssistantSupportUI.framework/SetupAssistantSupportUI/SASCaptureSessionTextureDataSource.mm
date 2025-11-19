@interface SASCaptureSessionTextureDataSource
- (CGAffineTransform)bookendTextureTransform;
- (SASCaptureSessionTextureDataSource)init;
- (id)bookendTexture;
- (void)captureLayer:(id)a3;
- (void)captureSession:(id)a3 receivedSampleBuffer:(opaqueCMSampleBuffer *)a4;
- (void)captureView:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)onTextureQueue_displaySampleBuffer:(opaqueCMSampleBuffer *)a3;
@end

@implementation SASCaptureSessionTextureDataSource

- (SASCaptureSessionTextureDataSource)init
{
  v14.receiver = self;
  v14.super_class = SASCaptureSessionTextureDataSource;
  v2 = [(SASCaptureSessionTextureDataSource *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v4 = dispatch_queue_create("setupassistantsupport.textureDataSource.texture", v3);
    [(SASCaptureSessionTextureDataSource *)v2 setTextureQueue:v4];

    v5 = objc_alloc_init(SASFigCaptureSession);
    captureSession = v2->_captureSession;
    v2->_captureSession = v5;

    v7 = MTLCreateSystemDefaultDevice();
    v8 = [(SASCaptureSessionTextureDataSource *)v2 textureQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__SASCaptureSessionTextureDataSource_init__block_invoke;
    v11[3] = &unk_279BB2B78;
    v12 = v7;
    v13 = v2;
    v9 = v7;
    dispatch_sync(v8, v11);
  }

  return v2;
}

void __42__SASCaptureSessionTextureDataSource_init__block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CC4D40];
  v5[0] = &unk_2877617C0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  if (CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v2, *(a1 + 32), 0, (*(a1 + 40) + 32)))
  {
    v3 = +[SASUILogging bookendFacility];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__SASCaptureSessionTextureDataSource_init__block_invoke_cold_1();
    }

    [*(a1 + 40) setTextureCache:0];
  }
}

- (void)captureView:(id)a3
{
  v5 = self->_captureSession;
  if (v5)
  {
    v6 = a3;
    [(SASFigCaptureSession *)v5 setCaptureObserver:self];
    v9 = 0;
    [(SASFigCaptureSession *)v5 captureView:v6 error:&v9];

    v7 = v9;
    if (v7)
    {
      v8 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [SASCaptureSessionTextureDataSource captureView:];
      }
    }
  }
}

- (void)captureLayer:(id)a3
{
  v5 = self->_captureSession;
  if (v5)
  {
    v6 = a3;
    [(SASFigCaptureSession *)v5 setCaptureObserver:self];
    v12 = 0;
    v7 = [(SASFigCaptureSession *)v5 captureLayer:v6 error:&v12];

    v8 = v12;
    v9 = v8;
    if (!v7 || v8 != 0)
    {
      v11 = +[SASUILogging bookendFacility];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SASCaptureSessionTextureDataSource captureLayer:];
      }
    }
  }
}

- (void)dealloc
{
  v3 = +[SASUILogging bookendFacility];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_265A4C000, v3, OS_LOG_TYPE_DEFAULT, "Capture session data source deallocated", buf, 2u);
  }

  [(SASCaptureSessionTextureDataSource *)self invalidate];
  v4.receiver = self;
  v4.super_class = SASCaptureSessionTextureDataSource;
  [(SASCaptureSessionTextureDataSource *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = [(SASCaptureSessionTextureDataSource *)self captureSession];
  [v3 invalidate];

  captureSession = self->_captureSession;
  self->_captureSession = 0;

  v5 = [(SASCaptureSessionTextureDataSource *)self textureQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__SASCaptureSessionTextureDataSource_invalidate__block_invoke;
  block[3] = &unk_279BB2BE0;
  block[4] = self;
  dispatch_sync(v5, block);
}

uint64_t __48__SASCaptureSessionTextureDataSource_invalidate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCurrentTexture:0];
  CVMetalTextureCacheFlush([*(a1 + 32) textureCache], 0);
  v2 = *(a1 + 32);

  return [v2 setTextureCache:0];
}

- (id)bookendTexture
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  v3 = [(SASCaptureSessionTextureDataSource *)self textureQueue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SASCaptureSessionTextureDataSource_bookendTexture__block_invoke;
  v6[3] = &unk_279BB2C08;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __52__SASCaptureSessionTextureDataSource_bookendTexture__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) currentTexture];

  return MEMORY[0x2821F96F8]();
}

- (CGAffineTransform)bookendTextureTransform
{
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  v5 = -self->_unlockProgress;
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&v15.a = *MEMORY[0x277CBF2C0];
  *&v15.c = v6;
  *&v15.tx = *(MEMORY[0x277CBF2C0] + 32);
  result = CGAffineTransformTranslate(retstr, &v15, 0.0, v5);
  orientation = self->_orientation;
  switch(orientation)
  {
    case 4:
      v12 = *&retstr->c;
      *&v14.a = *&retstr->a;
      *&v14.c = v12;
      *&v14.tx = *&retstr->tx;
      v10 = -1.57079633;
      break;
    case 3:
      v11 = *&retstr->c;
      *&v14.a = *&retstr->a;
      *&v14.c = v11;
      *&v14.tx = *&retstr->tx;
      v10 = 1.57079633;
      break;
    case 2:
      v9 = *&retstr->c;
      *&v14.a = *&retstr->a;
      *&v14.c = v9;
      *&v14.tx = *&retstr->tx;
      v10 = 3.14159265;
      break;
    default:
      return result;
  }

  result = CGAffineTransformRotate(&v15, &v14, v10);
  v13 = *&v15.c;
  *&retstr->a = *&v15.a;
  *&retstr->c = v13;
  *&retstr->tx = *&v15.tx;
  return result;
}

- (void)captureSession:(id)a3 receivedSampleBuffer:(opaqueCMSampleBuffer *)a4
{
  v6 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  v7 = [(SASCaptureSessionTextureDataSource *)self textureQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__SASCaptureSessionTextureDataSource_captureSession_receivedSampleBuffer___block_invoke;
  block[3] = &unk_279BB2C30;
  block[5] = &v12;
  block[6] = a4;
  block[4] = self;
  dispatch_sync(v7, block);

  v8 = self;
  objc_sync_enter(v8);
  if (v13[5])
  {
    v9 = [(SASCaptureSessionTextureDataSource *)v8 onReadyBlock];

    if (v9)
    {
      v10 = [(SASCaptureSessionTextureDataSource *)v8 onReadyBlock];
      (v10)[2](v10, v8);

      [(SASCaptureSessionTextureDataSource *)v8 setOnReadyBlock:0];
    }
  }

  objc_sync_exit(v8);

  _Block_object_dispose(&v12, 8);
}

uint64_t __74__SASCaptureSessionTextureDataSource_captureSession_receivedSampleBuffer___block_invoke(uint64_t a1)
{
  [*(a1 + 32) onTextureQueue_displaySampleBuffer:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) currentTexture];

  return MEMORY[0x2821F96F8]();
}

- (void)onTextureQueue_displaySampleBuffer:(opaqueCMSampleBuffer *)a3
{
  v5 = [(SASCaptureSessionTextureDataSource *)self textureQueue];
  dispatch_assert_queue_V2(v5);

  if (a3)
  {
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    if (ImageBuffer)
    {
      v7 = ImageBuffer;
      if (CVPixelBufferGetPixelFormatType(ImageBuffer) == 1999843442)
      {
        Width = CVPixelBufferGetWidth(v7);
        Height = CVPixelBufferGetHeight(v7);
        image = 0;
        if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], [(SASCaptureSessionTextureDataSource *)self textureCache], v7, 0, MTLPixelFormatBGR10_XR_sRGB, Width, Height, 0, &image))
        {
          v10 = 1;
        }

        else
        {
          v10 = image == 0;
        }

        if (v10)
        {
          v11 = +[SASUILogging bookendFacility];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [SASCaptureSessionTextureDataSource onTextureQueue_displaySampleBuffer:];
          }

          [(SASCaptureSessionTextureDataSource *)self setCurrentTexture:0];
        }

        else
        {
          v13 = CVMetalTextureGetTexture(image);
          [(SASCaptureSessionTextureDataSource *)self setCurrentTexture:v13];
        }

        if (image)
        {
          CFRelease(image);
        }
      }

      else
      {
        v12 = +[SASUILogging bookendFacility];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [SASCaptureSessionTextureDataSource onTextureQueue_displaySampleBuffer:];
        }

        [(SASCaptureSessionTextureDataSource *)self setCurrentTexture:0];
      }

      CVMetalTextureCacheFlush([(SASCaptureSessionTextureDataSource *)self textureCache], 0);
    }
  }
}

@end