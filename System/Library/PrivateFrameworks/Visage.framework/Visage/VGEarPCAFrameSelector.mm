@interface VGEarPCAFrameSelector
- (VGEarPCAFrameSelector)initWithOptions:(id)a3;
- (float)getMotionBlurScoreFromLandmarks:()vector<float isEarDetected:(std:(BOOL)a4 :(id *)a5 allocator<float>> *)a3 frameTimestamp:;
- (id).cxx_construct;
- (id)addPoseWithCaptureData:(id)a3 faceYaw:(id)a4;
- (id)currentState;
- (vector<EarFrame,)posesFromGroup:(VGEarPCAFrameSelector *)self;
@end

@implementation VGEarPCAFrameSelector

- (VGEarPCAFrameSelector)initWithOptions:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24.receiver = self;
  v24.super_class = VGEarPCAFrameSelector;
  v5 = [(VGEarPCAFrameSelector *)&v24 init];
  if (v5)
  {
    v6 = VGLogVGEarPCASelectionState();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v4 description];
      [(VGEarPCAFrameSelector *)v7 initWithOptions:buf, v6];
    }

    v8 = [v4 modelsRootPath];
    v9 = v8 == 0;

    if (!v9)
    {
      [v4 earPresenceThreshold];
      [v4 earOcclusionThreshold];
      [v4 bboxVisibilityThreshold];
      [v4 landmarkVisibilityThreshold];
      [v4 faceYawLimit];
      v10 = [v4 modelsRootPath];
      v11 = v10;
      v12 = [v10 UTF8String];
      v13 = strlen(v12);
      if (v13 < 0x7FFFFFFFFFFFFFF8)
      {
        v14 = v13;
        if (v13 < 0x17)
        {
          v20 = v13;
          if (v13)
          {
            memmove(&__p, v12, v13);
          }

          *(&__p + v14) = 0;
          v21 = [v4 useEarSideSmoothPredictor];
          v22 = [v4 earSideSmoothPredictorBufferCapacity];
          [v4 earSideSmoothPredictorConfidenceThreshold];
          v23 = v16;

          vg::ear_detection::EarPCADetector::create();
        }

        operator new();
      }

      std::string::__throw_length_error[abi:ne200100]();
    }

    v15 = VGLogVGEarPCASelectionState();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [VGEarPCAFrameSelector initWithOptions:];
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return 0;
}

- (vector<EarFrame,)posesFromGroup:(VGEarPCAFrameSelector *)self
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  std::vector<EarFrame>::reserve(retstr, 3uLL);
  var1 = retstr->var1;
  v7 = 576;
  do
  {
    if (var1 >= retstr->var2)
    {
      result = std::vector<EarFrame>::__emplace_back_slow_path<EarFrame const&>(retstr, a4);
      var1 = result;
    }

    else
    {
      result = std::vector<EarFrame>::__construct_one_at_end[abi:ne200100]<EarFrame const&>(retstr, a4);
      var1 += 4;
    }

    retstr->var1 = var1;
    a4 = a4 + 192;
    v7 -= 192;
  }

  while (v7);
  return result;
}

- (id)currentState
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  v4 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  if (v4 >= self->_leftFrameCount)
  {
    leftFrameCount = self->_leftFrameCount;
  }

  else
  {
    leftFrameCount = v4;
  }

  v6 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  v7 = [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  if (v7 >= self->_rightFrameCount)
  {
    rightFrameCount = self->_rightFrameCount;
  }

  else
  {
    rightFrameCount = v7;
  }

  v9 = 2 * [(VGEarPCACaptureOptions *)self->_options frameCountThreshold];
  v10 = objc_alloc_init(VGEarPCASelectionState);
  [(VGEarPCASelectionState *)v10 setFailed:v9 == 0];
  v11 = v6 - rightFrameCount + v3 - leftFrameCount;
  v12 = VGLogVGEarPCASelectionState();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v17[0] = 67109634;
    v17[1] = v11;
    v18 = 1024;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_debug_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, "%u/%u %@", v17, 0x18u);
  }

  [(VGEarPCASelectionState *)v10 setLeftFrameCount:self->_leftFrameCount];
  [(VGEarPCASelectionState *)v10 setRightFrameCount:self->_rightFrameCount];
  [(VGEarPCASelectionState *)v10 setLeftEarCompleted:self->_leftFrameCount >= [(VGEarPCACaptureOptions *)self->_options frameCountThreshold]];
  [(VGEarPCASelectionState *)v10 setRightEarCompleted:self->_rightFrameCount >= [(VGEarPCACaptureOptions *)self->_options frameCountThreshold]];
  if (![(VGEarPCASelectionState *)v10 failed])
  {
    v13 = [(VGEarPCASelectionState *)v10 leftEarCompleted]&& [(VGEarPCASelectionState *)v10 rightEarCompleted];
    [(VGEarPCASelectionState *)v10 setCompleted:v13];
    if (v9)
    {
      *&v14 = (v9 - v11) / v9;
      [(VGEarPCASelectionState *)v10 setProgress:v14];
    }
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

- (float)getMotionBlurScoreFromLandmarks:()vector<float isEarDetected:(std:(BOOL)a4 :(id *)a5 allocator<float>> *)a3 frameTimestamp:
{
  v49 = *MEMORY[0x277D85DE8];
  [(VGEarPCACaptureOptions *)self->_options motionBlurFilterThreshold];
  v10 = v9;
  if (a4)
  {
    time = *a5;
    v11 = (CMTimeGetSeconds(&time) * 1000.0);
    p_previousFrameTimestampMS = &self->_previousFrameTimestampMS;
    if (self->_previousFrameTimestampMS <= v11)
    {
      __p = 0;
      v46 = 0;
      v47 = 0;
      _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE7reserveEm(&__p, 0x31uLL);
      v14 = 0;
      v15 = v46;
      do
      {
        v16 = *&a3->var0[v14];
        if (v15 >= v47)
        {
          v17 = (v15 - __p) >> 3;
          if ((v17 + 1) >> 61)
          {
            std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
          }

          v18 = (v47 - __p) >> 2;
          if (v18 <= v17 + 1)
          {
            v18 = v17 + 1;
          }

          if (v47 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v19 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(&__p, v19);
          }

          *(8 * v17) = v16;
          v15 = (8 * v17 + 8);
          v20 = (8 * v17 - (v46 - __p));
          memcpy(v20, __p, v46 - __p);
          v21 = __p;
          __p = v20;
          v46 = v15;
          v47 = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v15 = v16;
          v15 += 8;
        }

        v46 = v15;
        v14 += 2;
      }

      while (v14 != 98);
      v22 = __p;
      if (self->_hasPreviousLandmarks)
      {
        v23 = *p_previousFrameTimestampMS;
        __src = 0;
        v43 = 0;
        v44 = 0;
        std::vector<float>::reserve(&__src, (v15 - __p) >> 3);
        v24 = (v11 - v23);
        v25 = __p;
        if (v46 != __p)
        {
          v26 = 0;
          v27 = v43;
          do
          {
            v28 = vsub_f32(*&v25[8 * v26], *(*&self->_anon_4d8[7] + 8 * v26));
            v29 = (vaddv_f32(vmul_f32(v28, v28)) / v24) / (v24 / 30.0);
            if (v27 >= v44)
            {
              v30 = __src;
              v31 = v27 - __src;
              v32 = (v27 - __src) >> 2;
              v33 = v32 + 1;
              if ((v32 + 1) >> 62)
              {
                std::vector<vg::hrtf::FaceFrameData>::__throw_length_error[abi:ne200100]();
              }

              v34 = v44 - __src;
              if ((v44 - __src) >> 1 > v33)
              {
                v33 = v34 >> 1;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v35 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v35);
              }

              v36 = (v27 - __src) >> 2;
              v37 = (4 * v32);
              v38 = (4 * v32 - 4 * v36);
              *v37 = v29;
              v27 = v37 + 1;
              memcpy(v38, v30, v31);
              v39 = __src;
              __src = v38;
              v43 = v27;
              v44 = 0;
              if (v39)
              {
                operator delete(v39);
              }
            }

            else
            {
              *v27++ = v29;
            }

            v43 = v27;
            ++v26;
            v25 = __p;
          }

          while (v26 < (v46 - __p) >> 3);
        }

        vg::shared::computeMedian<float>();
      }

      if (&self->_anon_4d8[7] != &__p)
      {
        _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE18__assign_with_sizeB8ne200100IPS1_S6_EEvT_T0_l(&self->_anon_4d8[7], __p, v46, (v46 - __p) >> 3);
        v22 = __p;
      }

      self->_hasPreviousLandmarks = 1;
      self->_previousFrameTimestampMS = v11;
      if (v22)
      {
        v46 = v22;
        operator delete(v22);
      }
    }

    else
    {
      v13 = VGLogVGEarPCASelectionState();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [VGEarPCAFrameSelector getMotionBlurScoreFromLandmarks:v11 isEarDetected:v13 frameTimestamp:?];
      }
    }
  }

  else
  {
    self->_hasPreviousLandmarks = 0;
  }

  v40 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)addPoseWithCaptureData:(id)a3 faceYaw:(id)a4
{
  v91 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [(VGEarPCAFrameSelector *)self currentState];
  [v9 setDetectionError:1];
  if ([v9 failed])
  {
    v10 = v9;
    goto LABEL_70;
  }

  if (v7)
  {
    [v7 timestamp];
  }

  else
  {
    memset(time, 0, 24);
  }

  Seconds = CMTimeGetSeconds(time);
  v12 = CVPixelBufferGetIOSurface([v7 yuvRectified]);
  if (!v12)
  {
    v16 = VGLogVGEarPCASelectionState();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [VGEarPCAFrameSelector addPoseWithCaptureData:faceYaw:];
    }

    v10 = v9;
    goto LABEL_69;
  }

  v13 = CVPixelBufferGetIOSurface([v7 depth]);
  if (!v13)
  {
    v17 = VGLogVGEarPCASelectionState();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [VGEarPCAFrameSelector addPoseWithCaptureData:faceYaw:];
    }

    v10 = v9;
    goto LABEL_68;
  }

  if (v8)
  {
    [v8 floatValue];
    v15 = 0x100000000;
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  vg::ear_detection::EarPCADetector::detectPCA(self->_earPCADetector.__ptr_, v12, v13, v15 | v14, time);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  BYTE12(v62) = 0;
  LOBYTE(v63) = 0;
  *v65 = 0u;
  *v66 = 0u;
  v67 = 0u;
  if (v89 == 1)
  {
    v61 = v81;
    v62 = v82;
    v63 = v83;
    v64 = v84;
    v57 = *time;
    v58 = *&time[16];
    v59 = v79;
    v60 = v80;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v65, __src, v86, (v86 - __src) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v66[1], v87, v88, (v88 - v87) >> 2);
  }

  v18 = v90;
  [v9 setDetectionError:v90];
  v50[4] = v61;
  v50[5] = v62;
  v50[6] = v63;
  v50[7] = v64;
  v50[0] = v57;
  v50[1] = v58;
  v50[2] = v59;
  v50[3] = v60;
  v52 = 0;
  v53 = 0;
  v51 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v51, v65[0], v65[1], (v65[1] - v65[0]) >> 2);
  __p = 0;
  v55 = 0;
  v56 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&__p, v66[1], v67, (v67 - v66[1]) >> 2);
  [v9 setPose:v50];
  if (__p)
  {
    v55 = __p;
    operator delete(__p);
  }

  v19 = Seconds * 1000.0;
  if (v51)
  {
    v52 = v51;
    operator delete(v51);
  }

  v20 = v19;
  options = self->_options;
  if (!v18)
  {
    if ([(VGEarPCACaptureOptions *)options useMotionBlurFilter])
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v47, v65[0], v65[1], (v65[1] - v65[0]) >> 2);
      if (v7)
      {
        [v7 timestamp];
      }

      else
      {
        memset(&location, 0, 24);
      }

      [(VGEarPCAFrameSelector *)self getMotionBlurScoreFromLandmarks:&v47 isEarDetected:1 frameTimestamp:&location];
      v24 = v23;
      if (v47)
      {
        v48 = v47;
        operator delete(v47);
      }

      [(VGEarPCACaptureOptions *)self->_options motionBlurFilterThreshold];
      v26 = v25;
      v27 = VGLogVGEarPCASelectionState();
      v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG);
      if (v24 >= v26)
      {
        if (v28)
        {
          [(VGEarPCACaptureOptions *)self->_options motionBlurFilterThreshold];
          LODWORD(location.captureData) = 134218496;
          *(&location.captureData + 4) = v20;
          LOWORD(location.pose.lmPCA.__elems_[0]) = 2048;
          *(location.pose.lmPCA.__elems_ + 2) = v24;
          HIWORD(location.pose.lmPCA.__elems_[2]) = 2048;
          *&location.pose.faceYawAngle = v32;
          _os_log_debug_impl(&dword_270F06000, v27, OS_LOG_TYPE_DEBUG, "Frame#%zu rejected because of motion blur score greater or equal to threshold (%g >= %g)", &location, 0x20u);
        }

        [v9 setDetectionError:5];
        goto LABEL_29;
      }

      if (v28)
      {
        [(VGEarPCAFrameSelector *)v20 addPoseWithCaptureData:v27 faceYaw:v24];
      }
    }

    ++self->_frameCount;
    location.captureData = 0;
    *&location.pose.yawAngle = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    BYTE12(v72) = 0;
    LOBYTE(v73) = 0;
    *v75 = 0u;
    *v76 = 0u;
    v77 = 0u;
    objc_storeStrong(&location.captureData, a3);
    v71 = v61;
    v72 = v62;
    v73 = v63;
    v74 = v64;
    *&location.pose.lmPCA.__elems_[1] = v57;
    *&location.pose.yawAngle = v58;
    v69 = v59;
    v70 = v60;
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(v75, v65[0], v65[1], (v65[1] - v65[0]) >> 2);
    std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(&v76[1], v66[1], v67, (v67 - v66[1]) >> 2);
    if (v57 == 1)
    {
      v29 = 1224;
    }

    else
    {
      if (v57)
      {
LABEL_48:
        v10 = [(VGEarPCAFrameSelector *)self currentState];
        [v10 setDetectionError:0];
        v37 = v61;
        v38 = v62;
        v39 = v63;
        v40 = v64;
        v33 = v57;
        v34 = v58;
        v35 = v59;
        v36 = v60;
        v42 = 0;
        v43 = 0;
        v41 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v41, v65[0], v65[1], (v65[1] - v65[0]) >> 2);
        v44 = 0;
        v45 = 0;
        v46 = 0;
        std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v44, v66[1], v67, (v67 - v66[1]) >> 2);
        [v10 setPose:&v33];
        if (v44)
        {
          v45 = v44;
          operator delete(v44);
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }

        [v10 setLeftEarCompleted:{objc_msgSend(v9, "leftEarCompleted", v33, v34, v35, v36, v37, v38, v39, v40)}];
        [v10 setRightEarCompleted:{objc_msgSend(v9, "rightEarCompleted")}];
        if ([v10 completed])
        {
          self->_selectionCompleted = 1;
        }

        if (v76[1])
        {
          *&v77 = v76[1];
          operator delete(v76[1]);
        }

        if (v75[0])
        {
          v75[1] = v75[0];
          operator delete(v75[0]);
        }

        goto LABEL_59;
      }

      v29 = 1228;
    }

    ++*(&self->super.isa + v29);
    goto LABEL_48;
  }

  if ([(VGEarPCACaptureOptions *)options useMotionBlurFilter])
  {
    self->_hasPreviousLandmarks = 0;
  }

  v22 = VGLogVGEarPCASelectionState();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [VGEarPCAFrameSelector addPoseWithCaptureData:v19 faceYaw:v22];
  }

LABEL_29:
  v10 = v9;
LABEL_59:
  if (v66[1])
  {
    *&v67 = v66[1];
    operator delete(v66[1]);
  }

  if (v65[0])
  {
    v65[1] = v65[0];
    operator delete(v65[0]);
  }

  if (v89 == 1)
  {
    if (v87)
    {
      v88 = v87;
      operator delete(v87);
    }

    if (__src)
    {
      v86 = __src;
      operator delete(__src);
    }
  }

LABEL_68:

LABEL_69:
LABEL_70:

  v30 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id).cxx_construct
{
  v2 = 0;
  *(self + 2) = 0;
  do
  {
    v3 = self + v2;
    *(v3 + 4) = 0;
    *(v3 + 4) = 0uLL;
    *(v3 + 5) = 0uLL;
    *(v3 + 6) = 0uLL;
    *(v3 + 7) = 0uLL;
    v3[140] = 0;
    v3[144] = 0;
    *(v3 + 11) = 0uLL;
    *(v3 + 12) = 0uLL;
    v2 += 192;
    *(v3 + 13) = 0uLL;
  }

  while (v2 != 576);
  for (i = 0; i != 576; i += 192)
  {
    v5 = self + i;
    *(v5 + 78) = 0;
    *(v5 + 41) = 0uLL;
    *(v5 + 42) = 0uLL;
    *(v5 + 43) = 0uLL;
    *(v5 + 44) = 0uLL;
    v5[732] = 0;
    v5[736] = 0;
    *(v5 + 48) = 0uLL;
    *(v5 + 49) = 0uLL;
    *(v5 + 50) = 0uLL;
  }

  *(self + 157) = 0;
  *(self + 1240) = 0u;
  return self;
}

- (void)initWithOptions:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_270F06000, log, OS_LOG_TYPE_DEBUG, "Ear frame selection options: %@", buf, 0xCu);
}

- (void)getMotionBlurScoreFromLandmarks:(uint64_t *)a1 isEarDetected:(uint64_t)a2 frameTimestamp:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v5 = 134218496;
  v6 = a2;
  v7 = 2048;
  v8 = a2;
  v9 = 2048;
  v10 = v3;
  _os_log_error_impl(&dword_270F06000, log, OS_LOG_TYPE_ERROR, "Frame#%zu has timestamp value lower than the timestamp of the previously processed frame (%zu < %zu)", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)addPoseWithCaptureData:(uint64_t)a1 faceYaw:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_debug_impl(&dword_270F06000, a2, OS_LOG_TYPE_DEBUG, "Frame#%zu rejected because No Ear detected", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)addPoseWithCaptureData:(float)a3 faceYaw:.cold.2(uint64_t a1, NSObject *a2, float a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a1;
  v6 = 2048;
  v7 = a3;
  _os_log_debug_impl(&dword_270F06000, a2, OS_LOG_TYPE_DEBUG, "Frame#%zu selected by motion blur filter with score: %g", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end