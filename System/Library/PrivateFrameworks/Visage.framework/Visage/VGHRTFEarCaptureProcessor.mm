@interface VGHRTFEarCaptureProcessor
- (VGHRTFEarCaptureProcessor)initWithDebugDataPath:(id)a3 withModelsRootPath:(id)a4;
- (id).cxx_construct;
- (id)currentUpdateData;
- (id)initWithDebugDataPath:withModelsRootPath:;
- (id)processCaptureData:(id)a3 faceData:(id)a4;
@end

@implementation VGHRTFEarCaptureProcessor

- (VGHRTFEarCaptureProcessor)initWithDebugDataPath:(id)a3 withModelsRootPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = VGHRTFEarCaptureProcessor;
  v8 = [(VGHRTFEarCaptureProcessor *)&v17 init];
  v9 = v8;
  v10 = v8;
  if (v8)
  {
    v8->_earCaptureOptions.writeDebugData = v6 != 0;
    if (v6)
    {
      v11 = [v6 stringByAppendingPathComponent:@"EarCapture"];
      std::string::basic_string[abi:ne200100]<0>(v15, [v11 UTF8String]);
      if (*(&v10->_earCaptureOptions.debugDataPath.__rep_.__l + 23) < 0)
      {
        operator delete(v9->_earCaptureOptions.debugDataPath.__rep_.__l.__data_);
      }

      *v9->_earCaptureOptions.debugDataPath.__rep_.__s.__data_ = *v15;
      *(&v9->_earCaptureOptions.debugDataPath.__rep_.__l + 2) = v16;
      HIBYTE(v16) = 0;
      LOBYTE(v15[0]) = 0;
    }

    std::string::__assign_external(&v9->_earCaptureOptions.var0, [v7 UTF8String]);
    vg::frame_selection::VGEarFrameSelector::create(&v9->_earCaptureOptions, v12);
  }

  v13 = __VGLogSharedInstance();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v15[0]) = 0;
    _os_log_impl(&dword_270F06000, v13, OS_LOG_TYPE_ERROR, " Failed to initialize VGHRTFCaptureProcessor ", v15, 2u);
  }

  return 0;
}

- (id)initWithDebugDataPath:withModelsRootPath:
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v11 + 1) + 8 * i) doubleValue];
        v8 = [MEMORY[0x277CCABB0] numberWithDouble:ceil(v7 * 100.0) / 100.0];
        [v2 setObject:0 forKeyedSubscript:v8];
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)currentUpdateData
{
  v3 = [[VGHRTFEarCaptureUpdateData alloc] initEmpty];
  [v3 setProgressType:self->_captureState];
  *&v4 = self->_progress;
  [v3 setProgress:v4];
  v5 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_leftPoseStatus copyItems:1];
  [v3 setLeftEarStatusList:v5];

  v6 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_rightPoseStatus copyItems:1];
  [v3 setRightEarStatusList:v6];

  [v3 setTrackedData:0];
  [v3 setResult:0];

  return v3;
}

- (id)processCaptureData:(id)a3 faceData:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v54 = a4;
  v7 = [(VGHRTFEarCaptureProcessor *)self currentUpdateData];
  ptr = self->_rectify.__ptr_;
  v9 = [v6 colorBuffer];
  v10 = [v6 depthBuffer];
  [v6 colorIntrinsics];
  v57 = v12;
  *v59 = v11;
  v55 = v13;
  v14 = [v6 depthCalibrationData];
  v84.columns[1] = v57;
  v84.columns[0] = *v59;
  v84.columns[2] = v55;
  vg::hrtf::Rectify::process(ptr, v9, v10, v84, v14, v76);

  if (v81)
  {
    v60 = objc_opt_new();
    if ((v81 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v77);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __57__VGHRTFEarCaptureProcessor_processCaptureData_faceData___block_invoke;
    v63[3] = &__block_descriptor_40_e5_v8__0l;
    v63[4] = CVPixelBufferFromIOSurface;
    v53 = MEMORY[0x2743B9AA0](v63);
    [(VGCaptureData *)v60 setDepth:CVPixelBufferFromIOSurface];
    if ((v81 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [(VGCaptureData *)v60 setDepthIntrinsics:v78, v79, v80];
    if ((v81 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v16 = createCVPixelBufferFromIOSurface(v76[0]);
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __57__VGHRTFEarCaptureProcessor_processCaptureData_faceData___block_invoke_2;
    v62[3] = &__block_descriptor_40_e5_v8__0l;
    v62[4] = v16;
    v56 = MEMORY[0x2743B9AA0](v62);
    [(VGCaptureData *)v60 setYuvRectified:v16];
    if ((v81 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [(VGCaptureData *)v60 setVideoIntrinsics:*&v76[2], *&v76[4], *&v76[6]];
    [v6 timestamp];
    CMTimeMakeWithSeconds(&v61, v17, 1000000);
    buf[0] = v61;
    [(VGCaptureData *)v60 setTimestamp:buf];
    vg::frame_selection::VGEarFrameSelector::addPoseWithCaptureData(self->_selector.__ptr_, v60, buf);
    self->_captureState = 1;
    if (LOBYTE(buf[0].value) == 1)
    {
      v18 = 2;
      if (!BYTE1(buf[0].value))
      {
        v18 = 3;
      }

      self->_captureState = v18;
    }

    self->_progress = *(&buf[0].value + 1);
    v19 = vg::frame_selection::VGEarSelectionState::leftEarYawAngleCaptured(buf);
    v20 = detail::getEarPoseList(v19);
    leftPoseStatus = self->_leftPoseStatus;
    self->_leftPoseStatus = v20;

    v22 = vg::frame_selection::VGEarSelectionState::rightEarYawAngleCaptured(buf);
    v23 = detail::getEarPoseList(v22);
    rightPoseStatus = self->_rightPoseStatus;
    self->_rightPoseStatus = v23;

    [v7 setProgressType:self->_captureState];
    *&v25 = self->_progress;
    [v7 setProgress:v25];
    v26 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_leftPoseStatus copyItems:1];
    [v7 setLeftEarStatusList:v26];

    v27 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:self->_rightPoseStatus copyItems:1];
    [v7 setRightEarStatusList:v27];

    v28 = [[VGHRTFEarCaptureProcessedData alloc] initEmpty];
    v58 = v60;
    if (v73)
    {
      v29 = 0;
    }

    else
    {
      v32 = [[VGHRTFEarCaptureDetectionData alloc] initEmpty];
      Width = CVPixelBufferGetWidth([(VGCaptureData *)v58 yuvRectified]);
      Height = CVPixelBufferGetHeight([(VGCaptureData *)v58 yuvRectified]);
      v52 = v68;
      if (LODWORD(buf[0].epoch) > 1)
      {
        v35 = __VGLogSharedInstance();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *v64 = 0;
          _os_log_impl(&dword_270F06000, v35, OS_LOG_TYPE_ERROR, " No suitable conversion supported for ear side. ", v64, 2u);
        }

        v29 = 0;
      }

      else
      {
        [v32 setEarSide:v68];
        [v32 setYawAngle:v66];
        [v32 setPitchAngle:v67];
        [v32 setBoundingBox:{(Width * *&v52), vmuls_lane_f32(Height, *&v52, 1), ((*(&v52 + 2) - *&v52) * Width), ((*(&v52 + 3) - *(&v52 + 1)) * Height)}];
        v35 = objc_opt_new();
        v37 = v69;
        v38 = v70;
        if (v69 != v70)
        {
          do
          {
            LODWORD(v36) = *v37;
            v39 = [MEMORY[0x277CCABB0] numberWithFloat:v36];
            [v35 addObject:v39];

            ++v37;
          }

          while (v37 != v38);
        }

        [v32 setLandmarkPoints:v35];
        v29 = v32;
      }
    }

    [v28 setDetectionData:v29];
    if ((v81 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v28 setRectifiedColorBuffer:v76[0]];
    if (v73 <= 3)
    {
      if (v73 > 1)
      {
        if (v73 == 2)
        {
          v40 = __VGLogSharedInstance();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear detection failed: low landmark confidence. ", v64, 2u);
          }

          v41 = 5;
        }

        else
        {
          v40 = __VGLogSharedInstance();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Front facing pose ", v64, 2u);
          }

          v41 = 6;
        }

        goto LABEL_58;
      }

      if (!v73)
      {
        v41 = 8;
LABEL_59:
        [v28 setError:{v41, v52}];
        goto LABEL_60;
      }

      if (v73 == 1)
      {
        v40 = __VGLogSharedInstance();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          *v64 = 0;
          _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear not found. ", v64, 2u);
        }

        v41 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      if (v73 <= 5)
      {
        if (v73 == 4)
        {
          v40 = __VGLogSharedInstance();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear occluded. ", v64, 2u);
          }

          v41 = 1;
        }

        else
        {
          v40 = __VGLogSharedInstance();
          v41 = 2;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            v41 = 2;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear motion blur detected. ", v64, 2u);
          }
        }

        goto LABEL_58;
      }

      switch(v73)
      {
        case 6:
          v40 = __VGLogSharedInstance();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear too close to camera. ", v64, 2u);
          }

          v41 = 3;
          goto LABEL_58;
        case 7:
          v40 = __VGLogSharedInstance();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear too far from camera. ", v64, 2u);
          }

          v41 = 4;
          goto LABEL_58;
        case 8:
          v40 = __VGLogSharedInstance();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            *v64 = 0;
            _os_log_impl(&dword_270F06000, v40, OS_LOG_TYPE_DEBUG, " Ear out of frame ", v64, 2u);
          }

          v41 = 7;
LABEL_58:

          goto LABEL_59;
      }
    }

LABEL_60:
    [v7 setTrackedData:{v28, v52}];
    if ([v7 progressType] == 3)
    {
      v42 = [[VGHRTFEarsFrameData alloc] initEmpty];
      v43 = vg::frame_selection::VGEarFrameSelector::leftEarEnrolledPoses(self->_selector.__ptr_);
      v44 = vg::frame_selection::VGEarFrameSelector::leftEarEnrolledYawToBoundingBox(self->_selector.__ptr_);
      v45 = detail::getEarFrameData(v43, v44);
      [v42 setLeftEarFrames:v45];

      v46 = vg::frame_selection::VGEarFrameSelector::rightEarEnrolledPoses(self->_selector.__ptr_);
      v47 = vg::frame_selection::VGEarFrameSelector::rightEarEnrolledYawToBoundingBox(self->_selector.__ptr_);
      v48 = detail::getEarFrameData(v46, v47);
      [v42 setRightEarFrames:v48];

      [v7 setResult:v42];
    }

    v49 = v7;

    if (__p)
    {
      v72 = __p;
      operator delete(__p);
    }

    if (v69)
    {
      v70 = v69;
      operator delete(v69);
    }

    v56[2](v56);

    v53[2](v53);
    goto LABEL_67;
  }

  v30 = __VGLogSharedInstance();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf[0].value) = 0;
    _os_log_impl(&dword_270F06000, v30, OS_LOG_TYPE_ERROR, " Failed to rectify ear images. ", buf, 2u);
  }

  v31 = v7;
LABEL_67:
  if (v81 == 1)
  {
  }

  v50 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id).cxx_construct
{
  self->_selector.__ptr_ = 0;
  *&self->_earCaptureOptions.earPresenceThreshold = xmmword_270FA6670;
  self->_earCaptureOptions.percentileDetectionConfidence = 0.8;
  *&self->_earCaptureOptions.yawCount = xmmword_270FA6680;
  *&self->_earCaptureOptions.yawLimit = xmmword_270FA6690;
  self->_earCaptureOptions.writeDebugData = 0;
  std::string::basic_string[abi:ne200100]<0>(self->_earCaptureOptions.debugDataPath.__rep_.__s.__data_, "");
  std::string::basic_string[abi:ne200100]<0>(&self->_earCaptureOptions.var0, "");
  self->_anon_70[16] = 1;
  *&self->_anon_70[20] = 1083808154;
  *&self->_anon_70[24] = &unk_2880F5D40;
  self->_rectify.__ptr_ = 0;
  return self;
}

@end