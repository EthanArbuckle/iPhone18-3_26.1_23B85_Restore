@interface VGHRTFEarPCACaptureProcessor
- (VGHRTFEarPCACaptureProcessor)initWithDebugDataPath:(id)a3 withModelsRootPath:(id)a4;
- (id)defaultUpdateData;
- (id)processCaptureData:(id)a3 faceData:(id)a4;
@end

@implementation VGHRTFEarPCACaptureProcessor

- (VGHRTFEarPCACaptureProcessor)initWithDebugDataPath:(id)a3 withModelsRootPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = VGHRTFEarPCACaptureProcessor;
  v8 = [(VGHRTFEarPCACaptureProcessor *)&v19 init];
  if (v8)
  {
    v9 = [[VGEarPCACaptureOptions alloc] initWithSuiteName:@"com.apple.visage"];
    earCaptureOptions = v8->_earCaptureOptions;
    v8->_earCaptureOptions = v9;

    [(VGEarPCACaptureOptions *)v8->_earCaptureOptions setWriteDebugData:v6 != 0];
    if (v6)
    {
      v11 = [v6 stringByAppendingPathComponent:@"EarPCACapture"];
      [(VGEarPCACaptureOptions *)v8->_earCaptureOptions setDebugDataPath:v11];
    }

    [(VGEarPCACaptureOptions *)v8->_earCaptureOptions setModelsRootPath:v7];
    v12 = [[VGEarPCAFrameSelector alloc] initWithOptions:v8->_earCaptureOptions];
    selector = v8->_selector;
    v8->_selector = v12;

    if (v8->_selector)
    {
      vg::hrtf::Rectify::create(v14);
    }

    v15 = __VGLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      v16 = " Failed to initialize ear frame selector. ";
      goto LABEL_10;
    }
  }

  else
  {
    v15 = __VGLogSharedInstance();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      v16 = " Failed to initialize VGHRTFCaptureProcessor ";
LABEL_10:
      _os_log_impl(&dword_270F06000, v15, OS_LOG_TYPE_ERROR, v16, &v18, 2u);
    }
  }

  return 0;
}

- (id)defaultUpdateData
{
  v2 = [(VGEarPCACaptureOptions *)self->_earCaptureOptions frameCountThreshold];
  v3 = objc_opt_new();
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithDouble:i];
      [v3 setObject:0 forKeyedSubscript:v5];
    }
  }

  v6 = [[VGHRTFEarCaptureUpdateData alloc] initEmpty];
  [v6 setProgressType:0];
  [v6 setProgress:0.0];
  [v6 setLeftEarStatusList:v3];
  [v6 setRightEarStatusList:v3];
  [v6 setTrackedData:0];
  [v6 setResult:0];

  return v6;
}

- (id)processCaptureData:(id)a3 faceData:(id)a4
{
  v99 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v63 = a4;
  v7 = [(VGHRTFEarPCACaptureProcessor *)self defaultUpdateData];
  ptr = self->_rectify.__ptr_;
  v9 = [v6 colorBuffer];
  v10 = [v6 depthBuffer];
  [v6 colorIntrinsics];
  v64 = v12;
  v66 = v11;
  v61 = v13;
  v14 = [v6 depthCalibrationData];
  v101.columns[1] = v64;
  v101.columns[0] = v66;
  v101.columns[2] = v61;
  vg::hrtf::Rectify::process(ptr, v9, v10, v101, v14, v93);

  if (v98)
  {
    v67 = objc_opt_new();
    if ((v98 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v94);
    v70[0] = MEMORY[0x277D85DD0];
    v70[1] = 3221225472;
    v70[2] = __60__VGHRTFEarPCACaptureProcessor_processCaptureData_faceData___block_invoke;
    v70[3] = &__block_descriptor_40_e5_v8__0l;
    v70[4] = CVPixelBufferFromIOSurface;
    v58 = MEMORY[0x2743B9AA0](v70);
    [v67 setDepth:CVPixelBufferFromIOSurface];
    if ((v98 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v67 setDepthIntrinsics:{v95, v96, v97}];
    if ((v98 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v16 = createCVPixelBufferFromIOSurface(v93[0]);
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __60__VGHRTFEarPCACaptureProcessor_processCaptureData_faceData___block_invoke_2;
    v69[3] = &__block_descriptor_40_e5_v8__0l;
    v69[4] = v16;
    v59 = MEMORY[0x2743B9AA0](v69);
    [v67 setYuvRectified:v16];
    if ((v98 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    [v67 setVideoIntrinsics:{*&v93[2], *&v93[4], *&v93[6]}];
    [v6 timestamp];
    CMTimeMakeWithSeconds(&v68, v17, 1000000);
    buf = *&v68.value;
    *&v83 = v68.epoch;
    [v67 setTimestamp:&buf];
    selector = self->_selector;
    v19 = [v63 yawAngle];
    v62 = [(VGEarPCAFrameSelector *)selector addPoseWithCaptureData:v67 faceYaw:v19];

    if ([v62 completed])
    {
      if ([v62 failed])
      {
        v20 = 2;
      }

      else
      {
        v20 = 3;
      }
    }

    else
    {
      v20 = 1;
    }

    [v62 progress];
    v24 = v23;
    [v7 setProgressType:v20];
    LODWORD(v25) = v24;
    [v7 setProgress:v25];
    v26 = [(VGEarPCAFrameSelector *)self->_selector currentState];
    v27 = detail::getEarPoseList([v26 leftFrameCount], -[VGEarPCAFrameSelector requiredPosesCount](self->_selector, "requiredPosesCount"));
    [v7 setLeftEarStatusList:v27];

    v28 = [(VGEarPCAFrameSelector *)self->_selector currentState];
    v29 = detail::getEarPoseList([v28 rightFrameCount], -[VGEarPCAFrameSelector requiredPosesCount](self->_selector, "requiredPosesCount"));
    [v7 setRightEarStatusList:v29];

    v65 = [[VGHRTFEarCaptureProcessedData alloc] initEmpty];
    v30 = v62;
    v21 = v67;
    if ([v30 detectionError])
    {
      v31 = 0;
      goto LABEL_67;
    }

    v60 = [[VGHRTFEarCaptureDetectionData alloc] initEmpty];
    if (v30)
    {
      [v30 pose];
    }

    else
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      buf = 0u;
    }

    Width = CVPixelBufferGetWidth([v21 yuvRectified]);
    Height = CVPixelBufferGetHeight([v21 yuvRectified]);
    v57 = v89;
    if (v30)
    {
      [v30 pose];
      v34 = *v71 == 0;
      if (*(&v80 + 1))
      {
        *&v81 = *(&v80 + 1);
        operator delete(*(&v80 + 1));
      }
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v34 = 1;
      *v71 = 0u;
      v72 = 0u;
    }

    if (v79)
    {
      *(&v79 + 1) = v79;
      operator delete(v79);
    }

    if (v34)
    {
      v35 = 0;
    }

    else
    {
      if (v30)
      {
        [v30 pose];
        v36 = *v71 == 1;
        if (*(&v80 + 1))
        {
          *&v81 = *(&v80 + 1);
          operator delete(*(&v80 + 1));
        }
      }

      else
      {
        v36 = 0;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v73 = 0u;
        *v71 = 0u;
        v72 = 0u;
      }

      if (v79)
      {
        *(&v79 + 1) = v79;
        operator delete(v79);
      }

      if (!v36)
      {
        v41 = __VGLogSharedInstance();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          *v71 = 0;
          _os_log_impl(&dword_270F06000, v41, OS_LOG_TYPE_ERROR, " No suitable conversion supported for ear side. ", v71, 2u);
        }

        v31 = 0;
        goto LABEL_62;
      }

      v35 = 1;
    }

    [v60 setEarSide:{v35, v57}];
    if (v30)
    {
      [v30 pose];
      v37 = *(&v77 + 1);
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v37 = 0.0;
      *v71 = 0u;
      v72 = 0u;
    }

    [v60 setYawAngle:v37];
    if (*(&v80 + 1))
    {
      *&v81 = *(&v80 + 1);
      operator delete(*(&v80 + 1));
    }

    if (v79)
    {
      *(&v79 + 1) = v79;
      operator delete(v79);
    }

    if (v30)
    {
      [v30 pose];
      v38 = *(&v77 + 2);
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      v38 = 0.0;
      *v71 = 0u;
      v72 = 0u;
    }

    [v60 setPitchAngle:v38];
    v39 = vmuls_lane_f32(Height, *&v57, 1);
    if (*(&v80 + 1))
    {
      *&v81 = *(&v80 + 1);
      operator delete(*(&v80 + 1));
    }

    v40 = v39;
    if (v79)
    {
      *(&v79 + 1) = v79;
      operator delete(v79);
    }

    [v60 setBoundingBox:{(Width * *&v57), v40, ((*(&v57 + 2) - *&v57) * Width), ((*(&v57 + 3) - *(&v57 + 1)) * Height)}];
    v41 = objc_opt_new();
    if (v30)
    {
      [v30 pose];
      v43 = *(&v79 + 1);
      for (i = v79; i != v43; ++i)
      {
        LODWORD(v42) = *i;
        v45 = [MEMORY[0x277CCABB0] numberWithFloat:v42];
        [v41 addObject:v45];
      }
    }

    else
    {
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v73 = 0u;
      *v71 = 0u;
      v72 = 0u;
    }

    if (*(&v80 + 1))
    {
      *&v81 = *(&v80 + 1);
      operator delete(*(&v80 + 1));
    }

    if (v79)
    {
      *(&v79 + 1) = v79;
      operator delete(v79);
    }

    [v60 setLandmarkPoints:v41];
    v31 = v60;
LABEL_62:

    if (*(&v91 + 1))
    {
      *&v92 = *(&v91 + 1);
      operator delete(*(&v91 + 1));
    }

    if (v90)
    {
      *(&v90 + 1) = v90;
      operator delete(v90);
    }

LABEL_67:
    [v65 setDetectionData:v31];

    v46 = [v6 colorBuffer];
    [v65 setRectifiedColorBuffer:v46];

    v47 = [v30 detectionError];
    if (v47 <= 3)
    {
      if (v47 > 1)
      {
        if (v47 == 2)
        {
          v48 = __VGLogSharedInstance();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear detection failed: low landmark confidence. ", &buf, 2u);
          }

          v49 = 5;
        }

        else
        {
          v48 = __VGLogSharedInstance();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Front facing pose ", &buf, 2u);
          }

          v49 = 6;
        }

        goto LABEL_101;
      }

      if (!v47)
      {
        v49 = 8;
LABEL_102:
        [v65 setError:{v49, v57}];
        goto LABEL_103;
      }

      if (v47 == 1)
      {
        v48 = __VGLogSharedInstance();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear not found. ", &buf, 2u);
        }

        v49 = 0;
        goto LABEL_101;
      }
    }

    else
    {
      if (v47 <= 5)
      {
        if (v47 == 4)
        {
          v48 = __VGLogSharedInstance();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear detection failed: ear occluded. ", &buf, 2u);
          }

          v49 = 1;
        }

        else
        {
          v48 = __VGLogSharedInstance();
          v49 = 2;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            v49 = 2;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear motion blur detected. ", &buf, 2u);
          }
        }

        goto LABEL_101;
      }

      switch(v47)
      {
        case 6:
          v48 = __VGLogSharedInstance();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear too close to camera. ", &buf, 2u);
          }

          v49 = 3;
          goto LABEL_101;
        case 7:
          v48 = __VGLogSharedInstance();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear too far from camera. ", &buf, 2u);
          }

          v49 = 4;
          goto LABEL_101;
        case 8:
          v48 = __VGLogSharedInstance();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_270F06000, v48, OS_LOG_TYPE_DEBUG, " Ear out of frame ", &buf, 2u);
          }

          v49 = 7;
LABEL_101:

          goto LABEL_102;
      }
    }

LABEL_103:
    [v7 setTrackedData:{v65, v57}];
    if ([v7 progressType] == 3)
    {
      v50 = [[VGHRTFEarsFrameData alloc] initEmpty];
      v51 = self->_selector;
      if (v51)
      {
        [(VGEarPCAFrameSelector *)v51 leftEarEnrolledPoses];
      }

      else
      {
        buf = 0uLL;
        *&v83 = 0;
      }

      v52 = detail::getEarFrameData(&buf);
      [v50 setLeftEarFrames:v52];

      *v71 = &buf;
      std::vector<EarFrame>::__destroy_vector::operator()[abi:ne200100](v71);
      v53 = self->_selector;
      if (v53)
      {
        [(VGEarPCAFrameSelector *)v53 rightEarEnrolledPoses];
      }

      else
      {
        buf = 0uLL;
        *&v83 = 0;
      }

      v54 = detail::getEarFrameData(&buf);
      [v50 setRightEarFrames:v54];

      *v71 = &buf;
      std::vector<EarFrame>::__destroy_vector::operator()[abi:ne200100](v71);
      [v7 setResult:v50];
    }

    v22 = v7;

    v59[2](v59);
    v58[2](v58);

    goto LABEL_112;
  }

  v21 = __VGLogSharedInstance();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_270F06000, v21, OS_LOG_TYPE_ERROR, " Failed to rectify ear images. ", &buf, 2u);
  }

  v22 = 0;
LABEL_112:

  if (v98 == 1)
  {
  }

  v55 = *MEMORY[0x277D85DE8];

  return v22;
}

@end