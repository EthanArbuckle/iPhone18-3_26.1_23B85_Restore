@interface VGHRTFFaceCaptureProcessor
- (VGHRTFFaceCaptureProcessor)initWithDebugDataPath:(id)a3;
- (id)processCaptureData:(id)a3 faceData:(id)a4;
@end

@implementation VGHRTFFaceCaptureProcessor

- (VGHRTFFaceCaptureProcessor)initWithDebugDataPath:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = VGHRTFFaceCaptureProcessor;
  v5 = [(VGHRTFFaceCaptureProcessor *)&v15 init];
  if (v5)
  {
    v6 = objc_opt_new();
    LODWORD(v7) = 30.0;
    [v6 setYawLimit:v7];
    [v6 setRequiredPitchPoses:0];
    [v6 setWriteDebugData:v4 != 0];
    [v6 setDebugDataPath:v4];
    [v6 setUseFKInternalFaceDetector:1];
    v8 = [[VGFaceCapture alloc] initWithOptions:v6];
    capturer = v5->_capturer;
    v5->_capturer = v8;

    if (v5->_capturer)
    {
      vg::hrtf::Rectify::create(v10);
    }

    v11 = __VGLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_270F06000, v11, OS_LOG_TYPE_ERROR, " Failed to initialize VGFaceCapture ", &v14, 2u);
    }
  }

  else
  {
    v6 = __VGLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_270F06000, v6, OS_LOG_TYPE_ERROR, " Failed to initialize VGHRTFCaptureProcessor ", &v14, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)processCaptureData:(id)a3 faceData:(id)a4
{
  v90 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [[VGHRTFFaceCaptureUpdateData alloc] initEmpty];
  [v8 setProgressType:self->_captureState];
  *&v9 = self->_progress;
  [v8 setProgress:v9];
  v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_poseStatus copyItems:1];
  [v8 setPoseStatusList:v10];

  [v8 setTrackedData:0];
  [v8 setResult:self->_resultsCache];
  if (v7)
  {
    ptr = self->_rectify.__ptr_;
    v12 = [v6 colorBuffer];
    v13 = [v6 depthBuffer];
    [v6 colorIntrinsics];
    v69 = v15;
    v71 = v14;
    v68 = v16;
    v17 = [v6 depthCalibrationData];
    v92.columns[1] = v69;
    v92.columns[0] = v71;
    v92.columns[2] = v68;
    vg::hrtf::Rectify::process(ptr, v12, v13, v92, v17, v81);

    if (v89)
    {
      v18 = __VGLogSharedInstance();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_DEBUG, " Rectified face images. ", &buf, 2u);
      }

      v19 = objc_opt_new();
      if ((v89 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      CVPixelBufferFromIOSurface = createCVPixelBufferFromIOSurface(v85);
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke;
      v80[3] = &__block_descriptor_40_e5_v8__0l;
      v80[4] = CVPixelBufferFromIOSurface;
      v70 = MEMORY[0x2743B9AA0](v80);
      [v19 setDepth:CVPixelBufferFromIOSurface];
      if ((v89 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      [v19 setDepthIntrinsics:{v86, v87, v88}];
      if ((v89 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      v21 = createCVPixelBufferFromIOSurface(*v81);
      v79[0] = MEMORY[0x277D85DD0];
      v79[1] = 3221225472;
      v79[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_2;
      v79[3] = &__block_descriptor_40_e5_v8__0l;
      v79[4] = v21;
      v72 = MEMORY[0x2743B9AA0](v79);
      [v19 setYuvRectified:v21];
      if ((v89 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      [v19 setVideoIntrinsics:{v82, v83, v84}];
      v22 = [v7 yawAngle];
      if (v22)
      {
        v23 = [v7 yawAngle];
        [v23 floatValue];
        v25 = v24;

        v26 = v25;
      }

      else
      {
        v26 = 0.0;
      }

      v31 = [v7 rollAngle];
      if (v31)
      {
        v32 = [v7 rollAngle];
        [v32 floatValue];
        v34 = v33;

        v35 = v34;
      }

      else
      {
        v35 = 0.0;
      }

      v36 = [VGFaceMetadata alloc];
      v37 = [v7 trackedId];
      [v7 boundingBox];
      v39 = v38;
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v46 = [v6 colorBuffer];
      v47 = [v46 width];
      v48 = [v6 colorBuffer];
      v49 = [v48 height];
      v50 = [(VGFaceMetadata *)v36 initWithFaceId:v37 bounds:v39 / v47 yawAngle:v41 / v49 rollAngle:v43 / v47, v45 / v49, v26, v35];
      [v19 setFace:v50];

      [v6 timestamp];
      CMTimeMakeWithSeconds(&v78, v51, 1000000);
      buf = v78;
      [v19 setTimestamp:&buf];
      v52 = self->_semaphore;
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_3;
      v73[3] = &unk_279E28DC0;
      v53 = v52;
      v74 = v53;
      v75 = self;
      v54 = v8;
      v76 = v54;
      v55 = MEMORY[0x2743B9AA0](v73);
      if ([(VGFaceCapture *)self->_capturer processWithCaptureData:v19 callback:v55])
      {
        dispatch_semaphore_wait(v53, 0xFFFFFFFFFFFFFFFFLL);
        [v54 progress];
        self->_progress = v56;
        self->_captureState = [v54 progressType];
        v57 = objc_alloc(MEMORY[0x277CBEA60]);
        v58 = [v54 poseStatusList];
        v59 = [v57 initWithArray:v58 copyItems:1];
        poseStatus = self->_poseStatus;
        self->_poseStatus = v59;

        IOSurface = CVPixelBufferGetIOSurface([v19 yuvRectified]);
        v62 = [v54 trackedData];
        [v62 setRectifiedColorBuffer:IOSurface];

        v63 = CVPixelBufferGetIOSurface([v19 depth]);
        v64 = [v54 trackedData];
        [v64 setRectifiedDepthBuffer:v63];
      }

      else
      {
        v64 = __VGLogSharedInstance();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf.value) = 0;
          _os_log_impl(&dword_270F06000, v64, OS_LOG_TYPE_ERROR, " Face tracking failed ", &buf, 2u);
        }
      }

      v65 = v54;
      v72[2](v72);

      v70[2](v70);
    }

    else
    {
      v29 = __VGLogSharedInstance();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_270F06000, v29, OS_LOG_TYPE_ERROR, " Failed to rectify face images. ", &buf, 2u);
      }

      v30 = v8;
    }

    if (v89 == 1)
    {
    }
  }

  else
  {
    v27 = __VGLogSharedInstance();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *v81 = 0;
      _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_ERROR, " Face not found. ", v81, 2u);
    }

    v28 = v8;
  }

  v66 = *MEMORY[0x277D85DE8];

  return v8;
}

void __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  memptr[2] = *MEMORY[0x277D85DE8];
  v71 = a2;
  v70 = a3;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __58__VGHRTFFaceCaptureProcessor_processCaptureData_faceData___block_invoke_4;
  v87[3] = &unk_279E28D98;
  v72 = a1;
  v88 = *(a1 + 32);
  v69 = MEMORY[0x2743B9AA0](v87);
  LODWORD(a3) = [v71 failed];
  v5 = [v71 completed];
  if (a3)
  {
    v6 = 3;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    if (v70)
    {
      v79 = v70;
      v78 = [v79 count];
      v77 = objc_opt_new();
      if (v78)
      {
        v7 = 0;
        v76 = *MEMORY[0x277CECED8];
        v75 = *MEMORY[0x277CECEB8];
        v74 = *MEMORY[0x277CECE78];
        v73 = *MEMORY[0x277CECE80];
        do
        {
          v85 = [v79 objectAtIndexedSubscript:v7];
          v8 = [[VGHRTFFaceFrameData alloc] initEmpty];
          v9 = [v85 captureData];
          v10 = [v9 faceTrackingResult];
          v83 = [v10 objectForKey:v76];

          v80 = [v83 objectAtIndex:0];
          v81 = [v80 objectForKey:v75];
          v82 = [v81 objectForKey:v74];
          v11 = [v82 objectForKey:v73];
          v12 = [v11 length];
          v13 = v11;
          v14 = [v11 bytes];
          v15 = v12 >> 3;
          v16 = 2 * (v12 >> 3);
          memptr[0] = 0;
          malloc_type_posix_memalign(memptr, 0x20uLL, (4 * v16 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
          v17 = memptr[0];
          if (v14 == memptr[0])
          {
            memptr[0] = 0;
            malloc_type_posix_memalign(memptr, 0x20uLL, ((v12 & 0x3FFFFFFF8) + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
            v26 = memptr[0];
            if (v16)
            {
              v27 = 0;
              if ((v15 & 0x7FFFFFFF) != 0)
              {
                v28 = v14;
              }

              else
              {
                v28 = 0;
              }

              v29 = v12 & 0x3FFFFFFF8;
              v30 = memptr[0];
              do
              {
                *v30++ = *v28;
                v31 = HIDWORD(v27);
                v32 = v27 < 1;
                if (v27 < 1)
                {
                  v31 = 0;
                }

                v33 = &v28[v31];
                v34 = (v27 + 1);
                v35 = v27 & 0xFFFFFFFF00000000;
                if (!v32)
                {
                  v34 = 0;
                }

                v27 = v34 | v35;
                v28 = v33 + 1;
                v29 -= 4;
              }

              while (v29);
            }

            free(v17);
          }

          else
          {
            if (v16)
            {
              v18 = 0;
              v19 = 0;
              if ((v15 & 0x7FFFFFFF) != 0)
              {
                v20 = v14;
              }

              else
              {
                v20 = 0;
              }

              do
              {
                *&v17[v18] = *v20;
                v21 = HIDWORD(v19);
                v22 = v19 < 1;
                if (v19 < 1)
                {
                  v21 = 0;
                }

                v23 = &v20[v21];
                v24 = (v19 + 1);
                v25 = v19 & 0xFFFFFFFF00000000;
                if (!v22)
                {
                  v24 = 0;
                }

                v19 = v24 | v25;
                v20 = v23 + 1;
                v18 += 4;
              }

              while ((v12 & 0x3FFFFFFF8) != v18);
            }

            v26 = v17;
          }

          v36 = objc_opt_new();
          if (v12 >= 8)
          {
            v38 = 1;
            v39 = 1;
            do
            {
              LODWORD(v37) = v26[v38 - 1];
              v40 = [MEMORY[0x277CCABB0] numberWithFloat:v37];
              [v36 addObject:v40];

              LODWORD(v41) = v26[v38];
              v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
              [v36 addObject:v42];

              v22 = v15 > v39++;
              v38 += 2;
            }

            while (v22);
          }

          v43 = [v85 captureData];
          [v8 setRgbImage:{CVPixelBufferGetIOSurface(objc_msgSend(v43, "rgbRectified"))}];

          v44 = [v85 captureData];
          [v8 setDepthImage:{CVPixelBufferGetIOSurface(objc_msgSend(v44, "depth"))}];

          v45 = [v85 captureData];
          [v45 depthIntrinsics];
          [v8 setDepthIntrinsics:{v46, v47, v48}];

          [v8 setLandmarks:v36];
          [v77 addObject:v8];

          free(v26);
          ++v7;
        }

        while (v7 != v78);
      }

      v49 = *(v72 + 40);
      v50 = *(v49 + 56);
      *(v49 + 56) = v77;
    }

    v6 = 4;
  }

  v51 = [[VGHRTFFaceCaptureProcessedData alloc] initEmpty];
  v52 = [v71 rejectionState];
  if ([v52 reason] == 1)
  {
    goto LABEL_51;
  }

  v53 = [v71 rejectionState];
  if ([v53 reason] == 5)
  {
LABEL_50:

LABEL_51:
    goto LABEL_52;
  }

  v54 = [v71 rejectionState];
  if ([v54 reason] == 2)
  {
LABEL_49:

    goto LABEL_50;
  }

  v55 = [v71 rejectionState];
  if ([v55 reason] == 3)
  {
LABEL_48:

    goto LABEL_49;
  }

  v56 = [v71 rejectionState];
  if ([v56 reason] == 4)
  {
LABEL_47:

    goto LABEL_48;
  }

  v57 = [v71 rejectionState];
  if ([v57 reason] == 33)
  {
LABEL_46:

    goto LABEL_47;
  }

  v58 = [v71 rejectionState];
  if ([v58 reason] == 36)
  {
LABEL_45:

    goto LABEL_46;
  }

  v86 = [v71 rejectionState];
  if ([v86 reason] == 35)
  {

    goto LABEL_45;
  }

  v64 = [v71 rejectionState];
  v84 = [v64 reason] == 36;

  if (!v84)
  {
    v65 = MEMORY[0x277CCABB0];
    [v71 yawAngle];
    v66 = [v65 numberWithFloat:?];
    [v51 setYawAngle:v66];

    v67 = MEMORY[0x277CCABB0];
    [v71 pitchAngle];
    v68 = [v67 numberWithFloat:?];
    [v51 setPitchAngle:v68];

    goto LABEL_53;
  }

LABEL_52:
  [v51 setYawAngle:0];
  [v51 setPitchAngle:0];
LABEL_53:
  [*(v72 + 48) setProgressType:v6];
  [v71 progress];
  [*(v72 + 48) setProgress:?];
  v59 = v71;
  v60 = detail::getFacePoseList(v59, 0);
  memptr[0] = v60;
  v61 = detail::getFacePoseList(v59, 1);
  memptr[1] = v61;
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:memptr count:2];

  [*(v72 + 48) setPoseStatusList:v62];
  [*(v72 + 48) setTrackedData:v51];
  [*(v72 + 48) setResult:*(*(v72 + 40) + 56)];

  v69[2](v69);
  v63 = *MEMORY[0x277D85DE8];
}

@end