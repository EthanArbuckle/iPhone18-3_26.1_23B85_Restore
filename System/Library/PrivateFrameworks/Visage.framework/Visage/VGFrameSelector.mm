@interface VGFrameSelector
+ (id)invalidPose;
+ (optional<std::vector<TargetPoseData>>)_computeTargetPosesForFrameCount:(SEL)count limit:(unint64_t)limit desiredFrontPoseFrustumOffsets:(float)offsets desiredFrontPoseFrustumOffset:(optional<const VGFrameSelectorFrustumOffsets> *)offset anglesDegrees:(optional<const VGFrameSelectorFrustumOffsets> *)degrees motionType:(id)type detectFrontPose:(int)pose options:(BOOL)self0;
- (BOOL)completedPitch;
- (BOOL)completedYaw;
- (FrameRejectionState)applyExpressionFilters:(SEL)filters trackingData:(const void *)data frameTimestampMS:(id)s score:(unint64_t)score;
- (FrameRejectionState)applyVisionFaceLandmarksFilter:(SEL)filter bestTargetPoseData:(id)data frameTimestampMS:(const void *)s;
- (FrameRejectionState)applyVisionFilters:(SEL)filters bestTargetPoseData:(id)data frameTimestampMS:(const void *)s;
- (VGFrameSelector)initWithOptions:(id)options;
- (id).cxx_construct;
- (id)processCaptureData:(int32x4_t)data trackingData:(int32x4_t)trackingData framePose:(float32x4_t)pose validDataFrameBounds:(uint64_t)bounds;
- (id)processHeadPose:(HeadPoseData)pose captureData:(id)data trackingData:(id)trackingData validDataBounds:(const void *)bounds frameTimestampMS:(unint64_t)s;
- (id)processHeadPoseSimple:(HeadPoseData)simple frameTimestampMS:(unint64_t)s;
- (id)resultsForMotionType:(optional<vg::frame_selection::MotionType>)type;
- (id)selectedValidPosesForMotion:(optional<vg::frame_selection::MotionType>)motion;
- (optional<simd_float4x4>)parseAtlasToCameraTransformation:(id)transformation;
- (void)checkDepthFoVFilter:(uint64_t)filter@<X3> framePose:(double *)pose@<X4> bestTargetPoseData:(uint64_t)data@<X5> validDataBounds:(uint64_t)bounds@<X8> frameTimestampMS:(__n128)s@<Q3>;
- (void)processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:;
@end

@implementation VGFrameSelector

+ (id)invalidPose
{
  if (+[VGFrameSelector invalidPose]::onceToken != -1)
  {
    +[VGFrameSelector invalidPose];
  }

  v3 = +[VGFrameSelector invalidPose]::invalidPose;

  return v3;
}

void __30__VGFrameSelector_invalidPose__block_invoke()
{
  v0 = objc_alloc_init(VGCapturedPose);
  v1 = +[VGFrameSelector invalidPose]::invalidPose;
  +[VGFrameSelector invalidPose]::invalidPose = v0;
}

+ (optional<std::vector<TargetPoseData>>)_computeTargetPosesForFrameCount:(SEL)count limit:(unint64_t)limit desiredFrontPoseFrustumOffsets:(float)offsets desiredFrontPoseFrustumOffset:(optional<const VGFrameSelectorFrustumOffsets> *)offset anglesDegrees:(optional<const VGFrameSelectorFrustumOffsets> *)degrees motionType:(id)type detectFrontPose:(int)pose options:(BOOL)self0
{
  optionsCopy = options;
  v78 = retstr;
  v101 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  v84 = a11;
  if (pose < 2)
  {
    std::vector<TargetPoseData>::vector[abi:ne200100](&v86, limit);
    v19 = offsets + offsets;
    if (typeCopy)
    {
      if (!offset->var1)
      {
        v29 = __VGLogSharedInstance();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        }

        v30 = 0;
        v31 = v78;
        v78->var0.var0 = 0;
        goto LABEL_79;
      }

      var0 = offset->var0;
      v80 = offsets + offsets;
      if (degrees->var1)
      {
        v83 = *&degrees->var0.var0;
        v82 = *&degrees->var0.var1.pitchOffsetDegreesTop;
        if (!limit)
        {
LABEL_62:
          v63 = __VGLogSharedInstance();
          if (os_log_type_enabled(v63, OS_LOG_TYPE_DEBUG))
          {
            v64 = &vg::frame_selection::motionTypeToString(vg::frame_selection::MotionType)::kMotionTypeToString[24 * pose];
            if (v64[23] < 0)
            {
              std::string::__init_copy_ctor_external(&buf, *v64, 0);
            }

            else
            {
              buf = *v64;
            }

            p_buf = &buf;
            if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_buf = buf.__r_.__value_.__r.__words[0];
            }

            *v99 = 136315138;
            v100 = p_buf;
            _os_log_impl(&dword_270F06000, v63, OS_LOG_TYPE_DEBUG, " Generated target poses for MotionType: %s ", v99, 0xCu);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }
          }

          v66 = v86;
          v67 = v87;
          if (v86 != v87)
          {
            do
            {
              v68 = __VGLogSharedInstance();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
              {
                v69 = *(v66 + 9);
                v70 = *(v66 + 17);
                if (*(v66 + 80))
                {
                  v71 = @"YES";
                }

                else
                {
                  v71 = @"NO";
                }

                v72 = *(v66 + 21);
                v73 = *(v66 + 22);
                v74 = *(v66 + 23);
                v75 = *(v66 + 24);
                LODWORD(buf.__r_.__value_.__l.__data_) = 134219522;
                *(buf.__r_.__value_.__r.__words + 4) = v69;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v70;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2112;
                v90 = v71;
                v91 = 2048;
                v92 = v72;
                v93 = 2048;
                v94 = v73;
                v95 = 2048;
                v96 = v74;
                v97 = 2048;
                v98 = v75;
                _os_log_impl(&dword_270F06000, v68, OS_LOG_TYPE_DEBUG, " PoseIdx: %zu Angle in degrees: %g Is front pose: %@ Alignment frustum: [(%g, %g), (%g, %g)] [(minYawAngleDegrees, maxYawAngleDegrees), (minPitchAngleDegrees, maxPitchAngleDegrees)] ", &buf, 0x48u);
              }

              v66 = (v66 + 112);
            }

            while (v66 != v67);
            v66 = v86;
            v67 = v87;
          }

          v31 = v78;
          v78->var0.var1.__begin_ = v66;
          v78->var0.var1.__end_ = v67;
          v78->var0.var1.__cap_ = v88;
          v87 = 0;
          v88 = 0;
          v86 = 0;
          v30 = 1;
LABEL_79:
          v31->var1 = v30;
          buf.__r_.__value_.__r.__words[0] = &v86;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&buf);
          goto LABEL_80;
        }
      }

      else
      {
        v82 = *&offset->var0.var1.pitchOffsetDegreesTop;
        v83 = *&offset->var0.var0;
        if (!limit)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      if (limit >= 3)
      {
        v19 = v19 / (limit - 1);
      }

      v20 = ((v19 * 0.5) * 180.0) / 3.14159265;
      *&v20 = v20;
      v21 = vdup_lane_s32(*&v20, 0);
      v22 = v21;
      v23 = v21;
      if (offset->var1)
      {
        v22 = vabs_f32(*&offset->var0.var0);
        v23 = vabs_f32(*&offset->var0.var1.pitchOffsetDegreesTop);
        v24 = COERCE_DOUBLE(vbsl_s8(vcgt_f32(v23, v21), v21, v23));
        v25 = COERCE_DOUBLE(vbsl_s8(vcgt_f32(v22, v21), v21, v22));
        if (pose)
        {
          *&v23 = v24;
        }

        else
        {
          *&v22 = v25;
        }
      }

      *&v26.var0 = v22;
      *&v26.var1.pitchOffsetDegreesTop = v23;
      var0 = v26;
      v80 = v19;
      if (degrees->var1)
      {
        v27 = vabs_f32(*&degrees->var0.var0);
        v28 = vabs_f32(*&degrees->var0.var1.pitchOffsetDegreesTop);
        if (pose)
        {
          v28 = vbsl_s8(vcgt_f32(v28, v21), v21, v28);
        }

        else
        {
          v27 = vbsl_s8(vcgt_f32(v27, v21), v21, v27);
        }

        v82 = v28;
        v83 = v27;
        if (!limit)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v82 = v23;
        v83 = v22;
        if (!limit)
        {
          goto LABEL_62;
        }
      }
    }

    v32 = 0;
    v33 = 0;
    if (optionsCopy)
    {
      v34 = (limit >> 1);
    }

    else
    {
      v34 = 0xFFFFFFFFLL;
    }

    v79 = 1.5708 - offsets;
    do
    {
      if (typeCopy)
      {
        v35 = [typeCopy objectAtIndexedSubscript:v33];
        [v35 floatValue];
        v37 = v36;

        v38 = v37 * 3.14159265 / 180.0;
        v39 = v38 + 1.5708;
      }

      else
      {
        v39 = v79 + (v33 * v80);
      }

      v40 = (v86 + v32);
      *(v86 + v32 + 64) = pose;
      v41 = __sincosf_stret(v39);
      v42.i32[0] = 0;
      v42.i64[1] = 0;
      v42.i32[1] = LODWORD(v41.__cosval);
      if (pose)
      {
        v43 = -1;
      }

      else
      {
        v43 = 0;
      }

      v44 = vbslq_s8(vdupq_n_s32(v43), v42, LODWORD(v41.__cosval));
      v44.i32[2] = LODWORD(v41.__sinval);
      *v40 = v44;
      v45 = v86;
      v46 = (v86 + v32);
      v85 = *(v86 + v32);
      v47 = (atan2f(-*&v85, COERCE_FLOAT(*(v86 + v32 + 8))) * 180.0) / 3.14159265;
      v48 = (asinf(*(&v85 + 1)) * -180.0) / 3.14159265;
      if ((v34 & 0x80000000) != 0 || v34 != v33)
      {
        v56 = v47 - var0.var1.yawOffsetDegreesRight;
        if ((v47 - var0.var1.yawOffsetDegreesRight) >= v47)
        {
          v56 = v47;
        }

        v57 = var0.var1.yawOffsetDegreesLeft + v47;
        if ((var0.var1.yawOffsetDegreesLeft + v47) <= v47)
        {
          v57 = v47;
        }

        v58 = v48 - var0.var1.pitchOffsetDegreesBottom;
        if ((v48 - var0.var1.pitchOffsetDegreesBottom) >= v48)
        {
          v58 = v48;
        }

        v46[21] = v56;
        v46[22] = v57;
        if ((var0.var1.pitchOffsetDegreesTop + v48) > v48)
        {
          v48 = var0.var1.pitchOffsetDegreesTop + v48;
        }

        v46[23] = v58;
        v46[24] = v48;
      }

      else
      {
        v49 = v47 - v83.f32[1];
        if ((v47 - v83.f32[1]) >= v47)
        {
          v49 = v47;
        }

        v50 = v83.f32[0] + v47;
        if ((v83.f32[0] + v47) <= v47)
        {
          v50 = v47;
        }

        v51 = v48 - v82.f32[1];
        if ((v48 - v82.f32[1]) >= v48)
        {
          v51 = v48;
        }

        if ((v82.f32[0] + v48) > v48)
        {
          v48 = v82.f32[0] + v48;
        }

        v46[21] = v49;
        v46[22] = v50;
        v46[23] = v51;
        v46[24] = v48;
        *(v45 + v32 + 80) = 1;
        bodyPoseGuidanceOptions = [v84 bodyPoseGuidanceOptions];
        if (bodyPoseGuidanceOptions)
        {
          bodyPoseGuidanceOptions2 = [v84 bodyPoseGuidanceOptions];
          [bodyPoseGuidanceOptions2 bestAlignmentToleranceAngleFrontPose];
          v55 = v54 * 3.14159265 / 180.0;
          *(v86 + 28 * v34 + 14) = fmaxf(v55, 0.0);
        }

        else
        {
          *(v86 + 28 * v34 + 14) = 0;
        }

        v45 = v86;
      }

      v59 = v45 + v32;
      *(v59 + 72) = v33;
      v60 = ((v39 + -1.5708) * 180.0) / 3.14159265;
      *(v59 + 68) = v60;
      *(v59 + 60) = 0;
      v61 = +[VGFrameSelector invalidPose];
      v62 = *(v86 + v32 + 16);
      *(v86 + v32 + 16) = v61;

      ++v33;
      v32 += 112;
    }

    while (limit != v33);
    goto LABEL_62;
  }

  v18 = __VGLogSharedInstance();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
    HIDWORD(buf.__r_.__value_.__r.__words[0]) = pose;
    _os_log_impl(&dword_270F06000, v18, OS_LOG_TYPE_DEBUG, " VGFrameSelector received unknown / unsupported MotionType: %d ", &buf, 8u);
  }

  v78->var0.var0 = 0;
  v78->var1 = 0;
LABEL_80:

  v77 = *MEMORY[0x277D85DE8];
  return result;
}

- (VGFrameSelector)initWithOptions:(id)options
{
  optionsCopy = options;
  v60.receiver = self;
  v60.super_class = VGFrameSelector;
  v6 = [(VGFrameSelector *)&v60 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    yawFrameCount = [(VGFrameSelectorOptions *)v7->_options yawFrameCount];
    pitchFrameCount = [(VGFrameSelectorOptions *)v7->_options pitchFrameCount];
    v7->_requiredPosesCount = pitchFrameCount + yawFrameCount;
    v7->_remainingPosesCount = pitchFrameCount + yawFrameCount;
    if ([(VGFrameSelectorOptions *)v7->_options useSimpleSelector])
    {
      [(VGFrameSelectorOptions *)v7->_options simpleSelectorMinOffsetAngle];
      v11 = v10 * 3.14159265 / 180.0;
      v7->_simpleSelectorMaxAlignment = cosf(v11);
      [(VGFrameSelectorOptions *)v7->_options simpleSelectorMaxOffsetAngle];
      v13 = v12 * 3.14159265 / 180.0;
      v7->_simpleSelectorMinAlignment = cosf(v13);
    }

    if (v7->_requiredPosesCount)
    {
      v57 = 0;
      v58 = 0;
      v59 = 0;
      if ([optionsCopy yawFrameCount])
      {
        yawFrameCount2 = [(VGFrameSelectorOptions *)v7->_options yawFrameCount];
        [(VGFrameSelectorOptions *)v7->_options yawLimit];
        v16 = v15;
        [(VGFrameSelectorOptions *)v7->_options yawPosesFrustumOffsets];
        v47 = __PAIR64__(v18, v17);
        v48 = __PAIR64__(v20, v19);
        LOBYTE(v49) = 1;
        [(VGFrameSelectorOptions *)v7->_options frontPoseFrustumOffsets];
        v50 = __PAIR64__(v22, v21);
        v51 = v23;
        v52 = v24;
        v53 = 1;
        yawAngles = [(VGFrameSelectorOptions *)v7->_options yawAngles];
        detectFrontPose = [(VGFrameSelectorOptions *)v7->_options detectFrontPose];
        LODWORD(v27) = v16;
        [VGFrameSelector _computeTargetPosesForFrameCount:yawFrameCount2 limit:&v47 desiredFrontPoseFrustumOffsets:&v50 desiredFrontPoseFrustumOffset:yawAngles anglesDegrees:0 motionType:detectFrontPose detectFrontPose:v27 options:optionsCopy];

        if ((v56 & 1) == 0)
        {
          v42 = 0;
LABEL_30:
          *buf = &v57;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](buf);
          goto LABEL_31;
        }

        std::vector<TargetPoseData>::__assign_with_size[abi:ne200100]<TargetPoseData*,TargetPoseData*>(&v57, *buf, v55, 0x6DB6DB6DB6DB6DB7 * ((v55 - *buf) >> 4));
        if (v56 == 1)
        {
          v47 = buf;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&v47);
        }
      }

      v47 = 0;
      v48 = 0;
      v49 = 0;
      if ([optionsCopy pitchFrameCount])
      {
        pitchFrameCount2 = [(VGFrameSelectorOptions *)v7->_options pitchFrameCount];
        [(VGFrameSelectorOptions *)v7->_options pitchLimit];
        v30 = v29;
        [(VGFrameSelectorOptions *)v7->_options pitchPosesFrustumOffsets];
        v50 = __PAIR64__(v32, v31);
        v51 = v33;
        v52 = v34;
        v53 = 1;
        v46[0] = 0;
        v46[16] = 0;
        pitchAngles = [(VGFrameSelectorOptions *)v7->_options pitchAngles];
        LODWORD(v36) = v30;
        [VGFrameSelector _computeTargetPosesForFrameCount:pitchFrameCount2 limit:&v50 desiredFrontPoseFrustumOffsets:v46 desiredFrontPoseFrustumOffset:pitchAngles anglesDegrees:1 motionType:0 detectFrontPose:v36 options:optionsCopy];

        if ((v56 & 1) == 0)
        {
          goto LABEL_28;
        }

        std::vector<TargetPoseData>::__assign_with_size[abi:ne200100]<TargetPoseData*,TargetPoseData*>(&v47, *buf, v55, 0x6DB6DB6DB6DB6DB7 * ((v55 - *buf) >> 4));
        if (v56 == 1)
        {
          v50 = buf;
          std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](&v50);
        }
      }

      std::vector<TargetPoseData>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData*>>,std::move_iterator<std::__wrap_iter<TargetPoseData*>>>(&v7->_targetPosesData, v7->_targetPosesData.__end_, v57, v58, 0x6DB6DB6DB6DB6DB7 * ((v58 - v57) >> 4));
      std::vector<TargetPoseData>::__insert_with_size[abi:ne200100]<std::move_iterator<std::__wrap_iter<TargetPoseData*>>,std::move_iterator<std::__wrap_iter<TargetPoseData*>>>(&v7->_targetPosesData, v7->_targetPosesData.__end_, v47, v48, 0x6DB6DB6DB6DB6DB7 * ((v48 - v47) >> 4));
      if (v7->_targetPosesData.__end_ != v7->_targetPosesData.__begin_)
      {
        if ([(VGFrameSelectorOptions *)v7->_options detectFrontPose]&& [(VGFrameSelectorOptions *)v7->_options useVNFilters])
        {
          *buf = 256;
          vg::shared::VNWarmupDetector(buf);
        }

        bodyPoseGuidanceOptions = [(VGFrameSelectorOptions *)v7->_options bodyPoseGuidanceOptions];

        if (bodyPoseGuidanceOptions)
        {
          v38 = [VGUserBodyPoseGuidance alloc];
          bodyPoseGuidanceOptions2 = [(VGFrameSelectorOptions *)v7->_options bodyPoseGuidanceOptions];
          v40 = [(VGUserBodyPoseGuidance *)v38 initWithOptions:bodyPoseGuidanceOptions2];
          userBodyPoseGuidance = v7->_userBodyPoseGuidance;
          v7->_userBodyPoseGuidance = v40;
        }

        v42 = v7;
        goto LABEL_29;
      }

      v44 = __VGLogSharedInstance();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_270F06000, v44, OS_LOG_TYPE_DEBUG, " No target poses have been computed from the selector options ", buf, 2u);
      }

LABEL_28:
      v42 = 0;
LABEL_29:
      *buf = &v47;
      std::vector<TargetPoseData>::__destroy_vector::operator()[abi:ne200100](buf);
      goto LABEL_30;
    }

    v43 = __VGLogSharedInstance();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " VGFrameSelector expects at least a single frame ", buf, 2u);
    }
  }

  v42 = 0;
LABEL_31:

  return v42;
}

- (FrameRejectionState)applyVisionFilters:(SEL)filters bestTargetPoseData:(id)data frameTimestampMS:(const void *)s
{
  dataCopy = data;
  if (*(s + 80) == 1 && [(VGFrameSelectorOptions *)self->_options useVNFilters])
  {
    v10 = VGLogVGFrameSelector();
    if (os_signpost_enabled(v10))
    {
      LOWORD(v34[0]) = 0;
      _os_signpost_emit_with_name_impl(&dword_270F06000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFilters", &unk_270FBF062, v34, 2u);
    }

    Width = CVPixelBufferGetWidth([dataCopy rgbRectified]);
    Height = CVPixelBufferGetHeight([dataCopy rgbRectified]);
    face = [dataCopy face];
    [face bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    CroppedCVPixelBuffer = createCroppedCVPixelBuffer([dataCopy rgbRectified], (v15 * Width), (v17 * Height), ((v15 + v19) * Width), ((v17 + v21) * Height));
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke_633;
    v38[3] = &__block_descriptor_40_e5_v8__0l;
    v38[4] = CroppedCVPixelBuffer;
    v23 = MEMORY[0x2743B9AA0](v38);
    v24 = CVPixelBufferGetIOSurface(CroppedCVPixelBuffer);
    v34[1] = 0;
    v34[2] = 0;
    v34[0] = v24;
    __asm { FMOV            V0.2D, #1.0 }

    v35 = _Q0;
    v36 = 1;
    v37 = 0;
    v30 = vg::shared::VNGetFaceAttributes(v34);
    [(VGFrameSelectorOptions *)self->_options vnFrontPoseBlinkThreshold];
    if (vg::shared::VNGetIsBlinking(v30, v31))
    {
      retstr->reason = 28;
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"blinking was detected on front pose (Vision)"];
      retstr->debugDictionary = 0;
      retstr->description = v32;
    }

    else
    {
      retstr->reason = 0;
      retstr->debugDictionary = 0;
      retstr->description = 0;
    }

    *&retstr->outOfFovOffset = 0;

    v23[2](v23);
    __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke();
  }

  else
  {
    retstr->reason = 0;
    *&retstr->outOfFovOffset = 0;
    retstr->debugDictionary = 0;
    retstr->description = 0;
  }

  return result;
}

void __74__VGFrameSelector_applyVisionFilters_bestTargetPoseData_frameTimestampMS___block_invoke()
{
  v0 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFilters", &unk_270FBF062, v1, 2u);
  }
}

- (FrameRejectionState)applyVisionFaceLandmarksFilter:(SEL)filter bestTargetPoseData:(id)data frameTimestampMS:(const void *)s
{
  dataCopy = data;
  if (*(s + 80) == 1 && [(VGFrameSelectorOptions *)self->_options useVNFaceLandmarksFilter])
  {
    v10 = VGLogVGFrameSelector();
    if (os_signpost_enabled(v10))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_270F06000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFaceLandmarkFilter", &unk_270FBF062, &buf, 2u);
    }

    Width = CVPixelBufferGetWidth([dataCopy rgbRectified]);
    Height = CVPixelBufferGetHeight([dataCopy rgbRectified]);
    face = [dataCopy face];
    [face bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    CroppedCVPixelBuffer = createCroppedCVPixelBuffer([dataCopy rgbRectified], (v15 * Width), (v17 * Height), ((v15 + v19) * Width), ((v17 + v21) * Height));
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke_640;
    v40[3] = &__block_descriptor_40_e5_v8__0l;
    v40[4] = CroppedCVPixelBuffer;
    v23 = MEMORY[0x2743B9AA0](v40);
    v24 = CVPixelBufferGetIOSurface(CroppedCVPixelBuffer);
    buf = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v38 = _Q0;
    v39 = 1;
    v30 = vg::shared::VNDetectFaceLandmarks2D(v24, &buf);
    v31 = v30;
    if (v30 && ([v30 confidence], v32 < 0.8))
    {
      retstr->reason = 9;
      v33 = MEMORY[0x277CCACA8];
      [v31 confidence];
      0x3FE99999A0000000 = [v33 stringWithFormat:@"face landmarks not detected [confidence: %g < %g]", v34, 0x3FE99999A0000000];
      retstr->debugDictionary = 0;
      retstr->description = 0x3FE99999A0000000;
    }

    else
    {
      retstr->reason = 0;
      retstr->debugDictionary = 0;
      retstr->description = 0;
    }

    *&retstr->outOfFovOffset = 0;

    v23[2](v23);
    __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke();
  }

  else
  {
    retstr->reason = 0;
    *&retstr->outOfFovOffset = 0;
    retstr->debugDictionary = 0;
    retstr->description = 0;
  }

  return result;
}

void __86__VGFrameSelector_applyVisionFaceLandmarksFilter_bestTargetPoseData_frameTimestampMS___block_invoke()
{
  v0 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ApplyVisionFaceLandmarkFilter", &unk_270FBF062, v1, 2u);
  }
}

- (void)checkDepthFoVFilter:(uint64_t)filter@<X3> framePose:(double *)pose@<X4> bestTargetPoseData:(uint64_t)data@<X5> validDataBounds:(uint64_t)bounds@<X8> frameTimestampMS:(__n128)s@<Q3>
{
  v59 = s.n128_f32[2];
  v95[2] = *MEMORY[0x277D85DE8];
  v12 = a2;
  face = [v12 face];
  [face bounds];
  v62.f64[0] = v14;
  v62.f64[1] = v15;
  v63.f64[0] = v16;
  v63.f64[1] = v17;

  if ((*(filter + 112) & 1) == 0)
  {
    v19 = *(self + 40);
LABEL_5:
    yawMarginRatio = [v19 yawMarginRatio];
    goto LABEL_8;
  }

  if (*(filter + 80) == 1)
  {
    yawMarginRatio = [*(self + 40) frontPoseMarginRatio];
    goto LABEL_8;
  }

  v19 = *(self + 40);
  if (!*(filter + 64))
  {
    goto LABEL_5;
  }

  yawMarginRatio = [v19 pitchMarginRatio];
LABEL_8:
  v20 = yawMarginRatio;
  if (yawMarginRatio)
  {
    v58 = *pose;
    [yawMarginRatio leftMarginHeadRatio];
    v57 = v21;
    v56 = pose[1];
    [v20 topMarginHeadRatio];
    v23 = v22;
    v24 = *pose;
    v25 = pose[2];
    [v20 rightMarginHeadRatio];
    v27 = v26;
    v28 = pose[1];
    v29 = pose[3];
    [v20 bottomMarginHeadRatio];
    v60.f64[0] = v58 + v63.f64[0] * v57;
    v60.f64[1] = v56 + v63.f64[1] * v23;
    v61.f64[0] = fmax(v24 + v25 - v63.f64[0] * v27 - v60.f64[0], 0.0);
    v61.f64[1] = fmax(v28 + v29 - v63.f64[1] * v30 - v60.f64[1], 0.0);
    v92[0] = @"validDataBounds";
    v31 = [VGSerializationHelpers cgRectToDict:pose];
    v93[0] = v31;
    v92[1] = @"faceBounds";
    v32 = [VGSerializationHelpers cgRectToDict:&v62];
    v93[1] = v32;
    v92[2] = @"fovBounds";
    v33 = [VGSerializationHelpers cgRectToDict:&v60];
    v93[2] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:3];

    v96.origin = v60;
    v96.size = v61;
    v97.origin = v62;
    v97.size = v63;
    if (CGRectContainsRect(v96, v97))
    {
      *bounds = 0;
      *(bounds + 8) = 0;
      *(bounds + 16) = 0;
    }

    else
    {
      v37 = __VGLogSharedInstance();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        v38 = *pose;
        v39 = *(pose + 1);
        v40 = *(pose + 2);
        v41 = *(pose + 3);
        *buf = 134221315;
        dataCopy = data;
        v66 = 2049;
        v67 = v62.f64[0];
        v68 = 2049;
        v69 = v62.f64[1];
        v70 = 2049;
        v71 = v63.f64[0];
        v72 = 2049;
        v73 = v63.f64[1];
        v74 = 2049;
        v75 = v38;
        v76 = 2049;
        v77 = v39;
        v78 = 2049;
        v79 = v40;
        v80 = 2049;
        v81 = v41;
        v82 = 2049;
        v83 = v60.f64[0];
        v84 = 2049;
        v85 = v60.f64[1];
        v86 = 2049;
        v87 = v61.f64[0];
        v88 = 2049;
        v89 = v61.f64[1];
        v90 = 2113;
        v91 = v20;
        _os_log_impl(&dword_270F06000, v37, OS_LOG_TYPE_DEBUG, " Frame#%zu face out of depth FoV. face bounds: [%{private}g %{private}g %{private}g %{private}g], valid depth bounds: [%{private}g %{private}g %{private}g %{private}g], fov bounds: [%{private}g %{private}g %{private}g %{private}g]margins: [%{private}@],  ", buf, 0x8Eu);
      }

      __asm { FMOV            V2.2D, #0.5 }

      v47 = vsub_f32(vcvt_f32_f64(vmlaq_f64(v62, _Q2, v63)), vcvt_f32_f64(vmlaq_f64(v60, _Q2, v61)));
      v48 = fabsf(v47.f32[0]);
      v49 = v47;
      v50 = fabsf(v47.f32[1]);
      if (v48 <= v50)
      {
        [v12 videoIntrinsics];
        v52 = ((v59 / v54) * 0.1) * (v50 * CVPixelBufferGetHeight([v12 yuvRectified]));
        if (v49.f32[1] >= 0.0)
        {
          v53 = 14;
        }

        else
        {
          v53 = 13;
        }
      }

      else
      {
        [v12 videoIntrinsics];
        v52 = ((v59 / v51) * 0.1) * (v48 * CVPixelBufferGetWidth([v12 yuvRectified]));
        if (v49.f32[0] >= 0.0)
        {
          v53 = 12;
        }

        else
        {
          v53 = 11;
        }
      }

      *bounds = v53;
      *(bounds + 8) = [MEMORY[0x277CCACA8] stringWithFormat:@"out of FoV offset: %g cm", v52];
      *(bounds + 16) = v52;
      *(bounds + 20) = 0;
    }

    *(bounds + 24) = v34;
  }

  else
  {
    *bounds = 0;
    *(bounds + 8) = 0;
    *(bounds + 16) = 0;
    v94[0] = @"validDataBounds";
    v35 = [VGSerializationHelpers cgRectToDict:pose];
    v94[1] = @"faceBounds";
    v95[0] = v35;
    v36 = [VGSerializationHelpers cgRectToDict:&v62];
    v95[1] = v36;
    *(bounds + 24) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:2];
  }

  v55 = *MEMORY[0x277D85DE8];
}

- (FrameRejectionState)applyExpressionFilters:(SEL)filters trackingData:(const void *)data frameTimestampMS:(id)s score:(unint64_t)score
{
  v38 = *MEMORY[0x277D85DE8];
  sCopy = s;
  v12 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v12))
  {
    if (*(data + 80))
    {
      v13 = @"true";
    }

    else
    {
      v13 = @"false";
    }

    *buf = 138543362;
    v37 = v13;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ExpressionFilters", "isFrontPose:%{public}@", buf, 0xCu);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __78__VGFrameSelector_applyExpressionFilters_trackingData_frameTimestampMS_score___block_invoke;
  v34[3] = &__block_descriptor_40_e5_v8__0l;
  v34[4] = data;
  v14 = MEMORY[0x2743B9AA0](v34);
  if (*(data + 80) == 1)
  {
    frontExpressionFilters = [(VGFrameSelectorOptions *)self->_options frontExpressionFilters];
  }

  else
  {
    options = self->_options;
    if (*(data + 16))
    {
      [(VGFrameSelectorOptions *)options pitchExpressionFilters];
    }

    else
    {
      [(VGFrameSelectorOptions *)options yawExpressionFilters];
    }
    frontExpressionFilters = ;
  }

  v17 = frontExpressionFilters;
  if (frontExpressionFilters)
  {
    v29 = v14;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = frontExpressionFilters;
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v19)
    {
      v20 = *v31;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * i);
          [v22 filter:sCopy];
          v24 = v23 * *a7;
          *a7 = v24;
          if (v24 == 0.0)
          {
            retstr->reason = [v22 rejectionReason];
            if (*(data + 80))
            {
              v25 = @"YES";
            }

            else
            {
              v25 = @"NO";
            }

            v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"expression filter [%@], isFrontPose: %@", v22, v25];
            *&retstr->outOfFovOffset = 0;
            retstr->debugDictionary = 0;
            retstr->description = v26;

            v14 = v29;
            goto LABEL_27;
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v14 = v29;
  }

  retstr->reason = 0;
  *&retstr->outOfFovOffset = 0;
  retstr->debugDictionary = 0;
  retstr->description = 0;
LABEL_27:

  v14[2](v14);
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

void __78__VGFrameSelector_applyExpressionFilters_trackingData_frameTimestampMS_score___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v2))
  {
    if (*(*(a1 + 32) + 80))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    v5 = 138543362;
    v6 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExpressionFilters", "isFrontPose:%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)processHeadPoseSimple:(HeadPoseData)simple frameTimestampMS:(unint64_t)s
{
  v6 = objc_opt_new();
  v7 = self->_requiredPosesCount - self->_remainingPosesCount;
  [v6 setPoseIndex:v7];
  [v6 setMotionType:*(self->_targetPosesData.__begin_ + 28 * v7 + 16)];
  if (self->_requiredPosesCount)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(self->_targetPosesData.__begin_ + v8 + 16);
      if ([v10 valid])
      {
        v11 = vmulq_f32(*(s + 16), *(self->_targetPosesData.__begin_ + v8 + 32));
        v12 = v11.f32[2] + vaddv_f32(*v11.f32);
        simpleSelectorMinAlignment = self->_simpleSelectorMinAlignment;
        simpleSelectorMaxAlignment = self->_simpleSelectorMaxAlignment;
        if (simpleSelectorMaxAlignment < v12 || v12 < simpleSelectorMinAlignment)
        {
          break;
        }
      }

      ++v9;
      v8 += 112;
      if (v9 >= self->_requiredPosesCount)
      {
        goto LABEL_9;
      }
    }

    v22 = 24;
    simpleSelectorMaxAlignment = [MEMORY[0x277CCACA8] stringWithFormat:@"viewdir alignment to previously selected poses does not satisfy the limit criteria %g not within (%g, %g)", v12, simpleSelectorMinAlignment, simpleSelectorMaxAlignment];;
    v24 = 0;
    v25 = 0;
    v23 = simpleSelectorMaxAlignment;
    if (v6)
    {
      [v6 setRejectionState:&v22];
    }

    else
    {
    }
  }

  else
  {
LABEL_9:
    *(self->_targetPosesData.__begin_ + 7 * v7 + 2) = *(s + 16);
    v18 = 0;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (v6)
    {
      [v6 setRejectionState:&v18];
    }
  }

  return v6;
}

- (id)processHeadPose:(HeadPoseData)pose captureData:(id)data trackingData:(id)trackingData validDataBounds:(const void *)bounds frameTimestampMS:(unint64_t)s
{
  v8 = v7;
  v147 = *MEMORY[0x277D85DE8];
  trackingDataCopy = trackingData;
  boundsCopy = bounds;
  v14 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose", &unk_270FBF062, buf, 2u);
  }

  v15 = objc_opt_new();
  if (!boundsCopy)
  {
    v128 = 2;
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"no tracking data"];
    v130 = 0;
    v131 = 0;
    v129 = v23;
    if (v15)
    {
      [v15 setRejectionState:&v128];
    }

    else
    {
    }

    v25 = v15;
    goto LABEL_94;
  }

  if (!self->_userBodyPoseGuidance)
  {
    goto LABEL_15;
  }

  [(VGFrameSelector *)self parseAtlasToCameraTransformation:boundsCopy];
  if ((v139 & 1) == 0)
  {
    v24 = __VGLogSharedInstance();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *v143 = 134217984;
      *&v143[4] = v8;
      _os_log_impl(&dword_270F06000, v24, OS_LOG_TYPE_DEBUG, " Frame#%zu unable to parse atlasToCameraTransform, skipping Body Pose Guidance filter ", v143, 0xCu);
    }

LABEL_15:
    v91 = 0;
    goto LABEL_23;
  }

  [trackingDataCopy cameraToDeviceTransform];
  v20 = 0;
  v132 = *buf;
  v133 = *&buf[16];
  v134 = v137;
  v135 = v138;
  do
  {
    *&v143[v20] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(&v132 + v20))), v17, *(&v132 + v20), 1), v18, *(&v132 + v20), 2), v19, *(&v132 + v20), 3);
    v20 += 16;
  }

  while (v20 != 64);
  v88 = *&v144;
  v90 = *v143;
  v85 = v146;
  v86 = v145;
  userBodyPoseGuidance = self->_userBodyPoseGuidance;
  skeleton = [trackingDataCopy skeleton];
  if (trackingDataCopy)
  {
    [trackingDataCopy timestamp];
  }

  else
  {
    memset(v143, 0, sizeof(v143));
    *&v144 = 0;
  }

  v91 = [(VGUserBodyPoseGuidance *)userBodyPoseGuidance calculatePoseGuidanceFromSkeleton:skeleton andAtlasToDeviceTransform:v90 atTimestamp:v88, v86, v85, CMTimeGetSeconds(v143)];

  frameState = [v91 frameState];
  [v15 setBodyPoseFrameState:frameState];

  if (v91)
  {
    [v91 rejection];
    v27 = *(&v144 + 1);
  }

  else
  {
    v27 = 0;
    *v143 = 0u;
    v144 = 0u;
  }

  [v15 addDebugDataForKey:@"poseGuidance" debugData:v27];

LABEL_23:
  requiredPosesCount = self->_requiredPosesCount;
  if (!requiredPosesCount)
  {
    selfCopy = self;
LABEL_49:
    if (![(VGFrameSelectorOptions *)self->_options useDepthFovFilterForBadAlignment])
    {
      goto LABEL_54;
    }

    buf[0] = 0;
    v142 = 0;
    [VGFrameSelector processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:]::$_3::operator()(&selfCopy, trackingDataCopy, data, buf, s, v8, v15);
    if (v142 == 1)
    {
    }

    if (!v15 || ([v15 rejectionState], v49 = *buf == 0, *&buf[24], *&buf[8], v49))
    {
LABEL_54:
      v123 = 24;
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad alignment [yaw %g pitch %g] with all target poses", *data, *(data + 1)];
      v125 = 0;
      v126 = 0;
      v124 = v50;
      if (v15)
      {
        [v15 setRejectionState:&v123];
      }

      else
      {
      }
    }

    v51 = v15;
    goto LABEL_93;
  }

  v29 = 0;
  v30 = *data;
  v31 = *(data + 1);
  v32 = (self->_targetPosesData.__begin_ + 96);
  v33 = 0.0;
  v34 = -1;
  do
  {
    if (*(v32 - 3) <= v30 && *(v32 - 2) >= v30 && *(v32 - 1) <= v31 && *v32 >= v31)
    {
      v35 = vmulq_f32(*(data + 1), *(v32 - 24));
      v36 = vaddv_f32(*v35.f32);
      if ((v35.f32[2] + v36) > v33)
      {
        v33 = v35.f32[2] + v36;
        v34 = v29;
      }
    }

    ++v29;
    v32 += 28;
  }

  while (requiredPosesCount != v29);
  selfCopy2 = self;
  selfCopy = selfCopy2;
  if (v34 == -1)
  {
    goto LABEL_49;
  }

  v38 = selfCopy2;
  v39 = self->_targetPosesData.__begin_ + 112 * v34;
  v40 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v40))
  {
    if (v39[80])
    {
      v41 = @"true";
    }

    else
    {
      v41 = @"false";
    }

    *buf = 138543362;
    *&buf[4] = v41;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v40, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose_PoseFilters", "isFrontPose:%{public}@", buf, 0xCu);
  }

  v122[0] = MEMORY[0x277D85DD0];
  v122[1] = 3221225472;
  v122[2] = __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke_682;
  v122[3] = &__block_descriptor_40_e5_v8__0l;
  v122[4] = v39;
  v87 = MEMORY[0x2743B9AA0](v122);
  if (*(v39 + 16))
  {
    v42 = @"pitch";
  }

  else
  {
    v42 = @"yaw";
  }

  v89 = v42;
  v43 = __VGLogSharedInstance();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = v8;
    *&buf[12] = 2112;
    *&buf[14] = v89;
    *&buf[22] = 1024;
    *&buf[24] = v34;
    _os_log_impl(&dword_270F06000, v43, OS_LOG_TYPE_DEBUG, " Frame#%zu acquired by %@ selector with poseIdx %d ", buf, 0x1Cu);
  }

  [v15 setPoseIndex:v34];
  [v15 setMotionType:*(v39 + 16)];
  *buf = *v39;
  *&buf[16] = *(v39 + 2);
  v137 = *(v39 + 2);
  v44 = *(v39 + 3);
  v45 = *(v39 + 4);
  v46 = *(v39 + 5);
  v141 = *(v39 + 24);
  v139 = v45;
  v140 = v46;
  v138 = v44;
  v142 = 1;
  [VGFrameSelector processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:]::$_3::operator()(&selfCopy, trackingDataCopy, data, buf, s, v8, v15);
  if (v142 == 1)
  {
  }

  if (!v15)
  {
    memset(buf, 0, sizeof(buf));

LABEL_59:
    [(VGFrameSelector *)v38 applyVisionFaceLandmarksFilter:trackingDataCopy bestTargetPoseData:v39 frameTimestampMS:v8];
    if (*buf)
    {
      v118 = *buf;
      v52 = *&buf[8];
      v119 = v52;
      v120 = *&buf[16];
      v53 = *&buf[24];
      v121 = v53;
      if (v15)
      {
        [v15 setRejectionState:&v118];
      }

      else
      {
      }

      v57 = v15;
      goto LABEL_91;
    }

    v117 = 1.0;
    [(VGFrameSelector *)v38 applyExpressionFilters:v39 trackingData:boundsCopy frameTimestampMS:v8 score:&v117];
    if (*v143)
    {
      v113 = *v143;
      v55 = *&v143[8];
      v114 = v55;
      v115 = v144;
      v56 = *(&v144 + 1);
      v116 = v56;
      if (v15)
      {
        [v15 setRejectionState:&v113];
      }

      else
      {
      }

      goto LABEL_89;
    }

    v58 = v117;
    v59 = *(v39 + 15);
    if (v117 < v59)
    {
      v109 = 23;
      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"lower score [%g < %g]", v117, v59];
      v111 = 0;
      v112 = 0;
      v110 = v60;
      if (v15)
      {
        [v15 setRejectionState:&v109];
LABEL_89:
        v81 = v15;
LABEL_90:

LABEL_91:
        goto LABEL_92;
      }

      goto LABEL_88;
    }

    v61 = v39[52];
    LODWORD(v54) = -1.0;
    if (v61 == 1)
    {
      v62 = acosf(*(v39 + 12));
      *&v54 = cosf(v62 + *(v39 + 14));
    }

    if (v58 == v59 && v33 <= *&v54)
    {
      v105 = 25;
      v63 = *&v54;
      v64 = *(v39 + 14);
      v65 = -1.0;
      if (v61)
      {
        v65 = *(v39 + 12);
      }

      v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"lower alignment [%g <= %g] (tolerance (radians): %g, best alignment: %g)", v33, *&v63, *(v39 + 14), *&v65];
      v107 = 0;
      v108 = 0;
      v106 = v60;
      if (v15)
      {
        [v15 setRejectionState:&v105];
        goto LABEL_89;
      }

LABEL_88:

      goto LABEL_89;
    }

    [(VGFrameSelector *)v38 applyVisionFilters:trackingDataCopy bestTargetPoseData:v39 frameTimestampMS:v8, v54];
    if (v132)
    {
      v101 = v132;
      frameState3 = *(&v132 + 1);
      v102 = frameState3;
      v103 = v133;
      v67 = *(&v133 + 1);
      v104 = v67;
      if (v15)
      {
        v68 = &v101;
LABEL_102:
        [v15 setRejectionState:v68];
LABEL_105:
        v84 = v15;

        goto LABEL_90;
      }

      bodyPoseFrameState2 = v67;
    }

    else
    {
      if (v39[80] != 1)
      {
        goto LABEL_98;
      }

      if (!v91)
      {
        goto LABEL_98;
      }

      frameState2 = [v91 frameState];
      [frameState2 aggregatedScore];
      v71 = v70;
      bodyPoseFrameState = [*(v39 + 2) bodyPoseFrameState];
      [bodyPoseFrameState aggregatedScore];
      v74 = v71 < v73;

      if (!v74)
      {
LABEL_98:
        if (v39[52] == 1 && *(v39 + 12) >= v33)
        {
          v33 = *(v39 + 12);
        }

        *(v39 + 12) = v33;
        v39[52] = 1;
        *(v39 + 15) = v117;
        v93 = 0;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        if (!v15)
        {
          goto LABEL_105;
        }

        v68 = &v93;
        goto LABEL_102;
      }

      v97 = 41;
      v75 = MEMORY[0x277CCACA8];
      frameState3 = [v91 frameState];
      [frameState3 aggregatedScore];
      v77 = v76;
      bodyPoseFrameState2 = [*(v39 + 2) bodyPoseFrameState];
      [bodyPoseFrameState2 aggregatedScore];
      v80 = [v75 stringWithFormat:@"lower body pose aggregated score [%g < %g]", v77, v79];
      v99 = 0;
      v100 = 0;
      v98 = v80;
      if (v15)
      {
        [v15 setRejectionState:&v97];
      }

      else
      {
      }
    }

    goto LABEL_105;
  }

  [v15 rejectionState];
  v47 = *buf == 0;

  if (v47)
  {
    goto LABEL_59;
  }

  v48 = v15;
LABEL_92:

  v87[2](v87);
  self = selfCopy;
LABEL_93:

LABEL_94:
  __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke();

  v82 = *MEMORY[0x277D85DE8];

  return v15;
}

void __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke()
{
  v0 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose", &unk_270FBF062, v1, 2u);
  }
}

- (void)processHeadPose:captureData:trackingData:validDataBounds:frameTimestampMS:
{
  v13 = a2;
  v14 = a7;
  if (*(a5 + 32) == 1)
  {
    if (*self)
    {
      [*self checkDepthFoVFilter:v13 framePose:a4 bestTargetPoseData:a5 validDataBounds:a6 frameTimestampMS:{a3[4], a3[6], a3[8], a3[10]}];
      v15 = *(&v23 + 1);
    }

    else
    {
      v15 = 0;
      v22 = 0u;
      v23 = 0u;
    }

    [v14 addDebugDataForKey:@"depthFovFilter" debugData:v15];
    if (v22)
    {
      v18 = v22;
      v16 = *(&v22 + 1);
      v19 = v16;
      v20 = v23;
      v17 = *(&v23 + 1);
      v21 = v17;
      if (v14)
      {
        [v14 setRejectionState:&v18];
      }

      else
      {
      }
    }
  }
}

void __93__VGFrameSelector_processHeadPose_captureData_trackingData_validDataBounds_frameTimestampMS___block_invoke_682(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v2))
  {
    if (*(*(a1 + 32) + 80))
    {
      v3 = @"true";
    }

    else
    {
      v3 = @"false";
    }

    v5 = 138543362;
    v6 = v3;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessHeadPose_PoseFilters", "isFrontPose:%{public}@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (optional<simd_float4x4>)parseAtlasToCameraTransformation:(id)transformation
{
  v4 = v3;
  v55 = [transformation objectForKeyedSubscript:@"tracked_faces"];
  if (![v55 count])
  {
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = " Could not extract atlas joint. No Faces tracked ";
      goto LABEL_7;
    }

LABEL_8:

    *v4 = 0;
    *(v4 + 64) = 0;
    goto LABEL_26;
  }

  if ([v55 count] >= 2)
  {
    v5 = __VGLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v6 = " Could not extract atlas joint. Multiple faces tracked in FaceKitDictionary. Discarding all. ";
LABEL_7:
      _os_log_impl(&dword_270F06000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v54 = [v55 objectAtIndexedSubscript:0];
  v53 = [v54 objectForKeyedSubscript:@"raw_data"];
  v7 = [v53 objectForKeyedSubscript:@"pose"];
  if (v7)
  {
    for (i = 0; i != 3; ++i)
    {
      v9 = 0;
      v10 = &v59[i];
      do
      {
        v11 = [v7 objectForKeyedSubscript:@"rotation"];
        v12 = [v11 objectAtIndexedSubscript:v9];
        v13 = [v12 objectAtIndexedSubscript:i];
        [v13 floatValue];
        *(v10 + (v9 & 3)) = v14;

        ++v9;
      }

      while (v9 != 3);
      *(v10 + 3) = 0;
    }

    v15 = 0;
    v56 = v59[3];
    do
    {
      v16 = [v7 objectForKeyedSubscript:@"translation"];
      v17 = [v16 objectAtIndexedSubscript:v15];
      [v17 floatValue];
      v58 = v56;
      *(&v58 & 0xFFFFFFFFFFFFFFF3 | (4 * (v15 & 3))) = v18 * 0.001;
      v56 = v58;

      ++v15;
    }

    while (v15 != 3);
    v19 = [v54 objectForKeyedSubscript:@"kAtlasToFaceKitTransform"];
    v20 = v19;
    if (v19)
    {
      v21 = [v19 objectAtIndexedSubscript:0];
      [v21 vg_float4ByInvokingFloatValue];
      v52 = v22;

      v23 = [v20 objectAtIndexedSubscript:1];
      [v23 vg_float4ByInvokingFloatValue];
      v51 = v24;

      v25 = [v20 objectAtIndexedSubscript:2];
      [v25 vg_float4ByInvokingFloatValue];
      v50 = v26;

      v27 = [v20 objectAtIndexedSubscript:3];
      [v27 vg_float4ByInvokingFloatValue];
      v49 = v28;
      v29 = v56;
      v29.i32[3] = 1.0;
      v57 = v29;

      v30 = 0;
      v31 = vzip1q_s32(v52, v50);
      v32 = vzip2q_s32(v52, v50);
      v33 = vzip1q_s32(v51, v49);
      v34 = vzip2q_s32(v51, v49);
      v35 = vzip1q_s32(v31, v33);
      v36 = vzip2q_s32(v31, v33);
      v37 = vzip1q_s32(v32, v34);
      v38 = vzip2q_s32(v32, v34);
      v60 = xmmword_270FA69B0;
      v61 = xmmword_270FA69C0;
      v62 = xmmword_270FA69D0;
      v63 = xmmword_270FA69E0;
      do
      {
        *&buf[v30] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(*(&v60 + v30))), v36, *(&v60 + v30), 1), v37, *(&v60 + v30), 2), v38, *(&v60 + v30), 3);
        v30 += 16;
      }

      while (v30 != 64);
      v39 = 0;
      v40 = v67;
      HIDWORD(v40) = 1.0;
      v41 = v59[0];
      v42 = v59[1];
      v43 = v59[2];
      v60 = *buf;
      v61 = v65;
      v62 = v66;
      v63 = v40;
      do
      {
        *&buf[v39] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v41, COERCE_FLOAT(*(&v60 + v39))), v42, *(&v60 + v39), 1), v43, *(&v60 + v39), 2), v57, *(&v60 + v39), 3);
        v39 += 16;
      }

      while (v39 != 64);
      v44 = v65;
      v45 = v66;
      v46 = v67;
      *v4 = *buf;
      *(v4 + 16) = v44;
      *(v4 + 32) = v45;
      *(v4 + 48) = v46;
      v47 = 1;
    }

    else
    {
      v47 = 0;
      *v4 = 0;
    }

    *(v4 + 64) = v47;
  }

  else
  {
    *v4 = 0;
    *(v4 + 64) = 0;
  }

LABEL_26:
  return v48;
}

- (id)processCaptureData:(int32x4_t)data trackingData:(int32x4_t)trackingData framePose:(float32x4_t)pose validDataFrameBounds:(uint64_t)bounds
{
  v89 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = a8;
  v15 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v15, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ProcessCaptureData", &unk_270FBF062, buf, 2u);
  }

  if (v13)
  {
    [v13 timestamp];
  }

  else
  {
    memset(buf, 0, 24);
  }

  Seconds = CMTimeGetSeconds(buf);
  v17 = __VGLogSharedInstance();
  v18 = (Seconds * 1000.0);
  v19 = vmulq_f32(pose, pose);
  *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  *v19.f32 = vrsqrte_f32(v20);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
  v21 = vmulq_n_f32(pose, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  v22 = vtrn2q_s32(a2, data);
  v22.i32[2] = trackingData.i32[1];
  v80 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(a2, trackingData), data), v21.f32[0]), v22, *v21.f32, 1), vzip1q_s32(vzip2q_s32(a2, trackingData), vdupq_laneq_s32(data, 2)), v21, 2);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v23 = (asinf(v80.f32[0]) * 180.0) / 3.14159265;
    v24 = v23;
    v25 = asinf(v80.f32[1]);
    *buf = 134219265;
    *&buf[4] = (Seconds * 1000.0);
    *&buf[12] = 2049;
    *&buf[14] = pose.f32[0];
    *&buf[22] = 2049;
    *&buf[24] = pose.f32[1];
    v26 = (v25 * 180.0) / 3.14159265;
    *v86 = 2049;
    *&v86[2] = pose.f32[2];
    *&v86[10] = 2049;
    *&v86[12] = v24;
    *&v86[20] = 2049;
    *&v86[22] = v26;
    _os_log_impl(&dword_270F06000, v17, OS_LOG_TYPE_DEBUG, " Frame#%zu acquired by pose selector with position x:%{private}g y:%{private}g z:%{private}g view direction x:%{private}g y:%{private}g ", buf, 0x3Eu);
  }

  v27 = __VGLogSharedInstance();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    allFaces = [v13 allFaces];
    if (allFaces)
    {
      v29 = MEMORY[0x277CCABB0];
      allFaces2 = [v13 allFaces];
      v30 = [v29 numberWithUnsignedInteger:{objc_msgSend(allFaces2, "count")}];
    }

    else
    {
      v30 = @"n/a";
    }

    *buf = 134218242;
    *&buf[4] = (Seconds * 1000.0);
    *&buf[12] = 2112;
    *&buf[14] = v30;
    _os_log_impl(&dword_270F06000, v27, OS_LOG_TYPE_DEBUG, " Frame#%zu number of face bounding boxes: %@  ", buf, 0x16u);
    if (allFaces)
    {
    }
  }

  mirrored = [v13 mirrored];
  v32 = (atan2f(-v80.f32[0], v80.f32[2]) * 180.0) / 3.14159265;
  if (mirrored)
  {
    v33 = -v32;
  }

  else
  {
    v33 = v32;
  }

  v34 = asinf(v80.f32[1]);
  v35 = __VGLogSharedInstance();
  v36 = (v34 * -180.0) / 3.14159265;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218497;
    *&buf[4] = v18;
    *&buf[12] = 2049;
    *&buf[14] = v33;
    *&buf[22] = 2049;
    *&buf[24] = v36;
    _os_log_impl(&dword_270F06000, v35, OS_LOG_TYPE_DEBUG, " Frame#%zu [yaw pitch] (degrees): [%{private}g %{private}g] ", buf, 0x20u);
  }

  if ([*(self + 40) useSimpleSelector])
  {
    *buf = v33;
    *&buf[4] = v36;
    *&buf[8] = 0;
    *&buf[16] = v80;
    *v86 = a2;
    *&v86[16] = data;
    trackingDataCopy2 = trackingData;
    poseCopy2 = pose;
    [self processHeadPoseSimple:buf frameTimestampMS:v18];
  }

  else
  {
    *buf = v33;
    *&buf[4] = v36;
    *&buf[8] = 0;
    *&buf[16] = v80;
    *v86 = a2;
    *&v86[16] = data;
    trackingDataCopy2 = trackingData;
    poseCopy2 = pose;
    [self processHeadPose:buf captureData:v13 trackingData:v14 validDataBounds:a9 frameTimestampMS:v18];
  }
  v37 = ;
  *&v38 = v33;
  [v37 setYawInDegrees:v38];
  *&v39 = v36;
  v40 = vg::shared::VisualLogger::sharedLogger([v37 setPitchInDegrees:v39]);
  rgbRectified = [v13 rgbRectified];
  if (v13)
  {
    [v13 timestamp];
  }

  else
  {
    memset(buf, 0, 24);
  }

  v42 = CMTimeGetSeconds(buf);
  vg::shared::VisualLogger::logPixelBuffer(v40, rgbRectified, v42, &cfstr_VisageFramesel.isa, 0);
  v43 = MEMORY[0x277CCACA8];
  if (v37)
  {
    [v37 rejectionState];
    v44 = *buf;
  }

  else
  {
    v44 = 0;
    memset(buf, 0, sizeof(buf));
  }

  vg::frame_selection::frameRejectionReasonToString(v44, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v46 = [v43 stringWithFormat:@"%s", p_p];
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    [v37 rejectionState];
    if (*&buf[8])
    {
      [v37 rejectionState];
      v47 = __p.__r_.__value_.__l.__size_;

      goto LABEL_39;
    }
  }

  else
  {
    memset(buf, 0, sizeof(buf));
  }

  v47 = @"None";
LABEL_39:

  v83[0] = @"picked";
  isSuccessful = [v37 isSuccessful];
  v49 = @"no";
  if (isSuccessful)
  {
    v49 = @"yes";
  }

  v84[0] = v49;
  v84[1] = v46;
  v83[1] = @"reason";
  v83[2] = @"description";
  v84[2] = v47;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:3];
  if (v13)
  {
    [v13 timestamp];
  }

  else
  {
    memset(buf, 0, 24);
  }

  v51 = CMTimeGetSeconds(buf);
  vg::shared::VisualLogger::logDictionary(v40, v50, v51, &cfstr_VisageFramesel_0.isa, 0);

  v53 = vg::shared::VisualLogger::sharedLogger(v52);
  if ([v37 isSuccessful])
  {
    v54 = *(self + 8) + 112 * [v37 poseIndex];
    [v37 setTargetAngleId:*(v54 + 72)];
    LODWORD(v55) = *(v54 + 68);
    [v37 setAngleInDegrees:v55];
    if (*(v54 + 80) == 1 && vg::shared::VisualLogger::isLoggerEnabled(v53, &cfstr_VisageFramesel_1.isa))
    {
      rgbRectified2 = [v13 rgbRectified];
      if (v13)
      {
        [v13 timestamp];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v59 = CMTimeGetSeconds(buf);
      vg::shared::VisualLogger::logPixelBuffer(v53, rgbRectified2, v59, &cfstr_VisageFramesel_1.isa, 0);
    }

    if (*(v54 + 64))
    {
      v60 = @"pitch";
    }

    else
    {
      v60 = @"yaw";
    }

    v61 = v60;
    v62 = __VGLogSharedInstance();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      v63 = *(v54 + 68);
      v64 = *(v54 + 72);
      *buf = 134218755;
      *&buf[4] = v18;
      *&buf[12] = 2112;
      *&buf[14] = v61;
      *&buf[22] = 2049;
      *&buf[24] = v63;
      *v86 = 2049;
      *&v86[2] = v64;
      _os_log_impl(&dword_270F06000, v62, OS_LOG_TYPE_DEBUG, " Frame#%zu selected by %@ selector with angle:%{private}f target angle index:%{private}zu ", buf, 0x2Au);
    }

    v65 = objc_opt_new();
    v66 = [v13 copy];
    [v65 setCaptureData:v66];

    [v65 setTrackingData:v14];
    [v65 setFrontPose:*(v54 + 80)];
    bodyPoseFrameState = [v37 bodyPoseFrameState];
    [v65 setBodyPoseFrameState:bodyPoseFrameState];

    if (*(v54 + 64))
    {
      *&v68 = v36;
    }

    else
    {
      *&v68 = v33;
    }

    [v65 setSelectedAngle:v68];
    *&v69 = v36;
    [v65 setSelectedPitch:v69];
    *&v70 = v33;
    [v65 setSelectedYaw:v70];
    v71 = *(v54 + 16);
    v72 = +[VGFrameSelector invalidPose];
    LODWORD(v71) = [v71 isEqual:v72];

    if (v71)
    {
      --*(self + 64);
    }

    v73 = *(v54 + 16);
    *(v54 + 16) = v65;
  }

  else if (vg::shared::VisualLogger::isLoggerEnabled(v53, &cfstr_VisageFramesel_1.isa))
  {
    ZeroPixelBuffer = createZeroPixelBuffer(1uLL, 1uLL);
    if (ZeroPixelBuffer)
    {
      if (v13)
      {
        [v13 timestamp];
      }

      else
      {
        memset(buf, 0, 24);
      }

      v58 = CMTimeGetSeconds(buf);
      vg::shared::VisualLogger::logPixelBuffer(v53, ZeroPixelBuffer, v58, &cfstr_VisageFramesel_1.isa, 0);
    }

    CVPixelBufferRelease(ZeroPixelBuffer);
  }

  __82__VGFrameSelector_processCaptureData_trackingData_framePose_validDataFrameBounds___block_invoke();

  v74 = *MEMORY[0x277D85DE8];

  return v37;
}

void __82__VGFrameSelector_processCaptureData_trackingData_framePose_validDataFrameBounds___block_invoke()
{
  v0 = VGLogVGFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ProcessCaptureData", &unk_270FBF062, v1, 2u);
  }
}

- (id)resultsForMotionType:(optional<vg::frame_selection::MotionType>)type
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:self->_requiredPosesCount];
  requiredPosesCount = self->_requiredPosesCount;
  if (requiredPosesCount)
  {
    v8 = 0;
    for (i = 0; i < requiredPosesCount; ++i)
    {
      begin = self->_targetPosesData.__begin_;
      if ((*&type & 0x100000000) == 0 || *(begin + v8 + 64) == type.var0.var1)
      {
        v11 = *(begin + v8 + 16);
        LODWORD(v6) = *(begin + v8 + 68);
        v12 = [MEMORY[0x277CCABB0] numberWithFloat:v6];
        [v5 setObject:v11 forKeyedSubscript:v12];

        requiredPosesCount = self->_requiredPosesCount;
      }

      v8 += 112;
    }
  }

  return v5;
}

- (id)selectedValidPosesForMotion:(optional<vg::frame_selection::MotionType>)motion
{
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:self->_requiredPosesCount];
  if (self->_requiredPosesCount)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      begin = self->_targetPosesData.__begin_;
      if (((*&motion & 0x100000000) == 0 || *(begin + v6 + 64) == motion.var0.var1) && [*(begin + v6 + 16) valid])
      {
        v10 = *(begin + v6 + 16);
        LODWORD(v9) = *(begin + v6 + 68);
        v11 = [MEMORY[0x277CCABB0] numberWithFloat:v9];
        [v5 setObject:v10 forKeyedSubscript:v11];
      }

      ++v7;
      v6 += 112;
    }

    while (v7 < self->_requiredPosesCount);
  }

  return v5;
}

- (BOOL)completedYaw
{
  selfCopy = self;
  selectedYawValidPoses = [(VGFrameSelector *)self selectedYawValidPoses];
  v4 = [selectedYawValidPoses count];
  LOBYTE(selfCopy) = v4 == [(VGFrameSelectorOptions *)selfCopy->_options yawFrameCount];

  return selfCopy;
}

- (BOOL)completedPitch
{
  selfCopy = self;
  selectedPitchValidPoses = [(VGFrameSelector *)self selectedPitchValidPoses];
  v4 = [selectedPitchValidPoses count];
  LOBYTE(selfCopy) = v4 == [(VGFrameSelectorOptions *)selfCopy->_options pitchFrameCount];

  return selfCopy;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end