@interface TUVideoDeviceControllerProvider
+ (void)prewarm;
- (BOOL)hasAvailableDeskViewCameras;
- (BOOL)isBackgroundReplacementEnabled;
- (BOOL)isCameraBlurEnabled;
- (BOOL)isCinematicFramingEnabled;
- (BOOL)isPreviewRunning;
- (BOOL)isReactionEffectGestureEnabled;
- (BOOL)isStudioLightEnabled;
- (BOOL)supportsCameraBlurForDevice:(id)a3;
- (NSArray)availableVideoEffects;
- (NSArray)inputDevices;
- (NSString)localCameraUID;
- (TUVideoDeviceControllerProvider)init;
- (TUVideoDeviceControllerProviderDelegate)delegate;
- (VideoAttributes)localVideoAttributes;
- (id)localScreenAttributesForVideoAttributes:(id)a3;
- (id)queryAVCaptureDeviceWithType:(id)a3 mediaType:(id)a4 position:(int64_t)a5;
- (id)thumbnailImageForVideoEffectName:(id)a3;
- (int64_t)currentBackgroundBlurControlMode;
- (void)beginPIPToPreviewAnimation;
- (void)beginPreviewToPIPAnimation;
- (void)cameraDidBecomeAvailableForUniqueID:(id)a3;
- (void)cameraDidBecomeInterruptedForForUniqueID:(id)a3 reason:(int64_t)a4;
- (void)captureDevicesChanged:(id)a3;
- (void)centerStageAvailableChangedNotification:(id)a3;
- (void)dealloc;
- (void)didChangeLocalCameraUID:(id)a3;
- (void)didChangeLocalVideoAttributes:(id)a3;
- (void)didDetectSensitiveContentWithAnalysis:(id)a3;
- (void)didGetSnapshot:(id)a3;
- (void)didPausePreview;
- (void)didReceiveErrorFromCameraUniqueID:(id)a3 error:(id)a4;
- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)a3;
- (void)didStartPreview;
- (void)didStopPreview;
- (void)endPIPToPreviewAnimation;
- (void)endPreviewToPIPAnimation;
- (void)getSnapshot;
- (void)invalidateInputDevicesCache;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pausePreview;
- (void)queryAVCaptureDeviceIfNeeded;
- (void)rampCameraZoomFactor:(double)a3 withRate:(double)a4;
- (void)setCameraZoomFactor:(double)a3;
- (void)setCurrentBackgroundBlurControlMode:(int64_t)a3;
- (void)setCurrentVideoEffect:(id)a3;
- (void)setLocalCameraWithUID:(id)a3;
- (void)setLocalScreenAttributes:(id)a3;
- (void)setLocalVideoAttributes:(id)a3;
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
    v3 = [CUTWeakLinkClass() AVConferencePreviewSingleton];
    preview = v2->_preview;
    v2->_preview = v3;

    [(AVConferencePreview *)v2->_preview setDelegate:v2];
    if (init__pred__AVCaptureDeviceWasConnectedNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    if (init__pred__AVCaptureDeviceWasDisconnectedNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v2 selector:sel_captureDevicesChanged_ name:init__AVCaptureDeviceWasConnectedNotification object:0];

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:v2 selector:sel_captureDevicesChanged_ name:init__AVCaptureDeviceWasDisconnectedNotification object:0];

    if (init__pred__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification != -1)
    {
      [TUVideoDeviceControllerProvider init];
    }

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:v2 selector:sel_centerStageAvailableChangedNotification_ name:init__AVControlCenterVideoEffectsUnavailableReasonsDidChangeNotification object:0];

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
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  v3 = [v2 localCameraUID];

  return v3;
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

  v6 = [MEMORY[0x1E695DF70] array];
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

  v16 = [MEMORY[0x1E699BE70] sharedInstance];
  v17 = [v16 deviceType];

  if ((v14 & 1) == 0)
  {
    if ([v13 position] == 2 || (objc_msgSend(v13, "deviceType"), v18 = objc_claimAutoreleasedReturnValue(), v19 = inputDevices__AVCaptureDeviceTypeExternal, v18, v18 == v19))
    {
      v21 = TUDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = [v13 uniqueID];
        *buf = 138412290;
        v58 = v22;
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

  if (v17 == 2)
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
    v38 = [v23 uniqueID];
    v39 = [v36 uniqueID];
    *buf = 138412546;
    v58 = v38;
    v59 = 2112;
    v60 = v39;
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

  [(NSArray *)v6 addObject:v23];
  if (!v36)
  {
    goto LABEL_68;
  }

LABEL_64:
  [(NSArray *)v6 addObject:v36];
LABEL_71:
  self->_isAVCaptureDeviceReady = 1;
  v42 = TUDefaultLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v6;
    _os_log_impl(&dword_1956FD000, v42, OS_LOG_TYPE_DEFAULT, "inputDevices = %@", buf, 0xCu);
  }

  v43 = [(NSArray *)v6 copy];
  v44 = self->_cachedInputDevices;
  self->_cachedInputDevices = v43;

  v5 = self->_cachedInputDevices;
LABEL_74:
  v45 = *MEMORY[0x1E69E9840];

  return v5;
}

- (VideoAttributes)localVideoAttributes
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  v3 = [v2 localVideoAttributes];

  return v3;
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
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  v3 = [v2 isPreviewRunning];

  return v3;
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

- (id)queryAVCaptureDeviceWithType:(id)a3 mediaType:(id)a4 position:(int64_t)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = CUTWeakLinkClass();
  v16[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];

  v11 = [v9 discoverySessionWithDeviceTypes:v10 mediaType:v7 position:a5];

  v12 = [v11 devices];
  v13 = [v12 firstObject];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
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

- (void)setLocalVideoAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self preview];
  [v5 setLocalVideoAttributes:v4];
}

- (void)setLocalCameraWithUID:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self preview];
  [v5 setLocalCameraWithUID:v4];
}

- (void)startPreview
{
  [(TUVideoDeviceControllerProvider *)self setCinematicFramingEnabled:[(TUVideoDeviceControllerProvider *)self isCinematicFramingEnabled]];
  v3 = [(TUVideoDeviceControllerProvider *)self preview];
  [v3 startPreview];
}

- (void)pausePreview
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  [v2 pausePreview];
}

- (void)stopPreview
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  [v2 stopPreview];
}

- (void)getSnapshot
{
  if ([(TUVideoDeviceControllerProvider *)self isPreviewRunning])
  {
    v3 = [(TUVideoDeviceControllerProvider *)self preview];
    [v3 getSnapshot];
  }

  else
  {
    v3 = [(TUVideoDeviceControllerProvider *)self delegate];
    [v3 provider:self didGetSnapshot:0];
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
    v4 = [v3 isCinematicFramingEnabled];
  }

  else
  {
    v4 = 0;
  }

  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Center Stage is enabled: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isReactionEffectGestureEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
  v4 = [v3 reactionEffectGesturesEnabled];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Reaction Effect Gestures are enabled: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)isStudioLightEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CUTWeakLinkClass();
  [(TUVideoDeviceControllerProvider *)self queryAVCaptureDeviceIfNeeded];
  v4 = [v3 isStudioLightingEnabled];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Studio Lighting is enabled: %d", v8, 8u);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)supportsCameraBlurForDevice:(id)a3
{
  v3 = [a3 activeFormat];
  v4 = [v3 isBackgroundBlurSupported];

  return v4;
}

- (int64_t)currentBackgroundBlurControlMode
{
  v2 = CUTWeakLinkClass();

  return [v2 backgroundBlurControlMode];
}

- (void)setCurrentBackgroundBlurControlMode:(int64_t)a3
{
  v4 = CUTWeakLinkClass();

  [v4 setBackgroundBlurControlMode:a3];
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

- (id)localScreenAttributesForVideoAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self preview];
  v6 = [v5 localScreenAttributesForVideoAttributes:v4];

  return v6;
}

- (void)setLocalScreenAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self preview];
  [v5 setLocalScreenAttributes:v4];
}

- (void)beginPreviewToPIPAnimation
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  [v2 beginPreviewToPIPAnimation];
}

- (void)endPreviewToPIPAnimation
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  [v2 endPreviewToPIPAnimation];
}

- (void)beginPIPToPreviewAnimation
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  [v2 beginPIPToPreviewAnimation];
}

- (void)endPIPToPreviewAnimation
{
  v2 = [(TUVideoDeviceControllerProvider *)self preview];
  [v2 endPIPToPreviewAnimation];
}

- (void)rampCameraZoomFactor:(double)a3 withRate:(double)a4
{
  v6 = [(TUVideoDeviceControllerProvider *)self preview];
  [v6 setCameraZoomFactor:a3 withRate:a4];
}

- (void)setCameraZoomFactor:(double)a3
{
  v4 = [(TUVideoDeviceControllerProvider *)self preview];
  [v4 setCameraZoomFactor:a3];
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

  v5 = [v4 devices];
  v6 = [v5 count] != 0;

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

- (void)didReceiveErrorFromCameraUniqueID:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v8 provider:self didReceiveErrorFromCameraUniqueID:v7 error:v6];
}

- (void)cameraDidBecomeAvailableForUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v5 provider:self cameraDidBecomeAvailableForUniqueID:v4];
}

- (void)didStartPreview
{
  v3 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v3 didStartPreviewForProvider:self];
}

- (void)didReceiveFirstPreviewFrameFromCameraUniqueID:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v5 provider:self didReceiveFirstPreviewFrameFromCameraUniqueID:v4];
}

- (void)didChangeLocalCameraUID:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v5 provider:self didChangeLocalCameraUID:v4];
}

- (void)didChangeLocalVideoAttributes:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v5 provider:self didChangeLocalVideoAttributes:v4];
}

- (void)didStopPreview
{
  v3 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v3 didStopPreviewForProvider:self];
}

- (void)didPausePreview
{
  v3 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v3 didPausePreviewForProvider:self];
}

- (void)didGetSnapshot:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v5 provider:self didGetSnapshot:v4];
}

- (void)didDetectSensitiveContentWithAnalysis:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v5 provider:self didDetectSensitiveContentWithAnalysis:v4];
}

- (void)cameraDidBecomeInterruptedForForUniqueID:(id)a3 reason:(int64_t)a4
{
  v6 = a3;
  v7 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v7 provider:self cameraDidBecomeInterruptedForForUniqueID:v6 reason:a4];
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v50 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = TUDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 138412546;
    v47 = v10;
    v48 = 2112;
    v49 = v11;
    _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "Received a key-value observing notification for key path (%@) object (%@).", &v46, 0x16u);
  }

  if (a6 == &TUVideoDeviceControllerProviderKeyValueObserverContext)
  {
    v14 = [(TUVideoDeviceControllerProvider *)self delegate];
    v15 = [(__CFString *)v10 isEqualToString:@"backgroundBlurEnabled"];
    v16 = MEMORY[0x1E696A4F0];
    if (v15)
    {
      v17 = [v12 objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      v18 = [v17 BOOLValue];

      v19 = TUDefaultLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = @"disabled";
        if (v18)
        {
          v20 = @"enabled";
        }

        v46 = 138412290;
        v47 = v20;
        _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "Camera blur changed to %@", &v46, 0xCu);
      }

      [v14 provider:self cameraBlurEnabledDidChange:v18];
    }

    if ([(__CFString *)v10 isEqualToString:@"userPreferredCamera"])
    {
      v21 = [v12 objectForKeyedSubscript:*v16];
      CUTWeakLinkClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v22 = [(__CFString *)v21 uniqueID];
      }

      else
      {
        v22 = 0;
      }

      v23 = TUDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v46 = 138412290;
        v47 = v21;
        _os_log_impl(&dword_1956FD000, v23, OS_LOG_TYPE_DEFAULT, "userPreferredCamera changed to %@", &v46, 0xCu);
      }

      [v14 provider:self userPreferredCameraUIDDidChange:v22];
    }

    if ([(__CFString *)v10 isEqualToString:@"systemPreferredCamera"])
    {
      v24 = [MEMORY[0x1E699BE70] sharedInstance];
      v25 = [v24 deviceType];

      if (v25 != 2)
      {
        v26 = [v12 objectForKeyedSubscript:*v16];
        CUTWeakLinkClass();
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v27 = [(__CFString *)v26 uniqueID];
        }

        else
        {
          v27 = 0;
        }

        v28 = TUDefaultLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v46 = 138412290;
          v47 = v26;
          _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "systemPreferredCamera changed to %@", &v46, 0xCu);
        }

        [v14 provider:self systemPreferredCameraUIDDidChange:v27];
      }
    }

    if ([(__CFString *)v10 isEqualToString:@"backgroundReplacementEnabled"])
    {
      v29 = [v12 objectForKeyedSubscript:*v16];
      v30 = [v29 BOOLValue];

      v31 = TUDefaultLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = @"disabled";
        if (v30)
        {
          v32 = @"enabled";
        }

        v46 = 138412290;
        v47 = v32;
        _os_log_impl(&dword_1956FD000, v31, OS_LOG_TYPE_DEFAULT, "Background replacement changed to %@", &v46, 0xCu);
      }

      [v14 provider:self backgroundReplacementEnabledDidChange:v30];
    }

    if ([(__CFString *)v10 isEqualToString:@"centerStageEnabled"])
    {
      v33 = [v12 objectForKeyedSubscript:*v16];
      v34 = [v33 BOOLValue];

      v35 = TUDefaultLog();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = @"disabled";
        if (v34)
        {
          v36 = @"enabled";
        }

        v46 = 138412290;
        v47 = v36;
        _os_log_impl(&dword_1956FD000, v35, OS_LOG_TYPE_DEFAULT, "Center Stage changed to %@", &v46, 0xCu);
      }

      [(TUVideoDeviceControllerProvider *)self notifyCenterStageEnabled:v34];
      [v14 provider:self cameraCinematicFramingEnabledDidChange:v34];
    }

    if ([(__CFString *)v10 isEqualToString:@"reactionEffectGesturesEnabled"])
    {
      v37 = [v12 objectForKeyedSubscript:*v16];
      v38 = [v37 BOOLValue];

      v39 = TUDefaultLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = @"disabled";
        if (v38)
        {
          v40 = @"enabled";
        }

        v46 = 138412290;
        v47 = v40;
        _os_log_impl(&dword_1956FD000, v39, OS_LOG_TYPE_DEFAULT, "Reaction Effects changed to %@", &v46, 0xCu);
      }

      [v14 provider:self reactionEffectsEnabledDidChange:v38];
    }

    if ([(__CFString *)v10 isEqualToString:@"studioLightingEnabled"])
    {
      v41 = [v12 objectForKeyedSubscript:*v16];
      v42 = [v41 BOOLValue];

      v43 = TUDefaultLog();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = @"disabled";
        if (v42)
        {
          v44 = @"enabled";
        }

        v46 = 138412290;
        v47 = v44;
        _os_log_impl(&dword_1956FD000, v43, OS_LOG_TYPE_DEFAULT, "Studio Light changed to %@", &v46, 0xCu);
      }

      [v14 provider:self studioLightEnabledDidChange:v42];
    }
  }

  v45 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentVideoEffect:(id)a3
{
  v5 = a3;
  p_currentVideoEffect = &self->_currentVideoEffect;
  if (self->_currentVideoEffect != v5)
  {
    v9 = v5;
    v7 = [(TUVideoDeviceControllerProvider *)self preview];
    v8 = [(TUVideoEffect *)v9 name];
    [v7 setAnimoji:v8];

    objc_storeStrong(p_currentVideoEffect, a3);
    v5 = v9;
  }
}

- (NSArray)availableVideoEffects
{
  v2 = CUTWeakLinkClass();

  return [v2 animojiNames];
}

- (id)thumbnailImageForVideoEffectName:(id)a3
{
  v3 = a3;
  v4 = [CUTWeakLinkClass() thumbnailForAnimojiNamed:v3 options:0];

  return v4;
}

- (void)captureDevicesChanged:(id)a3
{
  [(TUVideoDeviceControllerProvider *)self invalidateInputDevicesCache];
  v4 = [(TUVideoDeviceControllerProvider *)self delegate];
  [v4 captureDevicesChangedForProvider:self];
}

- (void)centerStageAvailableChangedNotification:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x1E6986B88]];
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
    v10 = [v9 unsignedIntegerValue];
    v11 = TUDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14[0] = 67109120;
      v14[1] = v10 == 128;
      _os_log_impl(&dword_1956FD000, v11, OS_LOG_TYPE_DEFAULT, "DockKit tracking changed to %d", v14, 8u);
    }

    v12 = [(TUVideoDeviceControllerProvider *)self delegate];
    [v12 provider:self dockKitTrackingDidChange:v10 == 128];
  }

  v13 = *MEMORY[0x1E69E9840];
}

@end