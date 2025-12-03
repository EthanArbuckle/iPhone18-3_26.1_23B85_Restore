@interface TUVideoDeviceControllerProvider
+ (void)prewarm;
- (BOOL)hasAvailableDeskViewCameras;
- (BOOL)isBackgroundReplacementEnabled;
- (BOOL)isCameraBlurEnabled;
- (BOOL)isCinematicFramingEnabled;
- (BOOL)isPreviewRunning;
- (BOOL)isReactionEffectGestureEnabled;
- (BOOL)isStudioLightEnabled;
- (BOOL)supportsCameraBlurForDevice:(id)device;
- (NSArray)availableVideoEffects;
- (NSArray)inputDevices;
- (NSString)localCameraUID;
- (TUVideoDeviceControllerProvider)init;
- (TUVideoDeviceControllerProviderDelegate)delegate;
- (VideoAttributes)localVideoAttributes;
- (id)localScreenAttributesForVideoAttributes:(id)attributes;
- (id)queryAVCaptureDeviceWithType:(id)type mediaType:(id)mediaType position:(int64_t)position;
- (id)thumbnailImageForVideoEffectName:(id)name;
- (int64_t)currentBackgroundBlurControlMode;
- (void)beginPIPToPreviewAnimation;
- (void)beginPreviewToPIPAnimation;
- (void)cameraDidBecomeAvailableForUniqueID:(id)d;
- (void)cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason;
- (void)captureDevicesChanged:(id)changed;
- (void)centerStageAvailableChangedNotification:(id)notification;
- (void)dealloc;
- (void)didChangeLocalCameraUID:(id)d;
- (void)didChangeLocalVideoAttributes:(id)attributes;
- (void)didDetectSensitiveContentWithAnalysis:(id)analysis;
- (void)didGetSnapshot:(id)snapshot;
- (void)didPausePreview;
- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error;
- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)endPIPToPreviewAnimation;
- (void)endPreviewToPIPAnimation;
- (void)getSnapshot;
- (void)invalidateInputDevicesCache;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pausePreview;
- (void)queryAVCaptureDeviceIfNeeded;
- (void)rampCameraZoomFactor:(double)factor withRate:(double)rate;
- (void)setCameraZoomFactor:(double)factor;
- (void)setCurrentBackgroundBlurControlMode:(int64_t)mode;
- (void)setCurrentVideoEffect:(id)effect;
- (void)setLocalCameraWithUID:(id)d;
- (void)setLocalScreenAttributes:(id)attributes;
- (void)setLocalVideoAttributes:(id)attributes;
- (void)startPreview;
- (void)stopPreview;
@end

@implementation TUVideoDeviceControllerProvider

+ (void)prewarm
{
  v2 = dispatch_get_global_queue(21, 0);
  dispatch_async(v2, &__block_literal_global_79);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke()
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVMediaTypeVideo != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_1();
  }

  v0 = CUTWeakLinkClass();
  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_2();
  }

  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVCaptureDeviceTypeBuiltInWideAngleCamera != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_3();
  }

  if (TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__pred__AVCaptureDeviceTypeBuiltInDualCamera != -1)
  {
    __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_cold_4();
  }

  v7[0] = TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v2 = [v0 discoverySessionWithDeviceTypes:v1 mediaType:TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVMediaTypeVideo position:2];

  v6 = TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v4 = [v0 discoverySessionWithDeviceTypes:v3 mediaType:TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVMediaTypeVideo position:2];

  v5 = *MEMORY[0x1E69E9840];
}

- (TUVideoDeviceControllerProvider)init
{
  v12.receiver = self;
  v12.super_class = TUVideoDeviceControllerProvider;
  v2 = [(TUVideoDeviceControllerProvider *)&v12 init];
  if (v2)
  {
    aVConferencePreviewSingleton = [CUTWeakLinkClass() AVConferencePreviewSingleton];
    preview = v2->_preview;
    v2->_preview = aVConferencePreviewSingleton;

    [(AVConferencePreview *)v2->_preview setDelegate:v2];
    if (init__pred__AVCaptureDeviceWasConnectedNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    if (init__pred__AVCaptureDeviceWasDisconnectedNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_captureDevicesChanged_ name:init__AVCaptureDeviceWasConnectedNotification object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel_captureDevicesChanged_ name:init__AVCaptureDeviceWasDisconnectedNotification object:0];

    if (init__pred__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel_centerStageAvailableChangedNotification_ name:init__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification object:0];

    v8 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__TUVideoDeviceControllerProvider_init__block_invoke_4;
    block[3] = &unk_1E7424950;
    v11 = v2;
    dispatch_async(v8, block);
  }

  return v2;
}

void __39__TUVideoDeviceControllerProvider_init__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVCaptureDeviceWasConnectedNotification, v1);
}

- (NSString)localCameraUID
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  localCameraUID = [preview localCameraUID];

  return localCameraUID;
}

- (NSArray)inputDevices
{
  v64[2] = *MEMORY[0x1E69E9840];
  if (self->_cachedInputDevices)
  {
    v3 = TUDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      cachedInputDevices = self->_cachedInputDevices;
      *buf = 138412290;
      v58 = cachedInputDevices;
      _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "_cachedInputDevices = %@", buf, 0xCu);
    }

    v5 = self->_cachedInputDevices;
    goto LABEL_74;
  }

  array = [MEMORY[0x1E695DF70] array];
  if (inputDevices__pred__AVMediaTypeVideo != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  CUTWeakLinkClass();
  v7 = CUTWeakLinkClass();
  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInUltraWideCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInWideAngleCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInTripleCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInDualWideCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeBuiltInDualCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred_AVCaptureDeviceTypeBuiltInUltraWideCamera != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  if (inputDevices__pred__AVCaptureDeviceTypeExternal != -1)
  {
    [TUVideoDeviceControllerProvider inputDevices];
  }

  v8 = objc_alloc_init(TUFeatureFlags);
  v64[0] = inputDevices__AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  v64[1] = inputDevices__AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
  v63[0] = inputDevices__AVCaptureDeviceTypeBuiltInTripleCamera;
  v63[1] = inputDevices__AVCaptureDeviceTypeBuiltInDualWideCamera;
  v63[2] = inputDevices__AVCaptureDeviceTypeBuiltInDualCamera;
  v63[3] = inputDevices__AVCaptureDeviceTypeBuiltInWideAngleCamera;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:4];
  v47 = v8;
  if (-[TUFeatureFlags wombatWisdomEnabled](v8, "wombatWisdomEnabled") && ([MEMORY[0x1E699BE70] sharedInstance], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "deviceType"), v10, v11 != 2) && (objc_msgSend(v7, "systemPreferredCamera"), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = 0;
  }

  else
  {
    v15 = TUDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Didn't find a system-preferred camera", buf, 2u);
    }

    v13 = 0;
    v14 = 1;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  deviceType = [mEMORY[0x1E699BE70] deviceType];

  if ((v14 & 1) == 0)
  {
    if ([v13 position] == 2 || (objc_msgSend(v13, "deviceType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = inputDevices__AVCaptureDeviceTypeExternal, v18, v18 == v19))
    {
      v21 = TUDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        uniqueID = [v13 uniqueID];
        *buf = 138412290;
        v58 = uniqueID;
        _os_log_impl(&dword_1956FD000, v21, OS_LOG_TYPE_DEFAULT, "Found a system-preferred camera, using it as the front capture device: %@", buf, 0xCu);
      }

      v20 = v13;
LABEL_38:
      v23 = v20;
      if (v20)
      {
        goto LABEL_50;
      }

      goto LABEL_39;
    }
  }

  if (deviceType == 2)
  {
    v20 = [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceWithType:inputDevices__AVCaptureDeviceTypeBuiltInUltraWideCamera mediaType:inputDevices__AVMediaTypeVideo position:2];
    goto LABEL_38;
  }

LABEL_39:
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v24 = v48;
  v25 = [v24 countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v54;
    while (2)
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v54 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceWithType:*(*(&v53 + 1) + 8 * i) mediaType:inputDevices__AVMediaTypeVideo position:2];
        if (v29)
        {
          v23 = v29;
          goto LABEL_49;
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v53 objects:v62 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_49:

LABEL_50:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = v9;
  v31 = [v30 countByEnumeratingWithState:&v49 objects:v61 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v50;
    while (2)
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v50 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceWithType:*(*(&v49 + 1) + 8 * j) mediaType:inputDevices__AVMediaTypeVideo position:1];
        if (v35)
        {
          v36 = v35;
          goto LABEL_60;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v49 objects:v61 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  v36 = 0;
LABEL_60:

  v37 = TUDefaultLog();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID2 = [v23 uniqueID];
    uniqueID3 = [v36 uniqueID];
    *buf = 138412546;
    v58 = uniqueID2;
    v59 = 2112;
    v60 = uniqueID3;
    _os_log_impl(&dword_1956FD000, v37, OS_LOG_TYPE_DEFAULT, "preferredFrontCaptureDevice: %@, preferredBackCaptureDevice: %@", buf, 0x16u);
  }

  if (!v23)
  {
    v40 = TUDefaultLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [(TUVideoDeviceControllerProvider *)v40 inputDevices];
    }

    if (v36)
    {
      goto LABEL_64;
    }

LABEL_68:
    v41 = TUDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [(TUVideoDeviceControllerProvider *)v41 inputDevices];
    }

    goto LABEL_71;
  }

  [(NSArray *)array addObject:v23];
  if (!v36)
  {
    goto LABEL_68;
  }

LABEL_64:
  [(NSArray *)array addObject:v36];
LABEL_71:
  self->_isAVCaptureDeviceReady = 1;
  v42 = TUDefaultLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = array;
    _os_log_impl(&dword_1956FD000, v42, OS_LOG_TYPE_DEFAULT, "inputDevices = %@", buf, 0xCu);
  }

  v43 = [(NSArray *)array copy];
  v44 = self->_cachedInputDevices;
  self->_cachedInputDevices = v43;

  v5 = self->_cachedInputDevices;
LABEL_74:
  v45 = *MEMORY[0x1E69E9840];

  return v5;
}

- (VideoAttributes)localVideoAttributes
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  localVideoAttributes = [preview localVideoAttributes];

  return localVideoAttributes;
}

- (TUVideoDeviceControllerProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __39__TUVideoDeviceControllerProvider_init__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVCaptureDeviceWasDisconnectedNotification, v1);
}

void __39__TUVideoDeviceControllerProvider_init__block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification, v1);
}

uint64_t __39__TUVideoDeviceControllerProvider_init__block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = CUTWeakLinkClass();
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = @"backgroundBlurEnabled";
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v9, 0x16u);
  }

  [v2 addObserver:*(a1 + 32) forKeyPath:@"backgroundBlurEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"systemPreferredCamera" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = @"centerStageEnabled";
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v9, 0x16u);
  }

  [v2 addObserver:*(a1 + 32) forKeyPath:@"centerStageEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  [v2 addObserver:*(a1 + 32) forKeyPath:@"backgroundReplacementEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = @"reactionEffectGesturesEnabled";
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v9, 0x16u);
  }

  [v2 addObserver:*(a1 + 32) forKeyPath:@"reactionEffectGesturesEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v2;
    v11 = 2112;
    v12 = @"studioLightingEnabled";
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Adding observer to %@ for key path %@", &v9, 0x16u);
  }

  result = [v2 addObserver:*(a1 + 32) forKeyPath:@"studioLightingEnabled" options:1 context:&TUVideoDeviceControllerProviderKeyValueObserverContext];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)dealloc
{
  v3 = CUTWeakLinkClass();
  [v3 removeObserver:self forKeyPath:@"backgroundBlurEnabled"];
  [v3 removeObserver:self forKeyPath:@"backgroundReplacementEnabled"];
  [v3 removeObserver:self forKeyPath:@"systemPreferredCamera"];
  [v3 removeObserver:self forKeyPath:@"centerStageEnabled"];
  [v3 removeObserver:self forKeyPath:@"reactionEffectGesturesEnabled"];
  [v3 removeObserver:self forKeyPath:@"studioLightingEnabled"];
  v4.receiver = self;
  v4.super_class = TUVideoDeviceControllerProvider;
  [(TUVideoDeviceControllerProvider *)&v4 dealloc];
}

- (BOOL)isPreviewRunning
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  isPreviewRunning = [preview isPreviewRunning];

  return isPreviewRunning;
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVMediaTypeVideo, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInUltraWideCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInTrueDepthCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInWideAngleCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_5()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInTripleCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_6()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInDualWideCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_7()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeBuiltInDualCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_8()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices_AVCaptureDeviceTypeBuiltInUltraWideCamera, v1);
}

void __47__TUVideoDeviceControllerProvider_inputDevices__block_invoke_9()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&inputDevices__AVCaptureDeviceTypeExternal, v1);
}

- (void)invalidateInputDevicesCache
{
  cachedInputDevices = self->_cachedInputDevices;
  self->_cachedInputDevices = 0;
  MEMORY[0x1EEE66BB8]();
}

- (id)queryAVCaptureDeviceWithType:(id)type mediaType:(id)mediaType position:(int64_t)position
{
  v16[1] = *MEMORY[0x1E69E9840];
  mediaTypeCopy = mediaType;
  typeCopy = type;
  v9 = CUTWeakLinkClass();
  v16[0] = typeCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  v11 = [v9 discoverySessionWithDeviceTypes:v10 mediaType:mediaTypeCopy position:position];

  devices = [v11 devices];
  firstObject = [devices firstObject];

  v14 = *MEMORY[0x1E69E9840];

  return firstObject;
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVMediaTypeVideo, v1);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInTrueDepthCamera, v1);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInWideAngleCamera, v1);
}

void __42__TUVideoDeviceControllerProvider_prewarm__block_invoke_5()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&TUVideoDeviceControllerObserverKeyPathStudioLightEnabled_block_invoke__AVCaptureDeviceTypeBuiltInDualCamera, v1);
}

- (void)setLocalVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalVideoAttributes:attributesCopy];
}

- (void)setLocalCameraWithUID:(id)d
{
  dCopy = d;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalCameraWithUID:dCopy];
}

- (void)startPreview
{
  [(TUVideoDeviceControllerProvider *)self setCinematicFramingEnabled:[(TUVideoDeviceControllerProvider *)self isCinematicFramingEnabled]];
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview startPreview];
}

- (void)pausePreview
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview pausePreview];
}

- (void)stopPreview
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview stopPreview];
}

- (void)getSnapshot
{
  if ([(TUVideoDeviceControllerProvider *)self isPreviewRunning])
  {
    preview = [(TUVideoDeviceControllerProvider *)self preview];
    [preview getSnapshot];
  }

  else
  {
    preview = [(TUVideoDeviceControllerProvider *)self delegate];
    [preview provider:self didGetSnapshot:0];
  }
}

- (void)queryAVCaptureDeviceIfNeeded
{
  if (!self->_isAVCaptureDeviceReady)
  {
    v3 = CUTWeakLinkClass();
    v4 = v3;
    if (queryAVCaptureDeviceIfNeeded__pred__AVMediaTypeVideo == -1)
    {
      if (!v3)
      {
        return;
      }
    }

    else
    {
      [TUVideoDeviceControllerProvider queryAVCaptureDeviceIfNeeded];
      if (!v4)
      {
        return;
      }
    }

    if (queryAVCaptureDeviceIfNeeded__AVMediaTypeVideo)
    {
      v5 = [v4 devicesWithMediaType:?];
      self->_isAVCaptureDeviceReady = 1;
    }
  }
}

void __63__TUVideoDeviceControllerProvider_queryAVCaptureDeviceIfNeeded__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&queryAVCaptureDeviceIfNeeded__AVMediaTypeVideo, v1);
}

- (BOOL)isCinematicFramingEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  if (objc_opt_respondsToSelector())
  {
    [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
    isCinematicFramingEnabled = [v3 isCinematicFramingEnabled];
  }

  else
  {
    isCinematicFramingEnabled = 0;
  }

  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = isCinematicFramingEnabled;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Center Stage is enabled: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return isCinematicFramingEnabled;
}

- (BOOL)isReactionEffectGestureEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
  reactionEffectGesturesEnabled = [v3 reactionEffectGesturesEnabled];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = reactionEffectGesturesEnabled;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Reaction Effect Gestures are enabled: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return reactionEffectGesturesEnabled;
}

- (BOOL)isStudioLightEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
  isStudioLightingEnabled = [v3 isStudioLightingEnabled];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = isStudioLightingEnabled;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Studio Lighting is enabled: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return isStudioLightingEnabled;
}

- (BOOL)supportsCameraBlurForDevice:(id)device
{
  activeFormat = [device activeFormat];
  isBackgroundBlurSupported = [activeFormat isBackgroundBlurSupported];

  return isBackgroundBlurSupported;
}

- (int64_t)currentBackgroundBlurControlMode
{
  v2 = CUTWeakLinkClass();

  return [v2 backgroundBlurControlMode];
}

- (void)setCurrentBackgroundBlurControlMode:(int64_t)mode
{
  v4 = CUTWeakLinkClass();

  [v4 setBackgroundBlurControlMode:mode];
}

- (BOOL)isCameraBlurEnabled
{
  v2 = CUTWeakLinkClass();

  return [v2 isBackgroundBlurEnabled];
}

- (BOOL)isBackgroundReplacementEnabled
{
  v2 = CUTWeakLinkClass();

  return [v2 isBackgroundReplacementEnabled];
}

- (id)localScreenAttributesForVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  v6 = [preview localScreenAttributesForVideoAttributes:attributesCopy];

  return v6;
}

- (void)setLocalScreenAttributes:(id)attributes
{
  attributesCopy = attributes;
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setLocalScreenAttributes:attributesCopy];
}

- (void)beginPreviewToPIPAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview beginPreviewToPIPAnimation];
}

- (void)endPreviewToPIPAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview endPreviewToPIPAnimation];
}

- (void)beginPIPToPreviewAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview beginPIPToPreviewAnimation];
}

- (void)endPIPToPreviewAnimation
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview endPIPToPreviewAnimation];
}

- (void)rampCameraZoomFactor:(double)factor withRate:(double)rate
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setCameraZoomFactor:factor withRate:rate];
}

- (void)setCameraZoomFactor:(double)factor
{
  preview = [(TUVideoDeviceControllerProvider *)self preview];
  [preview setCameraZoomFactor:factor];
}

- (BOOL)hasAvailableDeskViewCameras
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = CUTWeakLinkClass();
  if (hasAvailableDeskViewCameras__pred__AVCaptureDeviceTypeDeskViewCamera != -1)
  {
    [TUVideoDeviceControllerProvider hasAvailableDeskViewCameras];
  }

  if (hasAvailableDeskViewCameras__pred__AVMediaTypeVideo != -1)
  {
    [TUVideoDeviceControllerProvider hasAvailableDeskViewCameras];
  }

  v9[0] = hasAvailableDeskViewCameras__AVCaptureDeviceTypeDeskViewCamera;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v4 = [v2 discoverySessionWithDeviceTypes:v3 mediaType:hasAvailableDeskViewCameras__AVMediaTypeVideo position:0];

  devices = [v4 devices];
  v6 = [devices count] != 0;

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void __62__TUVideoDeviceControllerProvider_hasAvailableDeskViewCameras__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&hasAvailableDeskViewCameras__AVCaptureDeviceTypeDeskViewCamera, v1);
}

void __62__TUVideoDeviceControllerProvider_hasAvailableDeskViewCameras__block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&hasAvailableDeskViewCameras__AVMediaTypeVideo, v1);
}

- (void)didReceiveErrorFromCameraUniqueID:(id)d error:(id)error
{
  errorCopy = error;
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didReceiveErrorFromCameraUniqueID:dCopy error:errorCopy];
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)d
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self cameraDidBecomeAvailableForUniqueID:dCopy];
}

- (void)didStartPreview
{
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate didStartPreviewForProvider:self];
}

- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didReceiveFirstPreviewFrameFromCameraUniqueID:dCopy];
}

- (void)didChangeLocalCameraUID:(id)d
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didChangeLocalCameraUID:dCopy];
}

- (void)didChangeLocalVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didChangeLocalVideoAttributes:attributesCopy];
}

- (void)didStopPreview
{
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate didStopPreviewForProvider:self];
}

- (void)didPausePreview
{
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate didPausePreviewForProvider:self];
}

- (void)didGetSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didGetSnapshot:snapshotCopy];
}

- (void)didDetectSensitiveContentWithAnalysis:(id)analysis
{
  analysisCopy = analysis;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self didDetectSensitiveContentWithAnalysis:analysisCopy];
}

- (void)cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason
{
  dCopy = d;
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate provider:self cameraDidBecomeInterruptedForForUniqueID:dCopy reason:reason];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v50 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412546;
    v47 = pathCopy;
    v48 = 2112;
    v49 = objectCopy;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%@) object (%@).", &v46, 0x16u);
  }

  if (context == &TUVideoDeviceControllerProviderKeyValueObserverContext)
  {
    delegate = [(TUVideoDeviceControllerProvider *)self delegate];
    v15 = [(__CFString *)pathCopy isEqualToString:@"backgroundBlurEnabled"];
    v16 = MEMORY[0x1E696A4F0];
    if (v15)
    {
      v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      bOOLValue = [v17 BOOLValue];

      v19 = TUDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = @"disabled";
        if (bOOLValue)
        {
          v20 = @"enabled";
        }

        v46 = 138412290;
        v47 = v20;
        _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "Camera blur changed to %@", &v46, 0xCu);
      }

      [delegate provider:self cameraBlurEnabledDidChange:bOOLValue];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"userPreferredCamera"])
    {
      v21 = [changeCopy objectForKeyedSubscript:*v16];
      CUTWeakLinkClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        uniqueID = [(__CFString *)v21 uniqueID];
      }

      else
      {
        uniqueID = 0;
      }

      v23 = TUDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 138412290;
        v47 = v21;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "userPreferredCamera changed to %@", &v46, 0xCu);
      }

      [delegate provider:self userPreferredCameraUIDDidChange:uniqueID];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"systemPreferredCamera"])
    {
      mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
      deviceType = [mEMORY[0x1E699BE70] deviceType];

      if (deviceType != 2)
      {
        v26 = [changeCopy objectForKeyedSubscript:*v16];
        CUTWeakLinkClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          uniqueID2 = [(__CFString *)v26 uniqueID];
        }

        else
        {
          uniqueID2 = 0;
        }

        v28 = TUDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = v26;
          _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "systemPreferredCamera changed to %@", &v46, 0xCu);
        }

        [delegate provider:self systemPreferredCameraUIDDidChange:uniqueID2];
      }
    }

    if ([(__CFString *)pathCopy isEqualToString:@"backgroundReplacementEnabled"])
    {
      v29 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue2 = [v29 BOOLValue];

      v31 = TUDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = @"disabled";
        if (bOOLValue2)
        {
          v32 = @"enabled";
        }

        v46 = 138412290;
        v47 = v32;
        _os_log_impl(&dword_1956FD000, v31, OS_LOG_TYPE_DEFAULT, "Background replacement changed to %@", &v46, 0xCu);
      }

      [delegate provider:self backgroundReplacementEnabledDidChange:bOOLValue2];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"centerStageEnabled"])
    {
      v33 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue3 = [v33 BOOLValue];

      v35 = TUDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = @"disabled";
        if (bOOLValue3)
        {
          v36 = @"enabled";
        }

        v46 = 138412290;
        v47 = v36;
        _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "Center Stage changed to %@", &v46, 0xCu);
      }

      [(TUVideoDeviceControllerProvider *)self notifyCenterStageEnabled:bOOLValue3];
      [delegate provider:self cameraCinematicFramingEnabledDidChange:bOOLValue3];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"reactionEffectGesturesEnabled"])
    {
      v37 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue4 = [v37 BOOLValue];

      v39 = TUDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = @"disabled";
        if (bOOLValue4)
        {
          v40 = @"enabled";
        }

        v46 = 138412290;
        v47 = v40;
        _os_log_impl(&dword_1956FD000, v39, OS_LOG_TYPE_DEFAULT, "Reaction Effects changed to %@", &v46, 0xCu);
      }

      [delegate provider:self reactionEffectsEnabledDidChange:bOOLValue4];
    }

    if ([(__CFString *)pathCopy isEqualToString:@"studioLightingEnabled"])
    {
      v41 = [changeCopy objectForKeyedSubscript:*v16];
      bOOLValue5 = [v41 BOOLValue];

      v43 = TUDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = @"disabled";
        if (bOOLValue5)
        {
          v44 = @"enabled";
        }

        v46 = 138412290;
        v47 = v44;
        _os_log_impl(&dword_1956FD000, v43, OS_LOG_TYPE_DEFAULT, "Studio Light changed to %@", &v46, 0xCu);
      }

      [delegate provider:self studioLightEnabledDidChange:bOOLValue5];
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentVideoEffect:(id)effect
{
  effectCopy = effect;
  p_currentVideoEffect = &self->_currentVideoEffect;
  if (self->_currentVideoEffect != effectCopy)
  {
    v9 = effectCopy;
    preview = [(TUVideoDeviceControllerProvider *)self preview];
    name = [(TUVideoEffect *)v9 name];
    [preview setAnimoji:name];

    objc_storeStrong(p_currentVideoEffect, effect);
    effectCopy = v9;
  }
}

- (NSArray)availableVideoEffects
{
  v2 = CUTWeakLinkClass();

  return [v2 animojiNames];
}

- (id)thumbnailImageForVideoEffectName:(id)name
{
  nameCopy = name;
  v4 = [CUTWeakLinkClass() thumbnailForAnimojiNamed:nameCopy options:0];

  return v4;
}

- (void)captureDevicesChanged:(id)changed
{
  [(TUVideoDeviceControllerProvider *)self invalidateInputDevicesCache];
  delegate = [(TUVideoDeviceControllerProvider *)self delegate];
  [delegate captureDevicesChangedForProvider:self];
}

- (void)centerStageAvailableChangedNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E6986B88]];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = unsignedIntegerValue == 128;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "DockKit tracking changed to %d", v14, 8u);
    }

    delegate = [(TUVideoDeviceControllerProvider *)self delegate];
    [delegate provider:self dockKitTrackingDidChange:unsignedIntegerValue == 128];
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end