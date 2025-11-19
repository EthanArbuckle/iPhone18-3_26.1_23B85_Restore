@interface CMIVideoDeghostingBrightLightCommonV1
- (CMIVideoDeghostingBrightLightCommonV1)initWithMetalContext:(id)a3;
- (id)_functionNameForProgram:(int)a3;
- (int)_compileDilateVerticalShaders;
- (int)_compileShaders;
- (int)brightnessDetectionInputReflectedLuma:(id)a3 output:(id)a4 params:(BrightnessTuning)a5 processingROIInfo:(ProcessingROIInfo *)a6;
- (int)combineBrightnessMask:(id)a3 greenMask:(id)a4 output:(id)a5;
- (int)detectionWithReflectedLuma:(id)a3 croppedLuma:(id)a4 chroma:(id)a5 outputMask:(id)a6 params:(DetectionTuning *)a7 processingROIInfo:(ProcessingROIInfo *)a8 inputIsHDR:(BOOL)a9;
- (int)dilateTexture:(id)a3 withNormalizedRadius:(float)a4 withThreshold:(id)a5 subtractTexture:(id)a6 output:(id)a7;
- (int)erodeTexture:(id)a3 withNormalizedRadius:(float)a4 output:(id)a5;
@end

@implementation CMIVideoDeghostingBrightLightCommonV1

- (id)_functionNameForProgram:(int)a3
{
  if (a3 < 0xB)
  {
    return off_347F8[a3];
  }

  FigDebugAssert3();
  return 0;
}

- (int)_compileDilateVerticalShaders
{
  v3 = objc_opt_new();
  if (v3)
  {
    pipelineStates = self->_pipelineStates;
    v16 = 0;
    while (2)
    {
      v5 = 0;
      v15 = 0;
      do
      {
        if (!v5 || !v16)
        {
          [v3 setConstantValue:&v15 type:53 atIndex:1];
          [v3 setConstantValue:&v16 type:53 atIndex:2];
          v6 = v15 + 2 * v16 + 1;
          metal = self->_metal;
          v8 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:v6];
          v9 = [(FigMetalContext *)metal computePipelineStateFor:v8 constants:v3];
          v10 = pipelineStates[v6];
          pipelineStates[v6] = v9;

          if (!pipelineStates[v6])
          {
            sub_19080(&v15, &v17);
            goto LABEL_12;
          }

          v5 = v15;
        }

        v15 = v5 + 1;
      }

      while (v5++ < 1);
      v12 = v16++;
      if (v12 < 1)
      {
        continue;
      }

      break;
    }

    v13 = 0;
  }

  else
  {
    sub_19108(&v17);
LABEL_12:
    v13 = v17;
  }

  return v13;
}

- (int)_compileShaders
{
  v41 = 0;
  metal = self->_metal;
  v4 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:0];
  v5 = [(FigMetalContext *)metal computePipelineStateFor:v4 constants:0];
  v6 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v5;

  if (!self->_pipelineStates[0])
  {
    sub_195F0(&v42);
LABEL_19:
    v25 = 0;
LABEL_20:
    v38 = v42;
    goto LABEL_12;
  }

  v7 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _compileDilateVerticalShaders];
  if (v7)
  {
    v38 = v7;
    sub_19150();
    v25 = 0;
    goto LABEL_12;
  }

  v8 = self->_metal;
  v9 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:4];
  v10 = [(FigMetalContext *)v8 computePipelineStateFor:v9 constants:0];
  v11 = self->_pipelineStates[4];
  self->_pipelineStates[4] = v10;

  if (!self->_pipelineStates[4])
  {
    sub_19568(&v42);
    goto LABEL_19;
  }

  v12 = self->_metal;
  v13 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:5];
  v14 = [(FigMetalContext *)v12 computePipelineStateFor:v13 constants:0];
  v15 = self->_pipelineStates[5];
  self->_pipelineStates[5] = v14;

  if (!self->_pipelineStates[5])
  {
    sub_194E0(&v42);
    goto LABEL_19;
  }

  v16 = self->_metal;
  v17 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:6];
  v18 = [(FigMetalContext *)v16 computePipelineStateFor:v17 constants:0];
  v19 = self->_pipelineStates[6];
  self->_pipelineStates[6] = v18;

  if (!self->_pipelineStates[6])
  {
    sub_19458(&v42);
    goto LABEL_19;
  }

  v20 = self->_metal;
  v21 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:7];
  v22 = [(FigMetalContext *)v20 computePipelineStateFor:v21 constants:0];
  v23 = self->_pipelineStates[7];
  self->_pipelineStates[7] = v22;

  if (!self->_pipelineStates[7])
  {
    sub_193D0(&v42);
    goto LABEL_19;
  }

  v40 = 0;
  v24 = objc_opt_new();
  v25 = v24;
  if (!v24)
  {
    sub_19348(&v42);
    goto LABEL_20;
  }

  [v24 setConstantValue:&v41 type:53 atIndex:3];
  [v25 setConstantValue:&v40 type:53 atIndex:0];
  v26 = self->_metal;
  v27 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:8];
  v28 = [(FigMetalContext *)v26 computePipelineStateFor:v27 constants:v25];
  v29 = self->_pipelineStates[8];
  self->_pipelineStates[8] = v28;

  if (!self->_pipelineStates[8])
  {
    sub_192C0(&v42);
    goto LABEL_20;
  }

  v40 = 1;
  [v25 setConstantValue:&v40 type:53 atIndex:0];
  v30 = self->_metal;
  v31 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:9];
  v32 = [(FigMetalContext *)v30 computePipelineStateFor:v31 constants:v25];
  v33 = self->_pipelineStates[9];
  self->_pipelineStates[9] = v32;

  if (!self->_pipelineStates[9])
  {
    sub_19238(&v42);
    goto LABEL_20;
  }

  v34 = self->_metal;
  v35 = [(CMIVideoDeghostingBrightLightCommonV1 *)self _functionNameForProgram:10];
  v36 = [(FigMetalContext *)v34 computePipelineStateFor:v35 constants:0];
  v37 = self->_pipelineStates[10];
  self->_pipelineStates[10] = v36;

  if (!self->_pipelineStates[10])
  {
    sub_191B0(&v42);
    goto LABEL_20;
  }

  v38 = 0;
LABEL_12:

  return v38;
}

- (CMIVideoDeghostingBrightLightCommonV1)initWithMetalContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = CMIVideoDeghostingBrightLightCommonV1;
  v6 = [(CMIVideoDeghostingBrightLightCommonV1 *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    sub_196D8();
LABEL_6:
    v9 = 0;
    goto LABEL_3;
  }

  objc_storeStrong(&v6->_metal, a3);
  v8 = [(CMIVideoDeghostingBrightLightCommonV1 *)v7 _compileShaders];
  v9 = v7;
  if (v8)
  {
    sub_19678();
    goto LABEL_6;
  }

LABEL_3:
  v10 = v9;

  return v10;
}

- (int)dilateTexture:(id)a3 withNormalizedRadius:(float)a4 withThreshold:(id)a5 subtractTexture:(id)a6 output:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [v12 width];
  if (v16 <= [v12 height])
  {
    v17 = [v12 height];
  }

  else
  {
    v17 = [v12 width];
  }

  v60 = (v17 * a4);
  v59 = 0;
  if ([v15 width])
  {
    sub_19760(&v56);
LABEL_28:
    v40 = 0;
    v20 = 0;
    v19 = 0;
LABEL_33:
    v48 = v56;
    goto LABEL_24;
  }

  if ([v15 height])
  {
    sub_197A8(&v56);
    goto LABEL_28;
  }

  if (v13 && v14)
  {
    sub_19A28(&v56);
    goto LABEL_28;
  }

  v18 = [(FigMetalContext *)self->_metal commandQueue];
  v19 = [v18 commandBuffer];

  if (!v19)
  {
    sub_199A0(&v56);
    v40 = 0;
    v20 = 0;
    goto LABEL_33;
  }

  v20 = [v19 computeCommandEncoder];
  if (!v20)
  {
    sub_19918(&v56);
LABEL_32:
    v40 = 0;
    goto LABEL_33;
  }

  v21 = [(FigMetalContext *)self->_metal allocator];
  v22 = [v21 newTextureDescriptor];

  if (!v22)
  {
    sub_19890(&v56);
    goto LABEL_32;
  }

  v52 = v13;
  v23 = [v22 desc];
  [v23 setCompressionMode:2];

  v24 = [v22 desc];
  [v24 setCompressionFootprint:0];

  v25 = [v22 desc];
  [v25 setUsage:7];

  v26 = [v12 pixelFormat];
  v27 = [v22 desc];
  [v27 setPixelFormat:v26];

  v28 = [v12 width];
  v29 = [v22 desc];
  [v29 setWidth:v28];

  v30 = [v12 height];
  v31 = [v22 desc];
  [v31 setHeight:v30];

  [v22 setLabel:0];
  v32 = [(FigMetalContext *)self->_metal allocator];
  v33 = [v32 newTextureWithDescriptor:v22];
  v59 = v33;

  if (v33)
  {
    v50 = v19;
    v35 = self->_pipelineStates[0];
    pipelineStates = self->_pipelineStates;
    [v20 setComputePipelineState:v35];
    v51 = v12;
    [v20 setTexture:v12 atIndex:0];
    [v20 setTexture:v33 atIndex:1];
    [v20 setBytes:&v60 length:4 atIndex:0];
    v36 = [(MTLComputePipelineState *)*pipelineStates threadExecutionWidth];
    v37 = [(MTLComputePipelineState *)*pipelineStates maxTotalThreadsPerThreadgroup]/ v36;
    v56 = [v15 width] >> 1;
    v57 = [v15 height] >> 1;
    v58 = 1;
    v53 = v36;
    v54 = v37;
    v55 = 1;
    [v20 dispatchThreads:&v56 threadsPerThreadgroup:&v53];
    v13 = v52;
    v38 = 3;
    if (v52)
    {
      v38 = 4;
    }

    if (v14)
    {
      v39 = v38;
    }

    else
    {
      v39 = (v52 != 0) + 1;
    }

    v40 = pipelineStates[v39];
    [v20 setComputePipelineState:v40];
    [v20 setTexture:v33 atIndex:0];
    [v20 setTexture:v15 atIndex:2];
    [v20 setBytes:&v60 length:4 atIndex:0];
    if (v52)
    {
      [v52 floatValue];
      LODWORD(v56) = v41;
      [v20 setBytes:&v56 length:4 atIndex:1];
    }

    if (v14)
    {
      [v20 setTexture:v14 atIndex:1];
    }

    v42 = [(MTLComputePipelineState *)v40 threadExecutionWidth];
    v43 = [(MTLComputePipelineState *)v40 maxTotalThreadsPerThreadgroup]/ v42;
    v44 = [v15 width] >> 1;
    v45 = [v15 height];
    v56 = v44;
    v57 = v45 >> 1;
    v58 = 1;
    v53 = v42;
    v54 = v43;
    v55 = 1;
    [v20 dispatchThreads:&v56 threadsPerThreadgroup:&v53];
    [v20 endEncoding];
    v19 = v50;
    if (gGMFigKTraceEnabled)
    {
      v46 = [v50 commandQueue];
      v47 = [v46 commandBuffer];

      [v47 setLabel:@"KTRACE_MTLCMDBUF"];
      [v47 addCompletedHandler:&stru_346B8];
      [v47 commit];
      [v50 addCompletedHandler:&stru_346D8];

      v13 = v52;
    }

    [v50 setLabel:@"VideoDeghostingV1BrightLight_Dilate"];
    [v50 commit];

    v48 = 0;
    v12 = v51;
  }

  else
  {
    sub_197F0(v22, &v56);
    v40 = 0;
    v48 = v56;
    v13 = v52;
  }

LABEL_24:
  FigMetalDecRef();

  return v48;
}

- (int)erodeTexture:(id)a3 withNormalizedRadius:(float)a4 output:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 width];
  if (v10 <= [v8 height])
  {
    v11 = [v8 height];
  }

  else
  {
    v11 = [v8 width];
  }

  v47 = (v11 * a4);
  v46 = 0;
  if ([v9 width])
  {
    sub_19AB0(&v43);
LABEL_20:
    v37 = v43;
    goto LABEL_13;
  }

  if ([v9 height])
  {
    sub_19AF8(&v43);
    goto LABEL_20;
  }

  v12 = [(FigMetalContext *)self->_metal commandQueue];
  v13 = [v12 commandBuffer];

  if (!v13)
  {
    sub_19D58(&v43);
    goto LABEL_20;
  }

  v14 = [v13 computeCommandEncoder];
  if (!v14)
  {
    sub_19CB8(v13, &v43);
    goto LABEL_20;
  }

  v15 = v14;
  v16 = [(FigMetalContext *)self->_metal allocator];
  v17 = [v16 newTextureDescriptor];

  if (!v17)
  {
    sub_19C00(v15, v13, &v43);
    goto LABEL_20;
  }

  v18 = [v17 desc];
  [v18 setCompressionMode:2];

  v19 = [v17 desc];
  [v19 setCompressionFootprint:0];

  v20 = [v17 desc];
  [v20 setUsage:7];

  v21 = [v8 pixelFormat];
  v22 = [v17 desc];
  [v22 setPixelFormat:v21];

  v23 = [v8 width];
  v24 = [v17 desc];
  [v24 setWidth:v23];

  v25 = [v8 height];
  v26 = [v17 desc];
  [v26 setHeight:v25];

  [v17 setLabel:0];
  v27 = [(FigMetalContext *)self->_metal allocator];
  v28 = [v27 newTextureWithDescriptor:v17];
  v46 = v28;

  if (!v28)
  {
    sub_19B40(v17, v15, v13, &v43);
    goto LABEL_20;
  }

  [v15 setComputePipelineState:self->_pipelineStates[4]];
  v39 = v8;
  [v15 setTexture:v8 atIndex:0];
  [v15 setTexture:v28 atIndex:1];
  [v15 setBytes:&v47 length:4 atIndex:0];
  v29 = [(MTLComputePipelineState *)self->_pipelineStates[4] threadExecutionWidth];
  v30 = [(MTLComputePipelineState *)self->_pipelineStates[4] maxTotalThreadsPerThreadgroup]/ v29;
  v43 = [v9 width] >> 1;
  v44 = [v9 height] >> 1;
  v45 = 1;
  v40 = v29;
  v41 = v30;
  v42 = 1;
  [v15 dispatchThreads:&v43 threadsPerThreadgroup:&v40];
  [v15 setComputePipelineState:self->_pipelineStates[5]];
  [v15 setTexture:v28 atIndex:0];
  [v15 setTexture:v9 atIndex:1];
  [v15 setBytes:&v47 length:4 atIndex:0];
  v31 = [(MTLComputePipelineState *)self->_pipelineStates[5] threadExecutionWidth];
  v32 = [(MTLComputePipelineState *)self->_pipelineStates[5] maxTotalThreadsPerThreadgroup]/ v31;
  v33 = [v9 width] >> 1;
  v34 = [v9 height];
  v43 = v33;
  v44 = v34 >> 1;
  v45 = 1;
  v40 = v31;
  v41 = v32;
  v42 = 1;
  [v15 dispatchThreads:&v43 threadsPerThreadgroup:&v40];
  [v15 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    v35 = [v13 commandQueue];
    v36 = [v35 commandBuffer];

    [v36 setLabel:@"KTRACE_MTLCMDBUF"];
    [v36 addCompletedHandler:&stru_346F8];
    [v36 commit];
    [v13 addCompletedHandler:&stru_34718];
  }

  [v13 setLabel:@"VideoDeghostingV1BrightLight_Erode"];
  [v13 commit];

  v37 = 0;
  v8 = v39;
LABEL_13:
  FigMetalDecRef();

  return v37;
}

- (int)brightnessDetectionInputReflectedLuma:(id)a3 output:(id)a4 params:(BrightnessTuning)a5 processingROIInfo:(ProcessingROIInfo *)a6
{
  v7 = v6;
  v11 = a3;
  v12 = a4;
  var0 = a6->var0;
  v13 = *(v7 + 16);
  v42 = 0;
  v14 = [(FigMetalContext *)self->_metal commandQueue];
  v15 = [v14 commandBuffer];

  if (!v15)
  {
    sub_1A038(v41);
    v18 = 0;
    v16 = 0;
LABEL_15:
    v37 = v41[0];
    goto LABEL_10;
  }

  v16 = [v15 computeCommandEncoder];
  if (!v16)
  {
    sub_19FB0(v41);
    v18 = 0;
    goto LABEL_15;
  }

  v17 = [(FigMetalContext *)self->_metal allocator];
  v18 = [v17 newTextureDescriptor];

  if (!v18)
  {
    sub_19F28(v41);
    goto LABEL_15;
  }

  v19 = [v18 desc];
  [v19 setCompressionMode:2];

  v20 = [v18 desc];
  [v20 setCompressionFootprint:0];

  v21 = [v18 desc];
  [v21 setUsage:7];

  v22 = [v11 pixelFormat];
  v23 = [v18 desc];
  [v23 setPixelFormat:v22];

  v24 = [v11 width];
  v25 = [v18 desc];
  [v25 setWidth:v24];

  v26 = [v11 height];
  v27 = [v18 desc];
  [v27 setHeight:v26];

  [v18 setLabel:0];
  v28 = [(FigMetalContext *)self->_metal allocator];
  v29 = [v28 newTextureWithDescriptor:v18];
  v42 = v29;

  if (!v29)
  {
    sub_19EA0(v41);
    goto LABEL_15;
  }

  v39 = a6;
  [v16 setComputePipelineState:self->_pipelineStates[7]];
  [v16 setTexture:v11 atIndex:0];
  [v16 setTexture:v12 atIndex:1];
  [v16 setBytes:&var0 length:4 atIndex:0];
  v30 = [(MTLComputePipelineState *)self->_pipelineStates[7] threadExecutionWidth];
  v31 = [(MTLComputePipelineState *)self->_pipelineStates[7] maxTotalThreadsPerThreadgroup]/ v30;
  v41[0] = [v12 width] >> 1;
  v41[1] = [v12 height] >> 1;
  v41[2] = 1;
  v40[0] = v30;
  v40[1] = v31;
  v40[2] = 1;
  [v16 dispatchThreads:v41 threadsPerThreadgroup:v40];
  [v16 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    v32 = [v15 commandQueue];
    v33 = [v32 commandBuffer];

    [v33 setLabel:@"KTRACE_MTLCMDBUF"];
    [v33 addCompletedHandler:&stru_34738];
    [v33 commit];
    [v15 addCompletedHandler:&stru_34758];
  }

  [v15 setLabel:@"VideoDeghostingV1BrightLight_BrightnessDetect"];
  [v15 commit];
  *&v34 = v13 * v39[5].var0;
  v35 = [(CMIVideoDeghostingBrightLightCommonV1 *)self erodeTexture:v12 withNormalizedRadius:v29 output:v34];
  if (v35)
  {
    v37 = v35;
    sub_19DE0();
  }

  else
  {
    *&v36 = v13 * v39[4].var0;
    v37 = [(CMIVideoDeghostingBrightLightCommonV1 *)self dilateTexture:v29 withNormalizedRadius:v12 output:v36];
    if (v37)
    {
      sub_19E40();
    }
  }

LABEL_10:
  FigMetalDecRef();

  return v37;
}

- (int)combineBrightnessMask:(id)a3 greenMask:(id)a4 output:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v10 width])
  {
    sub_1A3C0(v22);
LABEL_13:
    v19 = v22[0];
    goto LABEL_8;
  }

  if ([v10 height])
  {
    sub_1A408(v22);
    goto LABEL_13;
  }

  v11 = [(FigMetalContext *)self->_metal commandQueue];
  v12 = [v11 commandBuffer];

  if (!v12)
  {
    sub_1A4F0(v22);
    goto LABEL_13;
  }

  v13 = [v12 computeCommandEncoder];
  if (!v13)
  {
    sub_1A450(v12, v22);
    goto LABEL_13;
  }

  v14 = v13;
  [v13 setComputePipelineState:self->_pipelineStates[10]];
  [v14 setTexture:v8 atIndex:0];
  [v14 setTexture:v9 atIndex:1];
  [v14 setTexture:v10 atIndex:2];
  v15 = [(MTLComputePipelineState *)self->_pipelineStates[10] threadExecutionWidth];
  v16 = [(MTLComputePipelineState *)self->_pipelineStates[10] maxTotalThreadsPerThreadgroup]/ v15;
  v22[0] = [v10 width] >> 1;
  v22[1] = [v10 height] >> 1;
  v22[2] = 1;
  v21[0] = v15;
  v21[1] = v16;
  v21[2] = 1;
  [v14 dispatchThreads:v22 threadsPerThreadgroup:v21];
  [v14 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    v17 = [v12 commandQueue];
    v18 = [v17 commandBuffer];

    [v18 setLabel:@"KTRACE_MTLCMDBUF"];
    [v18 addCompletedHandler:&stru_347B8];
    [v18 commit];
    [v12 addCompletedHandler:&stru_347D8];
  }

  [v12 setLabel:@"VideoDeghostingV1BrightLight_Combine"];
  [v12 commit];

  v19 = 0;
LABEL_8:

  return v19;
}

- (int)detectionWithReflectedLuma:(id)a3 croppedLuma:(id)a4 chroma:(id)a5 outputMask:(id)a6 params:(DetectionTuning *)a7 processingROIInfo:(ProcessingROIInfo *)a8 inputIsHDR:(BOOL)a9
{
  v15 = a3;
  v42 = a4;
  v16 = a5;
  v17 = a6;
  v47 = 0;
  v48 = 0;
  v18 = [(FigMetalContext *)self->_metal allocator];
  v19 = [v18 newTextureDescriptor];

  if (!v19)
  {
    v31 = v15;
    sub_1A7A8(&v43);
LABEL_15:
    v40 = v43;
    goto LABEL_16;
  }

  v20 = [v19 desc];
  [v20 setCompressionMode:2];

  v21 = [v19 desc];
  [v21 setCompressionFootprint:0];

  v22 = [v19 desc];
  [v22 setUsage:7];

  v23 = [v17 pixelFormat];
  v24 = [v19 desc];
  [v24 setPixelFormat:v23];

  v25 = [v17 width];
  v26 = [v19 desc];
  [v26 setWidth:v25];

  v27 = [v17 height];
  v28 = [v19 desc];
  [v28 setHeight:v27];

  [v19 setLabel:0];
  v29 = [(FigMetalContext *)self->_metal allocator];
  v30 = [v29 newTextureWithDescriptor:v19];
  v48 = v30;

  if (!v30)
  {
    v31 = v15;
    sub_1A720(&v43);
    goto LABEL_15;
  }

  v43 = *&a7->brightParams.threshold;
  *&v44 = *&a7->var1;
  v31 = v15;
  v32 = [(CMIVideoDeghostingBrightLightCommonV1 *)self brightnessDetectionInputReflectedLuma:v15 output:v30 params:&v43 processingROIInfo:a8];
  if (v32)
  {
    v40 = v32;
    sub_1A578();
LABEL_16:
    v38 = v42;
    goto LABEL_10;
  }

  [v19 setLabel:0];
  v33 = [(FigMetalContext *)self->_metal allocator];
  v34 = [v33 newTextureWithDescriptor:v19];
  v47 = v34;

  if (!v34)
  {
    sub_1A698(&v43);
    goto LABEL_15;
  }

  v35 = 24;
  if (a9)
  {
    v35 = 56;
  }

  v36 = (a7 + v35);
  v37 = v36[1];
  v45 = *v36;
  v46 = v37;
  v43 = v45;
  v44 = v37;
  v38 = v42;
  v39 = [(CMIVideoDeghostingBrightLightCommonV1 *)self greenDetectionLuma:v42 chroma:v16 output:v34 params:&v43 processingROIInfo:a8 inputIsHDR:?];
  if (v39)
  {
    v40 = v39;
    sub_1A5D8();
  }

  else
  {
    v40 = [(CMIVideoDeghostingBrightLightCommonV1 *)self combineBrightnessMask:v30 greenMask:v34 output:v17];
    if (v40)
    {
      sub_1A638();
    }
  }

LABEL_10:
  FigMetalDecRef();
  FigMetalDecRef();

  return v40;
}

@end