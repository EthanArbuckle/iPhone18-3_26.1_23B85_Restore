@interface CMIVideoDeghostingBrightLightV1
+ (int)prewarmShaders:(id)a3;
- (CMIVideoDeghostingBrightLightV1)initWithMetalContext:(id)a3;
- (id)_functionNameForProgram:(int)a3;
- (int)_compileShaders;
- (int)_cropAndScaleLuma:(CMIVideoDeghostingBrightLightV1 *)self chroma:(SEL)a2 outputLuma:(id)a3 outputChroma:(id)a4 outputReflectedLuma:(id)a5 params:(id)a6 maskToFullSizeLumaRatio:(id)a7 maskToFullSizeChromaRatio:(DetectionTuning *)a8;
- (int)_detectionWithFullSizeLuma:(CMIVideoDeghostingBrightLightV1 *)self fullSizeChroma:(SEL)a2 outputMask:(id)a3 params:(id)a4 maskToFullSizeLumaRatio:(id)a5 maskToFullSizeChromaRatio:(BrightLightDetectionTuning *)a6 inputIsHDR:(BOOL)a7;
- (int)_refineMask:(id)a3 outputMask:(id)a4 params:(BrightLightRefinementTuning)a5;
- (int)_scaleROI:(CMIVideoDeghostingBrightLightV1 *)self fullResolutionSize:(SEL)a2 downScaledSize:;
- (int)_unCropMaskCropped:(id)a3 maskOutput:(id)a4;
- (int)greenGhostDetectionWithInputPixelBuffer:(__CVBuffer *)a3 outputMask:(id)a4 roi:(id)a5 tuning:;
@end

@implementation CMIVideoDeghostingBrightLightV1

- (id)_functionNameForProgram:(int)a3
{
  if (a3 < 3)
  {
    return *(&off_34948 + a3);
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

- (CMIVideoDeghostingBrightLightV1)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&v6->_metal, a3);
  if ([(CMIVideoDeghostingBrightLightV1 *)v7 _compileShaders])
  {
    sub_22094();
    goto LABEL_8;
  }

  *&v7->_processingROIInfo.var0 = xmmword_27E40;
  LODWORD(v7[1]._metal) = 1065353216;
  v8 = [[CMIVideoDeghostingBrightLightCommonV1 alloc] initWithMetalContext:v5];
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

+ (int)prewarmShaders:(id)a3
{
  v3 = a3;
  v4 = [[CMIVideoDeghostingBrightLightV1 alloc] initWithMetalContext:v3];

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

- (int)_scaleROI:(CMIVideoDeghostingBrightLightV1 *)self fullResolutionSize:(SEL)a2 downScaledSize:
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

- (int)_cropAndScaleLuma:(CMIVideoDeghostingBrightLightV1 *)self chroma:(SEL)a2 outputLuma:(id)a3 outputChroma:(id)a4 outputReflectedLuma:(id)a5 params:(id)a6 maskToFullSizeLumaRatio:(id)a7 maskToFullSizeChromaRatio:(DetectionTuning *)a8
{
  v10 = v9;
  v11 = v8;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v39 = a7;
  v44 = v10;
  v45 = v11;
  v22 = *&self->_processingROIInfo.var0;
  v43 = *&self->_processingROIInfo.var0;
  v23 = vadd_f32(*&a8->var0, *&a8->var0);
  v38 = [v18 width];
  v24 = [v18 height];
  v25.f32[0] = v38;
  v25.f32[1] = v24;
  v42 = vmul_f32(v23, v25);
  v26 = [(FigMetalContext *)self->_metal commandQueue];
  v27 = [v26 commandBuffer];

  if (!v27)
  {
    sub_22354(v41);
LABEL_9:
    v36 = v41[0];
    goto LABEL_6;
  }

  v28 = [v27 computeCommandEncoder];
  if (!v28)
  {
    sub_222A8(v41);
    goto LABEL_9;
  }

  v29 = v28;
  [v28 setComputePipelineState:self->_pipelineStates[2]];
  [v29 setTexture:v18 atIndex:0];
  v30 = v19;
  [v29 setTexture:v19 atIndex:1];
  [v29 setTexture:v20 atIndex:2];
  v31 = v21;
  [v29 setTexture:v21 atIndex:3];
  [v29 setTexture:v39 atIndex:4];
  [v29 setBytes:&v43 length:8 atIndex:0];
  [v29 setBytes:&v42 length:8 atIndex:1];
  [v29 setBytes:&v45 length:8 atIndex:2];
  [v29 setBytes:&v44 length:8 atIndex:3];
  v32 = [(MTLComputePipelineState *)self->_pipelineStates[2] threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_pipelineStates[2] maxTotalThreadsPerThreadgroup]/ v32;
  v41[0] = [v20 width];
  v41[1] = [v20 height];
  v41[2] = 1;
  v40[0] = v32;
  v40[1] = v33;
  v40[2] = 1;
  [v29 dispatchThreads:v41 threadsPerThreadgroup:v40];
  [v29 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    v34 = [v27 commandQueue];
    v35 = [v34 commandBuffer];

    [v35 setLabel:@"KTRACE_MTLCMDBUF"];
    [v35 addCompletedHandler:&stru_34888];
    [v35 commit];
    [v27 addCompletedHandler:&stru_348A8];
  }

  [v27 setLabel:@"VideoDeghostingV1BrightLight_CropAndScale"];
  [v27 commit];

  v36 = 0;
  v19 = v30;
  v21 = v31;
LABEL_6:

  return v36;
}

- (int)_unCropMaskCropped:(id)a3 maskOutput:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20 = *&self->_processingROIInfo.var0;
  if ([v7 width])
  {
    sub_22400(v19);
LABEL_13:
    v16 = v19[0];
    goto LABEL_8;
  }

  if ([v7 height])
  {
    sub_2245C(v19);
    goto LABEL_13;
  }

  v8 = [(FigMetalContext *)self->_metal commandQueue];
  v9 = [v8 commandBuffer];

  if (!v9)
  {
    sub_2257C(v19);
    goto LABEL_13;
  }

  v10 = [v9 computeCommandEncoder];
  if (!v10)
  {
    sub_224B8(v9, v19);
    goto LABEL_13;
  }

  v11 = v10;
  [v10 setComputePipelineState:self->_pipelineStates[0]];
  [v11 setTexture:v6 atIndex:0];
  [v11 setTexture:v7 atIndex:1];
  [v11 setBytes:&v20 length:16 atIndex:0];
  v12 = [(MTLComputePipelineState *)self->_pipelineStates[0] threadExecutionWidth];
  v13 = [(MTLComputePipelineState *)self->_pipelineStates[0] maxTotalThreadsPerThreadgroup]/ v12;
  v19[0] = [v7 width] >> 1;
  v19[1] = [v7 height] >> 1;
  v19[2] = 1;
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = 1;
  [v11 dispatchThreads:v19 threadsPerThreadgroup:v18];
  [v11 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    v14 = [v9 commandQueue];
    v15 = [v14 commandBuffer];

    [v15 setLabel:@"KTRACE_MTLCMDBUF"];
    [v15 addCompletedHandler:&stru_348C8];
    [v15 commit];
    [v9 addCompletedHandler:&stru_348E8];
  }

  [v9 setLabel:@"VideoDeghostingV1BrightLight_UnCrop"];
  [v9 commit];

  v16 = 0;
LABEL_8:

  return v16;
}

- (int)_refineMask:(id)a3 outputMask:(id)a4 params:(BrightLightRefinementTuning)a5
{
  var2 = a5.var2;
  var1 = a5.var1;
  var0 = a5.var0;
  v47 = a5;
  v10 = a3;
  v11 = a4;
  v46 = 0;
  v12 = *&self[1]._metal;
  if ([v10 width])
  {
    sub_22628(v45);
LABEL_23:
    LODWORD(v35) = v45[0];
    goto LABEL_13;
  }

  if ([v10 height])
  {
    sub_22684(v45);
    goto LABEL_23;
  }

  v13 = [(FigMetalContext *)self->_metal allocator];
  v14 = [v13 newTextureDescriptor];

  if (!v14)
  {
    sub_22ACC(v45);
    goto LABEL_23;
  }

  v15 = [v14 desc];
  [v15 setCompressionMode:2];

  v16 = [v14 desc];
  [v16 setCompressionFootprint:0];

  v17 = [v14 desc];
  [v17 setUsage:7];

  v18 = [v10 pixelFormat];
  v19 = [v14 desc];
  [v19 setPixelFormat:v18];

  v20 = [v10 width];
  v21 = [v14 desc];
  [v21 setWidth:v20];

  v22 = [v10 height];
  v23 = [v14 desc];
  [v23 setHeight:v22];

  [v14 setLabel:0];
  v24 = [(FigMetalContext *)self->_metal allocator];
  v25 = [v24 newTextureWithDescriptor:v14];
  v46 = v25;

  if (!v25)
  {
    sub_22A50(v14, v45);
    goto LABEL_23;
  }

  v27 = v12 * var0;
  *&v26 = v27;
  v28 = [(CMIVideoDeghostingBrightLightCommonV1 *)self->_greenGhostCommon erodeTexture:v10 withNormalizedRadius:v25 output:v26];
  if (v28)
  {
    LODWORD(v35) = v28;
    sub_226E0(v28, v14);
    goto LABEL_13;
  }

  *&v29 = v27;
  v30 = [(CMIVideoDeghostingBrightLightCommonV1 *)self->_greenGhostCommon dilateTexture:v25 withNormalizedRadius:v10 output:v29];
  if (v30)
  {
    LODWORD(v35) = v30;
    sub_22774(v30, v14);
    goto LABEL_13;
  }

  greenGhostCommon = self->_greenGhostCommon;
  *&v31 = var2;
  v33 = [NSNumber numberWithFloat:v31];
  *&v34 = v12 * var1;
  v35 = [(CMIVideoDeghostingBrightLightCommonV1 *)greenGhostCommon dilateTexture:v10 withNormalizedRadius:v33 withThreshold:0 subtractTexture:v25 output:v34];

  if (v35)
  {
    sub_22808(v35, v14);
    goto LABEL_13;
  }

  v36 = [(FigMetalContext *)self->_metal commandQueue];
  v35 = [v36 commandBuffer];

  if (!v35)
  {
    sub_2298C(v14, v45);
    goto LABEL_23;
  }

  v37 = [v35 computeCommandEncoder];
  if (!v37)
  {
    sub_2289C(v14, v35, v45);
    goto LABEL_23;
  }

  v38 = v37;
  [v37 setComputePipelineState:self->_pipelineStates[1]];
  [v38 setTexture:v25 atIndex:0];
  [v38 setTexture:v10 atIndex:1];
  [v38 setTexture:v11 atIndex:2];
  [v38 setBytes:&v47.var3 length:4 atIndex:0];
  v39 = [(MTLComputePipelineState *)self->_pipelineStates[1] threadExecutionWidth];
  v40 = [(MTLComputePipelineState *)self->_pipelineStates[1] maxTotalThreadsPerThreadgroup]/ v39;
  v45[0] = [v10 width] >> 1;
  v45[1] = [v10 height] >> 1;
  v45[2] = 1;
  v44[0] = v39;
  v44[1] = v40;
  v44[2] = 1;
  [v38 dispatchThreads:v45 threadsPerThreadgroup:v44];
  [v38 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    v41 = [v35 commandQueue];
    v42 = [v41 commandBuffer];

    [v42 setLabel:@"KTRACE_MTLCMDBUF"];
    [v42 addCompletedHandler:&stru_34908];
    [v42 commit];
    [v35 addCompletedHandler:&stru_34928];
  }

  [v35 setLabel:@"VideoDeghostingV1BrightLight_Refine"];
  [v35 commit];

  LODWORD(v35) = 0;
LABEL_13:
  FigMetalDecRef();

  return v35;
}

- (int)_detectionWithFullSizeLuma:(CMIVideoDeghostingBrightLightV1 *)self fullSizeChroma:(SEL)a2 outputMask:(id)a3 params:(id)a4 maskToFullSizeLumaRatio:(id)a5 maskToFullSizeChromaRatio:(BrightLightDetectionTuning *)a6 inputIsHDR:(BOOL)a7
{
  v10 = v8;
  v11 = v7;
  v54 = a3;
  v53 = a4;
  v16 = a5;
  v64 = 0;
  v65 = 0;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v17 = [(FigMetalContext *)self->_metal allocator];
  v18 = [v17 newTextureDescriptor];

  if (!v18)
  {
    sub_22F4C(&v55);
LABEL_17:
    v50 = v55;
    goto LABEL_10;
  }

  v19 = [v18 desc];
  [v19 setCompressionMode:2];

  v20 = [v18 desc];
  [v20 setCompressionFootprint:0];

  v21 = [v18 desc];
  [v21 setUsage:7];

  v22 = [v16 width];
  v23 = [v18 desc];
  [v23 setWidth:v22];

  v24 = [v16 height];
  v25 = [v18 desc];
  [v25 setHeight:v24];

  v26 = [v18 desc];
  [v26 setPixelFormat:25];

  [v18 setLabel:0];
  v27 = [(FigMetalContext *)self->_metal allocator];
  v28 = [v27 newTextureWithDescriptor:v18];
  v64 = v28;

  if (!v28)
  {
    sub_22EA0(&v55);
    goto LABEL_17;
  }

  [v18 setLabel:0];
  v29 = [(FigMetalContext *)self->_metal allocator];
  v30 = [v29 newTextureWithDescriptor:v18];
  v62 = v30;

  if (!v30)
  {
    sub_22DF4(&v55);
    goto LABEL_17;
  }

  v31 = a7;
  v32 = [v18 desc];
  [v32 setPixelFormat:65];

  [v18 setLabel:0];
  v33 = [(FigMetalContext *)self->_metal allocator];
  v34 = [v33 newTextureWithDescriptor:v18];
  v63 = v34;

  if (!v34)
  {
    sub_22D48(&v55);
    goto LABEL_17;
  }

  v35 = *&a6[1].detectionParams.var1;
  v57 = *&a6[1].detectionParams.brightParams.threshold;
  v58 = v35;
  v59 = *&a6[2].detectionParams.brightParams.threshold;
  v60 = *&a6[2].detectionParams.var1;
  v36 = *&a6->detectionParams.var1;
  v55 = *&a6->detectionParams.brightParams.threshold;
  v56 = v36;
  v37 = [(CMIVideoDeghostingBrightLightV1 *)self _cropAndScaleLuma:v54 chroma:v53 outputLuma:v28 outputChroma:v34 outputReflectedLuma:v30 params:&v55 maskToFullSizeLumaRatio:v11 maskToFullSizeChromaRatio:v10];
  if (v37)
  {
    v50 = v37;
    sub_22B28();
    goto LABEL_10;
  }

  v38 = [v16 pixelFormat];
  v39 = [v18 desc];
  [v39 setPixelFormat:v38];

  [v18 setLabel:0];
  v40 = [(FigMetalContext *)self->_metal allocator];
  v41 = [v40 newTextureWithDescriptor:v18];
  v65 = v41;

  if (!v41)
  {
    sub_22C9C(&v55);
    goto LABEL_17;
  }

  greenGhostCommon = self->_greenGhostCommon;
  v43 = *&a6[1].detectionParams.var1;
  v57 = *&a6[1].detectionParams.brightParams.threshold;
  v58 = v43;
  v59 = *&a6[2].detectionParams.brightParams.threshold;
  v60 = *&a6[2].detectionParams.var1;
  v44 = *&a6->detectionParams.var1;
  v55 = *&a6->detectionParams.brightParams.threshold;
  v56 = v44;
  LOBYTE(v52) = v31;
  v45 = [(CMIVideoDeghostingBrightLightCommonV1 *)greenGhostCommon detectionWithReflectedLuma:v30 croppedLuma:v28 chroma:v34 outputMask:v41 params:&v55 processingROIInfo:&self->_processingROIInfo inputIsHDR:v52];
  if (v45)
  {
    v50 = v45;
    sub_22BA4();
  }

  else
  {
    LODWORD(v46) = a6[2].detectionParams.var2;
    LODWORD(v47) = HIDWORD(a6[2].detectionParams.var2);
    *&v48 = a6[3].detectionParams.brightParams.threshold;
    LODWORD(v49) = *(&a6[3].detectionParams.brightParams + 1);
    v50 = [(CMIVideoDeghostingBrightLightV1 *)self _refineMask:v41 outputMask:v16 params:v46, v47, v48, v49];
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

- (int)greenGhostDetectionWithInputPixelBuffer:(__CVBuffer *)a3 outputMask:(id)a4 roi:(id)a5 tuning:
{
  v47 = v5;
  v9 = a4;
  v10 = a5;
  v56 = 0;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a3);
  v12 = [VDGMetalUtilsV1 isTenBitPixelBufferFormat:PixelFormatType];
  v13 = [VDGMetalUtilsV1 getMetalFormatFor:PixelFormatType];
  metal = self->_metal;
  v15 = [v13 objectAtIndexedSubscript:0];
  v16 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](metal, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", a3, [v15 intValue], 23, 0);

  if (!v16)
  {
    sub_232D0(v54);
    v19 = 0;
LABEL_15:
    v29 = 0;
    v44 = v54[0];
    goto LABEL_12;
  }

  v17 = self->_metal;
  v18 = [v13 objectAtIndexedSubscript:1];
  v19 = -[FigMetalContext bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:](v17, "bindPixelBufferToMTL2DTexture:pixelFormat:usage:plane:", a3, [v18 intValue], 23, 1);

  if (!v19)
  {
    sub_23224(v54);
    goto LABEL_15;
  }

  v46 = v10;
  v51 = [v16 width];
  v20 = [v16 height];
  *&v21 = v51;
  *(&v21 + 1) = v20;
  v52 = v21;
  v22 = [v19 width];
  v23 = [v19 height];
  v49 = [v9 width];
  v24 = [v9 height];
  v25.f32[0] = v49;
  v25.f32[1] = v24;
  v50 = v25;
  v26 = [(CMIVideoDeghostingBrightLightV1 *)self _scaleROI:v47 fullResolutionSize:v52 downScaledSize:?];
  if (v26)
  {
    v44 = v26;
    sub_22FA8();
    v29 = 0;
    v10 = v46;
    goto LABEL_12;
  }

  v48 = v13;
  v27 = v12;
  v28 = [(FigMetalContext *)self->_metal allocator];
  v29 = [v28 newTextureDescriptor];

  if (!v29)
  {
    sub_231C8(v54);
LABEL_19:
    v44 = v54[0];
    v10 = v46;
    v13 = v48;
    goto LABEL_12;
  }

  v30 = [v29 desc];
  [v30 setCompressionMode:2];

  v31 = [v29 desc];
  [v31 setCompressionFootprint:0];

  v32 = [v29 desc];
  [v32 setUsage:7];

  isa_low = LODWORD(self[1].super.isa);
  v34 = [v29 desc];
  [v34 setWidth:isa_low];

  isa_high = HIDWORD(self[1].super.isa);
  v36 = [v29 desc];
  [v36 setHeight:isa_high];

  v37 = [v29 desc];
  [v37 setPixelFormat:25];

  [v29 setLabel:0];
  v38 = [(FigMetalContext *)self->_metal allocator];
  v39 = [v38 newTextureWithDescriptor:v29];
  v56 = v39;

  if (!v39)
  {
    sub_2311C(v54);
    goto LABEL_19;
  }

  v40.f32[0] = v22;
  v40.f32[1] = v23;
  v41 = COERCE_DOUBLE(vdiv_f32(*&v52, v50));
  v42 = COERCE_DOUBLE(vdiv_f32(v40, v50));
  v10 = v46;
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
    v44 = [(CMIVideoDeghostingBrightLightV1 *)self _unCropMaskCropped:v39 maskOutput:v9];
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