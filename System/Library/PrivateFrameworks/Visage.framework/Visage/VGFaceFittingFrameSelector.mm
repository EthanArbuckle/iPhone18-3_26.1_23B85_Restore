@interface VGFaceFittingFrameSelector
+ (void)getFaceKitTrackedLandmarks:(void *)landmarks@<X2>;
- (BOOL)startFaceExpressionCapture:(unint64_t)capture;
- (CGRect)getValidDataFrameBounds:(id)bounds;
- (FrameRejectionState)checkMotionBlurFilter:(SEL)filter frameTimestampMS:(id)s;
- (VGFaceFittingFrameSelector)initWithOptions:(id)options faceKitSemantics:(__CFDictionary *)semantics;
- (id)_currentState;
- (id)addPoseWithCaptureData:(id)data tracking:(id)tracking externalTracking:(BOOL)externalTracking metricsData:(void *)metricsData;
- (id)allPoseSelectors;
- (id)enrolledPoses;
- (id)expressionSelectors;
- (id)finish;
- (id)neutralSelectors;
- (id)posesFromSelectors:(id)selectors;
- (void)addPoseWithCaptureData:tracking:externalTracking:metricsData:;
- (void)checkDistanceFilter:(float32x4_t)filter@<Q3> frameTimestampMS:;
@end

@implementation VGFaceFittingFrameSelector

- (id)allPoseSelectors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  neutralSelectors = [(VGFaceFittingFrameSelector *)self neutralSelectors];
  [v3 addObjectsFromArray:neutralSelectors];

  expressionSelectors = [(VGFaceFittingFrameSelector *)self expressionSelectors];
  [v3 addObjectsFromArray:expressionSelectors];

  return v3;
}

- (id)neutralSelectors
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = v3;
  if (self->_poseSelector)
  {
    [v3 addObject:?];
  }

  return v4;
}

- (id)expressionSelectors
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](self->_expressionsSelector, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_expressionsSelector;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSMutableDictionary *)self->_expressionsSelector objectForKey:*(*(&v11 + 1) + 8 * i), v11];
        [v3 addObject:v8];
      }

      v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (void)getFaceKitTrackedLandmarks:(void *)landmarks@<X2>
{
  landmarksCopy = landmarks;
  v4 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v4))
  {
    *v11 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetFaceKitTrackedLandmarks", &unk_270FBF062, v11, 2u);
  }

  v5 = [landmarksCopy objectForKeyedSubscript:@"smooth_data"];
  v6 = [v5 objectForKeyedSubscript:@"geometry"];
  v7 = [v6 objectForKeyedSubscript:@"landmarks"];
  v8 = [v7 length];
  bytes = [v7 bytes];
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEEC2B8ne200100Em(a2, v8 >> 3);
  if (v8 >= 8)
  {
    v10 = 0;
    do
    {
      *(*a2 + 8 * v10) = *(bytes + 8 * v10);
      ++v10;
    }

    while (v8 >> 3 != v10);
  }

  __57__VGFaceFittingFrameSelector_getFaceKitTrackedLandmarks___block_invoke();
}

void __57__VGFaceFittingFrameSelector_getFaceKitTrackedLandmarks___block_invoke()
{
  v0 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetFaceKitTrackedLandmarks", &unk_270FBF062, v1, 2u);
  }
}

- (void)checkDistanceFilter:(float32x4_t)filter@<Q3> frameTimestampMS:
{
  v5 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CheckDistanceFilter", &unk_270FBF062, buf, 2u);
  }

  if ([*(self + 48) useSimpleSelector])
  {
    goto LABEL_4;
  }

  [*(self + 48) distanceFilterCloseThreshold];
  v6 = vmuls_lane_f32(0.1, filter, 2);
  v7 = *(self + 48);
  if (v6 < v8)
  {
    [v7 distanceFilterCloseThreshold];
    v10 = v9;
    *a2 = 26;
    v11 = MEMORY[0x277CCACA8];
    [*(self + 48) distanceFilterCloseThreshold];
    v13 = [v11 stringWithFormat:@"face too close: %g cm < %g cm", v6, v12];
LABEL_9:
    *(a2 + 8) = v13;
    *(a2 + 16) = 0;
    *(a2 + 20) = vabds_f32(v6, v10);
    *(a2 + 24) = 0;
    goto LABEL_10;
  }

  [v7 distanceFilterFarThreshold];
  if (v6 > v14)
  {
    [*(self + 48) distanceFilterFarThreshold];
    v10 = v15;
    *a2 = 27;
    v16 = MEMORY[0x277CCACA8];
    [*(self + 48) distanceFilterFarThreshold];
    v13 = [v16 stringWithFormat:@"face too far: %g cm > %g cm", v6, v17];
    goto LABEL_9;
  }

LABEL_4:
  *a2 = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
LABEL_10:
  __67__VGFaceFittingFrameSelector_checkDistanceFilter_frameTimestampMS___block_invoke();
}

void __67__VGFaceFittingFrameSelector_checkDistanceFilter_frameTimestampMS___block_invoke()
{
  v0 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CheckDistanceFilter", &unk_270FBF062, v1, 2u);
  }
}

- (FrameRejectionState)checkMotionBlurFilter:(SEL)filter frameTimestampMS:(id)s
{
  sCopy = s;
  v9 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v9))
  {
    LOWORD(v17) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v9, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CheckMotionBlurFilter", &unk_270FBF062, &v17, 2u);
  }

  v10 = objc_opt_class();
  if (v10)
  {
    [v10 getFaceKitTrackedLandmarks:sCopy];
    v11 = v21;
    v12 = v22;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  v17 = a5;
  __p = 0;
  v19 = 0;
  v20 = 0;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE16__init_with_sizeB8ne200100IPS1_S6_EEvT_T0_m(&__p, v11, v12, (v12 - v11) >> 3);
  v13 = vg::frame_selection::VGBlurDetector::detectMotionBlur(self->_blurDetector.__ptr_, &v17);
  if ((v14 & 1) == 0)
  {
    retstr->reason = 7;
    v15 = @"motion blur is initializing temporal state from this frame";
    goto LABEL_10;
  }

  if (v13)
  {
    retstr->reason = 6;
    v15 = @"motion blur detected";
LABEL_10:
    *&retstr->outOfFovOffset = 0;
    retstr->debugDictionary = 0;
    retstr->description = &v15->isa;
    goto LABEL_12;
  }

  retstr->reason = 0;
  *&retstr->outOfFovOffset = 0;
  retstr->debugDictionary = 0;
  retstr->description = 0;
LABEL_12:
  if (__p)
  {
    v19 = __p;
    operator delete(__p);
  }

  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  __69__VGFaceFittingFrameSelector_checkMotionBlurFilter_frameTimestampMS___block_invoke();

  return result;
}

void __69__VGFaceFittingFrameSelector_checkMotionBlurFilter_frameTimestampMS___block_invoke()
{
  v0 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CheckMotionBlurFilter", &unk_270FBF062, v1, 2u);
  }
}

- (CGRect)getValidDataFrameBounds:(id)bounds
{
  boundsCopy = bounds;
  v4 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetValidDataFrameBounds", &unk_270FBF062, buf, 2u);
  }

  Width = CVPixelBufferGetWidth([boundsCopy depth]);
  Height = CVPixelBufferGetHeight([boundsCopy depth]);
  v16 = getImageBBoxAboveThreshold([boundsCopy depth], 0.015).n128_u64[0];
  v8 = v7;
  __54__VGFaceFittingFrameSelector_getValidDataFrameBounds___block_invoke();
  v9 = vsub_s32(v8, v16);
  v10 = (v9.i32[0] / Width);
  v11 = (v9.i32[1] / Height);

  v12 = (v16.i32[0] / Width);
  v13 = (v16.i32[1] / Height);
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

void __54__VGFaceFittingFrameSelector_getValidDataFrameBounds___block_invoke()
{
  v0 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetValidDataFrameBounds", &unk_270FBF062, v1, 2u);
  }
}

- (VGFaceFittingFrameSelector)initWithOptions:(id)options faceKitSemantics:(__CFDictionary *)semantics
{
  v43[1] = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v40.receiver = self;
  v40.super_class = VGFaceFittingFrameSelector;
  v7 = [(VGFaceFittingFrameSelector *)&v40 init];
  if (v7)
  {
    if (semantics)
    {
      CFRetain(semantics);
      facekitSemantics = v7->_facekitSemantics;
      v7->_facekitSemantics = semantics;
    }

    options = [VGFrameSelectorOptions optionsWithCaptureOptions:optionsCopy, options];
    v9 = [[VGFrameSelector alloc] initWithOptions:options];
    poseSelector = v7->_poseSelector;
    v7->_poseSelector = v9;

    v11 = MEMORY[0x277CBEB38];
    requiredExpressions = [optionsCopy requiredExpressions];
    v13 = [v11 dictionaryWithCapacity:{objc_msgSend(requiredExpressions, "count")}];
    expressionsSelector = v7->_expressionsSelector;
    v7->_expressionsSelector = v13;

    for (i = 0; ; ++i)
    {
      requiredExpressions2 = [optionsCopy requiredExpressions];
      v17 = i < [requiredExpressions2 count];

      if (!v17)
      {
        break;
      }

      requiredExpressions3 = [optionsCopy requiredExpressions];
      v19 = [requiredExpressions3 objectAtIndex:i];
      intValue = [v19 intValue];

      v21 = off_279E285E0;
      if (intValue < 4)
      {
        v21 = off_279E28F50[intValue];
      }

      v22 = *v21;
      v23 = objc_opt_new();
      v24 = objc_opt_new();
      [v24 setYawFrameCount:1];
      LODWORD(v25) = 1057360530;
      [v24 setYawLimit:v25];
      v43[0] = v23;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:1];
      [v24 setYawExpressionFilters:v26];

      v27 = [[VGFrameSelector alloc] initWithOptions:v24];
      v28 = v7->_expressionsSelector;
      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:intValue];
      [(NSMutableDictionary *)v28 setObject:v27 forKeyedSubscript:v29];
    }

    v7->_frameCount = 0;
    objc_storeStrong(&v7->_options, obja);
    trackedFaceIdentifier = v7->_trackedFaceIdentifier;
    v7->_trackedFaceIdentifier = 0;

    if ([(VGFaceCaptureOptions *)v7->_options useMotionBlurFilter])
    {
      *buf = 1106247680;
      [(VGFaceCaptureOptions *)v7->_options motionBlurThreshold];
      LODWORD(optionsCopy2) = v31;
      BYTE4(optionsCopy2) = 0;
      vg::frame_selection::VGBlurDetector::create();
    }

    v32 = __VGLogSharedInstance();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
    {
      options = v7->_options;
      *buf = 138412290;
      optionsCopy2 = options;
      _os_log_impl(&dword_270F06000, v32, OS_LOG_TYPE_DEBUG, " Initialized FaceFittingSelector with face capture options:\n%@ ", buf, 0xCu);
    }

    v34 = v7;
  }

  else
  {
    v34 = 0;
  }

  v35 = *MEMORY[0x277D85DE8];
  return v34;
}

- (BOOL)startFaceExpressionCapture:(unint64_t)capture
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (capture > 3)
  {
    v5 = off_279E285E0;
  }

  else
  {
    v5 = off_279E28F50[capture];
  }

  v6 = *v5;
  v7 = objc_opt_new();
  v8 = objc_opt_new();
  [v8 setYawFrameCount:1];
  LODWORD(v9) = 1057360530;
  [v8 setYawLimit:v9];
  v16[0] = v7;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [v8 setYawExpressionFilters:v10];

  v11 = [[VGFrameSelector alloc] initWithOptions:v8];
  expressionsSelector = self->_expressionsSelector;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:capture];
  [(NSMutableDictionary *)expressionsSelector setObject:v11 forKeyedSubscript:v13];

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_currentState
{
  v70 = *MEMORY[0x277D85DE8];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(VGFaceFittingFrameSelector *)self allPoseSelectors];
  v2 = 0;
  v3 = 0;
  v4 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
  if (v4)
  {
    v5 = *v56;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v56 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v55 + 1) + 8 * i);
        v3 += [v7 remainingPosesCount];
        v2 += [v7 requiredPosesCount];
      }

      v4 = [obj countByEnumeratingWithState:&v55 objects:v69 count:16];
    }

    while (v4);
  }

  obja = objc_alloc_init(VGFaceSelectionState);
  [(VGSelectionState *)obja setFailed:v2 == 0];
  if (![(VGSelectionState *)obja failed])
  {
    [(VGSelectionState *)obja setCompleted:v3 == 0];
    if (v2)
    {
      *&v8 = (v2 - v3) / v2;
      [(VGSelectionState *)obja setProgress:v8];
    }

    yawResults = [(VGFrameSelector *)self->_poseSelector yawResults];
    [(VGFaceSelectionState *)obja setYawAngleCapturedPoses:yawResults];

    pitchResults = [(VGFrameSelector *)self->_poseSelector pitchResults];
    [(VGFaceSelectionState *)obja setPitchAngleCapturedPoses:pitchResults];

    yawResults2 = [(VGFrameSelector *)self->_poseSelector yawResults];
    [(VGFaceSelectionState *)obja setPosesForHairCapturedPoses:yawResults2];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    poseSelector = self->_poseSelector;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&poseSelector count:1];
    v13 = [(VGFaceFittingFrameSelector *)self posesFromSelectors:v12];

    v14 = [v13 countByEnumeratingWithState:&v51 objects:v68 count:16];
    if (v14)
    {
      v15 = *v52;
      while (2)
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v51 + 1) + 8 * j);
          if ([v17 frontPose])
          {
            [(VGFaceSelectionState *)obja setCapturedFrontPose:v17];
            goto LABEL_21;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v51 objects:v68 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_21:

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v37 = self->_expressionsSelector;
    v19 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v47 objects:v66 count:16];
    if (v19)
    {
      v38 = *v48;
      do
      {
        v39 = v19;
        for (k = 0; k != v39; ++k)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(v37);
          }

          v21 = *(*(&v47 + 1) + 8 * k);
          v22 = [(NSMutableDictionary *)self->_expressionsSelector objectForKey:v21];
          results = [v22 results];

          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v24 = results;
          v25 = [v24 countByEnumeratingWithState:&v43 objects:v65 count:16];
          if (v25)
          {
            v26 = *v44;
            do
            {
              for (m = 0; m != v25; ++m)
              {
                if (*v44 != v26)
                {
                  objc_enumerationMutation(v24);
                }

                v28 = [v24 objectForKey:*(*(&v43 + 1) + 8 * m)];
                [dictionary setObject:v28 forKeyedSubscript:v21];
              }

              v25 = [v24 countByEnumeratingWithState:&v43 objects:v65 count:16];
            }

            while (v25);
          }
        }

        v19 = [(NSMutableDictionary *)v37 countByEnumeratingWithState:&v47 objects:v66 count:16];
      }

      while (v19);
    }

    [(VGFaceSelectionState *)obja setExpressionCapturedPoses:dictionary];
    [(VGFaceSelectionState *)obja setCompletionScore:0.0];
    capturedFrontPose = [(VGFaceSelectionState *)obja capturedFrontPose];
    v30 = capturedFrontPose == 0;

    if (!v30)
    {
      LODWORD(v31) = 0.25;
      [(VGFaceSelectionState *)obja setCompletionScore:v31];
      v33 = 1.0;
      if ([(VGFrameSelector *)self->_poseSelector completed]|| (v33 = 0.5, [(VGFrameSelector *)self->_poseSelector completedYaw]) || [(VGFrameSelector *)self->_poseSelector completedPitch])
      {
        *&v32 = v33;
        [(VGFaceSelectionState *)obja setCompletionScore:v32];
      }
    }
  }

  v34 = __VGLogSharedInstance();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v60 = v3;
    v61 = 2048;
    v62 = v2;
    v63 = 2112;
    v64 = obja;
    _os_log_impl(&dword_270F06000, v34, OS_LOG_TYPE_DEBUG, " %lu/%lu %@ ", buf, 0x20u);
  }

  v35 = *MEMORY[0x277D85DE8];

  return obja;
}

- (id)addPoseWithCaptureData:(id)data tracking:(id)tracking externalTracking:(BOOL)externalTracking metricsData:(void *)metricsData
{
  v168 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  trackingCopy = tracking;
  v10 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v10))
  {
    LOWORD(buf.value) = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AddPoseWithCaptureData", &unk_270FBF062, &buf, 2u);
  }

  ++self->_frameCount;
  if (dataCopy)
  {
    [dataCopy timestamp];
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
  }

  Seconds = CMTimeGetSeconds(&buf);
  _currentState = [(VGFaceFittingFrameSelector *)self _currentState];
  v13 = (Seconds * 1000.0);
  v158[0] = metricsData;
  v158[1] = v13;
  selfCopy = self;
  if ([_currentState failed])
  {
    v154 = 1;
    v157 = 0;
    v155 = @"enrollment failed";
    v156 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v154);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    goto LABEL_27;
  }

  if (!externalTracking)
  {
    frameCount = self->_frameCount;
    if (frameCount <= 0x32)
    {
      v150 = 10;
      [MEMORY[0x277CCACA8] stringWithFormat:@"not ready [%lu / %lu]", frameCount, 50];
      v151 = v153 = 0;
      v152 = 0;
      [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v150);
LABEL_27:
      v25 = _currentState;
      goto LABEL_113;
    }
  }

  if (!trackingCopy)
  {
    v146 = 2;
    v149 = 0;
    v147 = @"no tracking data";
    v148 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v146);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    goto LABEL_27;
  }

  v101 = [trackingCopy objectForKeyedSubscript:@"tracked_faces"];
  if (!v101 || ![v101 count])
  {
    v142 = 3;
    v145 = 0;
    v143 = @"no tracked face";
    v144 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v142);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    v25 = _currentState;
    goto LABEL_112;
  }

  v99 = [v101 objectAtIndexedSubscript:0];
  if (!v99)
  {
    v138 = 3;
    v141 = 0;
    v139 = @"null tracked face";
    v140 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v138);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    v25 = _currentState;
    goto LABEL_111;
  }

  if ([(VGFaceCaptureOptions *)selfCopy->_options useAmbientLightFilter])
  {
    v16 = [v99 objectForKeyedSubscript:@"vg_ambient_light"];
    v17 = v16;
    if (v16)
    {
      [v16 floatValue];
      v19 = v18;
      [(VGFaceCaptureOptions *)selfCopy->_options ambientLightFilterLowThreshold];
      if (v19 < v20)
      {
        v134 = 5;
        v21 = MEMORY[0x277CCACA8];
        [v17 floatValue];
        v23 = v22;
        [(VGFaceCaptureOptions *)selfCopy->_options ambientLightFilterLowThreshold];
        [v21 stringWithFormat:@"low ambient light [%g < %g]", v23, v24];
        v136 = 0;
        v135 = v137 = 0;
        [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v134);
        if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
        {
          vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
        }

        v25 = _currentState;

        goto LABEL_111;
      }
    }
  }

  if ([(VGFaceCaptureOptions *)selfCopy->_options useTrackedFaceIdentifierFilter])
  {
    v26 = [v99 objectForKeyedSubscript:@"identifier"];
    v27 = v26;
    if (v26)
    {
      if (selfCopy->_trackedFaceIdentifier)
      {
        if (([v26 isEqualToString:?] & 1) == 0)
        {
          v130 = 4;
          [MEMORY[0x277CCACA8] stringWithFormat:@"tracked face changed [%@ != %@]", v27, selfCopy->_trackedFaceIdentifier];
          v132 = 0;
          v131 = v133 = 0;
          [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v130);
          if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
          {
            vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
          }

          v25 = _currentState;

          goto LABEL_111;
        }
      }

      else
      {
        objc_storeStrong(&selfCopy->_trackedFaceIdentifier, v26);
      }
    }
  }

  v28 = [v99 objectForKeyedSubscript:@"confidence"];
  [v28 floatValue];
  if (v29 < 0.95)
  {
    v126 = 8;
    v30 = MEMORY[0x277CCACA8];
    [v28 floatValue];
    [v30 stringWithFormat:@"low confidence [%g < %g]", v31, 0x3FEE666660000000];
    v128 = 0;
    v127 = v129 = 0;
    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v126);
    if ([(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
    {
      vg::frame_selection::VGBlurDetector::resetPreviousState(selfCopy->_blurDetector.__ptr_);
    }

    v25 = _currentState;
    goto LABEL_110;
  }

  v97 = v28;
  if (![(VGFaceCaptureOptions *)selfCopy->_options useMotionBlurFilter])
  {
LABEL_49:
    v32 = *(MEMORY[0x277D860B8] + 16);
    v33 = *(MEMORY[0x277D860B8] + 32);
    v34 = *(MEMORY[0x277D860B8] + 48);
    v118 = *MEMORY[0x277D860B8];
    v119 = v32;
    v120 = v33;
    v121 = v34;
    v93 = [v99 objectForKeyedSubscript:@"smooth_data"];
    v98 = [v93 objectForKeyedSubscript:@"pose"];
    v100 = [v98 objectForKeyedSubscript:@"rotation"];
    for (i = 0; i != 3; ++i)
    {
      v36 = [v100 objectAtIndex:i];
      for (j = 0; j != 3; ++j)
      {
        v38 = [v36 objectAtIndex:j];
        [v38 floatValue];
        *((&v118 + j) & 0xFFFFFFFFFFFFFFF3 | (4 * (i & 3))) = v39;
      }
    }

    v40 = [v98 objectForKeyedSubscript:@"translation"];
    v41 = 0;
    v102 = v121;
    do
    {
      v42 = [v40 objectAtIndexedSubscript:v41];
      [v42 floatValue];
      v107 = v102;
      *(&v107 & 0xFFFFFFFFFFFFFFF3 | (4 * (v41 & 3))) = v43;
      v102 = v107;

      ++v41;
    }

    while (v41 != 3);
    v121 = v102;
    if ((atomic_load_explicit(_MergedGlobals, memory_order_acquire) & 1) == 0)
    {
      [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:];
    }

    v44 = 0;
    v45 = v118;
    v46 = v119;
    v47 = v120;
    v48 = v121;
    *v165 = xmmword_280870BC0;
    *&v165[16] = unk_280870BD0;
    v166 = xmmword_280870BE0;
    v167 = unk_280870BF0;
    do
    {
      *(&buf.value + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*&v165[v44])), v46, *&v165[v44], 1), v47, *&v165[v44], 2), v48, *&v165[v44], 3);
      v44 += 16;
    }

    while (v44 != 64);
    v103 = *&buf.value;
    v95 = *&v161;
    v96 = *&buf.epoch;
    v94 = *&v162;
    LOBYTE(buf.value) = 0;
    LOBYTE(v161) = 0;
    if ([(VGFaceCaptureOptions *)selfCopy->_options useDepthFovFilter])
    {
      [(VGFaceFittingFrameSelector *)selfCopy getValidDataFrameBounds:dataCopy];
      buf.value = v49;
      *&buf.timescale = v50;
      buf.epoch = v51;
      v160 = v52;
      if ((v161 & 1) == 0)
      {
        LOBYTE(v161) = 1;
      }
    }

    if ([(VGFaceCaptureOptions *)selfCopy->_options useDistanceFilter])
    {
      [(VGFaceFittingFrameSelector *)selfCopy checkDistanceFilter:v13 frameTimestampMS:v103, v96, v95, v94];
      if (*v165)
      {
        v114 = *v165;
        v115 = *&v165[8];
        v116 = *&v165[16];
        v117 = *&v165[24];
        [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &v114);
        v25 = _currentState;

LABEL_108:
        goto LABEL_109;
      }
    }

    v53 = [(VGFrameSelector *)selfCopy->_poseSelector processCaptureData:dataCopy trackingData:trackingCopy framePose:&buf validDataFrameBounds:v103, v96, v95, v94];
    v104 = v53;
    if ([v53 isSuccessful])
    {
      if (metricsData)
      {
        motionType = [v53 motionType];
        v55 = metricsData + 24 * motionType;
        targetAngleId = [v53 targetAngleId];
        *v165 = &targetAngleId;
        v56 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((v55 + 352), &targetAngleId);
        if (!*(v56 + 5))
        {
          v57 = vg::shared::Time(v56);
          targetAngleId = [v53 targetAngleId];
          *v165 = &targetAngleId;
          std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(metricsData + 24 * motionType + 440, &targetAngleId)[5] = v57;
        }

        targetAngleId = [v53 targetAngleId];
        *v165 = &targetAngleId;
        v58 = std::__tree<std::__value_type<unsigned long,unsigned long>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,unsigned long>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,unsigned long>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>((v55 + 352), &targetAngleId);
        ++v58[5];
      }

      _currentState2 = [(VGFaceFittingFrameSelector *)selfCopy _currentState];

      _currentState = _currentState2;
    }

    if (v53)
    {
      [v53 rejectionState];
    }

    else
    {
      memset(v112, 0, sizeof(v112));
    }

    [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, v112);
    [_currentState setPoseIndex:{objc_msgSend(v53, "poseIndex")}];
    [v53 yawInDegrees];
    [_currentState setYawAngle:?];
    [v53 pitchInDegrees];
    [_currentState setPitchAngle:?];
    motionType2 = [v53 motionType];
    if (motionType2)
    {
      v61 = 0;
    }

    else
    {
      v62 = MEMORY[0x277CCABB0];
      [v53 angleInDegrees];
      v61 = [v62 numberWithFloat:?];
    }

    [_currentState setYawTargetAngle:v61];
    if (!motionType2)
    {
    }

    motionType3 = [v53 motionType];
    if (motionType3 == 1)
    {
      v64 = MEMORY[0x277CCABB0];
      [v53 angleInDegrees];
      v65 = [v64 numberWithFloat:?];
    }

    else
    {
      v65 = 0;
    }

    [_currentState setPitchTargetAngle:v65];
    if (motionType3 == 1)
    {
    }

    debugData = [v53 debugData];
    [_currentState setDebugData:debugData];

    bodyPoseFrameState = [v53 bodyPoseFrameState];
    [_currentState setBodyPoseFrameState:bodyPoseFrameState];

    yawTargetAngle = [_currentState yawTargetAngle];
    if (yawTargetAngle)
    {
      yawAngleCapturedPoses = [_currentState yawAngleCapturedPoses];
      yawTargetAngle2 = [_currentState yawTargetAngle];
      v71 = [yawAngleCapturedPoses objectForKey:yawTargetAngle2];
      v72 = v71 == 0;

      if (v72)
      {
        v73 = __VGLogSharedInstance();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          yawTargetAngle3 = [_currentState yawTargetAngle];
          *v165 = 134218242;
          *&v165[4] = v13;
          *&v165[12] = 2112;
          *&v165[14] = yawTargetAngle3;
          _os_log_impl(&dword_270F06000, v73, OS_LOG_TYPE_DEBUG, " Frame#%zu reported target angle %@ (yaw) through selection state is not present in keys of yaw captured poses dictionary ", v165, 0x16u);
        }
      }
    }

    pitchTargetAngle = [_currentState pitchTargetAngle];
    if (pitchTargetAngle)
    {
      pitchAngleCapturedPoses = [_currentState pitchAngleCapturedPoses];
      pitchTargetAngle2 = [_currentState pitchTargetAngle];
      v78 = [pitchAngleCapturedPoses objectForKey:pitchTargetAngle2];
      v79 = v78 == 0;

      if (v79)
      {
        v80 = __VGLogSharedInstance();
        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
        {
          pitchTargetAngle3 = [_currentState pitchTargetAngle];
          *v165 = 134218242;
          *&v165[4] = v13;
          *&v165[12] = 2112;
          *&v165[14] = pitchTargetAngle3;
          _os_log_impl(&dword_270F06000, v80, OS_LOG_TYPE_DEBUG, " Frame#%zu reported target angle %@ (pitch) through selection state is not present in keys of pitch captured poses dictionary ", v165, 0x16u);
        }
      }
    }

    allPoseSelectors = [(VGFaceFittingFrameSelector *)selfCopy allPoseSelectors];
    v83 = [(VGFaceFittingFrameSelector *)selfCopy posesFromSelectors:allPoseSelectors];
    [_currentState setTronPoses:v83];

    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    poseSelector = selfCopy->_poseSelector;
    v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&poseSelector count:1];
    v85 = [(VGFaceFittingFrameSelector *)selfCopy posesFromSelectors:v84];

    v86 = [v85 countByEnumeratingWithState:&v108 objects:v164 count:16];
    if (v86)
    {
      v87 = *v109;
      while (2)
      {
        for (k = 0; k != v86; ++k)
        {
          if (*v109 != v87)
          {
            objc_enumerationMutation(v85);
          }

          v89 = *(*(&v108 + 1) + 8 * k);
          if ([v89 frontPose])
          {
            [_currentState setCapturedFrontPose:v89];
            v90 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v89, 0}];
            [_currentState setHairPoses:v90];

            goto LABEL_105;
          }
        }

        v86 = [v85 countByEnumeratingWithState:&v108 objects:v164 count:16];
        if (v86)
        {
          continue;
        }

        break;
      }
    }

LABEL_105:

    if ([_currentState completed])
    {
      selfCopy->_selectionCompleted = 1;
    }

    v25 = _currentState;

    goto LABEL_108;
  }

  [(VGFaceFittingFrameSelector *)selfCopy checkMotionBlurFilter:v99 frameTimestampMS:v13];
  if (!LODWORD(buf.value))
  {

    goto LABEL_49;
  }

  value = buf.value;
  v123 = *&buf.timescale;
  epoch = buf.epoch;
  v125 = v160;
  [VGFaceFittingFrameSelector addPoseWithCaptureData:tracking:externalTracking:metricsData:]::$_0::operator()(v158, _currentState, &value);
  v25 = _currentState;

LABEL_109:
  v28 = v97;
LABEL_110:

LABEL_111:
LABEL_112:

LABEL_113:
  __91__VGFaceFittingFrameSelector_addPoseWithCaptureData_tracking_externalTracking_metricsData___block_invoke();

  v91 = *MEMORY[0x277D85DE8];

  return v25;
}

void __91__VGFaceFittingFrameSelector_addPoseWithCaptureData_tracking_externalTracking_metricsData___block_invoke()
{
  v0 = VGLogVGFaceFittingFrameSelector();
  if (os_signpost_enabled(v0))
  {
    *v1 = 0;
    _os_signpost_emit_with_name_impl(&dword_270F06000, v0, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AddPoseWithCaptureData", &unk_270FBF062, v1, 2u);
  }
}

- (void)addPoseWithCaptureData:tracking:externalTracking:metricsData:
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (*self)
  {
    v6 = *self + 8 * *a3;
    ++*(v6 + 16);
  }

  v7 = [VGFrameRejectionState alloc];
  v18 = *a3;
  v8 = *(a3 + 1);
  v9 = *(a3 + 2);
  v10 = *(a3 + 3);
  v19 = v8;
  v20 = v9;
  v11 = v10;
  v21 = v11;
  if (v7)
  {
    v7 = [(VGFrameRejectionState *)v7 initFromInternalRejectionState:&v18];
  }

  else
  {
  }

  [v5 setRejectionState:v7];

  v12 = __VGLogSharedInstance();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = self[1];
    vg::frame_selection::frameRejectionReasonToString(*a3, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v15 = *(a3 + 1);
    *buf = 134218498;
    v23 = v13;
    v24 = 2080;
    v25 = p_p;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_270F06000, v12, OS_LOG_TYPE_DEBUG, " Frame#%zu rejection state: %s description: %@ ", buf, 0x20u);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)posesFromSelectors:(id)selectors
{
  v42 = *MEMORY[0x277D85DE8];
  selectorsCopy = selectors;
  array = [MEMORY[0x277CBEB18] array];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = selectorsCopy;
  v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v5)
  {
    v23 = *v36;
    do
    {
      v24 = v5;
      for (i = 0; i != v24; ++i)
      {
        if (*v36 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v35 + 1) + 8 * i);
        yawResults = [v7 yawResults];
        pitchResults = [v7 pitchResults];
        v26 = [yawResults keysSortedByValueUsingComparator:&__block_literal_global_311];
        v25 = [pitchResults keysSortedByValueUsingComparator:&__block_literal_global_313];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = v26;
        v11 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
        if (v11)
        {
          v12 = *v32;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v32 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = [yawResults objectForKey:*(*(&v31 + 1) + 8 * j)];
              [array addObject:v14];
            }

            v11 = [v10 countByEnumeratingWithState:&v31 objects:v40 count:16];
          }

          while (v11);
        }

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v15 = v25;
        v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
        if (v16)
        {
          v17 = *v28;
          do
          {
            for (k = 0; k != v16; ++k)
            {
              if (*v28 != v17)
              {
                objc_enumerationMutation(v15);
              }

              v19 = [pitchResults objectForKey:*(*(&v27 + 1) + 8 * k)];
              [array addObject:v19];
            }

            v16 = [v15 countByEnumeratingWithState:&v27 objects:v39 count:16];
          }

          while (v16);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v5);
  }

  v20 = *MEMORY[0x277D85DE8];

  return array;
}

uint64_t __49__VGFaceFittingFrameSelector_posesFromSelectors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  [v4 selectedAngle];
  v7 = [v6 numberWithFloat:?];
  v8 = MEMORY[0x277CCABB0];
  [v5 selectedAngle];
  v9 = [v8 numberWithFloat:?];
  v10 = [v7 compare:v9];

  return v10;
}

uint64_t __49__VGFaceFittingFrameSelector_posesFromSelectors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = MEMORY[0x277CCABB0];
  [v4 selectedAngle];
  v7 = [v6 numberWithFloat:?];
  v8 = MEMORY[0x277CCABB0];
  [v5 selectedAngle];
  v9 = [v8 numberWithFloat:?];
  v10 = [v7 compare:v9];

  return v10;
}

- (id)enrolledPoses
{
  v30 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  if ([(VGFrameSelector *)self->_poseSelector completedYaw])
  {
    selectedYawValidPoses = [(VGFrameSelector *)self->_poseSelector selectedYawValidPoses];
    allValues = [selectedYawValidPoses allValues];
    [array addObjectsFromArray:allValues];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    selectedYawValidPoses2 = [(VGFrameSelector *)self->_poseSelector selectedYawValidPoses];
    allValues2 = [selectedYawValidPoses2 allValues];

    v8 = [allValues2 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(allValues2);
          }

          v11 = *(*(&v24 + 1) + 8 * i);
          if ([v11 frontPose])
          {
            [array addObject:v11];
          }
        }

        v8 = [allValues2 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v8);
    }
  }

  if ([(VGFrameSelector *)self->_poseSelector completedPitch])
  {
    selectedPitchValidPoses = [(VGFrameSelector *)self->_poseSelector selectedPitchValidPoses];
    allValues3 = [selectedPitchValidPoses allValues];
    [array addObjectsFromArray:allValues3];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v14 = array;
  v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v15)
  {
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v14);
        }

        [*(*(&v20 + 1) + 8 * j) setTrackingData:{self->_facekitSemantics, v20}];
      }

      v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)finish
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_selectionCompleted)
  {
    neutralSelectors = [(VGFaceFittingFrameSelector *)self neutralSelectors];
    v4 = [(VGFaceFittingFrameSelector *)self posesFromSelectors:neutralSelectors];

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    enrolledPoses = v4;
    v6 = [enrolledPoses countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = *v12;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(enrolledPoses);
          }

          [*(*(&v11 + 1) + 8 * i) setTrackingData:{self->_facekitSemantics, v11}];
        }

        v6 = [enrolledPoses countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v6);
    }
  }

  else
  {
    enrolledPoses = [(VGFaceFittingFrameSelector *)self enrolledPoses];
  }

  v9 = *MEMORY[0x277D85DE8];

  return enrolledPoses;
}

- (void)addPoseWithCaptureData:tracking:externalTracking:metricsData:.cold.1()
{
  if (__cxa_guard_acquire(_MergedGlobals))
  {
    xmmword_280870BC0 = xmmword_270FA6CF0;
    unk_280870BD0 = xmmword_270FA6D00;
    xmmword_280870BE0 = xmmword_270FA6D10;
    unk_280870BF0 = xmmword_270FA6D20;
    __cxa_guard_release(_MergedGlobals);
  }
}

@end