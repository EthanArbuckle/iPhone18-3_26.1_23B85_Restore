@interface RepairWeightsGenerator
- ($43C834F0531B50B92CAF4577069D180C)configuration;
- (RepairWeightsGenerator)initWithConfiguration:(id *)configuration withToolBox:(id)box homographyHandle:(id)handle imageDimensions:(id)dimensions tuningParameters:(id)parameters;
- (__CVBuffer)temporalBufferForInput:(__CVBuffer *)input frameIndex:(int64_t)index;
- (float)gradMaxtoBaseWeight:(id *)weight GG_Index:(float)index Gradient:;
- (id)computeBlendingWeightsYUVInputBuf:(int32x4_t)buf frRef0Buf:(__n128)ref0Buf frRef1Buf:(int32x4_t)ref1Buf hmgrphy0:(int32x4_t)hmgrphy0 hmgrphy1:(__n128)hmgrphy1 frmIdx:(uint64_t)idx metadataBuf:(__CVBuffer *)metadataBuf meta_HW:(id)self0 metaTPlusOrMinus1_HW:(id)self1 metaTPlusOrMinus2_HW:(uint64_t)self2;
- (int)createStatisticsSessionWithImageDimension:(id)dimension configuration:(id *)configuration;
- (int)createTemporalBuffersWithImageDimension:(id)dimension;
- (int64_t)process:(__CVBuffer *)process info:(id)info metaContainerBuffer:(id)buffer computeBlendingWeights:(BOOL)weights futureFrames:(id *)frames metaContainerBuffer_HW:(id *)w;
- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)frame info:(id)info meta:(id)meta meta_HW:(id *)w index:(signed __int16)index;
- (int64_t)updateQueuesWithTwoFutureFrames:(id *)frames atBaseIndex:(signed __int16)index;
- (void)_computeBlendingWeightsYUVInputBuf:(__CVBuffer *)buf frRefTPlusOrMinus1Buf:(__CVBuffer *)minus1Buf frRefTPlusOrMinus2Buf:(__CVBuffer *)minus2Buf meta:(id)meta metaTPlusOrMinus1:(id)minus1 metaTPlusOrMinus2:(id)minus2 meta_HW:(id *)w metaTPlusOrMinus1_HW:(id *)self0 metaTPlusOrMinus2_HW:(id *)self1 info:(id)self2 infoTPlusOrMinus1:(id)self3 infoTPlusOrMinus2:(id)self4 config:(id *)self5 usePastAsRef:(BOOL)self6;
- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index;
- (void)computeBlendingWeights;
- (void)computeBlendingWeightsWithFuture;
- (void)dealloc;
- (void)reset;
- (void)setConfiguration:(id *)configuration;
@end

@implementation RepairWeightsGenerator

- (int)createStatisticsSessionWithImageDimension:(id)dimension configuration:(id *)configuration
{
  var1 = dimension.var1;
  v7 = [[NSMutableDictionary alloc] initWithCapacity:2];
  [v7 setObject:&off_49FE8 forKey:kVTDeghostingSessionCreationOption_MaximumReferenceFrameDistance];
  if (self->_useGPUHWModel)
  {
    v8 = [NSNumber numberWithBool:1];
    [v7 setObject:v8 forKey:@"FlagHW_GPU"];
    v9 = __VTDeghostingSessionCreateForGeneratingStatistics(kCFAllocatorDefault, v7, *&dimension, var1, &self->_statisticsSession);
  }

  else
  {
    v9 = VTDeghostingSessionCreateForGeneratingStatistics();
    statisticsSession = self->_statisticsSession;
    if (statisticsSession)
    {
      propertyValueOut = 0;
      v11 = VTSessionCopyProperty(statisticsSession, kVTDeghostingPropertyKey_BorderPixelBufferAttributes, 0, &propertyValueOut);
      if (v11)
      {
        v9 = v11;
        [RepairWeightsGenerator createStatisticsSessionWithImageDimension:configuration:];
      }

      else
      {
        v12 = CVPixelBufferPoolCreate(kCFAllocatorDefault, 0, propertyValueOut, &self->_borderPixelBufferPool);
        CFRelease(propertyValueOut);
        if (v12)
        {
          [RepairWeightsGenerator createStatisticsSessionWithImageDimension:configuration:];
          v9 = -1;
        }

        else
        {
          valuePtr = 80;
          v13 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
          if (v13)
          {
            v14 = v13;
            v9 = VTSessionSetProperty(self->_statisticsSession, kVTDeghostingPropertyKey_Priority, v13);
            CFRelease(v14);
            if (v9)
            {
              [RepairWeightsGenerator createStatisticsSessionWithImageDimension:configuration:];
            }
          }

          else
          {
            [RepairWeightsGenerator createStatisticsSessionWithImageDimension:configuration:];
            v9 = 0;
          }
        }
      }
    }

    else
    {
      [RepairWeightsGenerator createStatisticsSessionWithImageDimension:configuration:];
    }
  }

  return v9;
}

- (RepairWeightsGenerator)initWithConfiguration:(id *)configuration withToolBox:(id)box homographyHandle:(id)handle imageDimensions:(id)dimensions tuningParameters:(id)parameters
{
  boxCopy = box;
  handleCopy = handle;
  parametersCopy = parameters;
  v36.receiver = self;
  v36.super_class = RepairWeightsGenerator;
  v15 = [(RepairWeightsGenerator *)&v36 init];
  v16 = v15;
  if (!v15)
  {
    [RepairWeightsGenerator initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:];
LABEL_22:
    v34 = 0;
    goto LABEL_16;
  }

  v17 = *&configuration->var0.var0;
  v18 = *&configuration->var0.var7;
  v19 = *&configuration->var1.var4;
  *(v15 + 392) = *&configuration->var1.var0;
  *(v15 + 408) = v19;
  *(v15 + 360) = v17;
  *(v15 + 376) = v18;
  if (boxCopy)
  {
    v20 = boxCopy;
  }

  else
  {
    v20 = objc_alloc_init(GGMMetalToolBox);
  }

  v21 = *(v16 + 1);
  *(v16 + 1) = v20;

  if (handleCopy)
  {
    v22 = handleCopy;
  }

  else
  {
    v22 = objc_alloc_init(CalcHomography);
  }

  v23 = *(v16 + 2);
  *(v16 + 2) = v22;

  v24 = [parametersCopy objectForKeyedSubscript:@"hwMode"];

  if (!v24)
  {
    [RepairWeightsGenerator initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:];
    goto LABEL_22;
  }

  *(v16 + 232) = configuration->var1.var11 == 0;
  v25 = [parametersCopy objectForKeyedSubscript:@"WaitForRepairCompletion"];
  *(v16 + 248) = [v25 BOOLValue];

  v26 = dispatch_queue_create("AVE Scheduling Queue", 0);
  v27 = *(v16 + 42);
  *(v16 + 42) = v26;

  if ([v16 createStatisticsSessionWithImageDimension:dimensions configuration:configuration])
  {
    [RepairWeightsGenerator initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:];
    goto LABEL_22;
  }

  [v16 reset];
  getDevice = [*(v16 + 1) getDevice];
  v29 = [getDevice newBufferWithLength:10192 options:0];
  v30 = *(v16 + 25);
  *(v16 + 25) = v29;

  if (!*(v16 + 25))
  {
    [RepairWeightsGenerator initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:];
    goto LABEL_22;
  }

  *(v16 + 208) = 0;
  v31 = [parametersCopy objectForKeyedSubscript:@"ForceLosslessFormat"];
  *(v16 + 272) = [v31 BOOLValue];

  if (*(v16 + 272) == 1 && [v16 createTemporalBuffersWithImageDimension:dimensions])
  {
    [RepairWeightsGenerator initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:];
    goto LABEL_22;
  }

  if (*(v16 + 248) == 1)
  {
    v32 = dispatch_semaphore_create(0);
    v33 = *(v16 + 30);
    *(v16 + 30) = v32;
  }

  *(v16 + 16) = xmmword_43720;
  [v16 setupProcessingTimeReport:parametersCopy];
  v34 = v16;
LABEL_16:

  return v34;
}

- (int)createTemporalBuffersWithImageDimension:(id)dimension
{
  if (VTPixelTransferSessionCreate(kCFAllocatorDefault, &self->_pixelTransferSession))
  {
    [RepairWeightsGenerator createTemporalBuffersWithImageDimension:];
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
        [RepairWeightsGenerator createTemporalBuffersWithImageDimension:];
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

    [RepairWeightsGenerator createTemporalBuffersWithImageDimension:];
  }

  return -1;
}

- (void)reset
{
  self->_roiClusterCnt = 0;
  self->_frameIndexInVideo = 0;
  self->_consecutiveTemporalRepairFrameCnt = 0;
  *&self->_greenGhostFrameIndex = xmmword_43720;
}

- (void)dealloc
{
  for (i = 24; i != 64; i += 8)
  {
    v4 = *(&self->super.isa + i);
    if (v4)
    {
      CFRelease(v4);
      *(&self->super.isa + i) = 0;
    }
  }

  statisticsSession = self->_statisticsSession;
  if (statisticsSession)
  {
    if (!self->_useGPUHWModel)
    {
      VTDeghostingSessionInvalidate();
      statisticsSession = self->_statisticsSession;
    }

    CFRelease(statisticsSession);
    self->_statisticsSession = 0;
  }

  borderPixelBufferPool = self->_borderPixelBufferPool;
  if (borderPixelBufferPool)
  {
    CVPixelBufferPoolRelease(borderPixelBufferPool);
  }

  pixelTransferSession = self->_pixelTransferSession;
  if (pixelTransferSession)
  {
    VTPixelTransferSessionInvalidate(pixelTransferSession);
    CFRelease(self->_pixelTransferSession);
  }

  for (j = 0; j != 3; ++j)
  {
    CVPixelBufferRelease(self->_temporalRepair10BitBuffers[j]);
    CVPixelBufferRelease(self->_temporalRepair8BitBuffers[j]);
  }

  v9.receiver = self;
  v9.super_class = RepairWeightsGenerator;
  [(RepairWeightsGenerator *)&v9 dealloc];
}

- (float)gradMaxtoBaseWeight:(id *)weight GG_Index:(float)index Gradient:
{
  v6 = (&weight->var0 + 16 * v4);
  v7 = v6[12] - v6[10];
  v8 = v6[13] - v6[11];
  result = 0.0;
  if (v7 <= 125.0 && v8 <= 125.0)
  {
    result = 0.0;
    v11 = fminf(fmaxf(((v7 * v8) + -900.0) / 2700.0, 0.0), 1.0);
    if (v11 != 1.0)
    {
      v12 = v11;
      v13 = v5 / 255.0 * 0.0416666679;
      *&v12 = (v12 * -0.9 + 1.0) * 0.03;
      return 1.0 - fminf(fmaxf(v13 / *&v12, 0.0), 1.0);
    }
  }

  return result;
}

- (__CVBuffer)temporalBufferForInput:(__CVBuffer *)input frameIndex:(int64_t)index
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(input);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(kCFAllocatorDefault, PixelFormatType);
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:kCVPixelFormatBitsPerComponent];
  intValue = [v8 intValue];

  v10 = 288;
  if (intValue == 8)
  {
    v10 = 312;
  }

  v11 = *(&self->super.isa + 8 * (index % 3) + v10);

  return v11;
}

- (id)computeBlendingWeightsYUVInputBuf:(int32x4_t)buf frRef0Buf:(__n128)ref0Buf frRef1Buf:(int32x4_t)ref1Buf hmgrphy0:(int32x4_t)hmgrphy0 hmgrphy1:(__n128)hmgrphy1 frmIdx:(uint64_t)idx metadataBuf:(__CVBuffer *)metadataBuf meta_HW:(id)self0 metaTPlusOrMinus1_HW:(id)self1 metaTPlusOrMinus2_HW:(uint64_t)self2
{
  bufCopy = buf;
  ref0BufCopy = ref0Buf;
  ref1BufCopy = ref1Buf;
  hmgrphy0Copy = hmgrphy0;
  hmgrphy1Copy = hmgrphy1;
  v42 = a2;
  v21 = a13;
  kdebug_trace();
  kdebug_trace();
  [self startTimer];
  contents = [v21 contents];

  if (*(self + 184) != *(self + 264) + 1)
  {
    *(self + 256) = 0;
  }

  if (*(self + 272) == 1)
  {
    v23 = [self temporalBufferForInput:metadataBuf frameIndex:*(self + 256)];
    VTPixelTransferSessionTransferImage(*(self + 280), metadataBuf, v23);
    metadataBuf = v23;
  }

  VTDeghostingFrame = createVTDeghostingFrame(metadataBuf, (contents + 20), *contents, 0, a14[321], 0);
  ReferenceFrameArray = createReferenceFrameArray();
  v26 = *(self + 256);
  if (v26 >= 2)
  {
    if ((*(self + 232) & 1) == 0)
    {
      bufCopy.i32[2] = ref0Buf.n128_i32[1];
      v42.i32[2] = ref0Buf.n128_u32[0];
      v42.i64[0] = vzip1q_s32(a2, buf).u64[0];
      ref0BufCopy.n128_u32[2] = ref0Buf.n128_u32[2];
      bufCopy.i64[0] = vtrn2q_s32(a2, buf).u64[0];
      ref0BufCopy.n128_u64[0] = vzip1q_s32(vdupq_laneq_s32(a2, 2), vdupq_laneq_s32(buf, 2)).u64[0];
      hmgrphy0Copy.i32[2] = hmgrphy1.n128_i32[1];
      ref1BufCopy.i32[2] = hmgrphy1.n128_u32[0];
      ref1BufCopy.i64[0] = vzip1q_s32(ref1Buf, hmgrphy0).u64[0];
      hmgrphy1Copy.n128_u32[2] = hmgrphy1.n128_u32[2];
      hmgrphy0Copy.i64[0] = vtrn2q_s32(ref1Buf, hmgrphy0).u64[0];
      hmgrphy1Copy.n128_u64[0] = vzip1q_s32(vdupq_laneq_s32(ref1Buf, 2), vdupq_laneq_s32(hmgrphy0, 2)).u64[0];
    }

    if (*(self + 272) == 1)
    {
      w = [self temporalBufferForInput:w frameIndex:v26 - 1];
      hW = [self temporalBufferForInput:hW frameIndex:*(self + 256) - 2];
    }

    v27 = createVTDeghostingFrame(w, a14 + 4, *a14, v42.i8, 0, 0);
    CFArrayAppendValue(ReferenceFrameArray, v27);
    CFRelease(v27);
    v28 = createVTDeghostingFrame(hW, a14 + 1028, *(a14 + 1), ref1BufCopy.i8, 0, 0);
    CFArrayAppendValue(ReferenceFrameArray, v28);
    CFRelease(v28);
    v26 = *(self + 256);
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  *(a14 + 2576) = 1;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = __167__RepairWeightsGenerator_computeBlendingWeightsYUVInputBuf_frRef0Buf_frRef1Buf_hmgrphy0_hmgrphy1_frmIdx_metadataBuf_meta_HW_metaTPlusOrMinus1_HW_metaTPlusOrMinus2_HW___block_invoke;
  v38[3] = &unk_489C0;
  v38[6] = ReferenceFrameArray;
  v38[7] = Mutable;
  v38[4] = self;
  v38[5] = VTDeghostingFrame;
  v38[8] = a14;
  v38[9] = contents;
  v38[10] = v26;
  v38[11] = a15;
  v38[12] = a16;
  result = [self requestStatisticsForCurrentFrame:VTDeghostingFrame referenceFrames:ReferenceFrameArray deghostingFrameFlags:2 * (v26 == 0) options:Mutable outputHandler:v38];
  v31 = *(self + 184);
  ++*(self + 256);
  *(self + 264) = v31;
  if (*(self + 248) == 1)
  {
    return dispatch_semaphore_wait(*(self + 240), 0xFFFFFFFFFFFFFFFFLL);
  }

  return result;
}

void __167__RepairWeightsGenerator_computeBlendingWeightsYUVInputBuf_frRef0Buf_frRef1Buf_hmgrphy0_hmgrphy1_frmIdx_metadataBuf_meta_HW_metaTPlusOrMinus1_HW_metaTPlusOrMinus2_HW___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const __CFArray *a5)
{
  kdebug_trace();
  kdebug_trace();
  if (a2)
  {
    CFRelease(*(a1 + 40));
    releaseReferenceFrames(*(a1 + 48));
    CFRelease(*(a1 + 56));
    *(*(a1 + 64) + 2576) = 1;
    v8 = *(a1 + 32);
    if (*(v8 + 248) == 1)
    {
      v9 = *(v8 + 240);

      dispatch_semaphore_signal(v9);
    }
  }

  else
  {
    *(*(a1 + 64) + 2576) = 0;
    Count = CFArrayGetCount(a5);
    v32 = a5;
    if (Count >= 1)
    {
      v11 = 0;
      v12 = 0;
      v13 = kVTDeghostingBoundingBoxStatisticsKey_MaximumGradient;
      v14 = kVTDeghostingBoundingBoxStatisticsKey_MaximumTemporalDifference;
      v15 = Count & 0x7FFFFFFF;
      do
      {
        v16 = [(__CFArray *)v32 objectAtIndexedSubscript:v12];
        v17 = [v16 objectForKeyedSubscript:v13];

        [*(a1 + 32) gradMaxtoBaseWeight:*(a1 + 72) GG_Index:v12 Gradient:{objc_msgSend(v17, "intValue")}];
        *(*(a1 + 64) + 4 * v12 + 2308) = v18;
        v19 = [(__CFArray *)v32 objectAtIndexedSubscript:v12];
        v20 = [v19 objectForKeyedSubscript:v14];

        if (*(a1 + 80) < 2uLL)
        {
          *(*(a1 + 64) + 4 * v12 + 2436) = 1065353216;
        }

        else
        {
          v21 = *(a1 + 64);
          v22 = *(a1 + 72);
          v23 = v22 + v11;
          v24 = vsub_f32(*(v22 + v11 + 48), *(v22 + v11 + 40));
          v34 = 0.0;
          v25 = *(v22 + 1064);
          v26 = *(a1 + 88);
          v27 = *(a1 + 96);
          v28 = *(v23 + 56);
          v33[0] = *(v23 + 40);
          v33[1] = v28;
          getWSpatialUsingGhostMotion_PA_L(v33, v21, v25, v26 + 2436, v27 + 2436, &v34, vmul_lane_f32(v24, v24, 1).f32[0]);
          v29 = [v20 intValue] / 255.0 * 0.0009765625;
          v30 = fminf(fmaxf(v29 / 0.035, 0.0), 1.0);
          if (v34 >= v30)
          {
            v30 = v34;
          }

          *(*(a1 + 64) + 4 * v12 + 2436) = v30;
        }

        ++v12;
        v11 += 32;
      }

      while (v15 != v12);
    }

    CFRelease(*(a1 + 40));
    releaseReferenceFrames(*(a1 + 48));
    CFRelease(*(a1 + 56));
    [*(a1 + 32) reportProcessingTime];
    kdebug_trace();
    kdebug_trace();
    v31 = *(a1 + 32);
    if (*(v31 + 248))
    {
      dispatch_semaphore_signal(*(v31 + 240));
    }
  }
}

- (void)_computeBlendingWeightsYUVInputBuf:(__CVBuffer *)buf frRefTPlusOrMinus1Buf:(__CVBuffer *)minus1Buf frRefTPlusOrMinus2Buf:(__CVBuffer *)minus2Buf meta:(id)meta metaTPlusOrMinus1:(id)minus1 metaTPlusOrMinus2:(id)minus2 meta_HW:(id *)w metaTPlusOrMinus1_HW:(id *)self0 metaTPlusOrMinus2_HW:(id *)self1 info:(id)self2 infoTPlusOrMinus1:(id)self3 infoTPlusOrMinus2:(id)self4 config:(id *)self5 usePastAsRef:(BOOL)self6
{
  metaCopy = meta;
  minus1Copy = minus1;
  minus2Copy = minus2;
  infoCopy = info;
  orMinus1Copy = orMinus1;
  orMinus2Copy = orMinus2;
  if (config->var1.var1)
  {
    v25 = matrix_identity_float3x3;
    v48 = matrix_identity_float3x3.columns[1];
    v50 = matrix_identity_float3x3.columns[0];
    v46 = matrix_identity_float3x3.columns[2];
    goto LABEL_13;
  }

  if (ref)
  {
    contents = [metaCopy contents];
    v25 = *(contents + 9520);
    v48 = *(contents + 599);
    v50 = *(contents + 598);
    v46 = *(contents + 600);
    goto LABEL_13;
  }

  calcTransform = self->_calcTransform;
  if (calcTransform)
  {
    [(CalcHomography *)calcTransform ispHomographyFromMetaInfo:orMinus1Copy];
    v28 = self->_calcTransform;
    v29 = v55;
    if (v28)
    {
      [(CalcHomography *)v28 ispHomographyFromMetaInfo:orMinus2Copy];
      v29 = v55;
      v30 = v52;
      v31 = v53;
      v32 = v54;
      goto LABEL_10;
    }
  }

  else
  {
    v29.columns[2] = 0uLL;
    v29.columns[1] = 0uLL;
    v29.columns[0] = 0uLL;
  }

  v32 = 0uLL;
  v31 = 0uLL;
  v30 = 0uLL;
LABEL_10:
  v33 = 0;
  v56[0] = v30;
  v56[1] = v31;
  v56[2] = v32;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  do
  {
    *(&v57 + v33 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29.columns[0], COERCE_FLOAT(v56[v33])), v29.columns[1], *&v56[v33], 1), v29.columns[2], v56[v33], 2);
    ++v33;
  }

  while (v33 != 3);
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v34.i32[3] = 0;
  v35.i32[3] = 0;
  v49 = v35;
  v51 = v34;
  v36.i32[3] = 0;
  v47 = v36;
  v60 = __invert_f3(v29);
  v42 = v60.columns[1];
  v44 = v60.columns[0];
  v40 = v60.columns[2];
  v60.columns[1] = v49;
  v60.columns[0] = v51;
  v60.columns[2] = v47;
  v61 = __invert_f3(v60);
  v48 = v61.columns[1];
  v50 = v61.columns[0];
  v25.columns[1] = v42;
  v25.columns[0] = v44;
  v46 = v61.columns[2];
  v25.columns[2] = v40;
LABEL_13:
  v43 = *v25.columns[1].i64;
  v45 = *v25.columns[0].i64;
  v41 = *v25.columns[2].i64;
  v62 = __invert_f3(v25);
  warpPrevMetaBuffer(minus1Copy, w, 0, v62.columns[0], v62.columns[1], v62.columns[2]);
  v63.columns[1] = v48;
  v63.columns[0] = v50;
  v63.columns[2] = v46;
  v64 = __invert_f3(v63);
  warpPrevMetaBuffer(minus2Copy, w, 1, v64.columns[0], v64.columns[1], v64.columns[2]);
  [(RepairWeightsGenerator *)self computeBlendingWeightsYUVInputBuf:buf frRef0Buf:minus1Buf frRef1Buf:minus2Buf hmgrphy0:self->_frameIndexInVideo hmgrphy1:metaCopy frmIdx:w metadataBuf:v45 meta_HW:v43 metaTPlusOrMinus1_HW:v41 metaTPlusOrMinus2_HW:*v50.i64, *v48.i64, *v46.i64, hW, minus2_HW];
}

- (int64_t)updateQueuesWithTwoFutureFrames:(id *)frames atBaseIndex:(signed __int16)index
{
  indexCopy = index;
  v7 = 0;
  for (i = 1; ; i = 0)
  {
    v9 = i;
    v10 = v7 + indexCopy + 1 < 5 ? v7 + indexCopy + 1 : v7 + indexCopy - 4;
    v11 = (frames->var0 + 48 * v7);
    v12 = *v11;
    v13 = v11[1];
    v14 = [(RepairWeightsGenerator *)self updateQueuesWithInputFrame:v12 info:v13 meta:self->_dummyMetaBuf meta_HW:self->_dummyMetaBuf_HW index:v10];
    v15 = v14;
    if (v14)
    {
      break;
    }

    v7 = 1;
    if ((v9 & 1) == 0)
    {
      return v15;
    }
  }

  [RepairWeightsGenerator updateQueuesWithTwoFutureFrames:v14 atBaseIndex:v13];
  return v15;
}

- (void)cleanTwoFutureFramesInQueuesAtBaseIndex:(signed __int16)index
{
  indexCopy = index;
  inputInfoQueue = self->_inputInfoQueue;
  inputMetaQueue = self->_inputMetaQueue;
  inputFrameQueue = self->_inputFrameQueue;
  v7 = 1;
  v8 = 1;
  do
  {
    v9 = v7;
    v10 = v8 + indexCopy;
    v11 = v8 + indexCopy - 5;
    if (v10 >= 5)
    {
      LOWORD(v10) = v11;
    }

    v12 = v10;
    v13 = inputInfoQueue[v10];
    inputInfoQueue[v12] = 0;

    v14 = inputMetaQueue[v12];
    inputMetaQueue[v12] = 0;

    v15 = inputFrameQueue[v12];
    if (v15)
    {
      CFRelease(v15);
      inputFrameQueue[v12] = 0;
    }

    v7 = 0;
    v8 = 2;
  }

  while ((v9 & 1) != 0);
}

- (void)computeBlendingWeights
{
  getFrameIndexInQueue = [(RepairWeightsGenerator *)self getFrameIndexInQueue];
  inputFrameQueue = self->_inputFrameQueue;
  v5 = self->_inputFrameQueue[getFrameIndexInQueue];
  if (getFrameIndexInQueue > 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = 4;
  }

  v7 = (v6 + getFrameIndexInQueue);
  v8 = inputFrameQueue[v7];
  if (getFrameIndexInQueue <= 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = -2;
  }

  v10 = (v9 + getFrameIndexInQueue);
  v11 = inputFrameQueue[v10];
  v12 = self->_inputMetaQueue[getFrameIndexInQueue];
  v13 = self->_inputMetaQueue[v7];
  v14 = self->_inputMetaQueue[v10];
  v15 = self->_inputMetaQueue_HW[getFrameIndexInQueue];
  v16 = self->_inputMetaQueue_HW[v7];
  v17 = self->_inputMetaQueue_HW[v10];
  v18 = self->_inputInfoQueue[getFrameIndexInQueue];
  v19 = self->_inputInfoQueue[v7];
  v20 = self->_inputInfoQueue[v10];
  v21 = *&self->_configuration.internalCfg.enableColorMask;
  v24[0] = *&self->_configuration.internalCfg.clipThreshold;
  v24[1] = v21;
  v22 = *&self->_configuration.externalCfg.frameDelay;
  v24[2] = *&self->_configuration.externalCfg.lightMode;
  v24[3] = v22;
  LOBYTE(v23) = 1;
  [(RepairWeightsGenerator *)self _computeBlendingWeightsYUVInputBuf:v5 frRefTPlusOrMinus1Buf:v8 frRefTPlusOrMinus2Buf:v11 meta:v12 metaTPlusOrMinus1:v13 metaTPlusOrMinus2:v14 meta_HW:v15 metaTPlusOrMinus1_HW:v16 metaTPlusOrMinus2_HW:v17 info:v18 infoTPlusOrMinus1:v19 infoTPlusOrMinus2:v20 config:v24 usePastAsRef:v23];
}

- (void)computeBlendingWeightsWithFuture
{
  getFrameIndexInQueue = [(RepairWeightsGenerator *)self getFrameIndexInQueue];
  inputFrameQueue = self->_inputFrameQueue;
  v5 = self->_inputFrameQueue[getFrameIndexInQueue];
  v6 = getFrameIndexInQueue - 4;
  if (getFrameIndexInQueue < 4)
  {
    v6 = getFrameIndexInQueue + 1;
  }

  v7 = inputFrameQueue[v6];
  if (getFrameIndexInQueue > 2)
  {
    v8 = -3;
  }

  else
  {
    v8 = 2;
  }

  v9 = (v8 + getFrameIndexInQueue);
  v10 = inputFrameQueue[v9];
  v11 = self->_inputMetaQueue[getFrameIndexInQueue];
  v12 = self->_inputMetaQueue[v6];
  v13 = self->_inputMetaQueue[v9];
  v14 = self->_inputMetaQueue_HW[getFrameIndexInQueue];
  v15 = self->_inputMetaQueue_HW[v6];
  v16 = self->_inputMetaQueue_HW[v9];
  v17 = self->_inputInfoQueue[getFrameIndexInQueue];
  v18 = self->_inputInfoQueue[v6];
  v19 = self->_inputInfoQueue[v9];
  v20 = *&self->_configuration.internalCfg.enableColorMask;
  v23[0] = *&self->_configuration.internalCfg.clipThreshold;
  v23[1] = v20;
  v21 = *&self->_configuration.externalCfg.frameDelay;
  v23[2] = *&self->_configuration.externalCfg.lightMode;
  v23[3] = v21;
  LOBYTE(v22) = 0;
  [(RepairWeightsGenerator *)self _computeBlendingWeightsYUVInputBuf:v5 frRefTPlusOrMinus1Buf:v7 frRefTPlusOrMinus2Buf:v10 meta:v11 metaTPlusOrMinus1:v12 metaTPlusOrMinus2:v13 meta_HW:v14 metaTPlusOrMinus1_HW:v15 metaTPlusOrMinus2_HW:v16 info:v17 infoTPlusOrMinus1:v18 infoTPlusOrMinus2:v19 config:v23 usePastAsRef:v22];
}

- (int64_t)process:(__CVBuffer *)process info:(id)info metaContainerBuffer:(id)buffer computeBlendingWeights:(BOOL)weights futureFrames:(id *)frames metaContainerBuffer_HW:(id *)w
{
  infoCopy = info;
  bufferCopy = buffer;
  frameIndexInVideo = self->_frameIndexInVideo;
  var2 = frames->var2;
  v18 = frameIndexInVideo < 2 && var2 > 1;
  getFrameIndexInQueue = [(RepairWeightsGenerator *)self getFrameIndexInQueue];
  if (v18)
  {
    v20 = [(RepairWeightsGenerator *)self updateQueuesWithTwoFutureFrames:frames atBaseIndex:getFrameIndexInQueue];
    if (v20)
    {
      v22 = v20;
      [RepairWeightsGenerator process:v20 info:self metaContainerBuffer:? computeBlendingWeights:? futureFrames:? metaContainerBuffer_HW:?];
      goto LABEL_22;
    }
  }

  v21 = [(RepairWeightsGenerator *)self updateQueuesWithInputFrame:process info:infoCopy meta:bufferCopy meta_HW:w index:getFrameIndexInQueue];
  if (v21)
  {
    v22 = v21;
    [RepairWeightsGenerator process:v21 info:self metaContainerBuffer:? computeBlendingWeights:? futureFrames:? metaContainerBuffer_HW:?];
    goto LABEL_22;
  }

  if (weights)
  {
    if (var2 > 1 || frameIndexInVideo >= 2)
    {
      if (frameIndexInVideo < 2)
      {
        [(RepairWeightsGenerator *)self computeBlendingWeightsWithFuture];
      }

      else
      {
        [(RepairWeightsGenerator *)self computeBlendingWeights];
      }

      ++self->_consecutiveTemporalRepairFrameCnt;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    else
    {
      self->_consecutiveTemporalRepairFrameCnt = 0;
      if (!v18)
      {
        goto LABEL_21;
      }
    }

    [(RepairWeightsGenerator *)self cleanTwoFutureFramesInQueuesAtBaseIndex:getFrameIndexInQueue];
LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  self->_consecutiveTemporalRepairFrameCnt = 0;
  v22 = 0;
  *([bufferCopy contents] + 2168) = 1;
LABEL_22:
  ++self->_frameIndexInVideo;

  return v22;
}

uint64_t __118__RepairWeightsGenerator_requestStatisticsForCurrentFrame_referenceFrames_deghostingFrameFlags_options_outputHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 224);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  result = VTDeghostingSessionRequestStatistics2();
  if (result)
  {
    return __118__RepairWeightsGenerator_requestStatisticsForCurrentFrame_referenceFrames_deghostingFrameFlags_options_outputHandler___block_invoke_cold_1();
  }

  return result;
}

- ($43C834F0531B50B92CAF4577069D180C)configuration
{
  v3 = *&self[5].var1.var9;
  *&retstr->var0.var0 = *&self[5].var1.var2;
  *&retstr->var0.var7 = v3;
  v4 = *&self[6].var0.var10;
  *&retstr->var1.var0 = *&self[6].var0.var2;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.lightMode = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = v5;
  *&self->_configuration.internalCfg.clipThreshold = v3;
  *&self->_configuration.internalCfg.enableColorMask = v4;
}

- (int64_t)updateQueuesWithInputFrame:(__CVBuffer *)frame info:(id)info meta:(id)meta meta_HW:(id *)w index:(signed __int16)index
{
  indexCopy = index;
  infoCopy = info;
  metaCopy = meta;
  v15 = metaCopy;
  v16 = 5;
  if (frame && metaCopy)
  {
    v17 = &self->super.isa + indexCopy;
    v18 = indexCopy;
    v19 = v17[3];
    v17[3] = frame;
    CFRetain(frame);
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = (&self->super.isa + v18);
    objc_storeStrong(v20 + 13, info);
    objc_storeStrong(v20 + 8, meta);
    v16 = 0;
    v20[18] = w;
  }

  return v16;
}

- (uint64_t)createStatisticsSessionWithImageDimension:configuration:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createStatisticsSessionWithImageDimension:configuration:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)createStatisticsSessionWithImageDimension:configuration:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)createStatisticsSessionWithImageDimension:configuration:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)createStatisticsSessionWithImageDimension:configuration:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfiguration:withToolBox:homographyHandle:imageDimensions:tuningParameters:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
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
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (uint64_t)createTemporalBuffersWithImageDimension:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

- (void)updateQueuesWithTwoFutureFrames:(uint64_t)a1 atBaseIndex:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
}

- (uint64_t)process:(uint64_t)a1 info:(uint64_t)a2 metaContainerBuffer:computeBlendingWeights:futureFrames:metaContainerBuffer_HW:.cold.1(uint64_t a1, uint64_t a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  result = FigDebugAssert3();
  *(a2 + 192) = 0;
  return result;
}

- (uint64_t)process:(uint64_t)a1 info:(uint64_t)a2 metaContainerBuffer:computeBlendingWeights:futureFrames:metaContainerBuffer_HW:.cold.2(uint64_t a1, uint64_t a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  result = FigDebugAssert3();
  *(a2 + 192) = 0;
  return result;
}

- (uint64_t)requestStatisticsForCurrentFrame:referenceFrames:deghostingFrameFlags:options:outputHandler:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

uint64_t __118__RepairWeightsGenerator_requestStatisticsForCurrentFrame_referenceFrames_deghostingFrameFlags_options_outputHandler___block_invoke_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0();
  return FigDebugAssert3();
}

@end