@interface MitigationHW
- (MitigationHW)initWithimageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (__CVBuffer)temporalBufferForInput:(__CVBuffer *)input frameIndex:(int64_t)index;
- (int)createRepairSessionWithImageDimension:(id)dimension;
- (int)createTemporalBuffersWithImageDimension:(id)dimension;
- (void)combineHWWeights:(id *)weights withGPUWeights:(id *)uWeights;
- (void)dealloc;
- (void)spatialTemporalRepairThenFuseInplaceYUVInputBuf:(__CVBuffer *)buf frmIdx:(unint64_t)idx frRef0Buf:(__CVBuffer *)ref0Buf frRef1Buf:(__CVBuffer *)ref1Buf metaBuf:(id)metaBuf ref0MetaBuf:(id)ref0MetaBuf ref1MetaBuf:(id)ref1MetaBuf metaBufHW:(id *)self0 info:(id)self1 infoTPlusOrMinus1:(id)self2 infoTPlusOrMinus2:(id)self3 usePastAsRef:(BOOL)self4;
@end

@implementation MitigationHW

- (MitigationHW)initWithimageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v19.receiver = self;
  v19.super_class = MitigationHW;
  v7 = [(MitigationHW *)&v19 init];
  v8 = objc_alloc_init(CalcHomography);
  v9 = *(v7 + 1);
  *(v7 + 1) = v8;

  v10 = [parametersCopy objectForKeyedSubscript:@"UseGPUHWModel"];
  v7[24] = [v10 BOOLValue];

  v11 = [parametersCopy objectForKeyedSubscript:@"WaitForRepairCompletion"];
  v7[25] = [v11 BOOLValue];

  *(v7 + 40) = xmmword_43720;
  v12 = [parametersCopy objectForKeyedSubscript:@"ForceLosslessFormat"];
  v7[56] = [v12 BOOLValue];

  if (v7[56] == 1 && [v7 createTemporalBuffersWithImageDimension:dimensions])
  {
    [MitigationHW initWithimageDimensions:tuningParameters:];
    goto LABEL_12;
  }

  if (v7[25] == 1)
  {
    v13 = dispatch_semaphore_create(0);
    v14 = *(v7 + 4);
    *(v7 + 4) = v13;
  }

  if ([v7 createRepairSessionWithImageDimension:dimensions])
  {
    [MitigationHW initWithimageDimensions:tuningParameters:];
LABEL_12:
    v17 = 0;
    goto LABEL_8;
  }

  v15 = [parametersCopy objectForKeyedSubscript:@"hwMode"];
  bOOLValue = [v15 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    [MitigationHW initWithimageDimensions:tuningParameters:];
    goto LABEL_12;
  }

  [v7 setupProcessingTimeReport:parametersCopy];
  v17 = v7;
LABEL_8:

  return v17;
}

- (int)createTemporalBuffersWithImageDimension:(id)dimension
{
  if (VTPixelTransferSessionCreate(kCFAllocatorDefault, &self->_pixelTransferSession))
  {
    [MitigationHW createTemporalBuffersWithImageDimension:];
  }

  else
  {
    temporalRepair8BitBuffers = self->_temporalRepair8BitBuffers;
    v5 = 3;
    while (1)
    {
      PixelBuffer = CreatePixelBuffer();
      *(temporalRepair8BitBuffers - 3) = PixelBuffer;
      if (!PixelBuffer)
      {
        [MitigationHW createTemporalBuffersWithImageDimension:];
        return -1;
      }

      v7 = CreatePixelBuffer();
      *temporalRepair8BitBuffers = v7;
      if (!v7)
      {
        break;
      }

      ++temporalRepair8BitBuffers;
      if (!--v5)
      {
        return 0;
      }
    }

    [MitigationHW createTemporalBuffersWithImageDimension:];
  }

  return -1;
}

- (int)createRepairSessionWithImageDimension:(id)dimension
{
  var1 = dimension.var1;
  v6 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v6 setObject:&off_49FD0 forKey:kVTDeghostingSessionCreationOption_MaximumReferenceFrameDistance];
  if (self->_useGPUHWModel)
  {
    [v6 setObject:&__kCFBooleanTrue forKey:@"FlagHW_GPU"];
    v7 = __VTDeghostingSessionCreateForRepairingImages(0, v6, *&dimension, var1, &self->_repairSession);
  }

  else
  {
    v7 = VTDeghostingSessionCreateForRepairingImages();
    if (self->_repairSession)
    {
      valuePtr = 80;
      v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
      if (v8)
      {
        v9 = v8;
        v7 = VTSessionSetProperty(self->_repairSession, kVTDeghostingPropertyKey_Priority, v8);
        CFRelease(v9);
        if (v7)
        {
          [MitigationHW createRepairSessionWithImageDimension:];
        }
      }

      else
      {
        [MitigationHW createRepairSessionWithImageDimension:];
      }
    }

    else
    {
      [MitigationHW createRepairSessionWithImageDimension:];
    }
  }

  return v7;
}

- (void)dealloc
{
  repairSession = self->_repairSession;
  if (repairSession)
  {
    if (!self->_useGPUHWModel)
    {
      VTDeghostingSessionInvalidate();
      repairSession = self->_repairSession;
    }

    CFRelease(repairSession);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
  }

  for (i = 0; i != 3; ++i)
  {
    CVPixelBufferRelease(self->_temporalRepair10BitBuffers[i]);
    CVPixelBufferRelease(self->_temporalRepair8BitBuffers[i]);
  }

  v6.receiver = self;
  v6.super_class = MitigationHW;
  [(MitigationHW *)&v6 dealloc];
}

- (void)combineHWWeights:(id *)weights withGPUWeights:(id *)uWeights
{
  var0 = uWeights->var0;
  if (var0 >= 1)
  {
    p_var2 = &uWeights[4].var9[14].var2;
    var4 = weights->var4;
    do
    {
      v8 = *p_var2;
      if (*p_var2 >= *var4)
      {
        v8 = *var4;
      }

      *p_var2++ = v8;
      *var4++ = v8;
      --var0;
    }

    while (var0);
  }
}

- (__CVBuffer)temporalBufferForInput:(__CVBuffer *)input frameIndex:(int64_t)index
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(input);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(kCFAllocatorDefault, PixelFormatType);
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:kCVPixelFormatBitsPerComponent];
  intValue = [v8 intValue];

  v10 = 72;
  if (intValue == 8)
  {
    v10 = 96;
  }

  v11 = *(&self->super.isa + 8 * (index % 3) + v10);

  return v11;
}

- (void)spatialTemporalRepairThenFuseInplaceYUVInputBuf:(__CVBuffer *)buf frmIdx:(unint64_t)idx frRef0Buf:(__CVBuffer *)ref0Buf frRef1Buf:(__CVBuffer *)ref1Buf metaBuf:(id)metaBuf ref0MetaBuf:(id)ref0MetaBuf ref1MetaBuf:(id)ref1MetaBuf metaBufHW:(id *)self0 info:(id)self1 infoTPlusOrMinus1:(id)self2 infoTPlusOrMinus2:(id)self3 usePastAsRef:(BOOL)self4
{
  metaBufCopy = metaBuf;
  ref0MetaBufCopy = ref0MetaBuf;
  ref1MetaBufCopy = ref1MetaBuf;
  minus1Copy = minus1;
  minus2Copy = minus2;
  contents = [metaBufCopy contents];
  if (contents)
  {
    v24 = contents;
    v25 = (*contents - 32) < 0xFFE1u || buf == 0;
    v26 = v25 || ref0Buf == 0;
    if (!v26 && ref1Buf != 0)
    {
      v78 = *contents;
      v85 = minus2Copy;
      [(MitigationHW *)self startTimer];
      kdebug_trace();
      v28 = matrix_identity_float3x3.columns[0];
      v29 = matrix_identity_float3x3.columns[2];
      v109 = matrix_identity_float3x3.columns[1];
      v110 = v29;
      v105 = v28;
      v106 = v109;
      v107 = v29;
      v108 = v28;
      if (buf == ref0Buf || self->_lastFrameWithGreenGhost + 1 != idx)
      {
        self->_greenGhostFrameIndex = 0;
      }

      ref0BufCopy = ref0Buf;
      v86 = v24;
      if (ref)
      {
        contents2 = [metaBufCopy contents];
        v31 = contents2[595];
        v32 = contents2[597];
        v109 = contents2[596];
        v110 = v32;
        v33 = contents2[599];
        v105 = contents2[598];
        v106 = v33;
        v107 = contents2[600];
        v108 = v31;
        v34 = ref0MetaBufCopy;
      }

      else
      {
        v103 = 0u;
        v104 = 0u;
        valuePtr = 0u;
        v102 = 0u;
        calcTransform = self->_calcTransform;
        v36 = [minus1Copy objectForKeyedSubscript:@"MetaData"];
        if (calcTransform)
        {
          [(CalcHomography *)calcTransform ispHomographyFromMetaInfo:v36];
        }

        else
        {
          v103 = 0u;
          v104 = 0u;
          valuePtr = 0u;
          v102 = 0u;
        }

        key = v102;
        v91 = valuePtr;
        theArray = v103;
        v37 = self->_calcTransform;
        v38 = [minus2Copy objectForKeyedSubscript:@"MetaData"];
        if (v37)
        {
          [(CalcHomography *)v37 ispHomographyFromMetaInfo:v38];
        }

        else
        {
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
        }

        valuePtr = v97;
        v102 = v98;
        v103 = v99;
        v104 = v100;

        v39 = 0;
        v111[0] = v97;
        v111[1] = v98;
        v111[2] = v99;
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v40.columns[0] = v91;
        v40.columns[2] = theArray;
        v40.columns[1] = key;
        do
        {
          *(&v97 + v39 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v91, COERCE_FLOAT(*&v111[v39])), key, *v111[v39].f32, 1), theArray, v111[v39], 2);
          ++v39;
        }

        while (v39 != 3);
        v41 = v97;
        v42 = v98;
        v43 = v99;
        v41.i32[3] = 0;
        v42.i32[3] = 0;
        v82 = v42;
        v84 = v41;
        v43.i32[3] = 0;
        v80 = v43;
        v112 = __invert_f3(v40);
        v108.i32[2] = v112.columns[0].i32[2];
        v109.i32[2] = v112.columns[1].i32[2];
        v108.i64[0] = v112.columns[0].i64[0];
        v109.i64[0] = v112.columns[1].i64[0];
        v110.i32[2] = v112.columns[2].i32[2];
        v110.i64[0] = v112.columns[2].i64[0];
        v112.columns[1] = v82;
        v112.columns[0] = v84;
        v112.columns[2] = v80;
        v113 = __invert_f3(v112);
        v105.i32[2] = v113.columns[0].i32[2];
        v106.i32[2] = v113.columns[1].i32[2];
        v105.i64[0] = v113.columns[0].i64[0];
        v106.i64[0] = v113.columns[1].i64[0];
        v107.i32[2] = v113.columns[2].i32[2];
        v107.i64[0] = v113.columns[2].i64[0];
        v34 = ref0MetaBufCopy;
        v24 = v86;
      }

      v81 = minus1Copy;
      kdebug_trace();
      contents3 = [v34 contents];
      v83 = ref1MetaBufCopy;
      contents4 = [ref1MetaBufCopy contents];
      [(MitigationHW *)self combineHWWeights:w withGPUWeights:v24];
      kdebug_trace();
      bufCopy = buf;
      if (self->_forceLosslessFormat)
      {
        bufCopy = [(MitigationHW *)self temporalBufferForInput:buf frameIndex:self->_greenGhostFrameIndex];
        VTPixelTransferSessionTransferImage(self->_pixelTransferSession, buf, bufCopy);
      }

      destinationBuffer = buf;
      v76 = bufCopy;
      selfCopy = self;
      greenGhostFrameIndex = self->_greenGhostFrameIndex;
      v45 = *v24;
      theArraya = CFArrayCreateMutable(kCFAllocatorDefault, v45, &kCFTypeArrayCallBacks);
      if (v45 >= 1)
      {
        var3 = w->var3;
        v47 = (v86 + 2772);
        keya = kVTDeghostingBoundingBoxRepairOptionKey_StrongSpatialFilterWeight;
        v48 = kVTDeghostingBoundingBoxRepairOptionKey_SpatialFilterWeight;
        v49 = kVTDeghostingBoundingBoxRepairOptionKey_SpatioTemporalFilterWeight;
        v50 = kVTDeghostingBoundingBoxRepairOptionKey_EnableBlurFilter;
        do
        {
          valuePtr.f32[0] = *var3;
          v51 = 1.0;
          if (greenGhostFrameIndex >= 2)
          {
            v51 = *v47;
          }

          v97.f32[0] = v51;
          v52 = 1.0 - v47[896];
          if (w->var6)
          {
            v52 = 0.0;
          }

          v111[0].f32[0] = v52;
          Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          v54 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &valuePtr);
          CFDictionaryAddValue(Mutable, keya, v54);
          CFRelease(v54);
          v55 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, &v97);
          CFDictionaryAddValue(Mutable, v48, v55);
          CFRelease(v55);
          v56 = CFNumberCreate(kCFAllocatorDefault, kCFNumberFloatType, v111);
          CFDictionaryAddValue(Mutable, v49, v56);
          CFRelease(v56);
          CFDictionaryAddValue(Mutable, v50, kCFBooleanFalse);
          CFArrayAppendValue(theArraya, Mutable);
          CFRelease(Mutable);
          ++v47;
          ++var3;
          --v45;
        }

        while (v45);
      }

      VTDeghostingFrame = createVTDeghostingFrame(v76, (v86 + 20), *v86, 0, w->var5, theArraya);
      CFRelease(theArraya);
      ReferenceFrameArray = createReferenceFrameArray();
      if (!selfCopy->_useGPUHWModel)
      {
        v59 = vzip1q_s32(v108, v109).u64[0];
        v60 = vtrn2q_s32(v108, v109).u64[0];
        v61 = vzip1q_s32(vdupq_laneq_s32(v108, 2), vdupq_laneq_s32(v109, 2)).u64[0];
        v108.i32[2] = v110.i32[0];
        v108.i64[0] = v59;
        v109.i32[2] = v110.i32[1];
        v109.i64[0] = v60;
        v110.i64[0] = v61;
        v62 = vzip1q_s32(v105, v106).u64[0];
        v63 = vtrn2q_s32(v105, v106).u64[0];
        v64 = vzip1q_s32(vdupq_laneq_s32(v105, 2), vdupq_laneq_s32(v106, 2)).u64[0];
        v106.i32[2] = v107.i32[1];
        v105.i32[2] = v107.i32[0];
        v105.i64[0] = v62;
        v106.i64[0] = v63;
        v107.i64[0] = v64;
      }

      v65 = selfCopy->_greenGhostFrameIndex;
      v66 = ref0BufCopy;
      if (v65 < 1)
      {
        ref1MetaBufCopy = v83;
      }

      else
      {
        if (selfCopy->_forceLosslessFormat)
        {
          v66 = [(MitigationHW *)selfCopy temporalBufferForInput:ref0BufCopy frameIndex:v65 - 1];
        }

        ref1MetaBufCopy = v83;
        v67 = createVTDeghostingFrame(v66, (contents3 + 20), *contents3, v108.i8, 0, 0);
        CFArrayAppendValue(ReferenceFrameArray, v67);
        CFRelease(v67);
        v65 = selfCopy->_greenGhostFrameIndex;
        if (v65 >= 2)
        {
          if (selfCopy->_forceLosslessFormat)
          {
            ref1BufCopy = [(MitigationHW *)selfCopy temporalBufferForInput:ref1Buf frameIndex:v65 - 2];
          }

          else
          {
            ref1BufCopy = ref1Buf;
          }

          v69 = createVTDeghostingFrame(ref1BufCopy, (contents4 + 20), *contents4, v105.i8, 0, 0);
          CFArrayAppendValue(ReferenceFrameArray, v69);
          CFRelease(v69);
          v65 = selfCopy->_greenGhostFrameIndex;
        }
      }

      v70 = 2 * (v65 == 0);
      v71 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = __187__MitigationHW_spatialTemporalRepairThenFuseInplaceYUVInputBuf_frmIdx_frRef0Buf_frRef1Buf_metaBuf_ref0MetaBuf_ref1MetaBuf_metaBufHW_info_infoTPlusOrMinus1_infoTPlusOrMinus2_usePastAsRef___block_invoke;
      v95[3] = &unk_487F8;
      v95[6] = ReferenceFrameArray;
      v95[7] = v71;
      v96 = v78;
      v95[4] = selfCopy;
      v95[5] = VTDeghostingFrame;
      v72 = [(MitigationHW *)selfCopy mitigateGhostsCurrentFrame:VTDeghostingFrame referenceFrames:ReferenceFrameArray destinationBuffer:v76 deghostingFrameFlags:v70 addtionalFrameOptions:v71 outputHander:v95];
      ++selfCopy->_greenGhostFrameIndex;
      selfCopy->_lastFrameWithGreenGhost = idx;
      if (v72)
      {
        [MitigationHW spatialTemporalRepairThenFuseInplaceYUVInputBuf:v72 frmIdx:VTDeghostingFrame frRef0Buf:ReferenceFrameArray frRef1Buf:v71 metaBuf:? ref0MetaBuf:? ref1MetaBuf:? metaBufHW:? info:? infoTPlusOrMinus1:? infoTPlusOrMinus2:? usePastAsRef:?];
        minus1Copy = v81;
        minus2Copy = v85;
      }

      else
      {
        if (selfCopy->_waitForCompletion)
        {
          dispatch_semaphore_wait(selfCopy->_completionSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        }

        minus1Copy = v81;
        minus2Copy = v85;
        if (selfCopy->_forceLosslessFormat)
        {
          VTPixelTransferSessionTransferImage(selfCopy->_pixelTransferSession, v76, destinationBuffer);
        }
      }
    }
  }
}

id __187__MitigationHW_spatialTemporalRepairThenFuseInplaceYUVInputBuf_frmIdx_frRef0Buf_frRef1Buf_metaBuf_ref0MetaBuf_ref1MetaBuf_metaBufHW_info_infoTPlusOrMinus1_infoTPlusOrMinus2_usePastAsRef___block_invoke(uint64_t a1)
{
  CFRelease(*(a1 + 40));
  releaseReferenceFrames(*(a1 + 48));
  CFRelease(*(a1 + 56));
  kdebug_trace();
  v2 = *(a1 + 64);
  kdebug_trace();
  result = [*(a1 + 32) reportProcessingTime];
  v4 = *(a1 + 32);
  if (*(v4 + 25) == 1)
  {
    v5 = *(v4 + 32);

    return dispatch_semaphore_signal(v5);
  }

  return result;
}

- (uint64_t)initWithimageDimensions:tuningParameters:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithimageDimensions:tuningParameters:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithimageDimensions:tuningParameters:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createTemporalBuffersWithImageDimension:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createTemporalBuffersWithImageDimension:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createTemporalBuffersWithImageDimension:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createRepairSessionWithImageDimension:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createRepairSessionWithImageDimension:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createRepairSessionWithImageDimension:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (void)spatialTemporalRepairThenFuseInplaceYUVInputBuf:(__CFArray *)a3 frmIdx:(const void *)a4 frRef0Buf:frRef1Buf:metaBuf:ref0MetaBuf:ref1MetaBuf:metaBufHW:info:infoTPlusOrMinus1:infoTPlusOrMinus2:usePastAsRef:.cold.1(uint64_t a1, const void *a2, __CFArray *a3, const void *a4)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
  CFRelease(a2);
  releaseReferenceFrames(a3);
  CFRelease(a4);
}

@end