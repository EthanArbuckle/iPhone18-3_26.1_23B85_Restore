@interface OKWidgetCameraView
+ (id)deviceWithInputType:(int64_t)type inputDeviceName:(id)name;
+ (id)supportedSettings;
+ (void)setupJavascriptContext:(id)context;
- (BOOL)isSessionRunningAndDeviceAuthorized;
- (BOOL)prepareForDisplay:(BOOL)display;
- (BOOL)prepareForUnload:(BOOL)unload;
- (BOOL)prepareForWarmup:(BOOL)warmup;
- (OKWidgetCameraView)initWithWidget:(id)widget;
- (void)__stopRunning;
- (void)_prepareSessionIfNeeded;
- (void)_startRunning;
- (void)_stopRunning;
- (void)checkDeviceAuthorizationStatus;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setSettingInputDeviceName:(id)name;
- (void)setSettingVolume:(float)volume;
@end

@implementation OKWidgetCameraView

- (BOOL)isSessionRunningAndDeviceAuthorized
{
  isRunning = [(AVCaptureSession *)self->_session isRunning];
  if (isRunning)
  {

    LOBYTE(isRunning) = [(OKWidgetCameraView *)self isDeviceAuthorized];
  }

  return isRunning;
}

- (OKWidgetCameraView)initWithWidget:(id)widget
{
  v11.receiver = self;
  v11.super_class = OKWidgetCameraView;
  v3 = [(OKWidgetViewProxy *)&v11 initWithWidget:widget];
  if (v3)
  {
    v3->_sessionQueue = dispatch_queue_create("OKWidgetCameraViewQueue", 0);
    v3->_session = objc_alloc_init(MEMORY[0x277CE5B38]);
    v3->_videoDeviceInput = 0;
    v3->_audioDeviceInput = 0;
    v3->_deviceAuthorized = 0;
    v3->_runtimeErrorHandlingObserver = 0;
    v3->_deviceConnectedObserver = 0;
    v3->_deviceDisconnectedObserver = 0;
    v4 = [OKWidgetCameraPreviewView alloc];
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] bounds];
    v5 = [(OFViewProxy *)v4 initWithFrame:?];
    v3->_previewView = v5;
    [(OKWidgetCameraPreviewView *)v5 setAutoresizingMask:18];
    [(OKWidgetCameraPreviewView *)v3->_previewView setSession:v3->_session];
    [(OFUIView *)[(OKWidgetViewProxy *)v3 contentView] addSubview:v3->_previewView];
    v3->_inputType = 2;
    v3->_inputDeviceName = 0;
    v3->_volume = 0.0;
    v6 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:v3];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v3->_deviceConnectedObserver = [defaultCenter addObserverForName:*MEMORY[0x277CE5898] object:0 queue:0 usingBlock:&v10];
    v3->_deviceDisconnectedObserver = [defaultCenter addObserverForName:*MEMORY[0x277CE58A0] object:0 queue:0 usingBlock:&v9];
  }

  return v3;
}

void __37__OKWidgetCameraView_initWithWidget___block_invoke(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) object];
  if (v4)
  {
    v5 = v4;
    if ([v4 prepareMode] == 1)
    {
      NSLog(&cfstr_ConnectedDevic.isa, [a2 object]);
      v6 = *(a1 + 40);
      if (!*(v6 + 1504) || !*(v6 + 1512))
      {
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __37__OKWidgetCameraView_initWithWidget___block_invoke_2;
        block[3] = &unk_279C8E818;
        block[4] = v5;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }
}

id *__37__OKWidgetCameraView_initWithWidget___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  result = [*(a1 + 32) object];
  if (result)
  {
    v5 = result;
    result = [result prepareMode];
    if (result == 1)
    {
      v6 = [a2 object];
      NSLog(&cfstr_DisconnectedDe.isa, v6);
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v7 = [v5[187] inputs];
      result = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (result)
      {
        v8 = result;
        v9 = *v19;
        while (2)
        {
          v10 = 0;
          do
          {
            if (*v19 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v18 + 1) + 8 * v10);
            if ([objc_msgSend(v11 "device")])
            {
              [*(*(a1 + 40) + 1496) beginConfiguration];
              [*(*(a1 + 40) + 1496) removeInput:v11];
              v12 = [*(*(a1 + 40) + 1504) isEqual:v11];
              v13 = *(a1 + 40);
              if (v12)
              {
                v14 = *(v13 + 1504);
                if (v14)
                {

                  *(*(a1 + 40) + 1504) = 0;
                  v13 = *(a1 + 40);
                }
              }

              v15 = [*(v13 + 1512) isEqual:v11];
              v16 = *(a1 + 40);
              if (v15)
              {
                v17 = *(v16 + 1512);
                if (v17)
                {

                  *(*(a1 + 40) + 1512) = 0;
                  v16 = *(a1 + 40);
                }
              }

              return [*(v16 + 1496) commitConfiguration];
            }

            v10 = (v10 + 1);
          }

          while (v8 != v10);
          result = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
          v8 = result;
          if (result)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return result;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = defaultCenter;
  if (self->_deviceConnectedObserver)
  {
    [defaultCenter removeObserver:?];
    if (self->_deviceConnectedObserver)
    {
      self->_deviceConnectedObserver = 0;
    }
  }

  if (self->_deviceDisconnectedObserver)
  {
    [v4 removeObserver:?];
    if (self->_deviceDisconnectedObserver)
    {
      self->_deviceDisconnectedObserver = 0;
    }
  }

  [(OKWidgetCameraPreviewView *)self->_previewView setSession:0];
  previewView = self->_previewView;
  if (previewView)
  {

    self->_previewView = 0;
  }

  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__OKWidgetCameraView_dealloc__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_async(sessionQueue, block);
  v7 = self->_sessionQueue;
  if (v7)
  {
    dispatch_release(v7);
    self->_sessionQueue = 0;
  }

  inputDeviceName = self->_inputDeviceName;
  if (inputDeviceName)
  {

    self->_inputDeviceName = 0;
  }

  v9.receiver = self;
  v9.super_class = OKWidgetCameraView;
  [(OKWidgetView *)&v9 dealloc];
}

void __29__OKWidgetCameraView_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) __stopRunning];
  [*(*(a1 + 32) + 1496) beginConfiguration];
  v2 = *(a1 + 32);
  if (*(v2 + 1504))
  {
    [*(v2 + 1496) removeInput:?];
    v2 = *(a1 + 32);
    v3 = *(v2 + 1504);
    if (v3)
    {

      *(*(a1 + 32) + 1504) = 0;
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 1512))
  {
    [*(v2 + 1496) removeInput:?];
    v2 = *(a1 + 32);
    v4 = *(v2 + 1512);
    if (v4)
    {

      *(*(a1 + 32) + 1512) = 0;
      v2 = *(a1 + 32);
    }
  }

  [*(v2 + 1496) commitConfiguration];
  v5 = *(*(a1 + 32) + 1496);
  if (v5)
  {

    *(*(a1 + 32) + 1496) = 0;
  }
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = OKWidgetCameraView;
  [(OKWidgetViewProxy *)&v2 layoutSubviews];
}

+ (id)supportedSettings
{
  v12[3] = *MEMORY[0x277D85DE8];
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___OKWidgetCameraView;
  v2 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSendSuper2(&v4, sel_supportedSettings)}];
  v11[0] = @"input";
  v9[0] = @"type";
  v9[1] = @"mapping";
  v10[0] = &unk_287AF01D0;
  v10[1] = &unk_287AF1E10;
  v9[2] = @"default";
  v10[2] = @"frontCamera";
  v12[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v11[1] = @"inputDeviceName";
  v7[1] = @"default";
  v8[0] = &unk_287AF0230;
  v7[0] = @"type";
  v8[1] = [MEMORY[0x277CBEB68] null];
  v12[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v11[2] = @"volume";
  v5[0] = @"type";
  v5[1] = @"default";
  v6[0] = &unk_287AF0248;
  v6[1] = &unk_287AF2258;
  v12[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:2];
  [v2 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  return v2;
}

- (void)setSettingInputDeviceName:(id)name
{
  inputDeviceName = self->_inputDeviceName;
  if (inputDeviceName)
  {

    self->_inputDeviceName = 0;
  }

  self->_inputDeviceName = [name copy];
}

- (void)setSettingVolume:(float)volume
{
  if (self->_volume != volume)
  {
    self->_volume = volume;
  }
}

- (void)_prepareSessionIfNeeded
{
  if (!self->_videoDeviceInput || !self->_audioDeviceInput)
  {
    block[5] = v2;
    block[6] = v3;
    sessionQueue = self->_sessionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__OKWidgetCameraView__prepareSessionIfNeeded__block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_async(sessionQueue, block);
  }
}

uint64_t __45__OKWidgetCameraView__prepareSessionIfNeeded__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 1496) beginConfiguration];
  v15 = 0;
  v2 = *(a1 + 32);
  if (!v2[188])
  {
    v3 = [OKWidgetCameraView deviceWithInputType:v2[195] inputDeviceName:v2[196]];
    v4 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v3 error:&v15];
    v5 = MEMORY[0x277D62808];
    if (v15 && *MEMORY[0x277D62808] >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetCameraView.m" line:377 andFormat:@"Failed to init video device input: %@", objc_msgSend(v15, "localizedDescription")];
    }

    if ([*(*(a1 + 32) + 1496) canAddInput:v4])
    {
      [*(*(a1 + 32) + 1496) addInput:v4];
      *(*(a1 + 32) + 1504) = v4;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __45__OKWidgetCameraView__prepareSessionIfNeeded__block_invoke_2;
      block[3] = &unk_279C8E818;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else if (*v5 >= 4)
    {
      [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetCameraView.m" line:397 andFormat:@"Failed to init video device input"];
    }
  }

  v6 = *(a1 + 32);
  if (!v6[189])
  {
    if (v6[195] == 2)
    {
      v8 = [OKWidgetCameraView deviceWithInputType:2 inputDeviceName:v6[196]];
    }

    else
    {
      v9 = [MEMORY[0x277CE5AC8] devicesWithMediaType:*MEMORY[0x277CE5E48]];
      if (![v9 count])
      {
        goto LABEL_21;
      }

      v8 = [v9 firstObject];
    }

    if (v8)
    {
      v10 = [MEMORY[0x277CE5AD8] deviceInputWithDevice:v8 error:&v15];
      v11 = MEMORY[0x277D62808];
      if (v15 && *MEMORY[0x277D62808] >= 4)
      {
        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetCameraView.m" line:427 andFormat:@"Failed to init audio device input: %@", objc_msgSend(v15, "localizedDescription")];
      }

      if ([*(*(a1 + 32) + 1496) canAddInput:v10])
      {
        *(*(a1 + 32) + 1512) = v10;
        [*(*(a1 + 32) + 1496) addInput:v10];
        return [*(*(a1 + 32) + 1496) commitConfiguration];
      }

      if (*v11 < 4)
      {
        return [*(*(a1 + 32) + 1496) commitConfiguration];
      }

      v12 = MEMORY[0x277D627B8];
      v13 = 437;
LABEL_25:
      [v12 logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetCameraView.m" line:v13 andFormat:@"Failed to init audio device input"];
      return [*(*(a1 + 32) + 1496) commitConfiguration];
    }

LABEL_21:
    if (*MEMORY[0x277D62808] < 4)
    {
      return [*(*(a1 + 32) + 1496) commitConfiguration];
    }

    v12 = MEMORY[0x277D627B8];
    v13 = 442;
    goto LABEL_25;
  }

  return [*(*(a1 + 32) + 1496) commitConfiguration];
}

uint64_t __45__OKWidgetCameraView__prepareSessionIfNeeded__block_invoke_2(uint64_t a1)
{
  v1 = [objc_msgSend(*(*(a1 + 32) + 1552) "layer")];

  return [v1 setVideoOrientation:4];
}

- (void)_startRunning
{
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__OKWidgetCameraView__startRunning__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

uint64_t __35__OKWidgetCameraView__startRunning__block_invoke(uint64_t a1)
{
  [*(a1 + 32) __stopRunning];
  v2 = [MEMORY[0x277D62800] weakReferenceHolderWithObject:*(a1 + 32)];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CE59C0];
  v5 = *(*(a1 + 32) + 1496);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__OKWidgetCameraView__startRunning__block_invoke_2;
  v7[3] = &unk_279C8FA10;
  v7[4] = v2;
  *(*(a1 + 32) + 1528) = [v3 addObserverForName:v4 object:v5 queue:0 usingBlock:v7];
  return [*(*(a1 + 32) + 1496) startRunning];
}

void __35__OKWidgetCameraView__startRunning__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  if (v1)
  {
    if (*(v1 + 1528))
    {
      v2 = *(v1 + 1488);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __35__OKWidgetCameraView__startRunning__block_invoke_3;
      block[3] = &unk_279C8E818;
      block[4] = v1;
      dispatch_async(v2, block);
    }
  }
}

- (void)__stopRunning
{
  [(AVCaptureSession *)self->_session stopRunning];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  if (self->_runtimeErrorHandlingObserver)
  {
    [defaultCenter removeObserver:?];
    if (self->_runtimeErrorHandlingObserver)
    {
      self->_runtimeErrorHandlingObserver = 0;
    }
  }
}

- (void)_stopRunning
{
  sessionQueue = self->_sessionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__OKWidgetCameraView__stopRunning__block_invoke;
  block[3] = &unk_279C8E818;
  block[4] = self;
  dispatch_async(sessionQueue, block);
}

- (BOOL)prepareForDisplay:(BOOL)display
{
  v6.receiver = self;
  v6.super_class = OKWidgetCameraView;
  v4 = [(OKWidgetViewProxy *)&v6 prepareForDisplay:display];
  if (v4)
  {
    [(OKWidgetCameraView *)self checkDeviceAuthorizationStatus];
    [(OKWidgetCameraView *)self _prepareSessionIfNeeded];
    [(OKWidgetCameraView *)self _startRunning];
  }

  return v4;
}

- (BOOL)prepareForWarmup:(BOOL)warmup
{
  v8.receiver = self;
  v8.super_class = OKWidgetCameraView;
  v4 = [(OKWidgetViewProxy *)&v8 prepareForWarmup:warmup];
  if (v4)
  {
    sessionQueue = self->_sessionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__OKWidgetCameraView_prepareForWarmup___block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_async(sessionQueue, block);
  }

  return v4;
}

uint64_t __39__OKWidgetCameraView_prepareForWarmup___block_invoke(uint64_t a1)
{
  [*(a1 + 32) __stopRunning];
  [*(*(a1 + 32) + 1496) beginConfiguration];
  v2 = *(a1 + 32);
  if (*(v2 + 1504))
  {
    [*(v2 + 1496) removeInput:?];
    v2 = *(a1 + 32);
    v3 = *(v2 + 1504);
    if (v3)
    {

      *(*(a1 + 32) + 1504) = 0;
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 1512))
  {
    [*(v2 + 1496) removeInput:?];
    v2 = *(a1 + 32);
    v4 = *(v2 + 1512);
    if (v4)
    {

      *(*(a1 + 32) + 1512) = 0;
      v2 = *(a1 + 32);
    }
  }

  v5 = *(v2 + 1496);

  return [v5 commitConfiguration];
}

- (BOOL)prepareForUnload:(BOOL)unload
{
  v8.receiver = self;
  v8.super_class = OKWidgetCameraView;
  v4 = [(OKWidgetViewProxy *)&v8 prepareForUnload:unload];
  if (v4)
  {
    sessionQueue = self->_sessionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__OKWidgetCameraView_prepareForUnload___block_invoke;
    block[3] = &unk_279C8E818;
    block[4] = self;
    dispatch_async(sessionQueue, block);
  }

  return v4;
}

uint64_t __39__OKWidgetCameraView_prepareForUnload___block_invoke(uint64_t a1)
{
  [*(a1 + 32) __stopRunning];
  [*(*(a1 + 32) + 1496) beginConfiguration];
  v2 = *(a1 + 32);
  if (*(v2 + 1504))
  {
    [*(v2 + 1496) removeInput:?];
    v2 = *(a1 + 32);
    v3 = *(v2 + 1504);
    if (v3)
    {

      *(*(a1 + 32) + 1504) = 0;
      v2 = *(a1 + 32);
    }
  }

  if (*(v2 + 1512))
  {
    [*(v2 + 1496) removeInput:?];
    v2 = *(a1 + 32);
    v4 = *(v2 + 1512);
    if (v4)
    {

      *(*(a1 + 32) + 1512) = 0;
      v2 = *(a1 + 32);
    }
  }

  v5 = *(v2 + 1496);

  return [v5 commitConfiguration];
}

+ (void)setupJavascriptContext:(id)context
{
  [context setObject:objc_opt_class() forKeyedSubscript:@"OKWidgetCameraView"];
  v4 = objc_opt_class();

  [OKSettings exportClassSettings:v4 toJavaScriptContext:context];
}

- (void)checkDeviceAuthorizationStatus
{
  v2 = *MEMORY[0x277CE5EA8];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__OKWidgetCameraView_checkDeviceAuthorizationStatus__block_invoke;
  v3[3] = &unk_279C8FA38;
  v3[4] = self;
  [MEMORY[0x277CE5AC8] requestAccessForMediaType:v2 completionHandler:v3];
}

void __52__OKWidgetCameraView_checkDeviceAuthorizationStatus__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);

    [v4 setDeviceAuthorized:1];
  }

  else
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __52__OKWidgetCameraView_checkDeviceAuthorizationStatus__block_invoke_2;
    block[3] = &unk_279C8E818;
    block[4] = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

+ (id)deviceWithInputType:(int64_t)type inputDeviceName:(id)name
{
  v21 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    v5 = 1;
  }

  else
  {
    if (type == 2)
    {
      if (*MEMORY[0x277D62808] >= 4)
      {
        nameCopy = @"Default";
        if (name)
        {
          nameCopy = name;
        }

        [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetCameraView.m" line:649 andFormat:@"Failed to find iOS device camera input %@", nameCopy];
      }

      return 0;
    }

    v5 = 2;
  }

  v6 = [MEMORY[0x277CE5AC8] devicesWithMediaType:{*MEMORY[0x277CE5EA8], name}];
  firstObject = [v6 firstObject];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if ([v12 position] == v5)
        {
          firstObject = v12;
          goto LABEL_19;
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:
  if (firstObject)
  {
    v13 = 1;
  }

  else
  {
    v13 = *MEMORY[0x277D62808] < 4;
  }

  if (!v13)
  {
    [MEMORY[0x277D627B8] logMessageWithLevel:4 file:"/Library/Caches/com.apple.xbs/Sources/SlideshowKit/OpusKit/Framework/Widgets/OKWidgetCameraView.m" line:681 andFormat:@"Failed to find video camera input", v15];
    return 0;
  }

  if (!firstObject)
  {
    return 0;
  }

  return firstObject;
}

@end