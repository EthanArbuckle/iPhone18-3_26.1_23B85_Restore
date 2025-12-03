@interface TUVideoDeviceController
+ (int)_tuOrientationForVideoOrientation:(int)orientation;
+ (int)_videoOrientationForTUOrientation:(int)orientation;
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
- (TUVideoDeviceController)initWithProvider:(id)provider serialQueue:(id)queue featureFlags:(id)flags;
- (TUVideoDeviceController)initWithSerialQueue:(id)queue;
- (TUVideoEffect)currentVideoEffect;
- (id)debugDescription;
- (id)landscapeScreenAttributes;
- (id)portraitScreenAttributes;
- (int)currentBackgroundBlurControlMode;
- (int)currentVideoOrientation;
- (void)captureDevicesChangedForProvider:(id)provider;
- (void)didPausePreviewForProvider:(id)provider;
- (void)didStartPreviewForProvider:(id)provider;
- (void)didStopPreviewForProvider:(id)provider;
- (void)flipCamera;
- (void)getSnapshot;
- (void)noteBeginAnimationToPIP;
- (void)noteBeginAnimationToPreview;
- (void)noteEndAnimationToPIP;
- (void)noteEndAnimationToPreview;
- (void)pausePreview;
- (void)provider:(id)provider backgroundReplacementEnabledDidChange:(BOOL)change;
- (void)provider:(id)provider cameraBlurEnabledDidChange:(BOOL)change;
- (void)provider:(id)provider cameraCinematicFramingAvailabilityDidChange:(BOOL)change;
- (void)provider:(id)provider cameraCinematicFramingEnabledDidChange:(BOOL)change;
- (void)provider:(id)provider cameraDidBecomeAvailableForUniqueID:(id)d;
- (void)provider:(id)provider cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason;
- (void)provider:(id)provider cameraZoomAvailabilityDidChange:(BOOL)change;
- (void)provider:(id)provider didChangeLocalCameraUID:(id)d;
- (void)provider:(id)provider didChangeLocalVideoAttributes:(id)attributes;
- (void)provider:(id)provider didDetectSensitiveContentWithAnalysis:(id)analysis;
- (void)provider:(id)provider didGetSnapshot:(id)snapshot;
- (void)provider:(id)provider didReceiveErrorFromCameraUniqueID:(id)d error:(id)error;
- (void)provider:(id)provider didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d;
- (void)provider:(id)provider reactionEffectsEnabledDidChange:(BOOL)change;
- (void)provider:(id)provider studioLightEnabledDidChange:(BOOL)change;
- (void)provider:(id)provider systemPreferredCameraUIDDidChange:(id)change;
- (void)provider:(id)provider userPreferredCameraUIDDidChange:(id)change;
- (void)rampCameraZoomFactor:(double)factor withRate:(double)rate;
- (void)retryPreviewAfterError;
- (void)setCameraZoomFactor:(double)factor;
- (void)setCurrentBackgroundBlurControlMode:(int)mode;
- (void)setCurrentInputDevice:(id)device isUserPreferred:(BOOL)preferred;
- (void)setCurrentVideoEffect:(id)effect;
- (void)setLocalBackLayer:(id)layer;
- (void)setLocalBackLayerHost:(id)host;
- (void)setLocalFrontLayer:(id)layer;
- (void)setLocalFrontLayerHost:(id)host;
- (void)setLocalPortraitAspectRatio:(CGSize)ratio localLandscapeAspectRatio:(CGSize)aspectRatio;
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

  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  if (currentInputDevice)
  {
    currentInputDevice2 = [(TUVideoDeviceController *)self currentInputDevice];
    deviceType = [currentInputDevice2 deviceType];
    v6 = deviceType == currentInputIsExternal__AVCaptureDeviceTypeExternal;
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  localCameraUID = [provider localCameraUID];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  inputDevices = [(TUVideoDeviceController *)self inputDevices];
  v7 = [inputDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(inputDevices);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        uniqueID = [v10 uniqueID];
        v12 = [uniqueID isEqualToString:localCameraUID];

        if (v12)
        {
          v7 = v10;
          goto LABEL_11;
        }
      }

      v7 = [inputDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  inputDevices = [provider inputDevices];

  return inputDevices;
}

- (TUVideoDeviceController)initWithSerialQueue:(id)queue
{
  queueCopy = queue;
  v5 = objc_alloc_init(TUVideoDeviceControllerProvider);
  v6 = objc_alloc_init(TUFeatureFlags);
  v7 = [(TUVideoDeviceController *)self initWithProvider:v5 serialQueue:queueCopy featureFlags:v6];

  return v7;
}

- (TUVideoDeviceController)initWithProvider:(id)provider serialQueue:(id)queue featureFlags:(id)flags
{
  providerCopy = provider;
  queueCopy = queue;
  flagsCopy = flags;
  v15.receiver = self;
  v15.super_class = TUVideoDeviceController;
  v12 = [(TUVideoDeviceController *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serialQueue, queue);
    objc_storeStrong(&v13->_provider, provider);
    [(TUVideoDeviceControllerProvider *)v13->_provider setDelegate:v13];
    objc_storeStrong(&v13->_featureFlags, flags);
    v13->_uninitializedClientRetrySeconds = 1;
  }

  return v13;
}

- (TUVideoDeviceController)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUVideoDeviceController.m" lineNumber:135 description:{@"%s is not available. Use a designated initializer instead.", "-[TUVideoDeviceController init]"}];

  return 0;
}

- (id)debugDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  inputDevices = [(TUVideoDeviceController *)self inputDevices];
  [v3 appendFormat:@" devices=%@", inputDevices];

  if ([(TUVideoDeviceController *)self isFollowSystemCameraEnabled])
  {
    [v3 appendFormat:@" followSystemCameraEnabled=%d", -[TUVideoDeviceController isFollowSystemCameraEnabled](self, "isFollowSystemCameraEnabled")];
  }

  [v3 appendString:@">"];
  v5 = [v3 copy];

  return v5;
}

+ (int)_videoOrientationForTUOrientation:(int)orientation
{
  if ((orientation - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return orientation;
  }
}

+ (int)_tuOrientationForVideoOrientation:(int)orientation
{
  if ((orientation - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return orientation;
  }
}

- (BOOL)currentInputSupportsCinematicFraming
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  formats = [currentInputDevice formats];

  v4 = [formats countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(formats);
        }

        if ([*(*(&v9 + 1) + 8 * i) isCenterStageSupported])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [formats countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  formats = [currentInputDevice formats];

  v4 = [formats countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(formats);
        }

        if ([*(*(&v9 + 1) + 8 * i) reactionEffectsSupported])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [formats countByEnumeratingWithState:&v9 objects:v13 count:16];
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

- (void)setCurrentInputDevice:(id)device isUserPreferred:(BOOL)preferred
{
  preferredCopy = preferred;
  v23 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = deviceCopy;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Asked to set current input device to %@", buf, 0xCu);
  }

  if (deviceCopy)
  {
    uniqueID = [deviceCopy uniqueID];
    if ([uniqueID isEqualToString:@"com.apple.avfoundation.avcapturedevice.built-in_video:1"])
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

          devices = [v12 devices];
          if ([devices count])
          {
            firstObject = [devices firstObject];
            v15 = TUDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v22 = firstObject;
              _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Upgrading input device to depth camera device %@", buf, 0xCu);
            }

            uniqueID2 = [firstObject uniqueID];

            uniqueID = uniqueID2;
            deviceCopy = firstObject;
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

    provider = [(TUVideoDeviceController *)self provider];
    [provider setLocalCameraWithUID:uniqueID];

    if (preferredCopy)
    {
      v18 = TUDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v22 = deviceCopy;
        _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Setting userPreferred camera to %@", buf, 0xCu);
      }

      [CUTWeakLinkClass() setUserPreferredCamera:deviceCopy forClientPreferenceDomain:@"com.apple.facetime"];
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
  selfCopy = self;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)selfCopy provider];
  localVideoAttributes = [provider localVideoAttributes];

  LODWORD(selfCopy) = [objc_opt_class() _tuOrientationForVideoOrientation:{objc_msgSend(localVideoAttributes, "orientation")}];
  return selfCopy;
}

- (BOOL)isFollowSystemCameraEnabled
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  featureFlags = [(TUVideoDeviceController *)self featureFlags];
  [featureFlags continuityCaptureEnabled];

  return 0;
}

- (BOOL)hasAvailableDeskViewCameras
{
  featureFlags = [(TUVideoDeviceController *)self featureFlags];
  screenSharingDeskViewEnabled = [featureFlags screenSharingDeskViewEnabled];

  if (!screenSharingDeskViewEnabled)
  {
    return 0;
  }

  provider = [(TUVideoDeviceController *)self provider];
  hasAvailableDeskViewCameras = [provider hasAvailableDeskViewCameras];

  return hasAvailableDeskViewCameras;
}

- (BOOL)isPreviewRunning
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LOBYTE(serialQueue) = [provider isPreviewRunning];

  return serialQueue;
}

- (CALayer)localFrontLayer
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  v5 = [provider localVideoLayer:1];

  return v5;
}

- (void)setLocalFrontLayer:(id)layer
{
  v11 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = layerCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localFrontLayer: %@", &v9, 0xCu);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider setLocalVideoLayer:layerCopy front:1];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLocalFrontLayerHost:(id)host
{
  v11 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = hostCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localFrontLayerHost: %@", &v9, 0xCu);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider setLocalVideoLayerHost:hostCopy front:1];

  v8 = *MEMORY[0x1E69E9840];
}

- (CALayer)localBackLayer
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  v5 = [provider localVideoLayer:0];

  return v5;
}

- (void)setLocalBackLayer:(id)layer
{
  v11 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = layerCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localBackLayer: %@", &v9, 0xCu);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider setLocalVideoLayer:layerCopy front:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setLocalBackLayerHost:(id)host
{
  v11 = *MEMORY[0x1E69E9840];
  hostCopy = host;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = hostCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "localBackLayerHost: %@", &v9, 0xCu);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider setLocalVideoLayerHost:hostCopy front:0];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setCurrentVideoEffect:(id)effect
{
  effectCopy = effect;
  provider = [(TUVideoDeviceController *)self provider];
  [provider setCurrentVideoEffect:effectCopy];
}

- (TUVideoEffect)currentVideoEffect
{
  provider = [(TUVideoDeviceController *)self provider];
  currentVideoEffect = [provider currentVideoEffect];

  return currentVideoEffect;
}

- (NSArray)availableVideoEffects
{
  v26 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  provider = [(TUVideoDeviceController *)self provider];
  availableVideoEffects = [provider availableVideoEffects];

  v6 = [availableVideoEffects countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          objc_enumerationMutation(availableVideoEffects);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        provider2 = [(TUVideoDeviceController *)self provider];
        v13 = [provider2 thumbnailImageForVideoEffectName:v11];

        if (v13)
        {
          v14 = [[TUVideoEffect alloc] initWithName:v11 thumbnailImage:v13];
          [array addObject:v14];
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

      v8 = [availableVideoEffects countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v8);
  }

  v15 = [array copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)startPreview
{
  v12 = *MEMORY[0x1E69E9840];
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  if ([(TUVideoDeviceController *)self shouldIgnoreStartPreview])
  {
    currentInputDevice = TUDefaultLog();
    if (os_log_type_enabled(currentInputDevice, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1956FD000, currentInputDevice, OS_LOG_TYPE_DEFAULT, "Ignoring start preview with currentInputDevice", &v10, 2u);
    }
  }

  else
  {
    currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = currentInputDevice;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Starting preview with self.currentInputDevice: %@", &v10, 0xCu);
    }

    [(TUVideoDeviceController *)self setWantsPreview:1];
    reapplyCameraZoom = [(TUVideoDeviceController *)self reapplyCameraZoom];

    if (reapplyCameraZoom)
    {
      reapplyCameraZoom2 = [(TUVideoDeviceController *)self reapplyCameraZoom];
      (reapplyCameraZoom2)[2](reapplyCameraZoom2, currentInputDevice);
    }

    provider = [(TUVideoDeviceController *)self provider];
    [provider startPreview];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)stopPreview
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Stopping preview with currentInputDevice", v6, 2u);
  }

  [(TUVideoDeviceController *)self setWantsPreview:0];
  provider = [(TUVideoDeviceController *)self provider];
  [provider stopPreview];
}

- (void)pausePreview
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Pausing preview with currentInputDevice", v6, 2u);
  }

  [(TUVideoDeviceController *)self setWantsPreview:0];
  provider = [(TUVideoDeviceController *)self provider];
  [provider pausePreview];
}

- (void)getSnapshot
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  [provider getSnapshot];
}

- (BOOL)isCinematicFramingEnabled
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LOBYTE(serialQueue) = [provider isCinematicFramingEnabled];

  return serialQueue;
}

- (BOOL)isReactionEffectGestureEnabled
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LOBYTE(serialQueue) = [provider isReactionEffectGestureEnabled];

  return serialQueue;
}

- (BOOL)isStudioLightEnabled
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LOBYTE(serialQueue) = [provider isStudioLightEnabled];

  return serialQueue;
}

- (BOOL)currentInputSupportsStudioLight
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  formats = [currentInputDevice formats];

  v4 = [formats countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(formats);
        }

        if ([*(*(&v9 + 1) + 8 * i) isStudioLightSupported])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [formats countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  v6 = [provider supportsCameraBlurForDevice:currentInputDevice];

  return v6;
}

- (BOOL)currentInputSupportsTrueDepth
{
  if (currentInputSupportsTrueDepth__pred__AVCaptureDeviceTypeBuiltInTrueDepthCamera != -1)
  {
    [TUVideoDeviceController currentInputSupportsTrueDepth];
  }

  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  if (currentInputDevice)
  {
    currentInputDevice2 = [(TUVideoDeviceController *)self currentInputDevice];
    deviceType = [currentInputDevice2 deviceType];
    v6 = deviceType == currentInputSupportsTrueDepth__AVCaptureDeviceTypeBuiltInTrueDepthCamera;
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

  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  if (currentInputDevice)
  {
    currentInputDevice2 = [(TUVideoDeviceController *)self currentInputDevice];
    deviceType = [currentInputDevice2 deviceType];
    v6 = deviceType == currentInputSupportsUltraWide__AVCaptureDeviceTypeBuiltInUltraWideCamera;
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LODWORD(serialQueue) = [provider currentBackgroundBlurControlMode];

  return serialQueue;
}

- (void)setCurrentBackgroundBlurControlMode:(int)mode
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  [provider setCurrentBackgroundBlurControlMode:mode];
}

- (BOOL)cameraBlurEnabled
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LOBYTE(serialQueue) = [provider isCameraBlurEnabled];

  return serialQueue;
}

- (void)setCameraZoomFactor:(double)factor
{
  v11 = *MEMORY[0x1E69E9840];
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    factorCopy = factor;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Setting back camera zoom factor: %f", &v9, 0xCu);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider setCameraZoomFactor:factor];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)rampCameraZoomFactor:(double)factor withRate:(double)rate
{
  v15 = *MEMORY[0x1E69E9840];
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218240;
    factorCopy = factor;
    v13 = 2048;
    rateCopy = rate;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Setting ramp camera zoom factor: %f with rate: %f", &v11, 0x16u);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider rampCameraZoomFactor:factor withRate:rate];

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)backgroundReplacementEnabled
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  LOBYTE(serialQueue) = [provider isBackgroundReplacementEnabled];

  return serialQueue;
}

- (void)noteBeginAnimationToPreview
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Beginning animation to preview with currentInputDevice", v6, 2u);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider beginPIPToPreviewAnimation];
}

- (void)flipCamera
{
  v28 = *MEMORY[0x1E69E9840];
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  inputDevices = [(TUVideoDeviceController *)self inputDevices];
  v5 = [inputDevices countByEnumeratingWithState:&v21 objects:v27 count:16];
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
        objc_enumerationMutation(inputDevices);
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

    v6 = [inputDevices countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v6);
LABEL_16:

  currentInputDevice = [(TUVideoDeviceController *)self currentInputDevice];
  position = [currentInputDevice position];

  v17 = TUDefaultLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (position == 1)
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ending animation to preview with currentInputDevice", v6, 2u);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider endPIPToPreviewAnimation];
}

- (void)noteBeginAnimationToPIP
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Beginning animation to PIP with currentInputDevice", v6, 2u);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider beginPreviewToPIPAnimation];
}

- (void)noteEndAnimationToPIP
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = TUDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Ending animation to PIP with currentInputDevice", v6, 2u);
  }

  provider = [(TUVideoDeviceController *)self provider];
  [provider endPreviewToPIPAnimation];
}

- (void)setLocalPortraitAspectRatio:(CGSize)ratio localLandscapeAspectRatio:(CGSize)aspectRatio
{
  height = aspectRatio.height;
  width = aspectRatio.width;
  v6 = ratio.height;
  v7 = ratio.width;
  v22 = *MEMORY[0x1E69E9840];
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

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

  portraitScreenAttributes = [(TUVideoDeviceController *)self portraitScreenAttributes];
  [portraitScreenAttributes setRatio:{v7, v6}];
  provider = [(TUVideoDeviceController *)self provider];
  [provider setLocalScreenAttributes:portraitScreenAttributes];

  landscapeScreenAttributes = [(TUVideoDeviceController *)self landscapeScreenAttributes];
  [landscapeScreenAttributes setRatio:{width, height}];
  provider2 = [(TUVideoDeviceController *)self provider];
  [provider2 setLocalScreenAttributes:landscapeScreenAttributes];

  v17 = *MEMORY[0x1E69E9840];
}

- (CGRect)localScreenContentsRect
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v4 = [objc_opt_class() _videoOrientationForTUOrientation:{-[TUVideoDeviceController currentVideoOrientation](self, "currentVideoOrientation")}];
  v5 = objc_alloc_init(CUTWeakLinkClass());
  [v5 setOrientation:v4];
  provider = [(TUVideoDeviceController *)self provider];
  v7 = [provider localScreenAttributesForVideoAttributes:v5];
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  localVideoAttributes = [provider localVideoAttributes];
  [localVideoAttributes ratio];
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  portraitScreenAttributes = [(TUVideoDeviceController *)self portraitScreenAttributes];
  [portraitScreenAttributes ratio];
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  provider = [(TUVideoDeviceController *)self provider];
  localVideoAttributes = [provider localVideoAttributes];
  [localVideoAttributes ratio];
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
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  landscapeScreenAttributes = [(TUVideoDeviceController *)self landscapeScreenAttributes];
  [landscapeScreenAttributes ratio];
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
  provider = [(TUVideoDeviceController *)self provider];
  v5 = [provider localScreenAttributesForVideoAttributes:v3];

  return v5;
}

- (id)landscapeScreenAttributes
{
  v3 = objc_alloc_init(CUTWeakLinkClass());
  [v3 setOrientation:3];
  provider = [(TUVideoDeviceController *)self provider];
  v5 = [provider localScreenAttributesForVideoAttributes:v3];

  return v5;
}

- (void)provider:(id)provider didReceiveErrorFromCameraUniqueID:(id)d error:(id)error
{
  dCopy = d;
  errorCopy = error;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__TUVideoDeviceController_provider_didReceiveErrorFromCameraUniqueID_error___block_invoke;
  block[3] = &unk_1E7424FD8;
  v13 = dCopy;
  v14 = errorCopy;
  selfCopy = self;
  v10 = errorCopy;
  v11 = dCopy;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider cameraDidBecomeAvailableForUniqueID:(id)d
{
  dCopy = d;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __72__TUVideoDeviceController_provider_cameraDidBecomeAvailableForUniqueID___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(serialQueue, v8);
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

- (void)didStartPreviewForProvider:(id)provider
{
  providerCopy = provider;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TUVideoDeviceController_didStartPreviewForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(serialQueue, v7);
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

- (void)provider:(id)provider didReceiveFirstPreviewFrameFromCameraUniqueID:(id)d
{
  dCopy = d;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __82__TUVideoDeviceController_provider_didReceiveFirstPreviewFrameFromCameraUniqueID___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(serialQueue, v8);
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

- (void)provider:(id)provider didChangeLocalCameraUID:(id)d
{
  dCopy = d;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__TUVideoDeviceController_provider_didChangeLocalCameraUID___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = dCopy;
  selfCopy = self;
  v7 = dCopy;
  dispatch_async(serialQueue, v8);
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

- (void)provider:(id)provider didChangeLocalVideoAttributes:(id)attributes
{
  attributesCopy = attributes;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__TUVideoDeviceController_provider_didChangeLocalVideoAttributes___block_invoke;
  v8[3] = &unk_1E7424898;
  v9 = attributesCopy;
  selfCopy = self;
  v7 = attributesCopy;
  dispatch_async(serialQueue, v8);
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

- (void)didStopPreviewForProvider:(id)provider
{
  providerCopy = provider;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__TUVideoDeviceController_didStopPreviewForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(serialQueue, v7);
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

- (void)didPausePreviewForProvider:(id)provider
{
  providerCopy = provider;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__TUVideoDeviceController_didPausePreviewForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(serialQueue, v7);
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

- (void)captureDevicesChangedForProvider:(id)provider
{
  providerCopy = provider;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__TUVideoDeviceController_captureDevicesChangedForProvider___block_invoke;
  v7[3] = &unk_1E7424898;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(serialQueue, v7);
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

- (void)provider:(id)provider cameraZoomAvailabilityDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__TUVideoDeviceController_provider_cameraZoomAvailabilityDidChange___block_invoke;
  v7[3] = &unk_1E7425000;
  changeCopy = change;
  v7[4] = self;
  dispatch_async(serialQueue, v7);
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

- (void)provider:(id)provider didDetectSensitiveContentWithAnalysis:(id)analysis
{
  analysisCopy = analysis;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUVideoDeviceController_provider_didDetectSensitiveContentWithAnalysis___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = analysisCopy;
  v7 = analysisCopy;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider cameraDidBecomeInterruptedForForUniqueID:(id)d reason:(int64_t)reason
{
  dCopy = d;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__TUVideoDeviceController_provider_cameraDidBecomeInterruptedForForUniqueID_reason___block_invoke;
  block[3] = &unk_1E7425028;
  selfCopy = self;
  reasonCopy = reason;
  v11 = dCopy;
  v9 = dCopy;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider cameraCinematicFramingAvailabilityDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __80__TUVideoDeviceController_provider_cameraCinematicFramingAvailabilityDidChange___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  changeCopy = change;
  dispatch_async(serialQueue, v7);
}

- (void)provider:(id)provider cameraCinematicFramingEnabledDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__TUVideoDeviceController_provider_cameraCinematicFramingEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  changeCopy = change;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider backgroundReplacementEnabledDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__TUVideoDeviceController_provider_backgroundReplacementEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  changeCopy = change;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider reactionEffectsEnabledDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUVideoDeviceController_provider_reactionEffectsEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  changeCopy = change;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider studioLightEnabledDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__TUVideoDeviceController_provider_studioLightEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  changeCopy = change;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider cameraBlurEnabledDidChange:(BOOL)change
{
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__TUVideoDeviceController_provider_cameraBlurEnabledDidChange___block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  changeCopy = change;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider userPreferredCameraUIDDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUVideoDeviceController_provider_userPreferredCameraUIDDidChange___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider systemPreferredCameraUIDDidChange:(id)change
{
  changeCopy = change;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__TUVideoDeviceController_provider_systemPreferredCameraUIDDidChange___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(serialQueue, block);
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

- (void)provider:(id)provider didGetSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  serialQueue = [(TUVideoDeviceController *)self serialQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUVideoDeviceController_provider_didGetSnapshot___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = snapshotCopy;
  v7 = snapshotCopy;
  dispatch_async(serialQueue, block);
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