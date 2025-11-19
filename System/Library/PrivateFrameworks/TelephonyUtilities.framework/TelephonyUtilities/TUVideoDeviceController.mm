@interface TUVideoDeviceController
+ (int)_tuOrientationForVideoOrientation:(int)a3;
+ (int)_videoOrientationForTUOrientation:(int)a3;
- (AVCaptureDevice)currentInputDevice;
- (BOOL)backgroundReplacementEnabled;
- (BOOL)cameraBlurEnabled;
- (BOOL)currentInputIsExternal;
- (BOOL)currentInputSupportsCinematicFraming;
- (BOOL)currentInputSupportsReactionEffects;
- (BOOL)currentInputSupportsStudioLight;
- (BOOL)currentInputSupportsTrueDepth;
- (BOOL)currentInputSupportsUltraWide;
- (BOOL)hasAvailableDeskViewCameras;
- (BOOL)isCinematicFramingEnabled;
- (BOOL)isFollowSystemCameraEnabled;
- (BOOL)isPreviewRunning;
- (BOOL)isReactionEffectGestureEnabled;
- (BOOL)isStudioLightEnabled;
- (BOOL)supportsCameraBlur;
- (CALayer)localBackLayer;
- (CALayer)localFrontLayer;
- (CGRect)localScreenContentsRect;
- (CGSize)localScreenLandscapeAspectRatio;
- (CGSize)localScreenPortraitAspectRatio;
- (CGSize)localVideoLandscapeAspectRatio;
- (CGSize)localVideoPortraitAspectRatio;
- (NSArray)availableVideoEffects;
- (NSArray)inputDevices;
- (TUVideoDeviceController)init;
- (TUVideoDeviceController)initWithProvider:(id)a3 serialQueue:(id)a4 featureFlags:(id)a5;
- (TUVideoDeviceController)initWithSerialQueue:(id)a3;
- (TUVideoEffect)currentVideoEffect;
- (id)debugDescription;
- (id)landscapeScreenAttributes;
- (id)portraitScreenAttributes;
- (int)currentBackgroundBlurControlMode;
- (int)currentVideoOrientation;
- (void)captureDevicesChangedForProvider:(id)a3;
- (void)didPausePreviewForProvider:(id)a3;
- (void)didStartPreviewForProvider:(id)a3;
- (void)didStopPreviewForProvider:(id)a3;
- (void)flipCamera;
- (void)getSnapshot;
- (void)noteBeginAnimationToPIP;
- (void)noteBeginAnimationToPreview;
- (void)noteEndAnimationToPIP;
- (void)noteEndAnimationToPreview;
- (void)pausePreview;
- (void)provider:(id)a3 backgroundReplacementEnabledDidChange:(BOOL)a4;
- (void)provider:(id)a3 cameraBlurEnabledDidChange:(BOOL)a4;
- (void)provider:(id)a3 cameraCinematicFramingAvailabilityDidChange:(BOOL)a4;
- (void)provider:(id)a3 cameraCinematicFramingEnabledDidChange:(BOOL)a4;
- (void)provider:(id)a3 cameraDidBecomeAvailableForUniqueID:(id)a4;
- (void)provider:(id)a3 cameraDidBecomeInterruptedForForUniqueID:(id)a4 reason:(int64_t)a5;
- (void)provider:(id)a3 cameraZoomAvailabilityDidChange:(BOOL)a4;
- (void)provider:(id)a3 didChangeLocalCameraUID:(id)a4;
- (void)provider:(id)a3 didChangeLocalVideoAttributes:(id)a4;
- (void)provider:(id)a3 didDetectSensitiveContentWithAnalysis:(id)a4;
- (void)provider:(id)a3 didGetSnapshot:(id)a4;
- (void)provider:(id)a3 didReceiveErrorFromCameraUniqueID:(id)a4 error:(id)a5;
- (void)provider:(id)a3 didReceiveFirstPreviewFrameFromCameraUniqueID:(id)a4;
- (void)provider:(id)a3 reactionEffectsEnabledDidChange:(BOOL)a4;
- (void)provider:(id)a3 studioLightEnabledDidChange:(BOOL)a4;
- (void)provider:(id)a3 systemPreferredCameraUIDDidChange:(id)a4;
- (void)provider:(id)a3 userPreferredCameraUIDDidChange:(id)a4;
- (void)rampCameraZoomFactor:(double)a3 withRate:(double)a4;
- (void)retryPreviewAfterError;
- (void)setCameraZoomFactor:(double)a3;
- (void)setCurrentBackgroundBlurControlMode:(int)a3;
- (void)setCurrentInputDevice:(id)a3 isUserPreferred:(BOOL)a4;
- (void)setCurrentVideoEffect:(id)a3;
- (void)setLocalBackLayer:(id)a3;
- (void)setLocalBackLayerHost:(id)a3;
- (void)setLocalFrontLayer:(id)a3;
- (void)setLocalFrontLayerHost:(id)a3;
- (void)setLocalPortraitAspectRatio:(CGSize)a3 localLandscapeAspectRatio:(CGSize)a4;
- (void)startPreview;
- (void)stopPreview;
@end

@implementation TUVideoDeviceController

- (BOOL)currentInputIsExternal
{
  if (currentInputIsExternal__pred__AVCaptureDeviceTypeExternal != -1)
  {
    [TUVideoDeviceController currentInputIsExternal];
  }

  v3 = [(TUVideoDeviceController *)self currentInputDevice];
  if (v3)
  {
    v4 = [(TUVideoDeviceController *)self currentInputDevice];
    v5 = [v4 deviceType];
    v6 = v5 == currentInputIsExternal__AVCaptureDeviceTypeExternal;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (AVCaptureDevice)currentInputDevice
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localCameraUID];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(TUVideoDeviceController *)self inputDevices];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 uniqueID];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)inputDevices
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 inputDevices];

  return v5;
}

- (TUVideoDeviceController)initWithSerialQueue:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(TUVideoDeviceControllerProvider);
  v6 = objc_alloc_init(TUFeatureFlags);
  v7 = [(TUVideoDeviceController *)self initWithProvider:v5 serialQueue:v4 featureFlags:v6];

  return v7;
}

- (TUVideoDeviceController)initWithProvider:(id)a3 serialQueue:(id)a4 featureFlags:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = TUVideoDeviceController;
  v12 = [(TUVideoDeviceController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serialQueue, a4);
    objc_storeStrong(&v13->_provider, a3);
    [(TUVideoDeviceControllerProvider *)v13->_provider setDelegate:v13];
    objc_storeStrong(&v13->_featureFlags, a5);
    v13->_uninitializedClientRetrySeconds = 1;
  }

  return v13;
}

- (TUVideoDeviceController)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TUVideoDeviceController.m" lineNumber:135 description:{@"%s is not available. Use a designated initializer instead.", "-[TUVideoDeviceController init]"}];

  return 0;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(TUVideoDeviceController *)self inputDevices];
  [v3 appendFormat:@" devices=%@", v4];

  if ([(TUVideoDeviceController *)self isFollowSystemCameraEnabled])
  {
    [v3 appendFormat:@" followSystemCameraEnabled=%d", -[TUVideoDeviceController isFollowSystemCameraEnabled](self, "isFollowSystemCameraEnabled")];
  }

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

+ (int)_videoOrientationForTUOrientation:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

+ (int)_tuOrientationForVideoOrientation:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return a3;
  }
}

- (BOOL)currentInputSupportsCinematicFraming
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TUVideoDeviceController *)self currentInputDevice];
  v3 = [v2 formats];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) isCenterStageSupported])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

void __49__TUVideoDeviceController_currentInputIsExternal__block_invoke()
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

  objc_storeStrong(&currentInputIsExternal__AVCaptureDeviceTypeExternal, v1);
}

- (BOOL)currentInputSupportsReactionEffects
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TUVideoDeviceController *)self currentInputDevice];
  v3 = [v2 formats];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) reactionEffectsSupported])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (void)setCurrentInputDevice:(id)a3 isUserPreferred:(BOOL)a4
{
  v4 = a4;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v6;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to set current input device to %@", buf, 0xCu);
  }

  if (v6)
  {
    v9 = [v6 uniqueID];
    if ([v9 isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:1"])
    {
      v10 = CUTWeakLinkClass();
      if (setCurrentInputDevice_isUserPreferred___pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
      {
        [TUVideoDeviceController setCurrentInputDevice:isUserPreferred:];
      }

      if (setCurrentInputDevice_isUserPreferred___pred__AVMediaTypeVideo == -1)
      {
        if (v10)
        {
LABEL_9:
          v20 = setCurrentInputDevice_isUserPreferred___AVCaptureDeviceTypeBuiltInTrueDepthCamera;
          v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
          v12 = [v10 discoverySessionWithDeviceTypes:v11 mediaType:setCurrentInputDevice_isUserPreferred___AVMediaTypeVideo position:2];

          v13 = [v12 devices];
          if ([v13 count])
          {
            v14 = [v13 firstObject];
            v15 = TUDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = v14;
              _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Upgrading input device to depth camera device %@", buf, 0xCu);
            }

            v16 = [v14 uniqueID];

            v9 = v16;
            v6 = v14;
          }
        }
      }

      else
      {
        [TUVideoDeviceController setCurrentInputDevice:isUserPreferred:];
        if (v10)
        {
          goto LABEL_9;
        }
      }
    }

    v17 = [(TUVideoDeviceController *)self provider];
    [v17 setLocalCameraWithUID:v9];

    if (v4)
    {
      v18 = TUDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = v6;
        _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Setting userPreferred camera to %@", buf, 0xCu);
      }

      [CUTWeakLinkClass() setUserPreferredCamera:v6 forClientPreferenceDomain:@"com.apple.facetime"];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __65__TUVideoDeviceController_setCurrentInputDevice_isUserPreferred___block_invoke()
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

  objc_storeStrong(&setCurrentInputDevice_isUserPreferred___AVCaptureDeviceTypeBuiltInTrueDepthCamera, v1);
}

void __65__TUVideoDeviceController_setCurrentInputDevice_isUserPreferred___block_invoke_2()
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

  objc_storeStrong(&setCurrentInputDevice_isUserPreferred___AVMediaTypeVideo, v1);
}

- (int)currentVideoOrientation
{
  v2 = self;
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)v2 provider];
  v5 = [v4 localVideoAttributes];

  LODWORD(v2) = [objc_opt_class() _tuOrientationForVideoOrientation:{objc_msgSend(v5, "orientation")}];
  return v2;
}

- (BOOL)isFollowSystemCameraEnabled
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self featureFlags];
  [v4 continuityCaptureEnabled];

  return 0;
}

- (BOOL)hasAvailableDeskViewCameras
{
  v3 = [(TUVideoDeviceController *)self featureFlags];
  v4 = [v3 screenSharingDeskViewEnabled];

  if (!v4)
  {
    return 0;
  }

  v5 = [(TUVideoDeviceController *)self provider];
  v6 = [v5 hasAvailableDeskViewCameras];

  return v6;
}

- (BOOL)isPreviewRunning
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LOBYTE(v3) = [v4 isPreviewRunning];

  return v3;
}

- (CALayer)localFrontLayer
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localVideoLayer:1];

  return v5;
}

- (void)setLocalFrontLayer:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localFrontLayer: %@", &v9, 0xCu);
  }

  v7 = [(TUVideoDeviceController *)self provider];
  [v7 setLocalVideoLayer:v4 front:1];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLocalFrontLayerHost:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localFrontLayerHost: %@", &v9, 0xCu);
  }

  v7 = [(TUVideoDeviceController *)self provider];
  [v7 setLocalVideoLayerHost:v4 front:1];

  v8 = *MEMORY[0x1E69E9840];
}

- (CALayer)localBackLayer
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localVideoLayer:0];

  return v5;
}

- (void)setLocalBackLayer:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localBackLayer: %@", &v9, 0xCu);
  }

  v7 = [(TUVideoDeviceController *)self provider];
  [v7 setLocalVideoLayer:v4 front:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLocalBackLayerHost:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localBackLayerHost: %@", &v9, 0xCu);
  }

  v7 = [(TUVideoDeviceController *)self provider];
  [v7 setLocalVideoLayerHost:v4 front:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentVideoEffect:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self provider];
  [v5 setCurrentVideoEffect:v4];
}

- (TUVideoEffect)currentVideoEffect
{
  v2 = [(TUVideoDeviceController *)self provider];
  v3 = [v2 currentVideoEffect];

  return v3;
}

- (NSArray)availableVideoEffects
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 availableVideoEffects];

  v6 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    *&v7 = 138412290;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [(TUVideoDeviceController *)self provider];
        v13 = [v12 thumbnailImageForVideoEffectName:v11];

        if (v13)
        {
          v14 = [[TUVideoEffect alloc] initWithName:v11 thumbnailImage:v13];
          [v3 addObject:v14];
        }

        else
        {
          v14 = TUDefaultLog();
          if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v11;
            _os_log_impl(&dword_1956FD000, &v14->super, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot create TUVideoEffect named %@ with nil thumbnailImage", buf, 0xCu);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [v3 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)startPreview
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  if ([(TUVideoDeviceController *)self shouldIgnoreStartPreview])
  {
    v4 = TUDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ignoring start preview with currentInputDevice", &v10, 2u);
    }
  }

  else
  {
    v4 = [(TUVideoDeviceController *)self currentInputDevice];
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Starting preview with self.currentInputDevice: %@", &v10, 0xCu);
    }

    [(TUVideoDeviceController *)self setWantsPreview:1];
    v6 = [(TUVideoDeviceController *)self reapplyCameraZoom];

    if (v6)
    {
      v7 = [(TUVideoDeviceController *)self reapplyCameraZoom];
      (v7)[2](v7, v4);
    }

    v8 = [(TUVideoDeviceController *)self provider];
    [v8 startPreview];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stopPreview
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Stopping preview with currentInputDevice", v6, 2u);
  }

  [(TUVideoDeviceController *)self setWantsPreview:0];
  v5 = [(TUVideoDeviceController *)self provider];
  [v5 stopPreview];
}

- (void)pausePreview
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Pausing preview with currentInputDevice", v6, 2u);
  }

  [(TUVideoDeviceController *)self setWantsPreview:0];
  v5 = [(TUVideoDeviceController *)self provider];
  [v5 pausePreview];
}

- (void)getSnapshot
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  [v4 getSnapshot];
}

- (BOOL)isCinematicFramingEnabled
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LOBYTE(v3) = [v4 isCinematicFramingEnabled];

  return v3;
}

- (BOOL)isReactionEffectGestureEnabled
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LOBYTE(v3) = [v4 isReactionEffectGestureEnabled];

  return v3;
}

- (BOOL)isStudioLightEnabled
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LOBYTE(v3) = [v4 isStudioLightEnabled];

  return v3;
}

- (BOOL)currentInputSupportsStudioLight
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(TUVideoDeviceController *)self currentInputDevice];
  v3 = [v2 formats];

  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) isStudioLightSupported])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)supportsCameraBlur
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [(TUVideoDeviceController *)self currentInputDevice];
  v6 = [v4 supportsCameraBlurForDevice:v5];

  return v6;
}

- (BOOL)currentInputSupportsTrueDepth
{
  if (currentInputSupportsTrueDepth__pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
  {
    [TUVideoDeviceController currentInputSupportsTrueDepth];
  }

  v3 = [(TUVideoDeviceController *)self currentInputDevice];
  if (v3)
  {
    v4 = [(TUVideoDeviceController *)self currentInputDevice];
    v5 = [v4 deviceType];
    v6 = v5 == currentInputSupportsTrueDepth__AVCaptureDeviceTypeBuiltInTrueDepthCamera;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __56__TUVideoDeviceController_currentInputSupportsTrueDepth__block_invoke()
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

  objc_storeStrong(&currentInputSupportsTrueDepth__AVCaptureDeviceTypeBuiltInTrueDepthCamera, v1);
}

- (BOOL)currentInputSupportsUltraWide
{
  if (currentInputSupportsUltraWide__pred__AVCaptureDeviceTypeBuiltInUltraWideCamera != -1)
  {
    [TUVideoDeviceController currentInputSupportsUltraWide];
  }

  v3 = [(TUVideoDeviceController *)self currentInputDevice];
  if (v3)
  {
    v4 = [(TUVideoDeviceController *)self currentInputDevice];
    v5 = [v4 deviceType];
    v6 = v5 == currentInputSupportsUltraWide__AVCaptureDeviceTypeBuiltInUltraWideCamera;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __56__TUVideoDeviceController_currentInputSupportsUltraWide__block_invoke()
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

  objc_storeStrong(&currentInputSupportsUltraWide__AVCaptureDeviceTypeBuiltInUltraWideCamera, v1);
}

- (int)currentBackgroundBlurControlMode
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LODWORD(v3) = [v4 currentBackgroundBlurControlMode];

  return v3;
}

- (void)setCurrentBackgroundBlurControlMode:(int)a3
{
  v5 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = [(TUVideoDeviceController *)self provider];
  [v6 setCurrentBackgroundBlurControlMode:a3];
}

- (BOOL)cameraBlurEnabled
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LOBYTE(v3) = [v4 isCameraBlurEnabled];

  return v3;
}

- (void)setCameraZoomFactor:(double)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v5);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Setting back camera zoom factor: %f", &v9, 0xCu);
  }

  v7 = [(TUVideoDeviceController *)self provider];
  [v7 setCameraZoomFactor:a3];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)rampCameraZoomFactor:(double)a3 withRate:(double)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v7);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    v12 = a3;
    v13 = 2048;
    v14 = a4;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Setting ramp camera zoom factor: %f with rate: %f", &v11, 0x16u);
  }

  v9 = [(TUVideoDeviceController *)self provider];
  [v9 rampCameraZoomFactor:a3 withRate:a4];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)backgroundReplacementEnabled
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  LOBYTE(v3) = [v4 isBackgroundReplacementEnabled];

  return v3;
}

- (void)noteBeginAnimationToPreview
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Beginning animation to preview with currentInputDevice", v6, 2u);
  }

  v5 = [(TUVideoDeviceController *)self provider];
  [v5 beginPIPToPreviewAnimation];
}

- (void)flipCamera
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = [(TUVideoDeviceController *)self inputDevices];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v5)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_16;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v22;
  do
  {
    for (i = 0; i != v6; ++i)
    {
      if (*v22 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v11 = *(*(&v21 + 1) + 8 * i);
      if ([v11 position] == 2)
      {
        v12 = v8;
        v13 = v7;
        v8 = v11;
LABEL_9:
        v14 = v11;

        v7 = v13;
        goto LABEL_10;
      }

      v12 = v7;
      v13 = v11;
      if ([v11 position] == 1)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v8 && v7)
      {
        goto LABEL_16;
      }
    }

    v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v6);
LABEL_16:

  v15 = [(TUVideoDeviceController *)self currentInputDevice];
  v16 = [v15 position];

  v17 = TUDefaultLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v16 == 1)
  {
    v19 = v7;
    if (v18)
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Setting local camera to back facing device %@", buf, 0xCu);
      v19 = v7;
    }
  }

  else
  {
    v19 = v8;
    if (v18)
    {
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Setting local camera to front facing device %@", buf, 0xCu);
      v19 = v8;
    }
  }

  [(TUVideoDeviceController *)self setCurrentInputDevice:v19];
  v20 = *MEMORY[0x1E69E9840];
}

- (void)retryPreviewAfterError
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "Retrying preview after error", v4, 2u);
  }

  [(TUVideoDeviceController *)self setHasRefreshedPreviewAfterError:1];
  [(TUVideoDeviceController *)self startPreview];
}

- (void)noteEndAnimationToPreview
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ending animation to preview with currentInputDevice", v6, 2u);
  }

  v5 = [(TUVideoDeviceController *)self provider];
  [v5 endPIPToPreviewAnimation];
}

- (void)noteBeginAnimationToPIP
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Beginning animation to PIP with currentInputDevice", v6, 2u);
  }

  v5 = [(TUVideoDeviceController *)self provider];
  [v5 beginPreviewToPIPAnimation];
}

- (void)noteEndAnimationToPIP
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ending animation to PIP with currentInputDevice", v6, 2u);
  }

  v5 = [(TUVideoDeviceController *)self provider];
  [v5 endPreviewToPIPAnimation];
}

- (void)setLocalPortraitAspectRatio:(CGSize)a3 localLandscapeAspectRatio:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v22 = *MEMORY[0x1E69E9840];
  v9 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v9);

  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v23.width = v7;
    v23.height = v6;
    v11 = NSStringFromSize(v23);
    v24.width = width;
    v24.height = height;
    v12 = NSStringFromSize(v24);
    v18 = 138412546;
    v19 = v11;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Setting localPortraitAspectRatio: %@ localLandscapeAspectRatio: %@", &v18, 0x16u);
  }

  v13 = [(TUVideoDeviceController *)self portraitScreenAttributes];
  [v13 setRatio:{v7, v6}];
  v14 = [(TUVideoDeviceController *)self provider];
  [v14 setLocalScreenAttributes:v13];

  v15 = [(TUVideoDeviceController *)self landscapeScreenAttributes];
  [v15 setRatio:{width, height}];
  v16 = [(TUVideoDeviceController *)self provider];
  [v16 setLocalScreenAttributes:v15];

  v17 = *MEMORY[0x1E69E9840];
}

- (CGRect)localScreenContentsRect
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [objc_opt_class() _videoOrientationForTUOrientation:{-[TUVideoDeviceController currentVideoOrientation](self, "currentVideoOrientation")}];
  v5 = objc_alloc_init(CUTWeakLinkClass());
  [v5 setOrientation:v4];
  v6 = [(TUVideoDeviceController *)self provider];
  v7 = [v6 localScreenAttributesForVideoAttributes:v5];
  [v7 contentsRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (CGSize)localVideoPortraitAspectRatio
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localVideoAttributes];
  [v5 ratio];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)localScreenPortraitAspectRatio
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self portraitScreenAttributes];
  [v4 ratio];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (CGSize)localVideoLandscapeAspectRatio
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localVideoAttributes];
  [v5 ratio];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)localScreenLandscapeAspectRatio
{
  v3 = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TUVideoDeviceController *)self landscapeScreenAttributes];
  [v4 ratio];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)portraitScreenAttributes
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [v3 setOrientation:0];
  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localScreenAttributesForVideoAttributes:v3];

  return v5;
}

- (id)landscapeScreenAttributes
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [v3 setOrientation:3];
  v4 = [(TUVideoDeviceController *)self provider];
  v5 = [v4 localScreenAttributesForVideoAttributes:v3];

  return v5;
}

- (void)provider:(id)a3 didReceiveErrorFromCameraUniqueID:(id)a4 error:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke;
  block[3] = &unk_1E7424FD8;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

void __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke_cold_1(a1, v2);
  }

  v3 = [*(a1 + 48) previewStartBlock];
  v4 = v3 == 0;

  if (!v4)
  {
    v5 = [*(a1 + 48) previewStartBlock];
    dispatch_block_cancel(v5);

    [*(a1 + 48) setPreviewStartBlock:0];
  }

  if ([*(a1 + 40) code] == 32006)
  {
    if ([*(a1 + 48) wantsPreview])
    {
      objc_initWeak(&location, *(a1 + 48));
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke_176;
      block[3] = &unk_1E7424998;
      objc_copyWeak(&v25, &location);
      v6 = dispatch_block_create(0, block);
      [*(a1 + 48) setPreviewStartBlock:v6];

      v7 = [*(a1 + 48) hasBeganRetryingAfterUninitializedClientError];
      v8 = *(a1 + 48);
      if (v7)
      {
        v9 = 2 * [v8 uninitializedClientRetrySeconds];
      }

      else
      {
        v9 = [v8 uninitializedClientRetrySeconds];
      }

      v15 = dispatch_time(0, 1000000000 * v9);
      v16 = [*(a1 + 48) serialQueue];
      v17 = [*(a1 + 48) previewStartBlock];
      dispatch_after(v15, v16, v17);

      objc_destroyWeak(&v25);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    [v10 setObject:*(a1 + 32) forKeyedSubscript:@"TUVideoDeviceControllerDeviceDidReceiveErrorCameraID"];
    [v10 setObject:*(a1 + 40) forKeyedSubscript:@"TUVideoDeviceControllerDeviceDidReceiveErrorError"];
    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v12 = *(a1 + 48);
    v13 = [v10 copy];
    [v11 postNotificationName:@"TUVideoDeviceControllerDeviceDidReceiveError" object:v12 userInfo:v13];

    if ([*(a1 + 48) hasRefreshedPreviewAfterError] && objc_msgSend(*(a1 + 40), "code") != 32032)
    {
      v14 = 0;
    }

    else
    {
      v14 = [*(a1 + 48) wantsPreview];
    }

    v18 = TUDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [*(a1 + 48) hasRefreshedPreviewAfterError];
      v20 = [*(a1 + 40) code];
      v21 = [*(a1 + 48) wantsPreview];
      location = __PAIR64__(v14, 67109888);
      v27 = 1024;
      v28 = v19;
      v29 = 2048;
      v30 = v20;
      v31 = 1024;
      v32 = v21;
      _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Stopping preview due to error. shouldRetryPreview=%d because hasRefreshedPreviewAfterError=%d, error.code=%ld wantsPreview=%d", &location, 0x1Eu);
    }

    v22 = [*(a1 + 48) wantsPreview];
    [*(a1 + 48) stopPreview];
    if (v14)
    {
      if (v22 && [*(a1 + 40) code] == 32023)
      {
        [*(a1 + 48) setRetryAfterLocalCameraUIDChange:1];
      }

      else
      {
        [*(a1 + 48) retryPreviewAfterError];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke_176(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained previewStartBlock];
    v4 = dispatch_block_testcancel(v3);

    if (!v4)
    {
      v5 = TUDefaultLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7[0] = 67109120;
        v7[1] = [v2 wantsPreview];
        _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "AVConferenceServiceUninitializedClientError retry preview delay fired, wantsPreview: %d", v7, 8u);
      }

      if ([v2 wantsPreview])
      {
        [v2 setHasBeganRetryingAfterUninitializedClientError:1];
        [v2 setPreviewStartBlock:0];
        [v2 retryPreviewAfterError];
        [v2 setHasRefreshedPreviewAfterError:0];
      }
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 cameraDidBecomeAvailableForUniqueID:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__TUVideoDeviceController_provider_cameraDidBecomeAvailableForUniqueID___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __72__TUVideoDeviceController_provider_cameraDidBecomeAvailableForUniqueID___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) wantsPreview];
    v5 = @"NO";
    if (v4)
    {
      v5 = @"YES";
    }

    *buf = 138412546;
    v14 = v3;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "cameraUID: %@, wantsPreview: %@", buf, 0x16u);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v11 = @"TUVideoDeviceControllerDeviceBecameAvailableDeviceUniqueID";
    v12 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotificationName:@"TUVideoDeviceControllerDeviceBecameAvailable" object:*(a1 + 40) userInfo:v7];

  if ([*(a1 + 40) wantsPreview])
  {
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Starting preview because client wants preview and camera did become available", buf, 2u);
    }

    [*(a1 + 40) startPreview];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)didStartPreviewForProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TUVideoDeviceController_didStartPreviewForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__TUVideoDeviceController_didStartPreviewForProvider___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "didStartPreviewForProvider: %@", &v6, 0xCu);
  }

  [*(a1 + 40) setHasBeganRetryingAfterUninitializedClientError:0];
  [*(a1 + 40) setHasRefreshedPreviewAfterError:0];
  [*(a1 + 40) setRetryAfterLocalCameraUIDChange:0];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"TUVideoDeviceControllerDidStartPreview" object:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 didReceiveFirstPreviewFrameFromCameraUniqueID:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__TUVideoDeviceController_provider_didReceiveFirstPreviewFrameFromCameraUniqueID___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __82__TUVideoDeviceController_provider_didReceiveFirstPreviewFrameFromCameraUniqueID___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v11 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "cameraUID: %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = @"TUVideoDeviceControllerDidStartPreviewDeviceUniqueID";
    v9 = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"TUVideoDeviceControllerReceivedFirstPreviewFrame" object:*(a1 + 40) userInfo:v5];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 didChangeLocalCameraUID:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__TUVideoDeviceController_provider_didChangeLocalCameraUID___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __60__TUVideoDeviceController_provider_didChangeLocalCameraUID___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Provider received notice that local camera UID changed to %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v9 = @"TUVideoDeviceControllerDidChangeLocalCameraUIDDeviceUniqueIDKey";
    v10 = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 postNotificationName:@"TUVideoDeviceControllerDidChangeLocalCameraUIDNotification" object:*(a1 + 40) userInfo:v5];

  if ([*(a1 + 40) retryAfterLocalCameraUIDChange])
  {
    [*(a1 + 40) setRetryAfterLocalCameraUIDChange:0];
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Starting preview after local camera UID change", buf, 2u);
    }

    [*(a1 + 40) startPreview];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 didChangeLocalVideoAttributes:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__TUVideoDeviceController_provider_didChangeLocalVideoAttributes___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(v6, v8);
}

void __66__TUVideoDeviceController_provider_didChangeLocalVideoAttributes___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "videoAttributes: %@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696B098];
  [*(a1 + 32) ratio];
  v5 = [v4 valueWithSize:?];
  v10 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"TUVideoDeviceControllerLocalAttributesChanged" object:*(a1 + 40) userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)didStopPreviewForProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__TUVideoDeviceController_didStopPreviewForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__TUVideoDeviceController_didStopPreviewForProvider___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "didStopPreviewForProvider %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"TUVideoDeviceControllerDidStopPreview" object:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)didPausePreviewForProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TUVideoDeviceController_didPausePreviewForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __54__TUVideoDeviceController_didPausePreviewForProvider___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "didPausePreviewForProvider %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"TUVideoDeviceControllerDidPausePreview" object:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)captureDevicesChangedForProvider:(id)a3
{
  v4 = a3;
  v5 = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__TUVideoDeviceController_captureDevicesChangedForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __60__TUVideoDeviceController_captureDevicesChangedForProvider___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "captureDevicesChangedForProvider %@", &v6, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"TUVideoDeviceControllerInputDevicesChanged" object:*(a1 + 40)];

  v5 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 cameraZoomAvailabilityDidChange:(BOOL)a4
{
  v6 = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__TUVideoDeviceController_provider_cameraZoomAvailabilityDidChange___block_invoke;
  v7[3] = &unk_1E7425000;
  v8 = a4;
  v7[4] = self;
  dispatch_async(v6, v7);
}

void __68__TUVideoDeviceController_provider_cameraZoomAvailabilityDidChange___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "isZoomAvailable: %d", v8, 8u);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  v5 = v4;
  if (*(a1 + 40))
  {
    v6 = @"TUVideoDeviceControllerZoomAvailable";
  }

  else
  {
    v6 = @"TUVideoDeviceControllerZoomUnavailable";
  }

  [v4 postNotificationName:v6 object:*(a1 + 32)];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 didDetectSensitiveContentWithAnalysis:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUVideoDeviceController_provider_didDetectSensitiveContentWithAnalysis___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __74__TUVideoDeviceController_provider_didDetectSensitiveContentWithAnalysis___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "didDetectSensitiveContentWithAnalysis", v9, 2u);
  }

  v3 = MEMORY[0x1E696AD80];
  v4 = *(a1 + 32);
  v10 = @"TUVideoDeviceControllerSensitiveContentAnalysisKey";
  v11[0] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v6 = [v3 notificationWithName:@"TUVideoDeviceControllerSensitiveContentAnalysisChangedNotification" object:0 userInfo:v5];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotification:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 cameraDidBecomeInterruptedForForUniqueID:(id)a4 reason:(int64_t)a5
{
  v7 = a4;
  v8 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__TUVideoDeviceController_provider_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke;
  block[3] = &unk_1E7425028;
  v12 = self;
  v13 = a5;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

void __84__TUVideoDeviceController_provider_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    v4 = a1[6];
    *buf = 138412546;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "cameraDidBecomeInterruptedForForUniqueID: %@ reason: %ld", buf, 0x16u);
  }

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{a1[6], @"TUVideoDeviceControllerDeviceBecomeInterruptedUniqueIDKey", @"TUVideoDeviceControllerDeviceBecomeInterruptedReason", a1[4]}];
  v10[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:2];

  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotificationName:@"TUVideoDeviceControllerDeviceBecomeInterruptedNotification" object:a1[5] userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 cameraCinematicFramingAvailabilityDidChange:(BOOL)a4
{
  v6 = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__TUVideoDeviceController_provider_cameraCinematicFramingAvailabilityDidChange___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
}

- (void)provider:(id)a3 cameraCinematicFramingEnabledDidChange:(BOOL)a4
{
  v5 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__TUVideoDeviceController_provider_cameraCinematicFramingEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a4;
  dispatch_async(v5, block);
}

void __75__TUVideoDeviceController_provider_cameraCinematicFramingEnabledDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "isCinematicFramingEnabled: %d", buf, 8u);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 32), @"TUVideoDeviceControllerIsCinematicFramingEnabled"}];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v4 notificationWithName:@"TUVideoDeviceControllerCinematicFramingEnabledChanged" object:0 userInfo:v6];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 backgroundReplacementEnabledDidChange:(BOOL)a4
{
  v5 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUVideoDeviceController_provider_backgroundReplacementEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a4;
  dispatch_async(v5, block);
}

void __74__TUVideoDeviceController_provider_backgroundReplacementEnabledDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "backgroundReplacementEnabledDidChange: %d", buf, 8u);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 32), @"TUVideoDeviceControllerIsBackgroundReplacementEnabled"}];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v4 notificationWithName:@"TUVideoDeviceControllerBackgroundReplacementEnabledChanged" object:0 userInfo:v6];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 reactionEffectsEnabledDidChange:(BOOL)a4
{
  v5 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUVideoDeviceController_provider_reactionEffectsEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a4;
  dispatch_async(v5, block);
}

void __68__TUVideoDeviceController_provider_reactionEffectsEnabledDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "isReactionEffectGestureEnabled: %d", buf, 8u);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 32), @"TUVideoDeviceControllerAreReactionEffectsEnabled"}];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v4 notificationWithName:@"TUVideoDeviceControllerReactionEffectsEnabledChanged" object:0 userInfo:v6];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 studioLightEnabledDidChange:(BOOL)a4
{
  v5 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TUVideoDeviceController_provider_studioLightEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a4;
  dispatch_async(v5, block);
}

void __64__TUVideoDeviceController_provider_studioLightEnabledDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "isStudioLightEnabled: %d", buf, 8u);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 32), @"TUVideoDeviceControllerIsStudioLightEnabled"}];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v4 notificationWithName:@"TUVideoDeviceControllerStudioLightEnabledChanged" object:0 userInfo:v6];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 cameraBlurEnabledDidChange:(BOOL)a4
{
  v5 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__TUVideoDeviceController_provider_cameraBlurEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = a4;
  dispatch_async(v5, block);
}

void __63__TUVideoDeviceController_provider_cameraBlurEnabledDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 67109120;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "cameraBlurEnabledDidChange: %d", buf, 8u);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{*(a1 + 32), @"TUVideoDeviceControllerIsCameraBlurEnabledKey"}];
  v11 = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v7 = [v4 notificationWithName:@"TUVideoDeviceControllerCameraBlurEnabledChangedNotification" object:0 userInfo:v6];

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 userPreferredCameraUIDDidChange:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUVideoDeviceController_provider_userPreferredCameraUIDDidChange___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __68__TUVideoDeviceController_provider_userPreferredCameraUIDDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "userPreferredCameraUIDDidChange: %@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = *(a1 + 32);
  if (v5)
  {
    v10 = @"TUVideoDeviceControllerUserPreferredCameraUIDKey";
    v11 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v4 notificationWithName:@"TUVideoDeviceControllerUserPreferredCameraChangedNotification" object:0 userInfo:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD80] notificationWithName:@"TUVideoDeviceControllerUserPreferredCameraChangedNotification" object:0 userInfo:0];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 systemPreferredCameraUIDDidChange:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__TUVideoDeviceController_provider_systemPreferredCameraUIDDidChange___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __70__TUVideoDeviceController_provider_systemPreferredCameraUIDDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v13 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "systemPreferredCameraUIDDidChange: %@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696AD80];
  v5 = *(a1 + 32);
  if (v5)
  {
    v10 = @"TUVideoDeviceControllerSystemPreferredCameraUIDKey";
    v11 = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
    v7 = [v4 notificationWithName:@"TUVideoDeviceControllerSystemPreferredCameraChangedNotification" object:0 userInfo:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AD80] notificationWithName:@"TUVideoDeviceControllerSystemPreferredCameraChangedNotification" object:0 userInfo:0];
  }

  v8 = [MEMORY[0x1E696AD88] defaultCenter];
  [v8 postNotification:v7];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)provider:(id)a3 didGetSnapshot:(id)a4
{
  v5 = a4;
  v6 = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUVideoDeviceController_provider_didGetSnapshot___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

void __51__TUVideoDeviceController_provider_didGetSnapshot___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v12 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "didGetSnapshot: %p", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    v9 = @"TUVideoDeviceControllerSnapshotDataKey";
    v10 = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E696AD80] notificationWithName:@"TUVideoDeviceControllerDidGetSnapshotNotification" object:0 userInfo:v5];
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  [v7 postNotification:v6];

  v8 = *MEMORY[0x1E69E9840];
}

void __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v2;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "cameraUID: %@, error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end