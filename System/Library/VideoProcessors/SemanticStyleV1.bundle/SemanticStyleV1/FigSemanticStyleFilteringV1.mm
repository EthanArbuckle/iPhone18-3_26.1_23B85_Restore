@interface FigSemanticStyleFilteringV1
- (CGRect)destinationRectangleInOutputMaskPixelBuffer;
- (CGRect)inputImageCropRectangle;
- (FigSemanticStyleFilteringV1)initWithCommandQueue:(id)queue;
- (id)_textureFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage;
- (int)_applyFeathering:(id)feathering toOutputMaskTexture:(id)texture commandBuffer:(id)buffer;
- (int)_compileShaders;
- (int)_copyAndCenterMask:(id)mask toOutputMaskTexture:(id)texture destinationRectangle:(CGRect)rectangle commandBuffer:(id)buffer;
- (int)finishProcessing;
- (int)prepareToProcess:(unsigned int)process;
- (int)prewarm;
- (int)process;
- (int)purgeResources;
- (void)dealloc;
@end

@implementation FigSemanticStyleFilteringV1

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"smoothstepMask" constants:0];
  v4 = self->_pipelineStates[1];
  self->_pipelineStates[1] = v3;

  if (self->_pipelineStates[1])
  {
    v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"copyAndCenterMask" constants:0];
    v6 = self->_pipelineStates[0];
    self->_pipelineStates[0] = v5;

    if (self->_pipelineStates[0])
    {
      return 0;
    }

    else
    {
      sub_EFEC(&v8);
      return v8;
    }
  }

  else
  {
    sub_F09C(&v9);
    return v9;
  }
}

- (int)finishProcessing
{
  [(MTLCommandBuffer *)self->_previousCommandBuffer waitUntilCompleted];
  previousCommandBuffer = self->_previousCommandBuffer;
  self->_previousCommandBuffer = 0;

  return 0;
}

- (void)dealloc
{
  [(FigSemanticStyleFilteringV1 *)self purgeResources];
  v3.receiver = self;
  v3.super_class = FigSemanticStyleFilteringV1;
  [(FigSemanticStyleFilteringV1 *)&v3 dealloc];
}

- (int)prepareToProcess:(unsigned int)process
{
  [(FigLKTIIRFilter *)self->_lktiirFilter setMaskInterpolationEnabled:self->_maskInterpolationEnabled];
  if ([(FigLKTIIRFilter *)self->_lktiirFilter allocateResourcesForMaskSize:COERCE_DOUBLE(0xC000000100)])
  {
    sub_DD6C();
    v31 = 0;
    v4 = 0;
    goto LABEL_23;
  }

  v4 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:256 height:192 mipmapped:0];
  [v4 setUsage:7];
  device = [(FigMetalContext *)self->_metalContext device];
  v6 = [device newTextureWithDescriptor:v4];
  resizedInputImageToMaskSize = self->_resizedInputImageToMaskSize;
  self->_resizedInputImageToMaskSize = v6;

  if (!self->_resizedInputImageToMaskSize)
  {
    sub_E288(&v37);
    goto LABEL_22;
  }

  [v4 setPixelFormat:25];
  device2 = [(FigMetalContext *)self->_metalContext device];
  v9 = [device2 newTextureWithDescriptor:v4];
  nonFeatheredMask = self->_nonFeatheredMask;
  self->_nonFeatheredMask = v9;

  if (!self->_nonFeatheredMask)
  {
    sub_E1DC(&v37);
    goto LABEL_22;
  }

  device3 = [(FigMetalContext *)self->_metalContext device];
  v12 = [device3 newTextureWithDescriptor:v4];
  featheredMask = self->_featheredMask;
  self->_featheredMask = v12;

  if (!self->_featheredMask)
  {
    sub_E130(&v37);
    goto LABEL_22;
  }

  device4 = [(FigMetalContext *)self->_metalContext device];
  v15 = [device4 newTextureWithDescriptor:v4];
  blurredMask = self->_blurredMask;
  self->_blurredMask = v15;

  if (!self->_blurredMask)
  {
    sub_E084(&v37);
    goto LABEL_22;
  }

  device5 = [(FigMetalContext *)self->_metalContext device];
  v18 = [device5 newTextureWithDescriptor:v4];
  smoothedMask = self->_smoothedMask;
  self->_smoothedMask = v18;

  if (!self->_smoothedMask)
  {
    sub_DFD8(&v37);
    goto LABEL_22;
  }

  if (([(FigMetalContext *)self->_metalContext isHarvestingShaders]& 1) == 0)
  {
    FigGetCFPreferenceDoubleWithDefault();
    v21 = v20;
    v22 = [MPSImageGaussianBlur alloc];
    device6 = [(FigMetalContext *)self->_metalContext device];
    *&v24 = v21;
    v25 = [v22 initWithDevice:device6 sigma:v24];
    mpsBlur = self->_mpsBlur;
    self->_mpsBlur = v25;

    if (self->_mpsBlur)
    {
      v27 = [MPSImageMultiply alloc];
      device7 = [(FigMetalContext *)self->_metalContext device];
      v29 = [v27 initWithDevice:device7];
      mpsImageMultiply = self->_mpsImageMultiply;
      self->_mpsImageMultiply = v29;

      if (self->_mpsImageMultiply)
      {
        goto LABEL_10;
      }

      sub_DE1C(&v37);
    }

    else
    {
      sub_DEC8(&v37);
    }

LABEL_22:
    v31 = 0;
    goto LABEL_23;
  }

LABEL_10:
  v35 = kCVMetalTextureCacheMaximumTextureAgeKey;
  v36 = &off_18978;
  v31 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  device8 = [(FigMetalContext *)self->_metalContext device];
  v33 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v31, device8, 0, &self->_textureCache);

  if (!v33)
  {
    self->_frameIndex = 0;
    goto LABEL_12;
  }

  sub_DF74(&v37);
LABEL_23:
  v33 = v37;
  if (v37)
  {
    [(FigSemanticStyleFilteringV1 *)self purgeResources];
  }

LABEL_12:

  return v33;
}

- (int)prewarm
{
  v3 = [FigMetalContext alloc];
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v3 initWithbundle:v4 andOptionalCommandQueue:0];
  metalContext = self->_metalContext;
  self->_metalContext = v5;

  if (self->_metalContext)
  {
    v7 = [[FigLKTIIRFilter alloc] initWithMetalContext:self->_metalContext];
    lktiirFilter = self->_lktiirFilter;
    self->_lktiirFilter = v7;

    if (self->_lktiirFilter)
    {
      if ([(FigSemanticStyleFilteringV1 *)self _compileShaders])
      {
        sub_E334();
        return v10;
      }

      else
      {
        result = [(FigLKTIIRFilter *)self->_lktiirFilter allocateResourcesForMaskSize:COERCE_DOUBLE(0xC000000100)];
        if (result)
        {
          sub_E3E4();
          return v11;
        }
      }
    }

    else
    {
      sub_E494(&v12);
      return v12;
    }
  }

  else
  {
    sub_E540();
    return 0;
  }

  return result;
}

- (int)purgeResources
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CVMetalTextureCacheFlush(textureCache, 0);
    v4 = self->_textureCache;
    if (v4)
    {
      CFRelease(v4);
      self->_textureCache = 0;
    }
  }

  return 0;
}

- (int)process
{
  if (!self->_inputImagePixelBuffer)
  {
    sub_EF40(&v30);
LABEL_33:
    v15 = 0;
    commandBuffer = 0;
    v5 = 0;
    displacementFWD = 0;
    v4 = 0;
LABEL_50:
    v24 = v30;
    goto LABEL_28;
  }

  outputMaskPixelBuffer = self->_outputMaskPixelBuffer;
  if (!outputMaskPixelBuffer)
  {
    sub_EE94(&v30);
    goto LABEL_33;
  }

  if (CVPixelBufferGetPixelFormatType(outputMaskPixelBuffer) != 1278226536)
  {
    sub_E5C4(&v30);
    goto LABEL_33;
  }

  if (!self->_opticalFlowDisplacementPixelBuffer)
  {
    sub_EDE8(&v30);
    goto LABEL_33;
  }

  v4 = [(FigSemanticStyleFilteringV1 *)self _textureFromPixelBuffer:self->_inputImagePixelBuffer usage:1];
  if (!v4)
  {
    sub_ED3C(&v30);
    v15 = 0;
    commandBuffer = 0;
    v5 = 0;
LABEL_49:
    displacementFWD = 0;
    goto LABEL_50;
  }

  v5 = [(FigSemanticStyleFilteringV1 *)self _textureFromPixelBuffer:self->_outputMaskPixelBuffer usage:1];
  if (!v5)
  {
    sub_EC90(&v30);
    v15 = 0;
    commandBuffer = 0;
    goto LABEL_49;
  }

  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue commandBuffer];

  if (!commandBuffer)
  {
    sub_EBE4(&v30);
LABEL_48:
    v15 = 0;
    goto LABEL_49;
  }

  v8 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:self->_opticalFlowDisplacementPixelBuffer pixelFormat:65 usage:1 plane:0];
  [(FigLKTIIRFilter *)self->_lktiirFilter setDisplacementFWD:v8];

  displacementFWD = [(FigLKTIIRFilter *)self->_lktiirFilter displacementFWD];

  if (!displacementFWD)
  {
    sub_EB38(&v30);
    goto LABEL_41;
  }

  inputMaskPixelBuffer = self->_inputMaskPixelBuffer;
  if (inputMaskPixelBuffer)
  {
    displacementFWD = [(FigSemanticStyleFilteringV1 *)self _textureFromPixelBuffer:inputMaskPixelBuffer usage:1];
    if (displacementFWD)
    {
      if (!self->_maskInterpolationEnabled)
      {
LABEL_14:
        displacementFWD = displacementFWD;
        v14 = commandBuffer;
        v15 = displacementFWD;
        goto LABEL_19;
      }

      lktiirFilter = self->_lktiirFilter;
      frameIndex = self->_frameIndex;
      v29 = commandBuffer;
      v13 = [(FigLKTIIRFilter *)lktiirFilter cacheInputMask:displacementFWD inputImage:v4 frameIndex:frameIndex commandBuffer:&v29];
      v14 = v29;

      if (!v13)
      {
        commandBuffer = v14;
        goto LABEL_14;
      }

      sub_E670();
      v15 = 0;
LABEL_45:
      v24 = v30;
      commandBuffer = v14;
      goto LABEL_28;
    }

    sub_E720(&v30);
LABEL_41:
    v15 = 0;
    goto LABEL_50;
  }

  if (!self->_maskInterpolationEnabled)
  {
LABEL_47:
    sub_EA8C(&v30);
    goto LABEL_48;
  }

  v16 = self->_lktiirFilter;
  v28 = commandBuffer;
  v17 = [(FigLKTIIRFilter *)v16 updateWarpedKeyFrameToCurrentFrame:&v28 frameIndex:self->_frameIndex];
  v14 = v28;

  if (v17)
  {
    sub_E7CC();
    v15 = 0;
    displacementFWD = 0;
    goto LABEL_45;
  }

  warpedKeyFrameToCurrentFrameMask = [(FigLKTIIRFilter *)self->_lktiirFilter warpedKeyFrameToCurrentFrameMask];
  if (!warpedKeyFrameToCurrentFrameMask)
  {
    commandBuffer = v14;
    goto LABEL_47;
  }

  v15 = warpedKeyFrameToCurrentFrameMask;
  displacementFWD = 0;
LABEL_19:
  v19 = self->_lktiirFilter;
  v27 = v14;
  v20 = [(FigLKTIIRFilter *)v19 computeLKTIIRFilter:&v27 inputSegmentationMask:v15 filteredSegmentationMask:self->_nonFeatheredMask];
  commandBuffer = v27;

  if (v20)
  {
    sub_E87C();
    goto LABEL_50;
  }

  if (self->_applyFeathering)
  {
    if ([(FigSemanticStyleFilteringV1 *)self _applyFeathering:self->_nonFeatheredMask toOutputMaskTexture:self->_featheredMask commandBuffer:commandBuffer])
    {
      sub_E92C();
      goto LABEL_50;
    }

    applyFeathering = self->_applyFeathering;
  }

  else
  {
    applyFeathering = 0;
  }

  v22 = !applyFeathering;
  v23 = 40;
  if (!v22)
  {
    v23 = 64;
  }

  if ([(FigSemanticStyleFilteringV1 *)self _copyAndCenterMask:*(&self->super.isa + v23) toOutputMaskTexture:v5 destinationRectangle:commandBuffer commandBuffer:self->_destinationRectangleInOutputMaskPixelBuffer.origin.x, self->_destinationRectangleInOutputMaskPixelBuffer.origin.y, self->_destinationRectangleInOutputMaskPixelBuffer.size.width, self->_destinationRectangleInOutputMaskPixelBuffer.size.height])
  {
    sub_E9DC();
    goto LABEL_50;
  }

  ++self->_frameIndex;
  [(FigLKTIIRFilter *)self->_lktiirFilter nextFrame];
  v24 = 0;
LABEL_28:
  [commandBuffer commit];
  [commandBuffer waitUntilScheduled];
  previousCommandBuffer = self->_previousCommandBuffer;
  self->_previousCommandBuffer = commandBuffer;

  return v24;
}

- (int)_applyFeathering:(id)feathering toOutputMaskTexture:(id)texture commandBuffer:(id)buffer
{
  v9 = self->_pipelineStates[1];
  bufferCopy = buffer;
  textureCopy = texture;
  featheringCopy = feathering;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v9];
  [computeCommandEncoder setTexture:featheringCopy atIndex:0];

  [computeCommandEncoder setTexture:self->_smoothedMask atIndex:1];
  [computeCommandEncoder setBytes:&self->_smoothstepLeftEdge length:4 atIndex:0];
  [computeCommandEncoder setBytes:&self->_smoothstepRightEdge length:4 atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)v9 threadExecutionWidth];
  v15 = [(MTLComputePipelineState *)v9 maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  width = [(MTLTexture *)self->_smoothedMask width];
  height = [(MTLTexture *)self->_smoothedMask height];
  v20[0] = width;
  v20[1] = height;
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = v15;
  v19[2] = 1;
  [computeCommandEncoder dispatchThreads:v20 threadsPerThreadgroup:v19];
  [computeCommandEncoder endEncoding];
  [(MPSImageGaussianBlur *)self->_mpsBlur encodeToCommandBuffer:bufferCopy sourceTexture:self->_smoothedMask destinationTexture:self->_blurredMask];
  [(MPSImageMultiply *)self->_mpsImageMultiply encodeToCommandBuffer:bufferCopy primaryTexture:self->_smoothedMask secondaryTexture:self->_blurredMask destinationTexture:textureCopy];

  return 0;
}

- (int)_copyAndCenterMask:(id)mask toOutputMaskTexture:(id)texture destinationRectangle:(CGRect)rectangle commandBuffer:(id)buffer
{
  width = rectangle.size.width;
  x = rectangle.origin.x;
  v11 = self->_pipelineStates[0];
  bufferCopy = buffer;
  textureCopy = texture;
  maskCopy = mask;
  v26 = llround(x * ([textureCopy width] - 1));
  v25 = llround(width * ([textureCopy width] - 1));
  v15 = width * ([textureCopy width] - 1);
  v16 = v15 / ([maskCopy width] - 1);
  v24 = v16;
  computeCommandEncoder = [bufferCopy computeCommandEncoder];

  [computeCommandEncoder setComputePipelineState:v11];
  [computeCommandEncoder setTexture:maskCopy atIndex:0];

  [computeCommandEncoder setTexture:textureCopy atIndex:1];
  [computeCommandEncoder setBytes:&v26 length:4 atIndex:0];
  [computeCommandEncoder setBytes:&v25 length:4 atIndex:1];
  [computeCommandEncoder setBytes:&v24 length:4 atIndex:2];
  threadExecutionWidth = [(MTLComputePipelineState *)v11 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v11 maxTotalThreadsPerThreadgroup];

  width = [textureCopy width];
  LODWORD(v11) = [textureCopy height];

  v23[0] = width;
  v23[1] = v11;
  v23[2] = 1;
  v22[0] = threadExecutionWidth;
  v22[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v22[2] = 1;
  [computeCommandEncoder dispatchThreads:v23 threadsPerThreadgroup:v22];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (id)_textureFromPixelBuffer:(__CVBuffer *)buffer usage:(unint64_t)usage
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  v8 = 0;
  v9 = MTLPixelFormatDepth32Float_Stencil8|MTLPixelFormatGBGR422;
  if (PixelFormatType > 875704437)
  {
    if (PixelFormatType > 1278226533)
    {
      if (PixelFormatType != 2084718401)
      {
        if (PixelFormatType == 1278226536)
        {
          v9 = MTLPixelFormatR16Float;
        }

        else
        {
          if (PixelFormatType != 1278226534)
          {
            goto LABEL_22;
          }

          v9 = MTLPixelFormatR32Float;
        }

        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (PixelFormatType == 875704438)
    {
      goto LABEL_17;
    }

    v10 = 1111970369;
    goto LABEL_15;
  }

  if (PixelFormatType > 792872768)
  {
    if (PixelFormatType != 792872769)
    {
      if (PixelFormatType != 875704422)
      {
        goto LABEL_22;
      }

      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (PixelFormatType != 641877825)
  {
    v10 = 759318337;
LABEL_15:
    if (PixelFormatType != v10)
    {
      goto LABEL_22;
    }
  }

LABEL_16:
  v9 = MTLPixelFormatRGBA8Unorm;
LABEL_17:
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  v19 = kCVMetalTextureUsage;
  v13 = [NSNumber numberWithUnsignedInteger:usage];
  v20 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];

  image = 0;
  v15 = CVMetalTextureCacheCreateTextureFromImage(kCFAllocatorDefault, self->_textureCache, buffer, v14, v9, WidthOfPlane, HeightOfPlane, 0, &image);
  v8 = 0;
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = image == 0;
  }

  if (!v16)
  {
    v8 = CVMetalTextureGetTexture(image);
    CFRelease(image);
  }

LABEL_22:

  return v8;
}

- (CGRect)inputImageCropRectangle
{
  x = self->_inputImageCropRectangle.origin.x;
  y = self->_inputImageCropRectangle.origin.y;
  width = self->_inputImageCropRectangle.size.width;
  height = self->_inputImageCropRectangle.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)destinationRectangleInOutputMaskPixelBuffer
{
  x = self->_destinationRectangleInOutputMaskPixelBuffer.origin.x;
  y = self->_destinationRectangleInOutputMaskPixelBuffer.origin.y;
  width = self->_destinationRectangleInOutputMaskPixelBuffer.size.width;
  height = self->_destinationRectangleInOutputMaskPixelBuffer.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (FigSemanticStyleFilteringV1)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = FigSemanticStyleFilteringV1;
  v5 = [(FigSemanticStyleFilteringV1 *)&v15 init];
  if (v5)
  {
    v6 = [FigMetalContext alloc];
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v6 initWithbundle:v7 andOptionalCommandQueue:queueCopy];
    metalContext = v5->_metalContext;
    v5->_metalContext = v8;

    if (!v5->_metalContext)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
      goto LABEL_6;
    }

    v10 = [[FigLKTIIRFilter alloc] initWithMetalContext:v5->_metalContext];
    lktiirFilter = v5->_lktiirFilter;
    v5->_lktiirFilter = v10;

    if (v5->_lktiirFilter)
    {
      if (![(FigSemanticStyleFilteringV1 *)v5 _compileShaders])
      {
        v5->_applyFeathering = FigGetCFPreferenceNumberWithDefault() != 0;
        FigGetCFPreferenceDoubleWithDefault();
        *&v12 = v12;
        v5->_smoothstepLeftEdge = *&v12;
        FigGetCFPreferenceDoubleWithDefault();
        *&v13 = v13;
        v5->_smoothstepRightEdge = *&v13;
        goto LABEL_6;
      }

      fig_log_get_emitter();
      FigDebugAssert3();
      fig_log_get_emitter();
    }

    else
    {
      sub_18AC();
      FigDebugAssert3();
      sub_18AC();
    }

    FigSignalErrorAtGM();
  }

LABEL_6:

  return v5;
}

@end