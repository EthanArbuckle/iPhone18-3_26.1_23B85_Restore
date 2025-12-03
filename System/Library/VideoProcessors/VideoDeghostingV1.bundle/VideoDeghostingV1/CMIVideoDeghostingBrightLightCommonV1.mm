@interface CMIVideoDeghostingBrightLightCommonV1
- (CMIVideoDeghostingBrightLightCommonV1)initWithMetalContext:(id)context;
- (id)_functionNameForProgram:(int)program;
- (int)_compileDilateVerticalShaders;
- (int)_compileShaders;
- (int)brightnessDetectionInputReflectedLuma:(id)luma output:(id)output params:(BrightnessTuning)params processingROIInfo:(ProcessingROIInfo *)info;
- (int)combineBrightnessMask:(id)mask greenMask:(id)greenMask output:(id)output;
- (int)detectionWithReflectedLuma:(id)luma croppedLuma:(id)croppedLuma chroma:(id)chroma outputMask:(id)mask params:(DetectionTuning *)params processingROIInfo:(ProcessingROIInfo *)info inputIsHDR:(BOOL)r;
- (int)dilateTexture:(id)texture withNormalizedRadius:(float)radius withThreshold:(id)threshold subtractTexture:(id)subtractTexture output:(id)output;
- (int)erodeTexture:(id)texture withNormalizedRadius:(float)radius output:(id)output;
@end

@implementation CMIVideoDeghostingBrightLightCommonV1

- (id)_functionNameForProgram:(int)program
{
  if (program < 0xB)
  {
    return off_347F8[program];
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

  _compileDilateVerticalShaders = [(CMIVideoDeghostingBrightLightCommonV1 *)self _compileDilateVerticalShaders];
  if (_compileDilateVerticalShaders)
  {
    v38 = _compileDilateVerticalShaders;
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

- (CMIVideoDeghostingBrightLightCommonV1)initWithMetalContext:(id)context
{
  contextCopy = context;
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

  objc_storeStrong(&v6->_metal, context);
  _compileShaders = [(CMIVideoDeghostingBrightLightCommonV1 *)v7 _compileShaders];
  v9 = v7;
  if (_compileShaders)
  {
    sub_19678();
    goto LABEL_6;
  }

LABEL_3:
  v10 = v9;

  return v10;
}

- (int)dilateTexture:(id)texture withNormalizedRadius:(float)radius withThreshold:(id)threshold subtractTexture:(id)subtractTexture output:(id)output
{
  textureCopy = texture;
  thresholdCopy = threshold;
  subtractTextureCopy = subtractTexture;
  outputCopy = output;
  width = [textureCopy width];
  if (width <= [textureCopy height])
  {
    height = [textureCopy height];
  }

  else
  {
    height = [textureCopy width];
  }

  v60 = (height * radius);
  v59 = 0;
  if ([outputCopy width])
  {
    sub_19760(&v56);
LABEL_28:
    v40 = 0;
    computeCommandEncoder = 0;
    commandBuffer = 0;
LABEL_33:
    v48 = v56;
    goto LABEL_24;
  }

  if ([outputCopy height])
  {
    sub_197A8(&v56);
    goto LABEL_28;
  }

  if (thresholdCopy && subtractTextureCopy)
  {
    sub_19A28(&v56);
    goto LABEL_28;
  }

  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_199A0(&v56);
    v40 = 0;
    computeCommandEncoder = 0;
    goto LABEL_33;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_19918(&v56);
LABEL_32:
    v40 = 0;
    goto LABEL_33;
  }

  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_19890(&v56);
    goto LABEL_32;
  }

  v52 = thresholdCopy;
  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  pixelFormat = [textureCopy pixelFormat];
  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:pixelFormat];

  width2 = [textureCopy width];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:width2];

  height2 = [textureCopy height];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:height2];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metal allocator];
  v33 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v59 = v33;

  if (v33)
  {
    v50 = commandBuffer;
    v35 = self->_pipelineStates[0];
    pipelineStates = self->_pipelineStates;
    [computeCommandEncoder setComputePipelineState:v35];
    v51 = textureCopy;
    [computeCommandEncoder setTexture:textureCopy atIndex:0];
    [computeCommandEncoder setTexture:v33 atIndex:1];
    [computeCommandEncoder setBytes:&v60 length:4 atIndex:0];
    threadExecutionWidth = [(MTLComputePipelineState *)*pipelineStates threadExecutionWidth];
    v37 = [(MTLComputePipelineState *)*pipelineStates maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
    v56 = [outputCopy width] >> 1;
    v57 = [outputCopy height] >> 1;
    v58 = 1;
    v53 = threadExecutionWidth;
    v54 = v37;
    v55 = 1;
    [computeCommandEncoder dispatchThreads:&v56 threadsPerThreadgroup:&v53];
    thresholdCopy = v52;
    v38 = 3;
    if (v52)
    {
      v38 = 4;
    }

    if (subtractTextureCopy)
    {
      v39 = v38;
    }

    else
    {
      v39 = (v52 != 0) + 1;
    }

    v40 = pipelineStates[v39];
    [computeCommandEncoder setComputePipelineState:v40];
    [computeCommandEncoder setTexture:v33 atIndex:0];
    [computeCommandEncoder setTexture:outputCopy atIndex:2];
    [computeCommandEncoder setBytes:&v60 length:4 atIndex:0];
    if (v52)
    {
      [v52 floatValue];
      LODWORD(v56) = v41;
      [computeCommandEncoder setBytes:&v56 length:4 atIndex:1];
    }

    if (subtractTextureCopy)
    {
      [computeCommandEncoder setTexture:subtractTextureCopy atIndex:1];
    }

    threadExecutionWidth2 = [(MTLComputePipelineState *)v40 threadExecutionWidth];
    v43 = [(MTLComputePipelineState *)v40 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
    v44 = [outputCopy width] >> 1;
    height3 = [outputCopy height];
    v56 = v44;
    v57 = height3 >> 1;
    v58 = 1;
    v53 = threadExecutionWidth2;
    v54 = v43;
    v55 = 1;
    [computeCommandEncoder dispatchThreads:&v56 threadsPerThreadgroup:&v53];
    [computeCommandEncoder endEncoding];
    commandBuffer = v50;
    if (gGMFigKTraceEnabled)
    {
      commandQueue2 = [v50 commandQueue];
      commandBuffer2 = [commandQueue2 commandBuffer];

      [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
      [commandBuffer2 addCompletedHandler:&stru_346B8];
      [commandBuffer2 commit];
      [v50 addCompletedHandler:&stru_346D8];

      thresholdCopy = v52;
    }

    [v50 setLabel:@"VideoDeghostingV1BrightLight_Dilate"];
    [v50 commit];

    v48 = 0;
    textureCopy = v51;
  }

  else
  {
    sub_197F0(newTextureDescriptor, &v56);
    v40 = 0;
    v48 = v56;
    thresholdCopy = v52;
  }

LABEL_24:
  FigMetalDecRef();

  return v48;
}

- (int)erodeTexture:(id)texture withNormalizedRadius:(float)radius output:(id)output
{
  textureCopy = texture;
  outputCopy = output;
  width = [textureCopy width];
  if (width <= [textureCopy height])
  {
    height = [textureCopy height];
  }

  else
  {
    height = [textureCopy width];
  }

  v47 = (height * radius);
  v46 = 0;
  if ([outputCopy width])
  {
    sub_19AB0(&v43);
LABEL_20:
    v37 = v43;
    goto LABEL_13;
  }

  if ([outputCopy height])
  {
    sub_19AF8(&v43);
    goto LABEL_20;
  }

  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_19D58(&v43);
    goto LABEL_20;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_19CB8(commandBuffer, &v43);
    goto LABEL_20;
  }

  v15 = computeCommandEncoder;
  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_19C00(v15, commandBuffer, &v43);
    goto LABEL_20;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  pixelFormat = [textureCopy pixelFormat];
  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:pixelFormat];

  width2 = [textureCopy width];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:width2];

  height2 = [textureCopy height];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:height2];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metal allocator];
  v28 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v46 = v28;

  if (!v28)
  {
    sub_19B40(newTextureDescriptor, v15, commandBuffer, &v43);
    goto LABEL_20;
  }

  [v15 setComputePipelineState:self->_pipelineStates[4]];
  v39 = textureCopy;
  [v15 setTexture:textureCopy atIndex:0];
  [v15 setTexture:v28 atIndex:1];
  [v15 setBytes:&v47 length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[4] threadExecutionWidth];
  v30 = [(MTLComputePipelineState *)self->_pipelineStates[4] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v43 = [outputCopy width] >> 1;
  v44 = [outputCopy height] >> 1;
  v45 = 1;
  v40 = threadExecutionWidth;
  v41 = v30;
  v42 = 1;
  [v15 dispatchThreads:&v43 threadsPerThreadgroup:&v40];
  [v15 setComputePipelineState:self->_pipelineStates[5]];
  [v15 setTexture:v28 atIndex:0];
  [v15 setTexture:outputCopy atIndex:1];
  [v15 setBytes:&v47 length:4 atIndex:0];
  threadExecutionWidth2 = [(MTLComputePipelineState *)self->_pipelineStates[5] threadExecutionWidth];
  v32 = [(MTLComputePipelineState *)self->_pipelineStates[5] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  v33 = [outputCopy width] >> 1;
  height3 = [outputCopy height];
  v43 = v33;
  v44 = height3 >> 1;
  v45 = 1;
  v40 = threadExecutionWidth2;
  v41 = v32;
  v42 = 1;
  [v15 dispatchThreads:&v43 threadsPerThreadgroup:&v40];
  [v15 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_346F8];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_34718];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1BrightLight_Erode"];
  [commandBuffer commit];

  v37 = 0;
  textureCopy = v39;
LABEL_13:
  FigMetalDecRef();

  return v37;
}

- (int)brightnessDetectionInputReflectedLuma:(id)luma output:(id)output params:(BrightnessTuning)params processingROIInfo:(ProcessingROIInfo *)info
{
  v7 = v6;
  lumaCopy = luma;
  outputCopy = output;
  var0 = info->var0;
  v13 = *(v7 + 16);
  v42 = 0;
  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_1A038(v41);
    newTextureDescriptor = 0;
    computeCommandEncoder = 0;
LABEL_15:
    v37 = v41[0];
    goto LABEL_10;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_19FB0(v41);
    newTextureDescriptor = 0;
    goto LABEL_15;
  }

  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    sub_19F28(v41);
    goto LABEL_15;
  }

  desc = [newTextureDescriptor desc];
  [desc setCompressionMode:2];

  desc2 = [newTextureDescriptor desc];
  [desc2 setCompressionFootprint:0];

  desc3 = [newTextureDescriptor desc];
  [desc3 setUsage:7];

  pixelFormat = [lumaCopy pixelFormat];
  desc4 = [newTextureDescriptor desc];
  [desc4 setPixelFormat:pixelFormat];

  width = [lumaCopy width];
  desc5 = [newTextureDescriptor desc];
  [desc5 setWidth:width];

  height = [lumaCopy height];
  desc6 = [newTextureDescriptor desc];
  [desc6 setHeight:height];

  [newTextureDescriptor setLabel:0];
  allocator2 = [(FigMetalContext *)self->_metal allocator];
  v29 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v42 = v29;

  if (!v29)
  {
    sub_19EA0(v41);
    goto LABEL_15;
  }

  infoCopy = info;
  [computeCommandEncoder setComputePipelineState:self->_pipelineStates[7]];
  [computeCommandEncoder setTexture:lumaCopy atIndex:0];
  [computeCommandEncoder setTexture:outputCopy atIndex:1];
  [computeCommandEncoder setBytes:&var0 length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[7] threadExecutionWidth];
  v31 = [(MTLComputePipelineState *)self->_pipelineStates[7] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v41[0] = [outputCopy width] >> 1;
  v41[1] = [outputCopy height] >> 1;
  v41[2] = 1;
  v40[0] = threadExecutionWidth;
  v40[1] = v31;
  v40[2] = 1;
  [computeCommandEncoder dispatchThreads:v41 threadsPerThreadgroup:v40];
  [computeCommandEncoder endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_34738];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_34758];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1BrightLight_BrightnessDetect"];
  [commandBuffer commit];
  *&v34 = v13 * infoCopy[5].var0;
  v35 = [(CMIVideoDeghostingBrightLightCommonV1 *)self erodeTexture:outputCopy withNormalizedRadius:v29 output:v34];
  if (v35)
  {
    v37 = v35;
    sub_19DE0();
  }

  else
  {
    *&v36 = v13 * infoCopy[4].var0;
    v37 = [(CMIVideoDeghostingBrightLightCommonV1 *)self dilateTexture:v29 withNormalizedRadius:outputCopy output:v36];
    if (v37)
    {
      sub_19E40();
    }
  }

LABEL_10:
  FigMetalDecRef();

  return v37;
}

- (int)combineBrightnessMask:(id)mask greenMask:(id)greenMask output:(id)output
{
  maskCopy = mask;
  greenMaskCopy = greenMask;
  outputCopy = output;
  if ([outputCopy width])
  {
    sub_1A3C0(v22);
LABEL_13:
    v19 = v22[0];
    goto LABEL_8;
  }

  if ([outputCopy height])
  {
    sub_1A408(v22);
    goto LABEL_13;
  }

  commandQueue = [(FigMetalContext *)self->_metal commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_1A4F0(v22);
    goto LABEL_13;
  }

  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    sub_1A450(commandBuffer, v22);
    goto LABEL_13;
  }

  v14 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_pipelineStates[10]];
  [v14 setTexture:maskCopy atIndex:0];
  [v14 setTexture:greenMaskCopy atIndex:1];
  [v14 setTexture:outputCopy atIndex:2];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_pipelineStates[10] threadExecutionWidth];
  v16 = [(MTLComputePipelineState *)self->_pipelineStates[10] maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  v22[0] = [outputCopy width] >> 1;
  v22[1] = [outputCopy height] >> 1;
  v22[2] = 1;
  v21[0] = threadExecutionWidth;
  v21[1] = v16;
  v21[2] = 1;
  [v14 dispatchThreads:v22 threadsPerThreadgroup:v21];
  [v14 endEncoding];
  if (gGMFigKTraceEnabled)
  {
    commandQueue2 = [commandBuffer commandQueue];
    commandBuffer2 = [commandQueue2 commandBuffer];

    [commandBuffer2 setLabel:@"KTRACE_MTLCMDBUF"];
    [commandBuffer2 addCompletedHandler:&stru_347B8];
    [commandBuffer2 commit];
    [commandBuffer addCompletedHandler:&stru_347D8];
  }

  [commandBuffer setLabel:@"VideoDeghostingV1BrightLight_Combine"];
  [commandBuffer commit];

  v19 = 0;
LABEL_8:

  return v19;
}

- (int)detectionWithReflectedLuma:(id)luma croppedLuma:(id)croppedLuma chroma:(id)chroma outputMask:(id)mask params:(DetectionTuning *)params processingROIInfo:(ProcessingROIInfo *)info inputIsHDR:(BOOL)r
{
  lumaCopy = luma;
  croppedLumaCopy = croppedLuma;
  chromaCopy = chroma;
  maskCopy = mask;
  v47 = 0;
  v48 = 0;
  allocator = [(FigMetalContext *)self->_metal allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (!newTextureDescriptor)
  {
    v31 = lumaCopy;
    sub_1A7A8(&v43);
LABEL_15:
    v40 = v43;
    goto LABEL_16;
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
  v30 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];
  v48 = v30;

  if (!v30)
  {
    v31 = lumaCopy;
    sub_1A720(&v43);
    goto LABEL_15;
  }

  v43 = *&params->brightParams.threshold;
  *&v44 = *&params->var1;
  v31 = lumaCopy;
  v32 = [(CMIVideoDeghostingBrightLightCommonV1 *)self brightnessDetectionInputReflectedLuma:lumaCopy output:v30 params:&v43 processingROIInfo:info];
  if (v32)
  {
    v40 = v32;
    sub_1A578();
LABEL_16:
    v38 = croppedLumaCopy;
    goto LABEL_10;
  }

  [newTextureDescriptor setLabel:0];
  allocator3 = [(FigMetalContext *)self->_metal allocator];
  v34 = [allocator3 newTextureWithDescriptor:newTextureDescriptor];
  v47 = v34;

  if (!v34)
  {
    sub_1A698(&v43);
    goto LABEL_15;
  }

  v35 = 24;
  if (r)
  {
    v35 = 56;
  }

  v36 = (params + v35);
  v37 = v36[1];
  v45 = *v36;
  v46 = v37;
  v43 = v45;
  v44 = v37;
  v38 = croppedLumaCopy;
  v39 = [(CMIVideoDeghostingBrightLightCommonV1 *)self greenDetectionLuma:croppedLumaCopy chroma:chromaCopy output:v34 params:&v43 processingROIInfo:info inputIsHDR:?];
  if (v39)
  {
    v40 = v39;
    sub_1A5D8();
  }

  else
  {
    v40 = [(CMIVideoDeghostingBrightLightCommonV1 *)self combineBrightnessMask:v30 greenMask:v34 output:maskCopy];
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