@interface VKAVCaptureFrameProvider
- (CGPoint)interestPoint;
- (VKAVCaptureFrameProvider)initWithConfiguration:(id)a3;
- (double)_luminosityForSampleBuffer:(uint64_t)a1;
- (id)_ciImage;
- (uint64_t)_currentFrame;
- (uint64_t)_respondsToDidCapturePhoto;
- (uint64_t)_respondsToDidZoom;
- (uint64_t)_respondsToIsRunning;
- (uint64_t)_stabilityFromSampleBuffer:(uint64_t)a1;
- (void)_avCapturePreparationComplete;
- (void)_avCapturePreparationComplete2;
- (void)_didChangeDimensions;
- (void)_setCurrentFrame:(uint64_t)a1;
- (void)_setRespondsToDidCapturePhoto:(uint64_t)a1;
- (void)_setRespondsToDidZoom:(uint64_t)a1;
- (void)_setRespondsToIsRunning:(uint64_t)a1;
- (void)avCapture:(id)a3 cameraAccessGranted:(BOOL)a4;
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
- (void)capturePhoto;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prepare;
- (void)previewView:(id)a3 didMoveToWindow:(id)a4;
- (void)setDelegate:(id)a3 queue:(id)a4;
- (void)setInterestPoint:(CGPoint)a3;
- (void)setRegionOfInterest:(CGRect)a3;
- (void)snapshotWithCompletion:(id)a3;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation VKAVCaptureFrameProvider

- (VKAVCaptureFrameProvider)initWithConfiguration:(id)a3
{
  v19.receiver = self;
  v19.super_class = VKAVCaptureFrameProvider;
  v3 = [(VKFrameProvider *)&v19 initWithConfiguration:a3];
  if (v3)
  {
    v4 = objc_alloc_init(VKAVCapturePreviewView);
    v5 = *(v3 + 15);
    *(v3 + 15) = v4;

    [(VKAVCapturePreviewView *)*(v3 + 15) setDelegate:v3];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, QOS_CLASS_USER_INITIATED, 0);

    v8 = dispatch_queue_create("com.apple.visionkit.samplebufferqueue", v7);
    v9 = *(v3 + 18);
    *(v3 + 18) = v8;

    v10 = dispatch_queue_create("com.apple.visionkit.snapshotQueue", v7);
    v11 = *(v3 + 19);
    *(v3 + 19) = v10;

    v12 = objc_alloc_init(VKAVCapture);
    v13 = *(v3 + 16);
    *(v3 + 16) = v12;

    [(VKAVCapture *)*(v3 + 16) setDelegate:v3];
    *(v3 + 168) = VKMRectUnit;
    *(v3 + 184) = *&qword_1B44285A8;
    v14 = MEMORY[0x1E695EFD0];
    v15 = *MEMORY[0x1E695EFD0];
    v16 = *(MEMORY[0x1E695EFD0] + 16);
    *(v3 + 200) = *MEMORY[0x1E695EFD0];
    *(v3 + 216) = v16;
    v17 = *(v14 + 32);
    *(v3 + 232) = v17;
    *(v3 + 248) = v15;
    *(v3 + 264) = v16;
    *(v3 + 280) = v17;
    *(v3 + 312) = v16;
    *(v3 + 328) = v17;
    *(v3 + 296) = v15;
  }

  return v3;
}

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v1;
    _os_log_impl(&dword_1B4335000, v2, OS_LOG_TYPE_DEFAULT, "Can't remove observer; we never added it. %@", &v3, 0xCu);
  }

  objc_end_catch();
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v33 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (VKAVCaptureFrameProviderContext == a6)
  {
    if ([v10 isEqualToString:@"videoZoomFactor"])
    {
      if (self)
      {
        [(VKFrameProvider *)self lock];
        respondsToDidZoom = self->_respondsToDidZoom;
        [(VKFrameProvider *)self unlock];
        if (respondsToDidZoom)
        {
          objc_initWeak(location, self);
          v14 = [(VKFrameProvider *)self delegateQueue];
          [VKAVCaptureFrameProvider observeValueForKeyPath:v14 ofObject:&v29 change:location context:?];
        }
      }
    }

    else if ([v10 isEqualToString:@"torchActive"])
    {
      [VKAVCaptureFrameProvider observeValueForKeyPath:? ofObject:? change:? context:?];
    }

    else if ([v10 isEqualToString:@"running"])
    {
      if (self)
      {
        [(VKFrameProvider *)self lock];
        respondsToIsRunning = self->_respondsToIsRunning;
        [(VKFrameProvider *)self unlock];
        if (respondsToIsRunning)
        {
          v16 = [(VKAVCapture *)self->_avCapture session];
          v17 = [v16 isRunning];

          objc_initWeak(location, self);
          v18 = [(VKFrameProvider *)self delegateQueue];
          [VKAVCaptureFrameProvider observeValueForKeyPath:v17 ofObject:v18 change:&v28 context:location];
        }
      }
    }

    else if ([v10 isEqualToString:@"videoRotationAngleForHorizonLevelPreview"])
    {
      v19 = [(VKFrameProvider *)self isProcessing];
      [(VKFrameProvider *)self stopProcessing];
      [(AVCaptureDeviceRotationCoordinator *)self->_avDeviceRotationCoordinator videoRotationAngleForHorizonLevelPreview];
      v21 = v20;
      [(VKAVCapturePreviewView *)self->_avCapturePreviewView setVideoRotationAngle:v20];
      objc_initWeak(&from, self);
      avCapture = self->_avCapture;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
      v25[3] = &unk_1E7BE4280;
      objc_copyWeak(&v26, &from);
      [(VKAVCapture *)avCapture setVideoRotationAngle:v25 completion:v21];
      v23 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *location = 138412546;
        *&location[4] = v10;
        v31 = 2048;
        v32 = v21;
        _os_log_impl(&dword_1B4335000, v23, OS_LOG_TYPE_DEFAULT, "%@ changed to %f", location, 0x16u);
      }

      [(VKAVCaptureFrameProvider *)self _didChangeDimensions];
      if (v19)
      {
        [(VKFrameProvider *)self startProcessing];
      }

      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
    }
  }

  else
  {
    v24.receiver = self;
    v24.super_class = VKAVCaptureFrameProvider;
    [(VKAVCaptureFrameProvider *)&v24 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

void __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 avCaptureFrameProviderDidZoom:v3];

    WeakRetained = v3;
  }
}

void __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained delegate];
    [v3 avCaptureFrameProvider:v4 didChangeIsRunning:*(a1 + 40)];

    WeakRetained = v4;
  }
}

void __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(VKAVCaptureFrameProvider *)WeakRetained _didChangeDimensions];
}

- (void)setDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v10 setDelegate:v6 queue:a4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__VKAVCaptureFrameProvider_setDelegate_queue___block_invoke;
  v8[3] = &unk_1E7BE4768;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  vk_performWhileLocked(self, v8);
}

uint64_t __46__VKAVCaptureFrameProvider_setDelegate_queue___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 344) = objc_opt_respondsToSelector() & 1;
  *(*(a1 + 32) + 345) = objc_opt_respondsToSelector() & 1;
  result = objc_opt_respondsToSelector();
  *(*(a1 + 32) + 346) = result & 1;
  return result;
}

- (void)prepare
{
  objc_initWeak(&location, self);
  avCapture = self->_avCapture;
  v4 = [(VKFrameProvider *)self configuration];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __35__VKAVCaptureFrameProvider_prepare__block_invoke;
  v5[3] = &unk_1E7BE41E0;
  objc_copyWeak(&v6, &location);
  [(VKAVCapture *)avCapture prepareWithConfiguration:v4 completion:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __35__VKAVCaptureFrameProvider_prepare__block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (a2)
  {
    [(VKAVCaptureFrameProvider *)WeakRetained _avCapturePreparationComplete];
  }

  else if (+[VKAVCapture authorizationStatus]== 2)
  {
    v4 = [v7 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [v7 delegate];
      [v6 avCaptureFrameProvider:v7 cameraAccessGranted:0];
    }
  }
}

- (void)_avCapturePreparationComplete
{
  if (a1)
  {
    v2 = [(VKAVCapture *)*(a1 + 128) device];
    [v2 addObserver:a1 forKeyPath:@"videoZoomFactor" options:1 context:VKAVCaptureFrameProviderContext];

    v3 = [(VKAVCapture *)*(a1 + 128) device];
    [v3 addObserver:a1 forKeyPath:@"torchActive" options:1 context:VKAVCaptureFrameProviderContext];

    v4 = [(VKAVCapture *)*(a1 + 128) session];
    [v4 addObserver:a1 forKeyPath:@"running" options:1 context:VKAVCaptureFrameProviderContext];

    v5 = *MEMORY[0x1E69874F0];
    v6 = [(VKAVCapturePreviewView *)*(a1 + 120) previewLayer];
    [v6 setVideoGravity:v5];

    v7 = [(VKAVCapture *)*(a1 + 128) session];
    v8 = [(VKAVCapturePreviewView *)*(a1 + 120) previewLayer];
    [v8 setSession:v7];

    v9 = [(VKAVCapture *)*(a1 + 128) videoDataOutput];
    [v9 setSampleBufferDelegate:a1 queue:*(a1 + 144)];

    v10 = objc_alloc(MEMORY[0x1E69870B8]);
    v11 = [(VKAVCapture *)*(a1 + 128) device];
    v12 = [(VKAVCapturePreviewView *)*(a1 + 120) previewLayer];
    v13 = [v10 initWithDevice:v11 previewLayer:v12];
    v14 = *(a1 + 136);
    *(a1 + 136) = v13;

    [*(a1 + 136) videoRotationAngleForHorizonLevelPreview];
    v16 = v15;
    [(VKAVCapturePreviewView *)*(a1 + 120) setVideoRotationAngle:v15];
    objc_initWeak(&location, a1);
    v17 = *(a1 + 128);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __57__VKAVCaptureFrameProvider__avCapturePreparationComplete__block_invoke;
    v18[3] = &unk_1E7BE4280;
    objc_copyWeak(&v19, &location);
    [(VKAVCapture *)v17 setVideoRotationAngle:v18 completion:v16];
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

- (void)startRunning
{
  v5.receiver = self;
  v5.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v5 startRunning];
  v3 = [(VKAVCapture *)self->_avCapture session];

  if (v3)
  {
    [(VKAVCapture *)&self->_avCapture->super.isa startRunning];
    v4 = 0;
  }

  else
  {
    [(VKAVCaptureFrameProvider *)self prepare];
    v4 = 1;
  }

  self->_startWhenReady = v4;
}

- (void)stopRunning
{
  [(VKAVCapture *)&self->_avCapture->super.isa stopRunning];
  v3.receiver = self;
  v3.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v3 stopRunning];
}

- (CGPoint)interestPoint
{
  v3 = [(VKAVCapture *)self->_avCapture interestPoint];
  v5 = v4;
  v6 = [(VKAVCapturePreviewView *)self->_avCapturePreviewView previewLayer];
  [v6 pointForCaptureDevicePointOfInterest:{v3, v5}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)setInterestPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(VKAVCapturePreviewView *)self->_avCapturePreviewView previewLayer];
  [v6 captureDevicePointOfInterestForPoint:{x, y}];

  avCapture = self->_avCapture;

  [VKAVCapture setInterestPoint:?];
}

- (void)capturePhoto
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(VKAVCapture *)self->_avCapture photoOutput];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = self;
    _os_log_impl(&dword_1B4335000, v3, OS_LOG_TYPE_DEFAULT, "[VKAVCaptureFrameProvider capturePhoto] with photoOutput:%@ self:%@", &v8, 0x16u);
  }

  v5 = [MEMORY[0x1E6987100] photoSettings];
  v6 = [(VKAVCapture *)self->_avCapture photoOutput];
  [v5 setMaxPhotoDimensions:{objc_msgSend(v6, "maxPhotoDimensions")}];

  [v5 setEmbedsDepthDataInPhoto:0];
  [v5 setDepthDataDeliveryEnabled:0];
  v7 = [(VKAVCapture *)self->_avCapture photoOutput];
  [v7 capturePhotoWithSettings:v5 delegate:self];
}

void __51__VKAVCaptureFrameProvider_snapshotWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(*(*(a1 + 48) + 8) + 40) imageByCroppingToRect:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  Width = CGRectGetWidth(*(a1 + 56));
  v6 = CGRectGetWidth(*(a1 + 88));
  v7 = *(*(a1 + 32) + 352);
  if (!v7)
  {
    v8 = [MEMORY[0x1E695F620] context];
    v9 = *(a1 + 32);
    v10 = *(v9 + 352);
    *(v9 + 352) = v8;

    v7 = *(*(a1 + 32) + 352);
  }

  v11 = *(*(*(a1 + 48) + 8) + 40);
  [v11 extent];
  v12 = [v7 createCGImage:v11 fromRect:?];
  v13 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v12 scale:0 orientation:Width / v6];
  CGImageRelease(v12);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __51__VKAVCaptureFrameProvider_snapshotWithCompletion___block_invoke_2;
  v16[3] = &unk_1E7BE47E0;
  v14 = *(a1 + 40);
  v17 = v13;
  v18 = v14;
  v15 = v13;
  vk_performBlockOnMainThread(v16);
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v9;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_1B4335000, v11, OS_LOG_TYPE_DEFAULT, "AVCapturePhotoCaptureDelegate received callback with photo: %@, error: %@", buf, 0x16u);
  }

  if (self && ([(VKFrameProvider *)self lock], respondsToDidCapturePhoto = self->_respondsToDidCapturePhoto, [(VKFrameProvider *)self unlock], respondsToDidCapturePhoto))
  {
    v13 = [v9 metadata];
    v14 = [v13 objectForKeyedSubscript:*MEMORY[0x1E696DE78]];
    v15 = [v14 integerValue];

    v16 = vk_orientationFromCGImagePropertyOrientation(v15);
    v17 = [v9 CGImageRepresentation];
    v18 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v17 scale:v16 orientation:1.0];
    objc_initWeak(buf, self);
    v19 = [(VKFrameProvider *)self delegateQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __73__VKAVCaptureFrameProvider_captureOutput_didFinishProcessingPhoto_error___block_invoke;
    block[3] = &unk_1E7BE51C8;
    objc_copyWeak(&v24, buf);
    v22 = v18;
    v23 = v10;
    v20 = v18;
    dispatch_async(v19, block);

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else
  {
    [VKAVCaptureFrameProvider captureOutput:didFinishProcessingPhoto:error:];
  }
}

void __73__VKAVCaptureFrameProvider_captureOutput_didFinishProcessingPhoto_error___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  v4 = v3;
  if (WeakRetained)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1B4335000, v4, OS_LOG_TYPE_DEFAULT, "VKAVCaptureFrameProviderDelegate Invoking didCapturePhoto on delegate.", v5, 2u);
    }

    v4 = [WeakRetained delegate];
    [v4 avCaptureFrameProvider:WeakRetained didCapturePhoto:*(a1 + 32) error:*(a1 + 40)];
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __73__VKAVCaptureFrameProvider_captureOutput_didFinishProcessingPhoto_error___block_invoke_cold_1(v4);
  }
}

void __57__VKAVCaptureFrameProvider__avCapturePreparationComplete__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [(VKAVCaptureFrameProvider *)WeakRetained _didChangeDimensions];
    [(VKAVCaptureFrameProvider *)v2 _avCapturePreparationComplete2];
    WeakRetained = v2;
  }
}

__n128 __48__VKAVCaptureFrameProvider__didChangeDimensions__block_invoke(uint64_t a1)
{
  v1 = (*(a1 + 32) + 168);
  v2 = *(a1 + 56);
  *v1 = *(a1 + 40);
  v1[1] = v2;
  v3 = (*(a1 + 32) + 200);
  v4 = *(a1 + 104);
  v5 = *(a1 + 88);
  *v3 = *(a1 + 72);
  v3[1] = v5;
  v3[2] = v4;
  v6 = (*(a1 + 32) + 248);
  v7 = *(a1 + 152);
  v8 = *(a1 + 136);
  *v6 = *(a1 + 120);
  v6[1] = v8;
  v6[2] = v7;
  v9 = *(a1 + 32) + 296;
  result = *(a1 + 168);
  v11 = *(a1 + 200);
  *(v9 + 16) = *(a1 + 184);
  *(v9 + 32) = v11;
  *v9 = result;
  return result;
}

- (void)previewView:(id)a3 didMoveToWindow:(id)a4
{
  v7 = a3;
  v6 = a4;
  if (v6 && self->_startWhenReady)
  {
    [(VKAVCaptureFrameProvider *)self startRunning];
  }
}

- (void)avCapture:(id)a3 cameraAccessGranted:(BOOL)a4
{
  v4 = a4;
  v6 = [(VKFrameProvider *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(VKFrameProvider *)self delegate];
    [v8 avCaptureFrameProvider:self cameraAccessGranted:v4];
  }
}

- (uint64_t)_respondsToDidZoom
{
  if (a1)
  {
    [a1 lock];
    v2 = a1[345];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_respondsToIsRunning
{
  if (a1)
  {
    [a1 lock];
    v2 = a1[346];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_didChangeDimensions
{
  if (a1)
  {
    v2 = [(VKAVCapture *)*(a1 + 128) videoSettings];
    v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E6966208]];
    [v3 doubleValue];
    sx = v4;

    v5 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69660B8]];
    [v5 doubleValue];
    v7 = v6;

    v8 = [a1 previewView];
    [v8 bounds];
    v68 = v9;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    [a1 regionOfInterest];
    x = v99.origin.x;
    y = v99.origin.y;
    width = v99.size.width;
    height = v99.size.height;
    IsEmpty = CGRectIsEmpty(v99);
    if (IsEmpty)
    {
      *&v21 = v13;
    }

    else
    {
      *&v21 = width;
    }

    if (IsEmpty)
    {
      *&v22 = v15;
    }

    else
    {
      *&v22 = height;
    }

    v64 = v22;
    v66 = v21;
    if (IsEmpty)
    {
      y = v11;
      v23 = *&v68;
    }

    else
    {
      v23 = x;
    }

    v24 = *&v7;
    if (VKMSizeGetArea(*&sx, *&v7) != 0.0 && VKMSizeGetArea(v13, v15) != 0.0)
    {
      v97 = 0u;
      v98 = 0u;
      v96 = 0u;
      v25 = OUTLINED_FUNCTION_5();
      VKMAffineTransformAspectFill(v26, v25, v27, v13, v15);
      memset(&v94, 0, sizeof(v94));
      memset(&v95, 0, sizeof(v95));
      CGAffineTransformInvert(&v95, &v94);
      memset(&v94, 0, sizeof(v94));
      v28 = OUTLINED_FUNCTION_5();
      VKMAffineTransformNormalize(v29, v28, v30);
      t1 = v95;
      v31 = CGAffineTransformConcat(&v94, &t1, &t2);
      memset(&t2, 0, sizeof(t2));
      OUTLINED_FUNCTION_3_1(v31, v32, v33, v34, v35, v36, v37, v38, v7, v64, v66, v68, sx, block, v74, v75, v76, v77, v78, v79, v80, v81, *&v82.a, *&v82.b, *&v82.c, *&v82.d, *&v82.tx, *&v82.ty, *&v83.a, *&v83.b, *&v83.c, *&v83.d, *&v83.tx, *&v83.ty, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), *&v87.a, *&v87.b, *&v87.c, *&v87.d, *&v87.tx, *&v87.ty, *&v88.a, *&v88.b, *&v88.c, *&v88.d, *&v88.tx, *&v88.ty, *&v89.a, *&v89.b, *&v89.c, *&v89.d, *&v89.tx, *&v89.ty, *&v90.a, *&v90.b, *&v90.c, *&v90.d, *&v90.tx);
      v91 = v94;
      CGAffineTransformConcat(&t2, &v91, &t1);
      t1 = t2;
      v100.origin.x = v23;
      v100.origin.y = y;
      v100.size.height = v65;
      v100.size.width = v67;
      v101 = CGRectApplyAffineTransform(v100, &t1);
      VKMClampRectToRect(v101.origin.x, v101.origin.y, v101.size.width, v101.size.height, 0.0, 0.0, 1.0, 1.0);
      OUTLINED_FUNCTION_7();
      v40 = v39;
      v42 = v41;
      memset(&t1, 0, sizeof(t1));
      OUTLINED_FUNCTION_3_1(v43, v44, v45, v46, v47, v48, v49, v50, sy, *&v65, *&v67, v69, sxa, block, v74, v75, v76, v77, v78, v79, v80, v81, *&v82.a, *&v82.b, *&v82.c, *&v82.d, *&v82.tx, *&v82.ty, *&v83.a, *&v83.b, *&v83.c, *&v83.d, *&v83.tx, *&v83.ty, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), *&v87.a, *&v87.b, *&v87.c, *&v87.d, *&v87.tx, *&v87.ty, *&v88.a, *&v88.b, *&v88.c, *&v88.d, *&v88.tx, *&v88.ty, *&v89.a, *&v89.b, *&v89.c, *&v89.d, *&v89.tx, *&v89.ty, *&v90.a, *&v90.b, *&v90.c, *&v90.d, *&v90.tx);
      v91 = t1;
      v102.origin.x = y;
      v102.origin.y = v24;
      v102.size.width = v40;
      v102.size.height = v42;
      CGRectApplyAffineTransform(v102, &v91);
      OUTLINED_FUNCTION_7();
      v52 = v51;
      v54 = v53;
      VKMAffineTransformScaleBySize(&v91, sxb, sya);
      v103.origin.x = OUTLINED_FUNCTION_5();
      v103.size.width = v52;
      v103.size.height = v54;
      CGRectApplyAffineTransform(v103, v55);
      OUTLINED_FUNCTION_7();
      memset(&v91, 0, sizeof(v91));
      VKMAffineTransformScaleBySize(&v90, v56, v57);
      v89 = t1;
      CGAffineTransformConcat(&v91, &v89, &v90);
      memset(&v90, 0, sizeof(v90));
      v58 = OUTLINED_FUNCTION_5();
      CGAffineTransformMakeTranslation(v59, v58, v60);
      v88 = v91;
      CGAffineTransformConcat(&v90, &v88, &v89);
      memset(&v89, 0, sizeof(v89));
      v87 = v95;
      CGAffineTransformInvert(&v88, &v87);
      v87 = v90;
      CGAffineTransformConcat(&v89, &v87, &v88);
      v61 = *(a1 + 144);
      block = MEMORY[0x1E69E9820];
      v74 = 3221225472;
      v75 = __48__VKAVCaptureFrameProvider__didChangeDimensions__block_invoke;
      v76 = &unk_1E7BE51F0;
      v77 = a1;
      v78 = *&y;
      v79 = *&v24;
      v80 = *&v40;
      v81 = *&v42;
      v82 = v91;
      v83 = v89;
      v86 = v98;
      v85 = v97;
      v84 = v96;
      dispatch_sync(v61, &block);
      [a1 resetAllProcessors];
    }
  }
}

- (void)setRegionOfInterest:(CGRect)a3
{
  v4.receiver = self;
  v4.super_class = VKAVCaptureFrameProvider;
  [(VKFrameProvider *)&v4 setRegionOfInterest:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  [(VKAVCaptureFrameProvider *)self _didChangeDimensions];
}

- (void)snapshotWithCompletion:(id)a3
{
  v10 = a3;
  v11 = v10;
  if (self && self->__currentFrame)
  {
    v12 = [(VKAVCaptureFrameProvider *)self previewView];
    [v12 bounds];
    OUTLINED_FUNCTION_7();
    v14 = v13;
    v16 = v15;

    [(VKFrameProvider *)self regionOfInterest];
    OUTLINED_FUNCTION_6();
    if (CGRectIsEmpty(v33))
    {
      v5 = v3;
      v6 = v4;
      v7 = v14;
      v8 = v16;
    }

    v17 = [(VKFrame *)self->__currentFrame info];
    v18 = v17;
    if (v17)
    {
      [v17 imageToLayerTransform];
    }

    else
    {
      memset(&v31, 0, sizeof(v31));
    }

    CGAffineTransformInvert(&v32, &v31);
    v34.origin.x = v5;
    v34.origin.y = v6;
    v34.size.width = v7;
    v34.size.height = v8;
    CGRectApplyAffineTransform(v34, &v32);
    OUTLINED_FUNCTION_6();

    v32.a = 0.0;
    *&v32.b = &v32;
    *&v32.c = 0x3032000000;
    *&v32.d = __Block_byref_object_copy__5;
    *&v32.tx = __Block_byref_object_dispose__5;
    *&v32.ty = [(VKAVCaptureFrameProvider *)self _ciImage];
    snapshotQueue = self->_snapshotQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__VKAVCaptureFrameProvider_snapshotWithCompletion___block_invoke;
    block[3] = &unk_1E7BE51A0;
    v23 = v5;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    v27 = v3;
    v28 = v4;
    v29 = v14;
    v30 = v16;
    v22 = &v32;
    block[4] = self;
    v21 = v11;
    dispatch_async(snapshotQueue, block);

    _Block_object_dispose(&v32, 8);
  }

  else
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (uint64_t)_currentFrame
{
  if (result)
  {
    return *(result + 392);
  }

  return result;
}

- (id)_ciImage
{
  if (a1 && *(a1 + 392))
  {
    ImageBuffer = CMSampleBufferGetImageBuffer([*(a1 + 392) sampleBuffer]);
    CVPixelBufferLockBaseAddress(ImageBuffer, 0);
    v2 = [MEMORY[0x1E695F658] imageWithCVImageBuffer:ImageBuffer];
    CVPixelBufferUnlockBaseAddress(ImageBuffer, 0);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_respondsToDidCapturePhoto
{
  if (a1)
  {
    [a1 lock];
    v2 = a1[344];
    [a1 unlock];
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (void)_setRespondsToDidCapturePhoto:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_setRespondsToDidZoom:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_setRespondsToIsRunning:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_0();
    OUTLINED_FUNCTION_2_1(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  }
}

- (void)_avCapturePreparationComplete2
{
  v11 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [*(a1 + 136) addObserver:a1 forKeyPath:@"videoRotationAngleForHorizonLevelPreview" options:1 context:VKAVCaptureFrameProviderContext];
    [(VKAVCaptureFrameProvider *)a1 _didChangeDimensions];
    if (*(a1 + 160) == 1)
    {
      v2 = [*(a1 + 120) window];
      if (v2)
      {
      }

      else
      {
        v3 = [a1 configuration];
        v4 = [v3 allowHeadlessProcessing];

        if ((v4 & 1) == 0)
        {
          v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = 138412290;
            v10 = a1;
            _os_log_error_impl(&dword_1B4335000, v8, OS_LOG_TYPE_ERROR, "%@ - AVCapturePreviewView doesn't have a window. Can't start running", &v9, 0xCu);
          }

          goto LABEL_7;
        }
      }

      [a1 startRunning];
    }

LABEL_7:
    v5 = [a1 delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [a1 delegate];
      [v7 avCaptureFrameProviderDidFinishPreparation:a1];
    }
  }
}

- (uint64_t)_stabilityFromSampleBuffer:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v4 = CMGetAttachment(target, @"SceneStabilityMetric", 0);
  if (!v4)
  {
    [VKAssert handleFailedAssertWithCondition:"stabilityMetrics != ((void*)0)" functionName:"[VKAVCaptureFrameProvider _stabilityFromSampleBuffer:]" simulateCrash:0 showAlert:0 format:@"Missing stability metric"];
  }

  [v4 doubleValue];
  v6 = v5;
  valuePtr = v5;
  v7 = [(VKAVCapture *)*(a1 + 128) device];
  v8 = [v7 activePrimaryConstituentDevice];

  v9 = [v8 deviceType];
  v10 = *MEMORY[0x1E6986948];

  if (v9 == v10)
  {
    valuePtr = v6 + (1.0 - v6) * 0.25;
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
    CMSetAttachment(target, @"SceneStabilityMetric", v11, 1u);
    CFRelease(v11);
    v6 = valuePtr;
  }

  v12 = 3;
  if (v6 < 0.96)
  {
    v12 = 2;
  }

  if (v6 < 0.6)
  {
    v13 = 1;
  }

  else
  {
    v13 = v12;
  }

  return v13;
}

- (double)_luminosityForSampleBuffer:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  v2 = CMCopyDictionaryOfAttachments(0, a2, 1u);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v2);
  CFRelease(v2);
  v4 = [(__CFDictionary *)MutableCopy objectForKeyedSubscript:@"{Exif}"];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"FNumber"];
    [v6 doubleValue];
    v8 = v7;

    v9 = [v5 objectForKeyedSubscript:@"ExposureTime"];
    [v9 doubleValue];
    v11 = v10;

    v12 = [v5 objectForKeyedSubscript:@"ISOSpeedRatings"];
    v13 = [v12 objectAtIndexedSubscript:0];
    [v13 doubleValue];
    v15 = v14;

    if (v11 * v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v8 * (v8 * 50.0) / (v11 * v15);
    }
  }

  else
  {
    v16 = 0.0;
  }

  return v16;
}

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  FormatDescription = CMSampleBufferGetFormatDescription(a4);
  Dimensions = CMVideoFormatDescriptionGetDimensions(FormatDescription);
  v9 = Dimensions;
  v10 = HIDWORD(Dimensions);
  v11 = objc_alloc_init(VKFrameInfo);
  [(VKFrameInfo *)v11 setDimensions:v9, v10];
  [(VKFrameInfo *)v11 setRegionOfInterest:self->_visionRegionOfInterest.origin.x, self->_visionRegionOfInterest.origin.y, self->_visionRegionOfInterest.size.width, self->_visionRegionOfInterest.size.height];
  [OUTLINED_FUNCTION_1_3() setVisionToCroppedImageTransform:?];
  [OUTLINED_FUNCTION_1_3() setVisionToLayerTransform:?];
  [OUTLINED_FUNCTION_1_3() setImageToLayerTransform:?];
  [(VKFrameInfo *)v11 setSceneStability:[(VKAVCaptureFrameProvider *)self _stabilityFromSampleBuffer:a4]];
  [(VKFrameInfo *)v11 setLuminosity:[(VKAVCaptureFrameProvider *)self _luminosityForSampleBuffer:a4]];
  v12 = objc_alloc_init(VKAVCaptureFrame);
  [(VKAVCaptureFrame *)v12 setSampleBuffer:a4];
  [(VKFrame *)v12 setInfo:v11];
  [(VKFrameProvider *)self sendFrame:v12];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v14[2] = __79__VKAVCaptureFrameProvider_captureOutput_didOutputSampleBuffer_fromConnection___block_invoke;
  v14[3] = &unk_1E7BE4768;
  v14[4] = self;
  v15 = v12;
  v13 = v12;
  dispatch_async(MEMORY[0x1E69E96A0], v14);
}

- (void)_setCurrentFrame:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 392), a2);
  }
}

- (void)observeValueForKeyPath:(id *)from ofObject:change:context:.cold.1(NSObject *a1, id *a2, id *from)
{
  *a2 = MEMORY[0x1E69E9820];
  a2[1] = 3221225472;
  a2[2] = __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke;
  a2[3] = &unk_1E7BE4280;
  objc_copyWeak(a2 + 4, from);
  dispatch_async(a1, a2);

  objc_destroyWeak(a2 + 4);
  objc_destroyWeak(from);
}

- (void)observeValueForKeyPath:(char)a1 ofObject:(NSObject *)a2 change:(id *)a3 context:(id *)from .cold.2(char a1, NSObject *a2, id *a3, id *from)
{
  *a3 = MEMORY[0x1E69E9820];
  a3[1] = 3221225472;
  a3[2] = __75__VKAVCaptureFrameProvider_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
  a3[3] = &unk_1E7BE5178;
  objc_copyWeak(a3 + 4, from);
  *(a3 + 40) = a1;
  dispatch_async(a2, a3);

  objc_destroyWeak(a3 + 4);
  objc_destroyWeak(from);
}

- (void)observeValueForKeyPath:(uint64_t *)a1 ofObject:change:context:.cold.3(uint64_t *a1)
{
  if ([a1 isTorchOn] && (-[VKAVCapture isTorchOn](a1[16]) & 1) == 0)
  {
    v2 = a1[16];

    [(VKAVCapture *)v2 setTorchOn:?];
  }
}

- (void)captureOutput:didFinishProcessingPhoto:error:.cold.1()
{
  v0 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_1B4335000, v0, OS_LOG_TYPE_ERROR, "Unexpected error. VKAVCaptureFrameProviderDelegate doesn't respond to didCapturePhoto", v1, 2u);
  }
}

@end