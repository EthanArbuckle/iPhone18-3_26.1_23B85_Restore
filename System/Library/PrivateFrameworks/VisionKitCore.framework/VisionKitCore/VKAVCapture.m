@interface VKAVCapture
+ (uint64_t)authorizationStatus;
- (VKAVCapture)init;
- (double)interestPoint;
- (double)maxZoomFactor;
- (double)minZoomFactor;
- (double)videoRotationAngle;
- (double)zoomFactor;
- (id)videoSettings;
- (uint64_t)connection;
- (uint64_t)delegate;
- (uint64_t)device;
- (uint64_t)hasTorch;
- (uint64_t)isRunning;
- (uint64_t)isTorchOn;
- (uint64_t)photoOutput;
- (uint64_t)preparationState;
- (uint64_t)processHasPerfPowerServicesEntitlement;
- (uint64_t)session;
- (uint64_t)setDelegate:(uint64_t)result;
- (uint64_t)setPreparationState:(uint64_t)result;
- (uint64_t)setStartTime:(uint64_t)result;
- (uint64_t)startTime;
- (uint64_t)videoDataOutput;
- (void)_sessionRuntimeError:(id)a3;
- (void)dealloc;
- (void)prepareWithConfiguration:(void *)a3 completion:;
- (void)sendPowerLogs;
- (void)setConnection:(uint64_t)a1;
- (void)setInterestPoint:(uint64_t)a1;
- (void)setPhotoOutput:(uint64_t)a1;
- (void)setTorchOn:(id *)a1;
- (void)setVideoDataOutput:(uint64_t)a1;
- (void)setVideoRotationAngle:(double)a3 completion:;
- (void)setZoomFactor:(double)a3;
- (void)startRunning;
- (void)stopRunning;
@end

@implementation VKAVCapture

+ (uint64_t)authorizationStatus
{
  objc_opt_self();
  v0 = MEMORY[0x1E69870A0];
  v1 = *MEMORY[0x1E6987608];

  return [v0 authorizationStatusForMediaType:v1];
}

- (VKAVCapture)init
{
  v8.receiver = self;
  v8.super_class = VKAVCapture;
  v2 = [(VKAVCapture *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.visionkit.avcapturequeue", v4);
    queue = v2->_queue;
    v2->_queue = v5;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = VKAVCapture;
  [(VKAVCapture *)&v4 dealloc];
}

- (void)prepareWithConfiguration:(void *)a3 completion:
{
  v32[4] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!a1)
  {
    goto LABEL_17;
  }

  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  if (a1[9])
  {
    goto LABEL_17;
  }

  a1[9] = 1;
  objc_opt_self();
  v7 = *MEMORY[0x1E6987608];
  v8 = [MEMORY[0x1E69870A0] authorizationStatusForMediaType:*MEMORY[0x1E6987608]];
  if (!v8)
  {
    objc_initWeak(&location, a1);
    v10 = MEMORY[0x1E69870A0];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke;
    v27[3] = &unk_1E7BE41E0;
    objc_copyWeak(&v28, &location);
    [v10 requestAccessForMediaType:v7 completionHandler:v27];
    objc_destroyWeak(&v28);
    objc_destroyWeak(&location);
    goto LABEL_10;
  }

  if (v8 != 2)
  {
LABEL_10:
    if ([v5 cameraPreset])
    {
      if ([v5 cameraPreset] == 2)
      {
        v11 = *MEMORY[0x1E6986900];
        v31[0] = *MEMORY[0x1E6986908];
        v31[1] = v11;
        v31[2] = *MEMORY[0x1E6986950];
        [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
      }

      else
      {
        v30 = *MEMORY[0x1E6986950];
        [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      }
      v12 = ;
    }

    else
    {
      v13 = *MEMORY[0x1E6986900];
      v32[0] = *MEMORY[0x1E6986938];
      v32[1] = v13;
      v14 = *MEMORY[0x1E6986950];
      v32[2] = *MEMORY[0x1E6986908];
      v32[3] = v14;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:4];
    }

    v15 = v12;
    v16 = _SizeFromVKResolutionPreset([v5 resolutionPreset]);
    v17 = a1[1];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3;
    v20[3] = &unk_1E7BE6590;
    v21 = v15;
    v25 = v16;
    v26 = v18;
    v22 = v5;
    v23 = a1;
    v24 = v6;
    v19 = v15;
    vk_performBlockOnQueueWithStrongSelf(v17, a1, v20);

    goto LABEL_17;
  }

  v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [VKAVCapture prepareWithConfiguration:completion:];
  }

  a1[9] = 2;
  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

LABEL_17:
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_2;
  v4[3] = &unk_1E7BE41B8;
  v4[4] = WeakRetained;
  v5 = a2;
  vk_performBlockOnMainThread(v4);
}

void *__51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  v3 = v4;
  if (v4)
  {
    if (*(v3 + 24))
    {
      return __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_2_cold_1(result, a1);
    }
  }

  return result;
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v87[1] = *MEMORY[0x1E69E9840];
  v59 = a2;
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) preferBinning];
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v7 = v3;
  v8 = *MEMORY[0x1E6987608];
  v9 = [MEMORY[0x1E69870A8] discoverySessionWithDeviceTypes:v7 mediaType:*MEMORY[0x1E6987608] position:1];
  v10 = [v9 devices];
  v11 = [v10 firstObject];

  v12 = [v11 deviceType];
  v13 = v12;
  if (v4)
  {
    v16 = v12 != *MEMORY[0x1E6986938] && v12 != *MEMORY[0x1E6986900] && v12 != *MEMORY[0x1E6986908];
  }

  else
  {
    v16 = 0;
  }

  *&v78 = 0;
  *(&v78 + 1) = &v78;
  v79 = 0x3032000000;
  v80 = __Block_byref_object_copy__11;
  v81 = __Block_byref_object_dispose__11;
  v82 = 0;
  v17 = [v11 formats];
  *&v71 = MEMORY[0x1E69E9820];
  *(&v71 + 1) = 3221225472;
  v72 = ___BestCaptureDeviceFromDesiredDeviceTypes_block_invoke;
  v73 = &unk_1E7BE6678;
  v74 = &v78;
  v75 = v5;
  v76 = v6;
  v77 = v16;
  [v17 enumerateObjectsUsingBlock:&v71];

  if (!*(*(&v78 + 1) + 40))
  {
    [VKAssert handleFailedAssertWithCondition:"((bestFormat) != nil)" functionName:"AVCaptureDevice *_BestCaptureDeviceFromDesiredDeviceTypes(NSArray<AVCaptureDeviceType> *__strong simulateCrash:CGSize showAlert:_Bool)" format:0, 0, @"Expected non-nil value for '%s'", "bestFormat"];
  }

  *&v83 = 0;
  v18 = [v11 lockForConfiguration:&v83];
  v19 = v83;
  if (v18)
  {
    [v11 setActiveFormat:*(*(&v78 + 1) + 40)];
    [v11 unlockForConfiguration];
  }

  else
  {
    v20 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_1();
    }
  }

  _Block_object_dispose(&v78, 8);
  v70 = 0;
  v21 = [MEMORY[0x1E69870B0] deviceInputWithDevice:v11 error:&v70];
  v60 = v70;
  if (v60)
  {
    v22 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_2();
    }
  }

  if (!v21)
  {
    [VKAssert handleFailedAssertWithCondition:"((deviceInput) != nil)" functionName:"[VKAVCapture prepareWithConfiguration:completion:]_block_invoke" simulateCrash:0 showAlert:0 format:@"Expected non-nil value for '%s'", "deviceInput"];
  }

  v23 = [*(a1 + 40) preferBinning];
  v24 = *(a1 + 48);
  if (v24)
  {
    *(v24 + 16) = v23;
  }

  v25 = objc_alloc_init(MEMORY[0x1E6987178]);
  if ([v25 isSceneStabilityMetadataSupported])
  {
    [v25 setSceneStabilityMetadataEnabled:1];
  }

  v86 = *MEMORY[0x1E6966130];
  v87[0] = &unk_1F2C38ED8;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v87 forKeys:&v86 count:1];
  [v25 setVideoSettings:v26];

  [v25 setAlwaysDiscardsLateVideoFrames:1];
  v27 = objc_alloc_init(MEMORY[0x1E6987110]);
  AVCaptureSessionSetAuthorizedToUseCameraInMultipleForegroundAppLayout();
  [v27 setSessionPreset:*MEMORY[0x1E6986AF0]];
  if (!v21 || ([v27 canAddInput:v21] & 1) == 0)
  {
    v28 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_8();
    }

    goto LABEL_40;
  }

  [v27 addInput:v21];
  if (!v25 || ([v27 canAddOutput:v25] & 1) == 0)
  {
    v28 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_3();
    }

LABEL_40:

    v68[0] = MEMORY[0x1E69E9820];
    v68[1] = 3221225472;
    v68[2] = __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_170;
    v68[3] = &unk_1E7BE3FC8;
    v69 = *(a1 + 56);
    vk_performBlockOnMainThread(v68);
    v29 = v69;
    goto LABEL_41;
  }

  [v27 addOutput:v25];
  v58 = objc_alloc_init(MEMORY[0x1E69870F0]);
  if (v58 && ([v27 canAddOutput:v58] & 1) != 0)
  {
    [v27 addOutput:v58];
  }

  else
  {
    v30 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_3();
    }
  }

  v31 = [v11 activeFormat];
  v32 = [v31 supportedMaxPhotoDimensions];
  v33 = [v32 lastObject];
  v34 = [v33 CMVideoDimensionsValue];

  [v58 setMaxPhotoDimensions:v34];
  v57 = [v25 connectionWithMediaType:v8];
  [v57 setPreferredVideoStabilizationMode:0];
  v35 = v11;
  if ([v35 isVirtualDevice])
  {
    v36 = [v35 constituentDevices];
    if ([v36 count] >= 2)
    {
      v37 = [v36 firstObject];
      v38 = [v37 deviceType];
      v39 = v38 == *MEMORY[0x1E6986948];

      if (v39)
      {
        v40 = [v35 virtualDeviceSwitchOverVideoZoomFactors];
        v41 = [v40 count];
        if (v41 != [v36 count] - 1)
        {
          [VKAssert handleFailedAssertWithCondition:"switchOverZoomFactors.count == (constituentDevices.count - 1)" functionName:"void _SetInitialZoomFactorOnCaptureDevice(AVCaptureDevice *__strong)" simulateCrash:0 showAlert:0 format:@"Unexpected switch over zoom factors for the number of constituent devices in a virtual capture device."];
        }

        *&v71 = 0;
        v42 = [v35 lockForConfiguration:&v71];
        v43 = v71;
        if (v42)
        {
          v44 = [v40 firstObject];
          [v44 doubleValue];
          [v35 setVideoZoomFactor:?];

          [v35 unlockForConfiguration];
        }

        else
        {
          v45 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_4();
          }
        }
      }
    }
  }

  v46 = [*(a1 + 40) frameRatePreset];
  v47 = v35;
  v48 = [v47 activeFormat];
  v71 = 0uLL;
  v72 = 0;
  _MinFrameDurationFromVKFrameRatePreset(v46, v48, &v71);
  v78 = 0uLL;
  v79 = 0;
  _MaxFrameDurationFromVKFrameRatePreset(v46, v48, &v78);
  v85 = 0;
  v49 = [v47 lockForConfiguration:&v85];
  v50 = v85;
  if (v49)
  {
    v83 = v71;
    v84 = v72;
    [v47 setActiveVideoMinFrameDuration:&v83];
    v83 = v78;
    v84 = v79;
    [v47 setActiveVideoMaxFrameDuration:&v83];
    [v47 unlockForConfiguration];
  }

  else
  {
    v51 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_5();
    }
  }

  v52 = v47;
  *&v71 = 0;
  v53 = [v52 lockForConfiguration:&v71];
  v54 = v71;
  if (v53)
  {
    if ([v52 automaticallyAdjustsFaceDrivenAutoFocusEnabled])
    {
      [v52 setAutomaticallyAdjustsFaceDrivenAutoFocusEnabled:0];
    }

    if ([v52 isFaceDrivenAutoFocusEnabled])
    {
      [v52 setFaceDrivenAutoFocusEnabled:0];
    }

    if ([v52 automaticallyAdjustsFaceDrivenAutoExposureEnabled])
    {
      [v52 setAutomaticallyAdjustsFaceDrivenAutoExposureEnabled:0];
    }

    if ([v52 isFaceDrivenAutoExposureEnabled])
    {
      [v52 setFaceDrivenAutoExposureEnabled:0];
    }

    if ([v52 isFocusPointOfInterestSupported])
    {
      [v52 setFocusPointOfInterest:{0.5, 0.5}];
    }

    if ([v52 isExposurePointOfInterestSupported])
    {
      [v52 setExposurePointOfInterest:{0.5, 0.5}];
    }

    [v52 setExposureMode:2];
    [v52 setFocusMode:2];
    [v52 unlockForConfiguration];
  }

  else
  {
    v55 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_6();
    }
  }

  [v58 setMaxPhotoQualityPrioritization:1];
  [v58 setDepthDataDeliveryEnabled:0];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_2_171;
  v61[3] = &unk_1E7BE6568;
  v62 = v27;
  v63 = v57;
  v64 = v52;
  v65 = v58;
  v66 = v25;
  v67 = *(a1 + 56);
  v29 = v58;
  v56 = v57;
  vk_performBlockOnMainThreadWithStrongSelf(v59, v61);

LABEL_41:
}

void __27__VKAVCapture_startRunning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x1E695DF00] now];
  if (v2)
  {
    v2[10] = v3;

    v4 = v2[4];
  }

  else
  {

    v4 = 0;
  }

  v5 = v4;
  [v5 startRunning];
}

uint64_t __28__VKAVCapture_sendPowerLogs__block_invoke()
{
  result = PPSCreateTelemetryIdentifier();
  qword_1EB899630 = result;
  return result;
}

void __53__VKAVCapture_processHasPerfPowerServicesEntitlement__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    *cf = 0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.PerfPowerServices.data-donation", cf);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        v5 = [v3 BOOLValue];
      }

      else
      {
        v5 = 0;
      }

      _MergedGlobals = v5;
      CFRelease(v3);
    }

    CFRelease(v1);
    if (*cf)
    {
      v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __53__VKAVCapture_processHasPerfPowerServicesEntitlement__block_invoke_cold_1();
      }

      CFRelease(*cf);
    }
  }

  v7 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.interaction");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = VKMUIStringForBool(_MergedGlobals);
    *cf = 138412290;
    *&cf[4] = v8;
    _os_log_impl(&dword_1B4335000, v7, OS_LOG_TYPE_DEFAULT, "Process has PerfPowerServicesEntitlement: %@", cf, 0xCu);
  }
}

void __48__VKAVCapture_setVideoRotationAngle_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVideoRotationAngle:*(a1 + 48)];
  v2 = *(a1 + 40);
  if (v2)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __48__VKAVCapture_setVideoRotationAngle_completion___block_invoke_2;
    v3[3] = &unk_1E7BE3FC8;
    v4 = v2;
    vk_performBlockOnMainThread(v3);
  }
}

uint64_t __28__VKAVCapture_minZoomFactor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) minAvailableVideoZoomFactor];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

uint64_t __28__VKAVCapture_maxZoomFactor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) maxAvailableVideoZoomFactor];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

uint64_t __25__VKAVCapture_zoomFactor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) videoZoomFactor];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

void __29__VKAVCapture_setZoomFactor___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = 0;
  v3 = [v2 lockForConfiguration:&v6];
  v4 = v6;
  if (v3)
  {
    [*(a1 + 32) setVideoZoomFactor:*(a1 + 40)];
    [*(a1 + 32) unlockForConfiguration];
  }

  else
  {
    v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __29__VKAVCapture_setZoomFactor___block_invoke_cold_1();
    }
  }
}

- (void)_sessionRuntimeError:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6986AA0]];

  v5 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [VKAVCapture _sessionRuntimeError:];
  }
}

- (uint64_t)preparationState
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

- (uint64_t)setPreparationState:(uint64_t)result
{
  if (result)
  {
    *(result + 72) = a2;
  }

  return result;
}

- (uint64_t)delegate
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_2_171(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 addObserver:v6 selector:sel__sessionRuntimeError_ name:*MEMORY[0x1E6986B20] object:*(a1 + 32)];

  [(VKCRemoveBackgroundResult *)v6 setInstanceMasks:?];
  [(VKAVCapture *)v6 setConnection:?];
  [(VKCRemoveBackgroundResult *)v6 setAnimatedStickerScore:?];
  [(VKAVCapture *)v6 setPhotoOutput:?];
  [(VKAVCapture *)v6 setVideoDataOutput:?];
  v4 = v6;
  if (v6)
  {
    *(v6 + 9) = 2;
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    (*(v5 + 16))(v5, 1);
    v4 = v6;
  }
}

- (void)setConnection:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 40), a2);
  }
}

- (void)setPhotoOutput:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

- (void)setVideoDataOutput:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

- (id)videoSettings
{
  if (a1)
  {
    a1 = [a1[8] videoSettings];
    v1 = vars8;
  }

  return a1;
}

- (uint64_t)videoDataOutput
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

- (uint64_t)isRunning
{
  if (result)
  {
    v1 = result;
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v2 = *(v1 + 32);

    return [v2 isRunning];
  }

  return result;
}

- (uint64_t)session
{
  if (result)
  {
    return *(result + 32);
  }

  return result;
}

- (void)startRunning
{
  if (a1)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v2 = a1[1];

    vk_performBlockOnQueueWithStrongSelf(v2, a1, &__block_literal_global_27);
  }
}

- (uint64_t)setStartTime:(uint64_t)result
{
  if (result)
  {
    *(result + 80) = a2;
  }

  return result;
}

- (void)sendPowerLogs
{
  v14[3] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (qword_1EB899640 != -1)
    {
      dispatch_once(&qword_1EB899640, &__block_literal_global_195);
    }

    if (_MergedGlobals == 1)
    {
      if (qword_1EB899638 != -1)
      {
        dispatch_once(&qword_1EB899638, &__block_literal_global_177);
      }

      v2 = MEMORY[0x1E696AD98];
      v3 = *(a1 + 48);
      v4 = v3;
      if (v3)
      {
        [v3 activeVideoMinFrameDuration];
      }

      else
      {
        memset(&v12, 0, sizeof(v12));
      }

      v5 = [v2 numberWithDouble:CMTimeGetSeconds(&v12)];

      v6 = [MEMORY[0x1E695DF00] now];
      v14[0] = v5;
      v13[0] = @"SessionMinFrameDuration";
      v13[1] = @"SessionStartTime";
      v7 = MEMORY[0x1E696AD98];
      [*(a1 + 80) timeIntervalSince1970];
      v8 = [v7 numberWithDouble:?];
      v14[1] = v8;
      v13[2] = @"SessionStopTime";
      v9 = MEMORY[0x1E696AD98];
      [v6 timeIntervalSince1970];
      v10 = [v9 numberWithDouble:?];
      v14[2] = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

      PPSSendTelemetry();
    }
  }
}

- (uint64_t)processHasPerfPowerServicesEntitlement
{
  if (a1)
  {
    if (qword_1EB899640 != -1)
    {
      dispatch_once(&qword_1EB899640, &__block_literal_global_195);
    }

    v1 = _MergedGlobals;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)device
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

- (void)stopRunning
{
  if (a1)
  {
    dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
    v2 = a1[1];

    vk_performBlockOnQueueWithStrongSelf(v2, a1, &__block_literal_global_201);
  }
}

void __26__VKAVCapture_stopRunning__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [(VKAVCapture *)v2 sendPowerLogs];
  if (v2)
  {
    [v2[4] stopRunning];
    v3 = v2[4];
  }

  else
  {
    [0 stopRunning];
    v3 = 0;
  }

  v4 = v3;
  [v4 stopRunning];
}

- (double)interestPoint
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = *(a1 + 48);
  if ([v1 isFocusPointOfInterestSupported])
  {
    [v1 focusPointOfInterest];
  }

  else
  {
    if (![v1 isExposurePointOfInterestSupported])
    {
      v3 = *MEMORY[0x1E695EFF8];
      goto LABEL_8;
    }

    [v1 exposurePointOfInterest];
  }

  v3 = v2;
LABEL_8:

  return v3;
}

- (void)setInterestPoint:(uint64_t)a1
{
  if (a1)
  {
    OUTLINED_FUNCTION_1_6();
    v6 = 3221225472;
    v7 = __32__VKAVCapture_setInterestPoint___block_invoke;
    v8 = &unk_1E7BE65D8;
    v9 = v1;
    v10 = v2;
    v11 = v3;
    vk_performBlockOnQueueWithStrongSelf(v4, v1, v5);
  }
}

void __32__VKAVCapture_setInterestPoint___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = v2;
  v10 = 0;
  v4 = [v3 lockForConfiguration:&v10];
  v5 = v10;
  if (v4)
  {
    if ([v3 isFocusPointOfInterestSupported])
    {
      [v3 setFocusPointOfInterest:{*(a1 + 40), *(a1 + 48)}];
      [v3 setFocusMode:2];
    }

    else
    {
      v8 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4335000, v8, OS_LOG_TYPE_INFO, "focusPointOfInterestSupported not supported.", buf, 2u);
      }
    }

    if ([v3 isExposurePointOfInterestSupported])
    {
      [v3 setExposurePointOfInterest:{*(a1 + 40), *(a1 + 48)}];
      [v3 setExposureMode:2];
    }

    else
    {
      v9 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1B4335000, v9, OS_LOG_TYPE_INFO, "exposurePointOfInterestSupported not supported.", buf, 2u);
      }
    }

    [v3 unlockForConfiguration];
  }

  else
  {
    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v5;
      OUTLINED_FUNCTION_4_1(&dword_1B4335000, v6, v7, "Error setting a point of interest. %@", buf);
    }
  }
}

- (uint64_t)hasTorch
{
  v1 = a1;
  if (a1)
  {
    v2 = *(a1 + 48);
    if ([v2 hasTorch])
    {
      v1 = [*(v1 + 48) isTorchAvailable];
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (uint64_t)isTorchOn
{
  if (result)
  {
    return [*(result + 48) isTorchActive];
  }

  return result;
}

- (void)setTorchOn:(id *)a1
{
  if (a1)
  {
    v2 = a2;
    if ([a1[6] isTorchActive] != a2)
    {
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_4_0();
      v5[2] = __26__VKAVCapture_setTorchOn___block_invoke;
      v5[3] = &unk_1E7BE6600;
      v5[4] = a1;
      v6 = v2;
      vk_performBlockOnQueueWithStrongSelf(v4, a1, v5);
    }
  }
}

void __26__VKAVCapture_setTorchOn___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[6];
  }

  v3 = v2;
  v8 = 0;
  v4 = [v3 lockForConfiguration:&v8];
  v5 = v8;
  if (v4)
  {
    [v3 setTorchMode:*(a1 + 40)];
    [v3 unlockForConfiguration];
  }

  else
  {
    v6 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v5;
      OUTLINED_FUNCTION_4_1(&dword_1B4335000, v6, v7, "Error turning torch on. %@", &v9);
    }
  }
}

- (double)videoRotationAngle
{
  if (!a1)
  {
    return 0.0;
  }

  [*(a1 + 40) videoRotationAngle];
  return result;
}

- (uint64_t)connection
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (void)setVideoRotationAngle:(double)a3 completion:
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 8);
    OUTLINED_FUNCTION_1_6();
    v11 = 3221225472;
    v12 = __48__VKAVCapture_setVideoRotationAngle_completion___block_invoke;
    v13 = &unk_1E7BE6628;
    v14 = v8;
    v16 = a3;
    v15 = v5;
    v9 = v6;
    dispatch_async(v7, block);
  }
}

- (double)minZoomFactor
{
  OUTLINED_FUNCTION_6_0();
  v16 = 0x2020000000;
  if (v4)
  {
    v5 = *(v2 + 48);
  }

  else
  {
    v5 = 0;
  }

  v17 = 0;
  v6 = v5;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v13 = v7;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_5_0();
  dispatch_sync(v9, v10);
  v11 = *(v15 + 24);

  _Block_object_dispose(v14, 8);
  return v11;
}

- (double)maxZoomFactor
{
  OUTLINED_FUNCTION_6_0();
  v17 = 0x2020000000;
  if (v4)
  {
    v5 = *(v2 + 48);
  }

  else
  {
    v5 = 0;
  }

  v18 = 0;
  v6 = v5;
  v7 = *(v2 + 8);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v12[2] = __28__VKAVCapture_maxZoomFactor__block_invoke;
  v12[3] = &unk_1E7BE6650;
  v13 = v8;
  v14 = v3;
  v9 = v8;
  dispatch_sync(v7, v12);
  v10 = *(v16 + 24);
  if ((*(v2 + 16) & 1) == 0)
  {
    if (v10 > 5.0)
    {
      v10 = 5.0;
    }

    *(v16 + 24) = v10;
  }

  _Block_object_dispose(v15, 8);
  return v10;
}

- (double)zoomFactor
{
  OUTLINED_FUNCTION_6_0();
  v16 = 0x2020000000;
  if (v4)
  {
    v5 = *(v2 + 48);
  }

  else
  {
    v5 = 0;
  }

  v17 = 0;
  v6 = v5;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v13 = v7;
  v8 = v7;
  v9 = OUTLINED_FUNCTION_5_0();
  dispatch_sync(v9, v10);
  v11 = *(v15 + 24);

  _Block_object_dispose(v14, 8);
  return v11;
}

- (void)setZoomFactor:(double)a3
{
  dispatch_assert_queue_V2(MEMORY[0x1E69E96A0]);
  [(VKAVCapture *)self minZoomFactor];
  v7 = v6;
  [(VKAVCapture *)self maxZoomFactor];
  VKMClamp(a3, v7, v8);
  if (self)
  {
    device = self->_device;
  }

  else
  {
    device = 0;
  }

  v10 = device;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_0();
  v15 = v11;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_5_0();
  dispatch_async(v13, v14);
}

- (uint64_t)setDelegate:(uint64_t)result
{
  if (result)
  {
    *(result + 24) = a2;
  }

  return result;
}

- (uint64_t)photoOutput
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)startTime
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

- (void)prepareWithConfiguration:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_2_cold_1(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v2 = v2[3];
  }

  return [v2 avCapture:*a1 cameraAccessGranted:*(a2 + 40)];
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_4()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_5()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_6()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__VKAVCapture_prepareWithConfiguration_completion___block_invoke_3_cold_8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __27__VKAVCapture_startRunning__block_invoke_cold_1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = os_log_create("com.apple.VisionKit", "com.apple.VisionKit.UtilityCamera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 138412290;
    v5 = v1;
    OUTLINED_FUNCTION_4_1(&dword_1B4335000, v2, v3, "caught exception trying to start the session: %@", &v4);
  }

  objc_end_catch();
}

void __29__VKAVCapture_setZoomFactor___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_sessionRuntimeError:.cold.1()
{
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end