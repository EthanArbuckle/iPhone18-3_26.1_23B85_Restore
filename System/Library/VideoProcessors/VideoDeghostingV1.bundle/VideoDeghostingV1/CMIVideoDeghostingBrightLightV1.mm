@interface CMIVideoDeghostingBrightLightV1
+ (int)prewarmShaders:(id)shaders;
- (CMIVideoDeghostingBrightLightV1)initWithMetalContext:(id)context;
- (id)_functionNameForProgram:(int)program;
- (int)_compileShaders;
- (int)_cropAndScaleLuma:(CMIVideoDeghostingBrightLightV1 *)self chroma:(SEL)chroma outputLuma:(id)luma outputChroma:(id)outputChroma outputReflectedLuma:(id)reflectedLuma params:(id)params maskToFullSizeLumaRatio:(id)ratio maskToFullSizeChromaRatio:(DetectionTuning *)chromaRatio;
- (int)_detectionWithFullSizeLuma:(CMIVideoDeghostingBrightLightV1 *)self fullSizeChroma:(SEL)chroma outputMask:(id)mask params:(id)params maskToFullSizeLumaRatio:(id)ratio maskToFullSizeChromaRatio:(BrightLightDetectionTuning *)chromaRatio inputIsHDR:(BOOL)r;
- (int)_refineMask:(id)mask outputMask:(id)outputMask params:(BrightLightRefinementTuning)params;
- (int)_scaleROI:(CMIVideoDeghostingBrightLightV1 *)self fullResolutionSize:(SEL)size downScaledSize:;
- (int)_unCropMaskCropped:(id)cropped maskOutput:(id)output;
- (int)greenGhostDetectionWithInputPixelBuffer:(__CVBuffer *)buffer outputMask:(id)mask roi:(id)roi tuning:;
@end

@implementation CMIVideoDeghostingBrightLightV1

- (id)_functionNameForProgram:(int)program
{
  if (program < 3)
  {
    return *(&off_34948 + program);
  }

  fig_log_get_emitter();
  FigDebugAssert3();
  return 0;
}

- (int)_compileShaders
{
  metal = self->_metal;
  v4 = [(CMIVideoDeghostingBrightLightV1 *)self _functionNameForProgram:0];
  v5 = [(FigMetalContext *)metal computePipelineStateFor:v4 constants:0];
  v6 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v5;

  if (self->_pipelineStates[0])
  {
    v7 = self->_metal;
    v8 = [(CMIVideoDeghostingBrightLightV1 *)self _functionNameForProgram:1];
    v9 = [(FigMetalContext *)v7 computePipelineStateFor:v8 constants:0];
    v10 = self->_pipelineStates[1];
    self->_pipelineStates[1] = v9;

    if (self->_pipelineStates[1])
    {
      v11 = self->_metal;
      v12 = [(CMIVideoDeghostingBrightLightV1 *)self _functionNameForProgram:2];
      v13 = [(FigMetalContext *)v11 computePipelineStateFor:v12 constants:0];
      v14 = self->_pipelineStates[2];
      self->_pipelineStates[2] = v13;

      if (self->_pipelineStates[2])
      {
        return 0;
      }

      else
      {
        sub_21E84(&v16);
        return v16;
      }
    }

    else
    {
      sub_21F34(&v17);
      return v17;
    }
  }

  else
  {
    sub_21FE4(&v18);
    return v18;
  }
}

- (CMIVideoDeghostingBrightLightV1)initWithMetalContext:(id)context
{
  contextCopy = context;
  v13.receiver = self;
  v13.super_class = CMIVideoDeghostingBrightLightV1;
  v6 = [(CMIVideoDeghostingBrightLightV1 *)&v13 init];
  v7 = v6;
  if (!v6)
  {
    sub_22198();
LABEL_8:
    v10 = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_metal, context);
  if ([(CMIVideoDeghostingBrightLightV1 *)v7 _compileShaders])
  {
    sub_22094();
    goto LABEL_8;
  }

  *&v7->_processingROIInfo.var0 = xmmword_27E40;
  LODWORD(v7[1]._metal) = 1065353216;
  v8 = [[CMIVideoDeghostingBrightLightCommonV1 alloc] initWithMetalContext:contextCopy];
  greenGhostCommon = v7->_greenGhostCommon;
  v7->_greenGhostCommon = v8;

  v10 = v7;
  if (!v7->_greenGhostCommon)
  {
    sub_22110();
    v10 = v7;
  }

LABEL_5:
  v11 = v10;

  return v11;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  v4 = [[CMIVideoDeghostingBrightLightV1 alloc] initWithMetalContext:shadersCopy];

  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = -12786;
  }

  return v5;
}

- (int)_scaleROI:(CMIVideoDeghostingBrightLightV1 *)self fullResolutionSize:(SEL)size downScaledSize:
{
  v7 = vdiv_f32(v6, v5);
  v8 = vcvt_u32_f32(vmul_f32(v7, vcvt_f32_u32(*&vextq_s8(v4, v4, 8uLL))));
  v9 = vadd_s32(vand_s8(v8, 0x100000001), v8);
  v10 = v9.i32[0];
  if (v9.i32[0])
  {
    v11 = v9.i32[1] == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v16 = v2;
    v17 = v3;
    sub_2224C(&v15);
    return v15;
  }

  else
  {
    v12 = 0;
    if (v6.f32[0] <= v6.f32[1])
    {
      v6.f32[0] = v6.f32[1];
    }

    if (v9.i32[0] <= v9.i32[1])
    {
      v10 = v9.u32[1];
    }

    *&v13 = vcvt_u32_f32(vmul_f32(v7, vcvt_f32_u32(*v4.i8)));
    *(&v13 + 1) = v9;
    *&self->_processingROIInfo.var0 = v13;
    *&self[1]._metal = v6.f32[0] / v10;
  }

  return v12;
}

- (int)_cropAndScaleLuma:(CMIVideoDeghostingBrightLightV1 *)self chroma:(SEL)chroma outputLuma:(id)luma outputChroma:(id)outputChroma outputReflectedLuma:(id)reflectedLuma params:(id)params maskToFullSizeLumaRatio:(id)ratio maskToFullSizeChromaRatio:(DetectionTuning *)chromaRatio
{
  v10 = v9;
  v11 = v8;
  lumaCopy = luma;
  outputChromaCopy = outputChroma;
  reflectedLumaCopy = reflectedLuma;
  paramsCopy = params;
  ratioCopy = ratio;
  v44 = v10;
  v45 = v11;
  v22 = *&self->_processingROIInfo.var0;
  v43 = *&self->_processingROIInfo.var0;
  v23 = vadd_f32(*&chromaRatio->var0, *&chromaRatio->var0);
  width = [lumaCopy width];
  height = [lumaCopy height];
  v25.f32[0] = width;
  v25.f32[1] = height;
  v42 = vmul_f32(v23, v25);
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_22354(v41);
LABEL_9:
    v36 = v41[0];
    goto LABEL_6;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_222A8(v41);
    goto LABEL_9;
  }

  v29 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_pipelineStates[2]];
  [v29 setTexture:lumaCopy atIndex:0];
  v30 = outputChromaCopy;
  [v29 setTexture:outputChromaCopy atIndex:1];
  [v29 setTexture:reflectedLumaCopy atIndex:2];
  v31 = paramsCopy;
  [v29 setTexture:paramsCopy atIndex:3];
  [v29 setTexture:ratioCopy atIndex:4];
  [v29 setBytes:&v43 length:8 atIndex:0];
  [v29 setBytes:&v42 length:8 atIndex:1];
  [v29 setBytes:&v45 length:8 atIndex:2];
  [v29 setBytes:&v44 length:8 atIndex:3];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[2] threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_pipelineStates[2] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v41[0] = [reflectedLumaCopy width];
  v41[1] = [reflectedLumaCopy height];
  v41[2] = 1;
  v40[0] = threadExecutionWidth;
  v40[1] = v33;
  v40[2] = 1;
  [v29 dispatchThreads:v41 threadsPerThreadgroup:v40];
  [v29 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_34888];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_348A8];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1BrightLight_CropAndScale"];
  [commandBuffer commit];

  v36 = 0;
  outputChromaCopy = v30;
  paramsCopy = v31;
LABEL_6:

  return v36;
}

- (int)_unCropMaskCropped:(id)cropped maskOutput:(id)output
{
  croppedCopy = cropped;
  outputCopy = output;
  v20 = *&self->_processingROIInfo.var0;
  if ([outputCopy width])
  {
    sub_22400(v19);
LABEL_13:
    v16 = v19[0];
    goto LABEL_8;
  }

  if ([outputCopy height])
  {
    sub_2245C(v19);
    goto LABEL_13;
  }

  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2257C(v19);
    goto LABEL_13;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_224B8(commandBuffer, v19);
    goto LABEL_13;
  }

  v11 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_pipelineStates[0]];
  [v11 setTexture:croppedCopy atIndex:0];
  [v11 setTexture:outputCopy atIndex:1];
  [v11 setBytes:&v20 length:16 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[0] threadExecutionWidth];
  v13 = [(MTLComputePipelineState *)self->_pipelineStates[0] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v19[0] = [outputCopy width] >> 1;
  v19[1] = [outputCopy height] >> 1;
  v19[2] = 1;
  v18[0] = threadExecutionWidth;
  v18[1] = v13;
  v18[2] = 1;
  [v11 dispatchThreads:v19 threadsPerThreadgroup:v18];
  [v11 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_348C8];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_348E8];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1BrightLight_UnCrop"];
  [commandBuffer commit];

  v16 = 0;
LABEL_8:

  return v16;
}

- (int)_refineMask:(id)mask outputMask:(id)outputMask params:(BrightLightRefinementTuning)params
{
  var2 = params.var2;
  var1 = params.var1;
  var0 = params.var0;
  paramsCopy = params;
  maskCopy = mask;
  outputMaskCopy = outputMask;
  v46 = 0;
  v12 = *&self[1]._metal;
  if ([maskCopy width])
  {
    sub_22628(v45);
LABEL_23:
    LODWORD(commandBuffer) = v45[0];
    goto LABEL_13;
  }

  if ([maskCopy height])
  {
    sub_22684(v45);
    goto LABEL_23;
  }

  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_22ACC(v45);
    goto LABEL_23;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  pixelFormat = [maskCopy pixelFormat];
  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:pixelFormat];

  width = [maskCopy width];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:width];

  height = [maskCopy height];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:height];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metal allocator];
  v25 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v46 = v25;

  if (!v25)
  {
    sub_22A50(newTextureDescriptor, v45);
    goto LABEL_23;
  }

  v27 = v12 * var0;
  *&v26 = v27;
  v28 = [(CMIVideoDeghostingBrightLightCommonV1 *)self->_greenGhostCommon erodeTexture:maskCopy withNormalizedRadius:v25 output:v26];
  if (v28)
  {
    LODWORD(commandBuffer) = v28;
    sub_226E0(v28, newTextureDescriptor);
    goto LABEL_13;
  }

  *&v29 = v27;
  v30 = [(CMIVideoDeghostingBrightLightCommonV1 *)self->_greenGhostCommon dilateTexture:v25 withNormalizedRadius:maskCopy output:v29];
  if (v30)
  {
    LODWORD(commandBuffer) = v30;
    sub_22774(v30, newTextureDescriptor);
    goto LABEL_13;
  }

  greenGhostCommon = self->_greenGhostCommon;
  *&v31 = var2;
  v33 = [NSNumber numberWithFloat:v31];
  *&v34 = v12 * var1;
  commandBuffer = [(CMIVideoDeghostingBrightLightCommonV1 *)greenGhostCommon dilateTexture:maskCopy withNormalizedRadius:v33 withThreshold:0 subtractTexture:v25 output:v34];

  if (commandBuffer)
  {
    sub_22808(commandBuffer, newTextureDescriptor);
    goto LABEL_13;
  }

  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_2298C(newTextureDescriptor, v45);
    goto LABEL_23;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_2289C(newTextureDescriptor, commandBuffer, v45);
    goto LABEL_23;
  }

  v38 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_pipelineStates[1]];
  [v38 setTexture:v25 atIndex:0];
  [v38 setTexture:maskCopy atIndex:1];
  [v38 setTexture:outputMaskCopy atIndex:2];
  [v38 setBytes:&paramsCopy.var3 length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[1] threadExecutionWidth];
  v40 = [(MTLComputePipelineState *)self->_pipelineStates[1] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v45[0] = [maskCopy width] >> 1;
  v45[1] = [maskCopy height] >> 1;
  v45[2] = 1;
  v44[0] = threadExecutionWidth;
  v44[1] = v40;
  v44[2] = 1;
  [v38 dispatchThreads:v45 threadsPerThreadgroup:v44];
  [v38 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_34908];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_34928];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1BrightLight_Refine"];
  [commandBuffer commit];

  LODWORD(commandBuffer) = 0;
LABEL_13:
  FigMetalDecRef();

  return commandBuffer;
}

- (int)_detectionWithFullSizeLuma:(CMIVideoDeghostingBrightLightV1 *)self fullSizeChroma:(SEL)chroma outputMask:(id)mask params:(id)params maskToFullSizeLumaRatio:(id)ratio maskToFullSizeChromaRatio:(BrightLightDetectionTuning *)chromaRatio inputIsHDR:(BOOL)r
{
  v10 = v8;
  v11 = v7;
  maskCopy = mask;
  paramsCopy = params;
  ratioCopy = ratio;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_22F4C(&v55);
LABEL_17:
    v50 = v55;
    goto LABEL_10;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  width = [ratioCopy width];
  desc4 = [newTextureDescriptor desc];
  [desc4 setWidth:width];

  height = [ratioCopy height];
  desc5 = [newTextureDescriptor desc];
  [desc5 setHeight:height];

  desc6 = [newTextureDescriptor desc];
  [desc6 setPixelFormat:25];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metal allocator];
  v28 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v64 = v28;

  if (!v28)
  {
    sub_22EA0(&v55);
    goto LABEL_17;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metal allocator];
  v30 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
  v62 = v30;

  if (!v30)
  {
    sub_22DF4(&v55);
    goto LABEL_17;
  }

  rCopy = r;
  desc7 = [newTextureDescriptor desc];
  [desc7 setPixelFormat:65];

  [newTextureDescriptor setLabel:0];
  allocator4 = [(FigMetalContext *)self->_metal allocator];
  v34 = [allocator4 newTextureWithDescriptor:newTextureDescriptor];
  v63 = v34;

  if (!v34)
  {
    sub_22D48(&v55);
    goto LABEL_17;
  }

  v35 = *&chromaRatio[1].detectionParams.var1;
  v57 = *&chromaRatio[1].detectionParams.brightParams.threshold;
  v58 = v35;
  v59 = *&chromaRatio[2].detectionParams.brightParams.threshold;
  v60 = *&chromaRatio[2].detectionParams.var1;
  v36 = *&chromaRatio->detectionParams.var1;
  v55 = *&chromaRatio->detectionParams.brightParams.threshold;
  v56 = v36;
  v37 = [(CMIVideoDeghostingBrightLightV1 *)self _cropAndScaleLuma:maskCopy chroma:paramsCopy outputLuma:v28 outputChroma:v34 outputReflectedLuma:v30 params:&v55 maskToFullSizeLumaRatio:v11 maskToFullSizeChromaRatio:v10];
  if (v37)
  {
    v50 = v37;
    sub_22B28();
    goto LABEL_10;
  }

  pixelFormat = [ratioCopy pixelFormat];
  desc8 = [newTextureDescriptor desc];
  [desc8 setPixelFormat:pixelFormat];

  [newTextureDescriptor setLabel:0];
  allocator5 = [(FigMetalContext *)self->_metal allocator];
  v41 = [allocator5 newTextureWithDescriptor:newTextureDescriptor];
  v65 = v41;

  if (!v41)
  {
    sub_22C9C(&v55);
    goto LABEL_17;
  }

  greenGhostCommon = self->_greenGhostCommon;
  v43 = *&chromaRatio[1].detectionParams.var1;
  v57 = *&chromaRatio[1].detectionParams.brightParams.threshold;
  v58 = v43;
  v59 = *&chromaRatio[2].detectionParams.brightParams.threshold;
  v60 = *&chromaRatio[2].detectionParams.var1;
  v44 = *&chromaRatio->detectionParams.var1;
  v55 = *&chromaRatio->detectionParams.brightParams.threshold;
  v56 = v44;
  LOBYTE(v52) = rCopy;
  v45 = [(CMIVideoDeghostingBrightLightCommonV1 *)greenGhostCommon detectionWithReflectedLuma:v30 croppedLuma:v28 chroma:v34 outputMask:v41 params:&v55 processingROIInfo:&self->_processingROIInfo inputIsHDR:v52];
  if (v45)
  {
    v50 = v45;
    sub_22BA4();
  }

  else
  {
    LODWORD(v46) = chromaRatio[2].detectionParams.var2;
    LODWORD(v47) = HIDWORD(chromaRatio[2].detectionParams.var2);
    *&v48 = chromaRatio[3].detectionParams.brightParams.threshold;
    LODWORD(v49) = *(&chromaRatio[3].detectionParams.brightParams + 1);
    v50 = [(CMIVideoDeghostingBrightLightV1 *)self _refineMask:v41 outputMask:ratioCopy params:v46, v47, v48, v49];
    if (v50)
    {
      sub_22C20();
    }
  }

LABEL_10:
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();
  FigMetalDecRef();

  return v50;
}

- (int)greenGhostDetectionWithInputPixelBuffer:(__CVBuffer *)buffer outputMask:(id)mask roi:(id)roi tuning:
{
  v47 = v5;
  maskCopy = mask;
  roiCopy = roi;
  v56 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v12 = [VDGMetalUtilsV1 isTenBitPixelBufferFormat:PixelFormatType];
  v13 = [VDGMetalUtilsV1 getMetalFormatFor:PixelFormatType];
  metal = self->_metal;
  v15 = [v13 objectAtIndexedSubscript:0];
  v16 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](metal, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", buffer, [v15 intValue], 23, 0);

  if (!v16)
  {
    sub_232D0(v54);
    v19 = 0;
LABEL_15:
    newTextureDescriptor = 0;
    v44 = v54[0];
    goto LABEL_12;
  }

  v17 = self->_metal;
  v18 = [v13 objectAtIndexedSubscript:1];
  v19 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](v17, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", buffer, [v18 intValue], 23, 1);

  if (!v19)
  {
    sub_23224(v54);
    goto LABEL_15;
  }

  v46 = roiCopy;
  width = [v16 width];
  height = [v16 height];
  *&v21 = width;
  *(&v21 + 1) = height;
  v52 = v21;
  width2 = [v19 width];
  height2 = [v19 height];
  width3 = [maskCopy width];
  height3 = [maskCopy height];
  v25.f32[0] = width3;
  v25.f32[1] = height3;
  v50 = v25;
  v26 = [(CMIVideoDeghostingBrightLightV1 *)self _scaleROI:v47 fullResolutionSize:v52 downScaledSize:?];
  if (v26)
  {
    v44 = v26;
    sub_22FA8();
    newTextureDescriptor = 0;
    roiCopy = v46;
    goto LABEL_12;
  }

  v48 = v13;
  v27 = v12;
  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_231C8(v54);
LABEL_19:
    v44 = v54[0];
    roiCopy = v46;
    v13 = v48;
    goto LABEL_12;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  isa_low = LODWORD(self[1].super.isa);
  desc4 = [newTextureDescriptor desc];
  [desc4 setWidth:isa_low];

  isa_high = HIDWORD(self[1].super.isa);
  desc5 = [newTextureDescriptor desc];
  [desc5 setHeight:isa_high];

  desc6 = [newTextureDescriptor desc];
  [desc6 setPixelFormat:25];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metal allocator];
  v39 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v56 = v39;

  if (!v39)
  {
    sub_2311C(v54);
    goto LABEL_19;
  }

  v40.f32[0] = width2;
  v40.f32[1] = height2;
  v41 = COERCE_DOUBLE(vdiv_f32(*&v52, v50));
  v42 = COERCE_DOUBLE(vdiv_f32(v40, v50));
  roiCopy = v46;
  if (v46)
  {
    [v46 tuningParams];
  }

  else
  {
    memset(v53, 0, sizeof(v53));
  }

  v54[4] = *(&v53[4] + 8);
  v54[5] = *(&v53[5] + 8);
  v55 = *(&v53[6] + 1);
  v54[0] = *(v53 + 8);
  v54[1] = *(&v53[1] + 8);
  v54[2] = *(&v53[2] + 8);
  v54[3] = *(&v53[3] + 8);
  v43 = [(CMIVideoDeghostingBrightLightV1 *)self _detectionWithFullSizeLuma:v16 fullSizeChroma:v19 outputMask:v39 params:v54 maskToFullSizeLumaRatio:v27 maskToFullSizeChromaRatio:v41 inputIsHDR:v42];
  if (v43)
  {
    v44 = v43;
    sub_23024();
    v13 = v48;
  }

  else
  {
    v44 = [(CMIVideoDeghostingBrightLightV1 *)self _unCropMaskCropped:v39 maskOutput:maskCopy];
    v13 = v48;
    if (v44)
    {
      sub_230A0();
    }
  }

LABEL_12:
  FigMetalDecRef();

  return v44;
}

@end