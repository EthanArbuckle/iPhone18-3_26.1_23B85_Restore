@interface CMIVideoDeghostingDetectionV1
- (CGPoint)bias;
- (CGPoint)reflectPoint:(CGPoint *)point pivotPoint:(CGPoint *)pivotPoint;
- (CGRect)_computeGhostBoundingBoxFromMaskUsingMax:(__CVBuffer *)max searchROI:(CGRect)i threshold:(float)threshold ghostSize:(float)size detectionScalingFactor:;
- (CMIVideoDeghostingDetectionV1)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters enableMaskRegistration:(BOOL)registration;
- (int)_compileShaders;
- (int)_computeMotionRegisteredMask:(id)mask maskPrev:(id)prev;
- (int)_extractAndCheckTuningParameters:(id)parameters;
- (int)_extractCalibrationDataFromMetadata:(id)metadata pixelBufferDimensions:(id)dimensions;
- (int)_extractCameraInfoFromMetadata:(id)metadata;
- (int)_getShapeMask:(const CGRect *)mask outputMask:(id)outputMask ghostSize:(int)size maskScalingFactor:;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (void)dealloc;
@end

@implementation CMIVideoDeghostingDetectionV1

- (CMIVideoDeghostingDetectionV1)initWithMetalContext:(id)context imageDimensions:(id)dimensions tuningParameters:(id)parameters enableMaskRegistration:(BOOL)registration
{
  contextCopy = context;
  parametersCopy = parameters;
  if (!contextCopy)
  {
    sub_17A54(self);
    goto LABEL_27;
  }

  v39.receiver = self;
  v39.super_class = CMIVideoDeghostingDetectionV1;
  v13 = [(CMIVideoDeghostingDetectionV1 *)&v39 init];
  v14 = v13;
  if (!v13)
  {
    sub_179DC();
    goto LABEL_14;
  }

  objc_storeStrong(&v13->_metalContext, context);
  objc_storeStrong(&v14->_tuningParameters, parameters);
  v14->_imageDimensions = dimensions;
  v14->_maskRegistrationEnabled = registration;
  v15 = [(CMIVideoDeghostingDetectionV1 *)v14 _extractAndCheckTuningParameters:v14->_tuningParameters];
  if (v15)
  {
    sub_174AC(v15, v14);
    goto LABEL_27;
  }

  v16 = [[VDGMetalUtilsV1 alloc] initWithMetalContext:contextCopy];
  vdgMetalUtils = v14->_vdgMetalUtils;
  v14->_vdgMetalUtils = v16;

  if (!v14->_vdgMetalUtils)
  {
    sub_1795C(v14);
    goto LABEL_27;
  }

  v18 = [[CMIVideoDeghostingBrightLightV1 alloc] initWithMetalContext:v14->_metalContext];
  greenGhostBrightLightDetection = v14->_greenGhostBrightLightDetection;
  v14->_greenGhostBrightLightDetection = v18;

  if (!v14->_greenGhostBrightLightDetection)
  {
    sub_178DC(v14);
    goto LABEL_27;
  }

  v20 = objc_alloc_init(CMIVideoDeghostingBrightLightTuningParamsV1);
  greenGhostBrightLightTuningParameters = v14->_greenGhostBrightLightTuningParameters;
  v14->_greenGhostBrightLightTuningParameters = v20;

  if (!v14->_greenGhostBrightLightTuningParameters)
  {
    sub_1785C(v14);
    goto LABEL_27;
  }

  _compileShaders = [(CMIVideoDeghostingDetectionV1 *)v14 _compileShaders];
  if (_compileShaders)
  {
    sub_1753C(_compileShaders, v14);
    goto LABEL_27;
  }

  resetState = [(CMIVideoDeghostingDetectionV1 *)v14 resetState];
  if (resetState)
  {
    sub_175CC(resetState, v14);
    goto LABEL_27;
  }

  v14->_scaleForGetShapeInputs = FigGetCFPreferenceNumberWithDefault();
  *&v14->_sensorBinningFactorVertical = 0x100000001;
  motionSampleRingBuffer = v14->_motionSampleRingBuffer;
  v14->_motionSampleRingBuffer = 0;

  v25 = vcvt_f32_s32(v14->_imageDimensions);
  __asm
  {
    FMOV            V1.2S, #0.25
    FMOV            V2.2S, #1.0
  }

  *&v14->_detectionScalingFactor[4] = vdiv_f32(vcvt_f32_s32((*&vcvt_s32_f32(vmla_f32(_D2, _D1, v25)) & 0xFFFFFFFEFFFFFFFELL)), v25);
  PixelBuffer = CreatePixelBuffer();
  v14->_detectionMask = PixelBuffer;
  if (!PixelBuffer)
  {
    sub_177DC(v14);
    goto LABEL_27;
  }

  v33 = [(FigMetalContext *)v14->_metalContext bindPixelBufferToMTL2DTexture:PixelBuffer pixelFormat:25 usage:7 plane:0];
  detectionMaskTexture = v14->_detectionMaskTexture;
  v14->_detectionMaskTexture = v33;

  if (!v14->_detectionMaskTexture)
  {
    sub_1775C(v14);
    goto LABEL_27;
  }

  if (v14->_maskRegistrationEnabled)
  {
    v35 = CreatePixelBuffer();
    v14->_detectionMaskPrev = v35;
    if (v35)
    {
      v36 = [(FigMetalContext *)v14->_metalContext bindPixelBufferToMTL2DTexture:v35 pixelFormat:25 usage:7 plane:0];
      detectionMaskPrevTexture = v14->_detectionMaskPrevTexture;
      v14->_detectionMaskPrevTexture = v36;

      if (v14->_detectionMaskPrevTexture)
      {
        goto LABEL_14;
      }

      sub_1765C(v14);
    }

    else
    {
      sub_176DC(v14);
    }

LABEL_27:
    v14 = 0;
  }

LABEL_14:

  return v14;
}

- (void)dealloc
{
  [(CMIVideoDeghostingDetectionV1 *)self finishProcessing];
  [(CMIVideoDeghostingDetectionV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = CMIVideoDeghostingDetectionV1;
  [(CMIVideoDeghostingDetectionV1 *)&v3 dealloc];
}

- (int)purgeResources
{
  FigMetalDecRef();
  FigMetalDecRef();
  detectionMask = self->_detectionMask;
  if (detectionMask)
  {
    CFRelease(detectionMask);
    self->_detectionMask = 0;
  }

  detectionMaskPrev = self->_detectionMaskPrev;
  if (detectionMaskPrev)
  {
    CFRelease(detectionMaskPrev);
    self->_detectionMaskPrev = 0;
  }

  return 0;
}

- (int)_extractAndCheckTuningParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (!parametersCopy)
  {
    sub_17D68(&v26);
LABEL_19:
    v24 = v26;
    goto LABEL_10;
  }

  v6 = [parametersCopy objectForKeyedSubscript:@"GhostDetectionThreshold"];

  if (!v6)
  {
    sub_17D0C(&v26);
    goto LABEL_19;
  }

  v7 = [v5 objectForKeyedSubscript:@"MinShapeScore"];

  if (!v7)
  {
    sub_17CB0(&v26);
    goto LABEL_19;
  }

  v8 = [v5 objectForKeyedSubscript:@"GhostSize"];

  if (!v8)
  {
    sub_17C54(&v26);
    goto LABEL_19;
  }

  v9 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];

  if (!v9)
  {
    sub_17BF8(&v26);
    goto LABEL_19;
  }

  v10 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];

  if (!v10)
  {
    sub_17B9C(&v26);
    goto LABEL_19;
  }

  v11 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];

  if (!v11)
  {
    sub_17B40(&v26);
    goto LABEL_19;
  }

  v12 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];

  if (!v12)
  {
    sub_17AE4(&v26);
    goto LABEL_19;
  }

  v13 = [v5 objectForKeyedSubscript:@"GhostDetectionThreshold"];
  [v13 floatValue];
  self->_detectionThreshold = v14;

  v15 = [v5 objectForKeyedSubscript:@"MinShapeScore"];
  [v15 floatValue];
  self->_minShapeScore = v16;

  v17 = [v5 objectForKeyedSubscript:@"GhostSize"];
  self->_ghostSize = [v17 intValue];

  v18 = [v5 objectForKeyedSubscript:@"SearchRangeInPixel"];
  self->_searchRangeInPixel = [v18 intValue];

  v19 = [v5 objectForKeyedSubscript:@"ShapeScoreLambda"];
  [v19 floatValue];
  self->_shapeScoreLambda = v20;

  v21 = [v5 objectForKeyedSubscript:@"ContextScoreLambda"];
  [v21 floatValue];
  self->_contextScoreLambda = v22;

  v23 = [v5 objectForKeyedSubscript:@"ContextPaddingInPixel"];
  self->_contextPaddingInPixel = [v23 intValue];

  v24 = 0;
LABEL_10:

  return v24;
}

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::computeShapeMask" constants:0];
  v4 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v3;

  if (!self->_pipelineStates[0])
  {
    sub_17FC8(&v12);
    return v12;
  }

  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::downscaleAndCrop" constants:0];
  v6 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v5;

  if (!self->_pipelineStates[1])
  {
    sub_17F1C(&v12);
    return v12;
  }

  v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::computeShiftDilateHorizontal" constants:0];
  v8 = self->_pipelineStates[2];
  self->_pipelineStates[2] = v7;

  if (!self->_pipelineStates[2])
  {
    sub_17E70(&v12);
    return v12;
  }

  v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"videoDeghostingDetectionMaskUtilities::computeDilateVerticalMultiply" constants:0];
  v10 = self->_pipelineStates[3];
  self->_pipelineStates[3] = v9;

  if (!self->_pipelineStates[3])
  {
    sub_17DC4(&v12);
    return v12;
  }

  return 0;
}

- (int)_getShapeMask:(const CGRect *)mask outputMask:(id)outputMask ghostSize:(int)size maskScalingFactor:
{
  v6 = v5;
  outputMaskCopy = outputMask;
  v126[0] = v6;
  v124 = 0;
  v125 = 0;
  v122 = 0;
  v123 = 0;
  v120 = 0;
  v121 = 0;
  v118 = 0;
  v119 = 0;
  v117 = 0;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  x = mask->origin.x;
  y = mask->origin.y;
  width = mask->size.width;
  height = mask->size.height;
  v94 = [VDGMetalUtilsV1 getMetalFormatFor:CVPixelBufferGetPixelFormatType(self->_inputPixelBuffer)];
  if (![v94 count])
  {
    sub_183A0(&width);
LABEL_27:
    v81 = width;
    goto LABEL_21;
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_18344(&width);
    goto LABEL_27;
  }

  desc = [newTextureDescriptor desc];
  [desc setTextureType:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setPixelFormat:25];

  LODWORD(v21) = self->_scaleForGetShapeInputs;
  v22 = (mask->size.width / v21);
  desc3 = [newTextureDescriptor desc];
  [desc3 setWidth:v22];

  LODWORD(v24) = self->_scaleForGetShapeInputs;
  v25 = (mask->size.height / v24);
  desc4 = [newTextureDescriptor desc];
  [desc4 setHeight:v25];

  desc5 = [newTextureDescriptor desc];
  [desc5 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v125 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];

  v88 = v125;
  if (!v125)
  {
    sub_182D0();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metalContext allocator];
  v124 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];

  v93 = v124;
  if (!v124)
  {
    sub_1825C();
    goto LABEL_27;
  }

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metalContext allocator];
  v123 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];

  v92 = v123;
  if (!v123)
  {
    sub_181E8();
    goto LABEL_27;
  }

  v95 = commandBuffer;
  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metalContext allocator];
  v122 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];

  v91 = v122;
  if (!v122)
  {
    sub_18174();
    goto LABEL_38;
  }

  sizeCopy = size;
  metalContext = self->_metalContext;
  inputPixelBuffer = self->_inputPixelBuffer;
  v34 = [v94 objectAtIndexedSubscript:0];
  v35 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](metalContext, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", inputPixelBuffer, [v34 intValue], 1, 0);

  if (!v35)
  {
    sub_18100();
    goto LABEL_38;
  }

  maskCopy = mask;
  if (self->_scaleForGetShapeInputs >= 2)
  {
    [newTextureDescriptor setLabel:0];
    allocator6 = [(FigMetalContext *)self->_metalContext allocator];
    v37 = [allocator6 newTextureWithDescriptor:newTextureDescriptor];
    v117 = v37;

    if (v37)
    {
      v38 = self->_pipelineStates[1];
      *v39.i32 = self->_scaleForGetShapeInputs;
      v116 = vdup_lane_s32(v39, 0);
      v115 = vcvt_f32_f64(mask->origin);
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      [computeCommandEncoder setComputePipelineState:v38];
      [computeCommandEncoder setTexture:v35 atIndex:0];
      [computeCommandEncoder setTexture:v37 atIndex:1];
      [computeCommandEncoder setBytes:&v116 length:8 atIndex:0];
      [computeCommandEncoder setBytes:&v115 length:8 atIndex:1];
      threadExecutionWidth = [(MTLComputePipelineState *)v38 threadExecutionWidth];
      v86 = v38;
      v89 = v35;
      v42 = outputMaskCopy;
      v43 = [(MTLComputePipelineState *)v38 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
      width = [v37 width];
      height = [v37 height];
      v114 = 1;
      v109 = threadExecutionWidth;
      v110 = v43;
      outputMaskCopy = v42;
      v111 = 1;
      [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v109];
      v87 = computeCommandEncoder;
      [computeCommandEncoder endEncoding];
      LODWORD(v44) = self->_scaleForGetShapeInputs;
      v45 = v44;
      width = width / v45;
      height = height / v45;
      v35 = v37;

      y = 0.0;
      x = 0.0;
      goto LABEL_12;
    }

    sub_18074(v35, newTextureDescriptor, &width);
LABEL_38:
    v81 = width;
    goto LABEL_21;
  }

  v86 = 0;
  v87 = 0;
LABEL_12:
  v46 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeGradientX:v88 GradientY:v93 absGradientX:v92 absGradientY:v91 inputLumaTex:v35 roi:[VDGMetalUtilsV1 isTenBitPixelBufferFormat:?], x, y, width, height, commandBuffer];
  if (v46)
  {
    v81 = v46;
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_32:

    goto LABEL_21;
  }

  desc6 = [newTextureDescriptor desc];
  [desc6 setTextureType:2];

  desc7 = [newTextureDescriptor desc];
  [desc7 setPixelFormat:55];

  LODWORD(v49) = self->_scaleForGetShapeInputs;
  v50 = (maskCopy->size.width / v49 + 1.0);
  desc8 = [newTextureDescriptor desc];
  [desc8 setWidth:v50];

  LODWORD(v52) = self->_scaleForGetShapeInputs;
  v53 = (maskCopy->size.height / v52 + 1.0);
  desc9 = [newTextureDescriptor desc];
  [desc9 setHeight:v53];

  desc10 = [newTextureDescriptor desc];
  [desc10 setUsage:7];

  [newTextureDescriptor setLabel:0];
  allocator7 = [(FigMetalContext *)self->_metalContext allocator];
  v57 = [allocator7 newTextureWithDescriptor:newTextureDescriptor];
  v121 = v57;

  if (!v57)
  {
    fig_log_get_emitter();
    v81 = FigSignalErrorAtGM();
    goto LABEL_32;
  }

  v84 = outputMaskCopy;
  [newTextureDescriptor setLabel:0];
  allocator8 = [(FigMetalContext *)self->_metalContext allocator];
  v59 = [allocator8 newTextureWithDescriptor:newTextureDescriptor];
  v120 = v59;

  if (!v59 || ([newTextureDescriptor setLabel:0], -[FigMetalContext allocator](self->_metalContext, "allocator"), v60 = objc_claimAutoreleasedReturnValue(), v61 = objc_msgSend(v60, "newTextureWithDescriptor:", newTextureDescriptor), v119 = v61, v60, !v61))
  {
    fig_log_get_emitter();
    v81 = FigSignalErrorAtGM();

LABEL_35:
    outputMaskCopy = v84;
    goto LABEL_21;
  }

  v90 = v35;
  [newTextureDescriptor setLabel:0];
  allocator9 = [(FigMetalContext *)self->_metalContext allocator];
  v63 = [allocator9 newTextureWithDescriptor:newTextureDescriptor];
  v118 = v63;

  if (!v63)
  {
    fig_log_get_emitter();
    v81 = FigSignalErrorAtGM();

    goto LABEL_35;
  }

  v64 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v88 destinationTexture:v57 commandBuffer:commandBuffer];
  v65 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v93 destinationTexture:v59 commandBuffer:commandBuffer]| v64;
  v66 = [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v92 destinationTexture:v61 commandBuffer:commandBuffer];
  if (v65 | v66 | [(VDGMetalUtilsV1 *)self->_vdgMetalUtils computeImageIntegralSourceTexture:v91 destinationTexture:v63 commandBuffer:commandBuffer])
  {
    fig_log_get_emitter();
    v81 = FigSignalErrorAtGM();

    outputMaskCopy = v84;
  }

  else
  {
    v67 = self->_pipelineStates[0];

    computeCommandEncoder2 = [commandBuffer computeCommandEncoder];

    [computeCommandEncoder2 setComputePipelineState:v67];
    [computeCommandEncoder2 setTexture:v57 atIndex:0];
    [computeCommandEncoder2 setTexture:v59 atIndex:1];
    [computeCommandEncoder2 setTexture:v61 atIndex:2];
    [computeCommandEncoder2 setTexture:v63 atIndex:3];
    outputMaskCopy = v84;
    [computeCommandEncoder2 setTexture:v84 atIndex:4];
    scaleForGetShapeInputs = self->_scaleForGetShapeInputs;
    v96[0] = sizeCopy / scaleForGetShapeInputs;
    v96[1] = sizeCopy / scaleForGetShapeInputs;
    v97 = llroundf((sizeCopy / scaleForGetShapeInputs) * 0.33);
    v98 = sizeCopy / scaleForGetShapeInputs - v97;
    v99 = v97;
    v100 = v98;
    v101 = (sizeCopy / scaleForGetShapeInputs) >> 1;
    v102 = v101;
    size = maskCopy->size;
    v71 = size.f64[0];
    v103 = (v96[0] * v96[0]);
    v72 = size.f64[1];
    v104 = vmovn_s64(vcvtq_u64_f64(vsubq_f64(vdivq_f64(size, vdupq_lane_s64(COERCE__INT64(scaleForGetShapeInputs), 0)), vdupq_lane_s64(COERCE__INT64(v101), 0))));
    v73 = maskCopy->origin.y;
    v105 = maskCopy->origin.x / 4;
    v106 = v73 / 4;
    v126[0] = vmul_n_f32(v6, scaleForGetShapeInputs);
    v107 = vcvtad_u64_f64(1.0 / v126[0].f32[0]);
    v108 = self->_shapeScoreLambda * scaleForGetShapeInputs;
    [computeCommandEncoder2 setBytes:v96 length:60 atIndex:0];
    [computeCommandEncoder2 setBytes:v126 length:8 atIndex:1];
    threadExecutionWidth2 = [(MTLComputePipelineState *)v67 threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v67 maxTotalThreadsPerThreadgroup];
    v76 = self->_scaleForGetShapeInputs;
    v77 = (v71 / v76 + 1);
    v78 = v72 / v76;
    commandBuffer = v95;
    width = v77;
    height = (v78 + 1);
    v114 = 1;
    v109 = threadExecutionWidth2;
    v110 = maxTotalThreadsPerThreadgroup / threadExecutionWidth2;
    v111 = 1;
    [computeCommandEncoder2 dispatchThreads:&width threadsPerThreadgroup:&v109];
    [computeCommandEncoder2 endEncoding];
    if (gGMFigKTraceEnabled)
    {
      commandQueue2 = [v95 commandQueue];
      commandBuffer2 = [commandQueue2 commandBuffer];

      [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
      [commandBuffer2 addCompletedHandler:&stru_34638];
      [commandBuffer2 commit];
      [v95 addCompletedHandler:&stru_34658];
    }

    [v95 setLabel:@"VideoDeghostingV1Detection_GetShapeMask"];
    [v95 commit];
    [v95 waitUntilScheduled];

    v81 = 0;
  }

LABEL_21:
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  return v81;
}

- (int)_computeMotionRegisteredMask:(id)mask maskPrev:(id)prev
{
  maskCopy = mask;
  prevCopy = prev;
  v65 = 0;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  v62[0] = sub_A044(&self->_previousCameraInfo.quaternion.w, &self->_centerQuaternion);
  v62[1] = v11;
  v62[2] = v12;
  v62[3] = v13;
  sub_A348(v62, 0, v64);
  v60 = 0;
  *&v60 = self->_previousCameraInfo.lensPosition;
  adjustedPrincipalPoint = self->_previousCameraInfo.adjustedPrincipalPoint;
  v58 = 0;
  *&v58 = self->_lensPosition;
  v59 = self->_adjustedPrincipalPoint;
  [(CMIVideoDeghostingDetectionV1 *)self reflectPoint:&self->_prevGhostLoc pivotPoint:&self->_previousCameraInfo.adjustedPrincipalPoint, sub_A2B8(&v58, &v60, v64, v63)];
  *&v14 = v14;
  *&v15 = v15;
  v57 = 0;
  sub_A7D0(v63, &v57, &v57 + 1, *&v14, *&v15);
  v56 = vcvtq_f64_f32(v57);
  [(CMIVideoDeghostingDetectionV1 *)self reflectPoint:&v56 pivotPoint:&self->_adjustedPrincipalPoint];
  v46 = v17;
  v47 = v16;
  v18 = *&self->_detectionScalingFactor[4];
  prevGhostLoc = self->_prevGhostLoc;
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_18458(&v52);
LABEL_9:
    v43 = v52;
    goto LABEL_6;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  width = [maskCopy width];
  desc4 = [newTextureDescriptor desc];
  [desc4 setWidth:width];

  height = [maskCopy height];
  desc5 = [newTextureDescriptor desc];
  [desc5 setHeight:height];

  desc6 = [newTextureDescriptor desc];
  [desc6 setPixelFormat:25];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v30 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v31 = v65;
  v65 = v30;

  if (!v30)
  {
    sub_183FC(&v52);
    goto LABEL_9;
  }

  v32.f64[0] = v47;
  v32.f64[1] = v46;
  v55 = vcvt_f32_f64(vmulq_f64(vsubq_f64(v32, prevGhostLoc), vcvtq_f64_f32(v18)));
  v33 = self->_pipelineStates[2];
  [computeCommandEncoder setComputePipelineState:v33];
  v48 = prevCopy;
  [computeCommandEncoder setTexture:prevCopy atIndex:0];
  [computeCommandEncoder setTexture:v30 atIndex:1];
  [computeCommandEncoder setBytes:&v55 length:8 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)v33 threadExecutionWidth];
  v35 = [(MTLComputePipelineState *)v33 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v52 = [maskCopy width] >> 1;
  v53 = [maskCopy height] >> 1;
  v54 = 1;
  v49 = threadExecutionWidth;
  v50 = v35;
  v51 = 1;
  [computeCommandEncoder dispatchThreads:&v52 threadsPerThreadgroup:&v49];
  v36 = self->_pipelineStates[3];

  [computeCommandEncoder setComputePipelineState:v36];
  [computeCommandEncoder setTexture:v30 atIndex:0];
  [computeCommandEncoder setTexture:maskCopy atIndex:1];
  threadExecutionWidth2 = [(MTLComputePipelineState *)v36 threadExecutionWidth];
  v38 = [(MTLComputePipelineState *)v36 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  v39 = [maskCopy width] >> 1;
  height2 = [maskCopy height];
  v52 = v39;
  v53 = height2 >> 1;
  v54 = 1;
  v49 = threadExecutionWidth2;
  v50 = v38;
  v51 = 1;
  [computeCommandEncoder dispatchThreads:&v52 threadsPerThreadgroup:&v49];
  [computeCommandEncoder endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_34678];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_34698];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1Detection_ComputeMotion"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  v43 = 0;
  prevCopy = v48;
LABEL_6:
  FigMetalDecRef();

  return v43;
}

- (int)resetState
{
  self->_bias = CGPointZero;
  self->_confidence = 0.0;
  *&self->_shapeScore = 0;
  currentCameraInfo = self->_currentCameraInfo;
  self->_currentCameraInfo = 0;

  self->_prevGhostLoc = vdupq_n_s64(0x7FF8000000000000uLL);
  currentPortType = self->_currentPortType;
  self->_currentPortType = 0;

  previousPortType = self->_previousPortType;
  self->_previousPortType = 0;

  return 0;
}

- (CGRect)_computeGhostBoundingBoxFromMaskUsingMax:(__CVBuffer *)max searchROI:(CGRect)i threshold:(float)threshold ghostSize:(float)size detectionScalingFactor:
{
  v36 = v6;
  _S9 = threshold;
  height = i.size.height;
  width = i.size.width;
  y = i.origin.y;
  x = i.origin.x;
  v14 = CGRectNull.origin.y;
  v15 = CGRectNull.size.width;
  v40 = CGRectNull.size.height;
  if (CVPixelBufferGetPixelFormatType(max) != 1278226536)
  {
    sub_184B4();
LABEL_28:
    sizeCopy = v40;
    sizeCopy2 = v15;
    v31 = v14;
    goto LABEL_20;
  }

  if (CVPixelBufferLockBaseAddress(max, 1uLL))
  {
    sub_1852C();
    goto LABEL_28;
  }

  v38 = v15;
  v39 = v14;
  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  v16 = CGPointZero.x;
  v17 = CGPointZero.y;
  BaseAddress = CVPixelBufferGetBaseAddress(max);
  BytesPerRow = CVPixelBufferGetBytesPerRow(max);
  if (height < 1)
  {
    LOWORD(v24) = 0;
  }

  else
  {
    v20 = width;
    v21 = x + width;
    v22 = y;
    v23 = &BaseAddress[2 * (BytesPerRow >> 1) * v22];
    LOWORD(v24) = 0;
    do
    {
      if (v20 >= 1)
      {
        v25 = x;
        do
        {
          if (*&v23[2 * v25] > v24)
          {
            v24 = *&v23[2 * v25];
            v17 = v22;
            v16 = v25;
          }

          ++v25;
        }

        while (v25 < v21);
      }

      ++v22;
      v23 += 2 * (BytesPerRow >> 1);
    }

    while (v22 < y + height);
  }

  if (gGMFigKTraceEnabled == 1)
  {
    kdebug_trace();
  }

  if (CVPixelBufferUnlockBaseAddress(max, 1uLL))
  {
    sub_185AC();
LABEL_19:
    v31 = v39;
    sizeCopy = v40;
    sizeCopy2 = v38;
LABEL_20:
    v34 = CGRectNull.origin.x;
    goto LABEL_30;
  }

  __asm { FCVT            H0, S9 }

  if (v24 <= _H0)
  {
    goto LABEL_19;
  }

  v35 = (size * 0.5);
  v34 = v16 / *&v36 - v35;
  if (v34 < 0.0)
  {
    goto LABEL_19;
  }

  v31 = v17 / *(&v36 + 1) - v35;
  if (v31 < 0.0)
  {
    goto LABEL_19;
  }

  sizeCopy = size;
  if (v34 + size >= self->_imageDimensions.width)
  {
    goto LABEL_19;
  }

  sizeCopy2 = size;
  if (v31 + sizeCopy >= self->_imageDimensions.height)
  {
    goto LABEL_19;
  }

LABEL_30:
  result.size.height = sizeCopy;
  result.size.width = sizeCopy2;
  result.origin.y = v31;
  result.origin.x = v34;
  return result;
}

- (int)_extractCameraInfoFromMetadata:(id)metadata
{
  v4 = [metadata objectForKeyedSubscript:kFigCaptureStreamMetadata_PortType];
  currentPortType = self->_currentPortType;
  self->_currentPortType = v4;

  if (self->_cameraInfoByPortType || ([(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureSampleBufferProcessorOption_CameraInfoByPortType], v6 = objc_claimAutoreleasedReturnValue(), v7 = self->_cameraInfoByPortType, self->_cameraInfoByPortType = v6, v7, self->_cameraInfoByPortType))
  {
    if ([(NSString *)self->_currentPortType isEqualToString:self->_previousPortType])
    {
      LODWORD(cameraInfoByPortType) = 0;
    }

    else
    {
      cameraInfoByPortType = self->_cameraInfoByPortType;
      if (cameraInfoByPortType)
      {
        v9 = [(NSDictionary *)cameraInfoByPortType objectForKeyedSubscript:self->_currentPortType];
        currentCameraInfo = self->_currentCameraInfo;
        self->_currentCameraInfo = v9;

        v11 = [(NSDictionary *)self->_currentCameraInfo objectForKeyedSubscript:kFigCaptureCameraInfoKey_PixelSize];
        [v11 floatValue];
        v13 = v12;

        LODWORD(cameraInfoByPortType) = 0;
        v14 = 1.0;
        if (v13 > 0.0)
        {
          v14 = 1.0 / v13;
        }

        self->_pixelsPerMicron = v14;
      }
    }
  }

  else
  {
    sub_1862C(&v16);
    LODWORD(cameraInfoByPortType) = v16;
  }

  return cameraInfoByPortType;
}

- (CGPoint)reflectPoint:(CGPoint *)point pivotPoint:(CGPoint *)pivotPoint
{
  __asm { FMOV            V2.2D, #2.0 }

  v9 = vaddq_f64(vmlaq_f64(vnegq_f64(*point), _Q2, *pivotPoint), self->_bias);
  v10 = v9.f64[1];
  result.x = v9.f64[0];
  result.y = v10;
  return result;
}

- (CGPoint)bias
{
  x = self->_bias.x;
  y = self->_bias.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int)process
{
  *&self->_shapeScore = 0;
  self->_confidence = 0.0;
  detectedGhostBoundingBoxes = self->_detectedGhostBoundingBoxes;
  self->_detectedGhostBoundingBoxes = 0;
  self->_greenGhostsMaskPixelBuffer = 0;

  if (self->_inputPixelBuffer && self->_metadataDictionary)
  {
    v4 = [(CMIVideoDeghostingDetectionV1 *)self _extractCameraInfoFromMetadata:?];
    if (v4 || (v4 = [(CMIVideoDeghostingDetectionV1 *)self _extractCalibrationDataFromMetadata:self->_metadataDictionary pixelBufferDimensions:*&self->_imageDimensions]) != 0)
    {
      v15 = v4;
      fig_log_get_emitter();
      sub_4C30();
    }

    else
    {
      __dst[0] = 0.0;
      v5 = sub_9F08(self->_metadataDictionary, __dst, 0.5);
      if (!v5)
      {
        [(CMIMotionSampleRingBufferV1 *)self->_motionSampleRingBuffer computeQuaternionForTimeStamp:__dst[0]];
        self->_centerQuaternion.w = v6;
        self->_centerQuaternion.x = v7;
        self->_centerQuaternion.y = v8;
        self->_centerQuaternion.z = v9;
        sub_4C7C();
        if (v10)
        {
          sub_4C5C();
        }

        size = CGRectNull.size;
        origin = CGRectNull.origin;
        v52 = size;
        greenGhostBrightLightTuningParameters = self->_greenGhostBrightLightTuningParameters;
        if (greenGhostBrightLightTuningParameters)
        {
          [(CMIVideoDeghostingBrightLightTuningParamsV1 *)greenGhostBrightLightTuningParameters tuningParams];
        }

        else
        {
          memset(&__src[8], 0, 128);
        }

        v50 = *(&__src[8] + 4);
        v46 = vdivq_f64(self->_adjustedPrincipalPoint, vcvtq_f64_f32(vcvt_f32_s32(self->_imageDimensions)));
        if (![(CMIVideoDeghostingDetectionV1 *)self _extractLightAndGhostTilesFromMetadata:self->_metadataDictionary imageBufferDimensions:*&self->_imageDimensions clippingTuningParams:&v50 adjustedPrincipalPoint:&origin ghostSearchTile:?])
        {
          return 0;
        }

        sub_4C7C();
        if (v10)
        {
          sub_4C5C();
        }

        memset(__src, 0, 128);
        v13 = self->_greenGhostBrightLightTuningParameters;
        if (v13)
        {
          [(CMIVideoDeghostingBrightLightTuningParamsV1 *)v13 tuningParams];
          v14 = self->_greenGhostBrightLightTuningParameters;
        }

        else
        {
          v14 = 0;
        }

        *&__src[2] = vcvt_f32_f64(v46);
        memcpy(__dst, __src, sizeof(__dst));
        [(CMIVideoDeghostingBrightLightTuningParamsV1 *)v14 setTuningParams:__dst];
        sub_4C7C();
        if (v10)
        {
          sub_4C5C();
        }

        v15 = [(CMIVideoDeghostingBrightLightV1 *)self->_greenGhostBrightLightDetection greenGhostDetectionWithInputPixelBuffer:self->_inputPixelBuffer outputMask:self->_detectionMaskTexture roi:self->_greenGhostBrightLightTuningParameters tuning:*vuzp1q_s32(vcvtq_u64_f64(origin), vcvtq_u64_f64(v52)).i64];
        sub_4C7C();
        if (v10)
        {
          sub_4C5C();
        }

        if (v15)
        {
          return v15;
        }

        v16 = [(CMIVideoDeghostingDetectionV1 *)self _getShapeMask:&origin outputMask:self->_detectionMaskTexture ghostSize:self->_adjustedGhostSize maskScalingFactor:*&self->_detectionScalingFactor[4]];
        if (v16)
        {
          return v16;
        }

        x = self->_prevGhostLoc.x;
        detectionThreshold = self->_detectionThreshold;
        v19 = [CMIMotionSampleRingBufferV1 isUnitQuaternion:&self->_centerQuaternion, self->_prevGhostLoc.y];
        v20 = [CMIMotionSampleRingBufferV1 isUnitQuaternion:&self->_previousCameraInfo.quaternion];
        if (!self->_maskRegistrationEnabled || (v19 & 1) != 0 || (v20 & 1) != 0)
        {
LABEL_32:
          v21 = COERCE_FLOAT(HIDWORD(*&self->_detectionScalingFactor[4]));
          v22 = origin.f64[1] * v21;
          v23 = v52.height * v21;
          *&v21 = self->_adjustedGhostSize;
          [(CMIVideoDeghostingDetectionV1 *)self _computeGhostBoundingBoxFromMaskUsingMax:self->_detectionMask searchROI:origin.f64[0] * COERCE_FLOAT(*&self->_detectionScalingFactor[4]) threshold:v22 ghostSize:v52.width * COERCE_FLOAT(*&self->_detectionScalingFactor[4]) detectionScalingFactor:v23, COERCE_DOUBLE(__PAIR64__(HIDWORD(v52.height), LODWORD(detectionThreshold))), v21];
          v24 = v54.origin.x;
          y = v54.origin.y;
          width = v54.size.width;
          height = v54.size.height;
          v47 = v54;
          v56.origin.x = CGRectNull.origin.x;
          v56.origin.y = CGRectNull.origin.y;
          v56.size.width = CGRectNull.size.width;
          v56.size.height = CGRectNull.size.height;
          if (CGRectEqualToRect(v54, v56))
          {
            goto LABEL_36;
          }

          v57.origin.x = CGRectZero.origin.x;
          v57.origin.y = CGRectZero.origin.y;
          v57.size.width = CGRectZero.size.width;
          v57.size.height = CGRectZero.size.height;
          v55.origin.x = v24;
          v55.origin.y = y;
          v55.size.width = width;
          v55.size.height = height;
          if (CGRectEqualToRect(v55, v57))
          {
            goto LABEL_36;
          }

          *&v28 = self->_shapeScoreLambda;
          *&v29 = self->_contextScoreLambda;
          LODWORD(v45) = self->_contextPaddingInPixel;
          [(VDGMetalUtilsV1 *)self->_vdgMetalUtils updateGhostPositionsUsingSourceImageFeatureMatching:&v47 shapeScore:&self->_shapeScore contextScore:&self->_contextScore confidenceOut:&self->_confidence pixelBuffer:self->_inputPixelBuffer searchRangeInPixel:self->_adjustedSearchRange shapeScoreLambda:v28 contextScoreLambda:v29 contextPaddingInPixel:v45];
          v47.origin.x = v30;
          v47.origin.y = v31;
          v47.size.width = v32;
          v47.size.height = v33;
          if (self->_shapeScore <= self->_minShapeScore)
          {
LABEL_36:
            self->_prevGhostLoc = vdupq_n_s64(0x7FF8000000000000uLL);
          }

          else
          {
            self->_prevGhostLoc.x = v30 + v32 * 0.5;
            self->_prevGhostLoc.y = v31 + v33 * 0.5;
            v34 = [NSArray alloc];
            DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v47);
            v36 = [v34 initWithObjects:{DictionaryRepresentation, 0}];
            v37 = self->_detectedGhostBoundingBoxes;
            self->_detectedGhostBoundingBoxes = v36;
          }

          self->_greenGhostsMaskPixelBuffer = self->_detectionMask;
          if (self->_maskRegistrationEnabled)
          {
            detectionMaskPrev = self->_detectionMaskPrev;
            v39 = self->_detectionMaskPrevTexture;
            detectionMaskTexture = self->_detectionMaskTexture;
            self->_detectionMaskPrev = self->_detectionMask;
            objc_storeStrong(&self->_detectionMaskPrevTexture, detectionMaskTexture);
            v41 = self->_detectionMaskTexture;
            self->_detectionMask = detectionMaskPrev;
            self->_detectionMaskTexture = v39;
          }

          self->_previousCameraInfo.lensPosition = self->_lensPosition;
          v42 = *&self->_centerQuaternion.w;
          v43 = *&self->_centerQuaternion.y;
          self->_previousCameraInfo.adjustedPrincipalPoint = self->_adjustedPrincipalPoint;
          *&self->_previousCameraInfo.quaternion.w = v42;
          *&self->_previousCameraInfo.quaternion.y = v43;
          objc_storeStrong(&self->_previousPortType, self->_currentPortType);
          return 0;
        }

        v5 = [(CMIVideoDeghostingDetectionV1 *)self _computeMotionRegisteredMask:self->_detectionMaskTexture maskPrev:self->_detectionMaskPrevTexture];
        if (!v5)
        {
          detectionThreshold = detectionThreshold * detectionThreshold;
          goto LABEL_32;
        }
      }

      v15 = v5;
      fig_log_get_emitter();
      sub_4C30();
    }

    FigDebugAssert3();
    return v15;
  }

  sub_4C9C();
  sub_4C88();
  FigDebugAssert3();
  sub_4C9C();

  return FigSignalErrorAtGM();
}

- (int)_extractCalibrationDataFromMetadata:(id)metadata pixelBufferDimensions:(id)dimensions
{
  metadataCopy = metadata;
  if (!metadataCopy || (dimensions.var0 >= 1 ? (v7 = dimensions.var1 <= 0) : (v7 = 1), v7))
  {
    sub_2B2C();
    sub_4C48();
    FigDebugAssert3();
    sub_2B2C();
    goto LABEL_29;
  }

  v8 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_SphereMode];
  v9 = v8 != 0;

  v10 = [metadataCopy objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_FramePTSSeconds];
  [v10 doubleValue];
  v12 = v11;

  if (v12 != 0.0 || ([metadataCopy objectForKeyedSubscript:kFigCaptureSampleBufferAttachmentKey_OriginalPresentationTimeStamp], v13 = objc_claimAutoreleasedReturnValue(), CMTimeMakeFromDictionary(&time, v13), CMTimeGetSeconds(&time), time.value = 0, v14 = sub_98B8(metadataCopy, &time.value), v13, !v14))
  {
    v15 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_PinholeCameraFocalLength];
    [v15 floatValue];
    v17 = v16;

    if (v17 == 0.0)
    {
      sub_2B2C();
      sub_4C48();
      FigDebugAssert3();
      sub_2B2C();
    }

    else
    {
      v18 = [metadataCopy objectForKeyedSubscript:kFigCaptureStreamMetadata_QuadraBinningFactor];
      intValue = [v18 intValue];

      if (intValue <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = intValue;
      }

      v21 = self->_sensorBinningFactorHorizontal * v20;
      v22 = (self->_sensorBinningFactorVertical * v20);
      v23 = [metadataCopy objectForKeyedSubscript:kFigMotionAttachmentsSampleBufferProcessorMetadata_ScalingFactor];
      [v23 floatValue];
      v25 = v24;

      v44 = v25;
      if (v25 == 0.0)
      {
        v26 = sub_9658(metadataCopy, dimensions.var0, HIDWORD(*&dimensions), v21, v22, &v44);
        if (v26)
        {
          goto LABEL_30;
        }

        v25 = v44;
      }

      if (v25 > 0.0)
      {
        pixelsPerMicron = self->_pixelsPerMicron;
        self->_lensPosition = (v17 * v25) * pixelsPerMicron;
        self->_adjustedPrincipalPoint = CGPointZero;
        v26 = sub_1C5B8(metadataCopy, dimensions.var0, dimensions.var1, v21, v22, v9, &self->_adjustedPrincipalPoint, pixelsPerMicron, v25);
        if (!v26)
        {
          size = CGRectNull.size;
          rect.origin = CGRectNull.origin;
          rect.size = size;
          v29 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_ValidBufferRect];
          v30 = CGRectMakeWithDictionaryRepresentation(v29, &rect);

          if (v30 && !CGRectIsEmpty(rect) && !CGRectContainsPoint(rect, self->_adjustedPrincipalPoint))
          {
            fig_log_get_emitter();
            sub_4C20();
            FigDebugAssert3();
          }

          v31 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_Fnumber];
          [v31 floatValue];
          v33 = v32;

          v34 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_EffectiveFocalLength];
          [v34 floatValue];
          v36 = v35;

          v37 = [(NSDictionary *)self->_metadataDictionary objectForKeyedSubscript:kFigCaptureStreamMetadata_PracticalFocalLength];
          [v37 floatValue];
          v39 = v38;

          if (v33 > 0.0)
          {
            v14 = 0;
            v40 = fmaxf(vabds_f32(v36, v39) + -5.0, 0.0);
            v41 = self->_lensPosition / 1630.0;
            self->_adjustedGhostSize = llroundf(((((v40 * v44) * self->_pixelsPerMicron) + ((v40 * v44) * self->_pixelsPerMicron)) / v33) + (v41 * self->_ghostSize));
            self->_adjustedSearchRange = llroundf(v41 * self->_searchRangeInPixel);
            goto LABEL_23;
          }

          sub_2B2C();
          sub_4C48();
          FigDebugAssert3();
          sub_2B2C();
          goto LABEL_29;
        }

LABEL_30:
        v14 = v26;
        goto LABEL_23;
      }

      sub_2B2C();
      sub_4C48();
      FigDebugAssert3();
      sub_2B2C();
    }

LABEL_29:
    v26 = FigSignalErrorAtGM();
    goto LABEL_30;
  }

LABEL_23:

  return v14;
}

@end