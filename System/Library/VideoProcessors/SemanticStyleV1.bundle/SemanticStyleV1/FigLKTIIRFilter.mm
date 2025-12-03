@interface FigLKTIIRFilter
- (FigLKTIIRFilter)initWithMetalContext:(id)context;
- (int)_compileShaders;
- (int)_computeIIRFilter:(id)filter previousAlphaTexture:(id)texture newAlphaTexture:(id)alphaTexture displacementMapTexture:(id)mapTexture outputAlphaTexture:(id)outputAlphaTexture maxBlendingCoef:(float)coef;
- (int)_convert:(id)_convert toHalf:(id)half commandBuffer:(id)buffer;
- (int)_extractTextureChannel:(id)channel inputTexture:(id)texture channelIndex:(int)index outputTexture:(id)outputTexture;
- (int)allocateResourcesForMaskSize:(FigLKTIIRFilter *)self;
- (int)cacheInputMask:(id)mask inputImage:(id)image frameIndex:(int)index commandBuffer:(id *)buffer;
- (int)computeLKTIIRFilter:(id *)filter inputSegmentationMask:(id)mask filteredSegmentationMask:(id)segmentationMask;
- (int)computeOpticalFlow:(id *)flow inputImage:(id)image;
- (int)makeKeyFrameAndMaskFromInputImage:(id)image inputSegmentationMask:(id)mask outTexture:(id)texture commandBuffer:(id)buffer;
- (int)updateWarpedKeyFrameToCurrentFrame:(id *)frame frameIndex:(int)index;
- (void)nextFrame;
- (void)reset;
@end

@implementation FigLKTIIRFilter

- (int)_compileShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"iirFilter" constants:0];
  v4 = self->_pipelineStates[0];
  self->_pipelineStates[0] = v3;

  if (self->_pipelineStates[0])
  {
    v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"convertToHalf" constants:0];
    v6 = self->_pipelineStates[1];
    self->_pipelineStates[1] = v5;

    if (self->_pipelineStates[1])
    {
      v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"makeKeyFrameAndMask" constants:0];
      v8 = self->_pipelineStates[2];
      self->_pipelineStates[2] = v7;

      if (self->_pipelineStates[2])
      {
        v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"extractChannel" constants:0];
        v10 = self->_pipelineStates[3];
        self->_pipelineStates[3] = v9;

        if (self->_pipelineStates[3])
        {
          return 0;
        }

        sub_D700();
      }

      else
      {
        sub_D77C();
      }
    }

    else
    {
      sub_D7F8();
    }
  }

  else
  {
    sub_D874();
  }

  return -12786;
}

- (void)reset
{
  self->_currentIIRFrameIndex = 0;
  self->_opticalFlowComputed = 0;
  self->_frameIndex = 0;
}

- (int)allocateResourcesForMaskSize:(FigLKTIIRFilter *)self
{
  v4 = v2;
  v5 = SHIDWORD(v2);
  v6 = [PTOpticalFlow alloc];
  device = [(FigMetalContext *)self->_metalContext device];
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = 0;
  v58[0] = v4;
  v58[1] = v5;
  v58[2] = 0;
  v9 = [(PTOpticalFlow *)v6 initWithDevice:device commandQueue:commandQueue colorSize:v59 disparitySize:v58];
  opticalFlow = self->_opticalFlow;
  self->_opticalFlow = v9;

  v11 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v4 height:v5 mipmapped:0];
  [v11 setUsage:7];
  device2 = [(FigMetalContext *)self->_metalContext device];
  v13 = [device2 newTextureWithDescriptor:v11];
  v57[0] = v13;
  device3 = [(FigMetalContext *)self->_metalContext device];
  v15 = [device3 newTextureWithDescriptor:v11];
  v57[1] = v15;
  v16 = [NSArray arrayWithObjects:v57 count:2];
  imageArray = self->_imageArray;
  self->_imageArray = v16;

  if ([(NSArray *)self->_imageArray count]!= &dword_0 + 2)
  {
    sub_C3D8(v59);
    goto LABEL_29;
  }

  if (self->_maskInterpolationEnabled)
  {
    device4 = [(FigMetalContext *)self->_metalContext device];
    v19 = [device4 newTextureWithDescriptor:v11];
    warpedKeyFrameToCurrentFrameImage = self->_warpedKeyFrameToCurrentFrameImage;
    self->_warpedKeyFrameToCurrentFrameImage = v19;

    if (!self->_warpedKeyFrameToCurrentFrameImage)
    {
      sub_CB3C(v59);
      goto LABEL_29;
    }

    device5 = [(FigMetalContext *)self->_metalContext device];
    v22 = [device5 newTextureWithDescriptor:v11];
    keyFrameAndMask = self->_keyFrameAndMask;
    self->_keyFrameAndMask = v22;

    if (!self->_keyFrameAndMask)
    {
      sub_CA90(v59);
      goto LABEL_29;
    }
  }

  [v11 setPixelFormat:25];
  device6 = [(FigMetalContext *)self->_metalContext device];
  v25 = [device6 newTextureWithDescriptor:v11];
  previousMaskWarped = self->_previousMaskWarped;
  self->_previousMaskWarped = v25;

  if (!self->_previousMaskWarped)
  {
    sub_C9E4(v59);
    goto LABEL_29;
  }

  device7 = [(FigMetalContext *)self->_metalContext device];
  v28 = [device7 newTextureWithDescriptor:v11];
  device8 = [(FigMetalContext *)self->_metalContext device];
  v30 = [device8 newTextureWithDescriptor:v11];
  v56[1] = v30;
  v31 = [NSArray arrayWithObjects:v56 count:2];
  maskArray = self->_maskArray;
  self->_maskArray = v31;

  if ([(NSArray *)self->_maskArray count]!= &dword_0 + 2)
  {
    sub_C484(v59);
    goto LABEL_29;
  }

  device9 = [(FigMetalContext *)self->_metalContext device];
  v34 = [device9 newTextureWithDescriptor:v11];
  inputSegmentationMaskF16 = self->_inputSegmentationMaskF16;
  self->_inputSegmentationMaskF16 = v34;

  if (!self->_inputSegmentationMaskF16)
  {
    sub_C938(v59);
    goto LABEL_29;
  }

  if (self->_maskInterpolationEnabled)
  {
    device10 = [(FigMetalContext *)self->_metalContext device];
    v37 = [device10 newTextureWithDescriptor:v11];
    warpedKeyFrameToCurrentFrameMask = self->_warpedKeyFrameToCurrentFrameMask;
    self->_warpedKeyFrameToCurrentFrameMask = v37;

    if (self->_warpedKeyFrameToCurrentFrameMask)
    {
      device11 = [(FigMetalContext *)self->_metalContext device];
      v40 = [device11 newTextureWithDescriptor:v11];
      tempMaskTexture = self->_tempMaskTexture;
      self->_tempMaskTexture = v40;

      if (self->_tempMaskTexture)
      {
        [v11 setPixelFormat:65];
        device12 = [(FigMetalContext *)self->_metalContext device];
        v43 = [device12 newTextureWithDescriptor:v11];
        warpedKeyFrameToCurrentFrameDisplacementMap = self->_warpedKeyFrameToCurrentFrameDisplacementMap;
        self->_warpedKeyFrameToCurrentFrameDisplacementMap = v43;

        if (self->_warpedKeyFrameToCurrentFrameDisplacementMap)
        {
          device13 = [(FigMetalContext *)self->_metalContext device];
          v46 = [device13 newTextureWithDescriptor:v11];
          warpedKeyFrameToCurrentFrameCoord = self->_warpedKeyFrameToCurrentFrameCoord;
          self->_warpedKeyFrameToCurrentFrameCoord = v46;

          if (self->_warpedKeyFrameToCurrentFrameCoord)
          {
            device14 = [(FigMetalContext *)self->_metalContext device];
            v49 = [device14 newTextureWithDescriptor:v11];
            tmpDisplacementMap = self->_tmpDisplacementMap;
            self->_tmpDisplacementMap = v49;

            if (self->_tmpDisplacementMap)
            {
              device15 = [(FigMetalContext *)self->_metalContext device];
              v52 = [device15 newTextureWithDescriptor:v11];
              tmpCoord = self->_tmpCoord;
              self->_tmpCoord = v52;

              if (self->_tmpCoord)
              {
                goto LABEL_15;
              }

              sub_C530(v59);
            }

            else
            {
              sub_C5DC(v59);
            }
          }

          else
          {
            sub_C688(v59);
          }
        }

        else
        {
          sub_C734(v59);
        }
      }

      else
      {
        sub_C7E0(v59);
      }
    }

    else
    {
      sub_C88C(v59);
    }

LABEL_29:
    v54 = v59[0];
    goto LABEL_16;
  }

LABEL_15:
  [(FigLKTIIRFilter *)self reset];
  v54 = 0;
LABEL_16:

  return v54;
}

- (int)computeOpticalFlow:(id *)flow inputImage:(id)image
{
  imageCopy = image;
  v7 = imageCopy;
  if (self->_opticalFlowComputed)
  {
    sub_CBE8(&v15);
LABEL_12:
    v13 = v15;
    goto LABEL_7;
  }

  if (!flow)
  {
    sub_CDBC(&v15);
    goto LABEL_12;
  }

  if (!imageCopy)
  {
    sub_CD10(&v15);
    goto LABEL_12;
  }

  if (self->_frameIndex)
  {
    opticalFlow = self->_opticalFlow;
    v9 = [(NSArray *)self->_imageArray objectAtIndexedSubscript:self->_currentIIRFrameIndex ^ 1];
    v10 = [(PTOpticalFlow *)opticalFlow generateDisplacementFWDFromSourceRGBA:v9 destRGBA:v7];

    if (v10)
    {
      sub_CC94(v10, &v15);
      goto LABEL_12;
    }
  }

  blitCommandEncoder = [*flow blitCommandEncoder];
  v12 = [(NSArray *)self->_imageArray objectAtIndexedSubscript:self->_currentIIRFrameIndex];
  [blitCommandEncoder copyFromTexture:v7 toTexture:v12];

  [blitCommandEncoder endEncoding];
  self->_opticalFlowComputed = 1;

  v13 = 0;
LABEL_7:

  return v13;
}

- (int)makeKeyFrameAndMaskFromInputImage:(id)image inputSegmentationMask:(id)mask outTexture:(id)texture commandBuffer:(id)buffer
{
  v10 = self->_pipelineStates[2];
  textureCopy = texture;
  maskCopy = mask;
  imageCopy = image;
  computeCommandEncoder = [buffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v10];
  [computeCommandEncoder setTexture:maskCopy atIndex:0];

  [computeCommandEncoder setTexture:imageCopy atIndex:1];
  [computeCommandEncoder setTexture:textureCopy atIndex:2];
  threadExecutionWidth = [(MTLComputePipelineState *)v10 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v10 maxTotalThreadsPerThreadgroup];

  width = [textureCopy width];
  LODWORD(v10) = [textureCopy height];

  v20[0] = width;
  v20[1] = v10;
  v20[2] = 1;
  v19[0] = threadExecutionWidth;
  v19[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v19[2] = 1;
  [computeCommandEncoder dispatchThreads:v20 threadsPerThreadgroup:v19];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_extractTextureChannel:(id)channel inputTexture:(id)texture channelIndex:(int)index outputTexture:(id)outputTexture
{
  indexCopy = index;
  v9 = self->_pipelineStates[3];
  outputTextureCopy = outputTexture;
  textureCopy = texture;
  computeCommandEncoder = [channel computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:v9];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:outputTextureCopy atIndex:1];
  [computeCommandEncoder setBytes:&indexCopy length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)v9 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v9 maxTotalThreadsPerThreadgroup];

  width = [outputTextureCopy width];
  LODWORD(v9) = [outputTextureCopy height];

  v18[0] = width;
  v18[1] = v9;
  v18[2] = 1;
  v17[0] = threadExecutionWidth;
  v17[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v17[2] = 1;
  [computeCommandEncoder dispatchThreads:v18 threadsPerThreadgroup:v17];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)cacheInputMask:(id)mask inputImage:(id)image frameIndex:(int)index commandBuffer:(id *)buffer
{
  maskCopy = mask;
  imageCopy = image;
  v12 = [(FigLKTIIRFilter *)self makeKeyFrameAndMaskFromInputImage:imageCopy inputSegmentationMask:maskCopy outTexture:self->_keyFrameAndMask commandBuffer:*buffer];
  if (v12)
  {
    v20 = v12;
    sub_CE68();
    blitCommandEncoder = 0;
    goto LABEL_8;
  }

  self->_hasKeyFrame = 1;
  self->_keyFrameIndex = index;
  blitCommandEncoder = [*buffer blitCommandEncoder];
  [blitCommandEncoder copyFromTexture:maskCopy toTexture:self->_warpedKeyFrameToCurrentFrameMask];
  [blitCommandEncoder copyFromTexture:imageCopy toTexture:self->_warpedKeyFrameToCurrentFrameImage];
  displacementFWD = self->_displacementFWD;
  if (displacementFWD)
  {
    [blitCommandEncoder copyFromTexture:displacementFWD toTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap];
  }

  else
  {
    displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    [blitCommandEncoder copyFromTexture:displacementFWD toTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap];
  }

  [blitCommandEncoder endEncoding];
  opticalFlow = self->_opticalFlow;
  v17 = *buffer;
  v18 = self->_displacementFWD;
  if (!v18)
  {
    displacementFWD2 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    v19 = [(PTOpticalFlow *)opticalFlow convertDisplacementToCoordFWD:v17 displacementFWD:displacementFWD2 coordFWD:self->_warpedKeyFrameToCurrentFrameCoord];

    if (!v19)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_CEE4(v19, &v23);
    v20 = v23;
    goto LABEL_8;
  }

  v19 = [(PTOpticalFlow *)self->_opticalFlow convertDisplacementToCoordFWD:v17 displacementFWD:v18 coordFWD:self->_warpedKeyFrameToCurrentFrameCoord];
  if (v19)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = 0;
LABEL_8:

  return v20;
}

- (int)updateWarpedKeyFrameToCurrentFrame:(id *)frame frameIndex:(int)index
{
  if (self->_keyFrameIndex != index)
  {
    opticalFlow = self->_opticalFlow;
    v7 = *frame;
    warpedKeyFrameToCurrentFrameDisplacementMap = self->_warpedKeyFrameToCurrentFrameDisplacementMap;
    displacementFWD = self->_displacementFWD;
    if (displacementFWD)
    {
      v10 = [(PTOpticalFlow *)self->_opticalFlow warp_displacementFWD:*frame inTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap displacementFWD:displacementFWD outTextureWarped:self->_tmpDisplacementMap];
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
      v10 = [(PTOpticalFlow *)opticalFlow warp_displacementFWD:v7 inTexture:warpedKeyFrameToCurrentFrameDisplacementMap displacementFWD:displacementFWD outTextureWarped:self->_tmpDisplacementMap];

      if (!v10)
      {
LABEL_4:
        blitCommandEncoder = [*frame blitCommandEncoder];
        [blitCommandEncoder copyFromTexture:self->_tmpDisplacementMap toTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap];
        [blitCommandEncoder endEncoding];
        v12 = self->_opticalFlow;
        v13 = *frame;
        v14 = self->_displacementFWD;
        if (v14)
        {
          v15 = [(PTOpticalFlow *)self->_opticalFlow convertDisplacementToCoordFWD:*frame displacementFWD:v14 coordFWD:self->_tmpCoord];
          if (!v15)
          {
LABEL_6:
            v16 = [(PTOpticalFlow *)self->_opticalFlow warpCoordFWD:*frame inTexture:self->_warpedKeyFrameToCurrentFrameCoord coordFWD:self->_tmpCoord outTextureWarped:self->_tmpDisplacementMap];
            if (!v16)
            {
              blitCommandEncoder2 = [*frame blitCommandEncoder];
              [blitCommandEncoder2 copyFromTexture:self->_tmpDisplacementMap toTexture:self->_warpedKeyFrameToCurrentFrameCoord];
              [blitCommandEncoder2 endEncoding];

              goto LABEL_8;
            }

            sub_D058(v16, &v25);
LABEL_22:
            v21 = v25;

            return v21;
          }
        }

        else
        {
          displacementFWD2 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
          v15 = [(PTOpticalFlow *)v12 convertDisplacementToCoordFWD:v13 displacementFWD:displacementFWD2 coordFWD:self->_tmpCoord];

          if (!v15)
          {
            goto LABEL_6;
          }
        }

        sub_CFDC(v15, &v25);
        goto LABEL_22;
      }
    }

    sub_CF60(v10, &v25);
    return v25;
  }

LABEL_8:
  v18 = [(FigLKTIIRFilter *)self _extractTextureChannel:*frame inputTexture:self->_keyFrameAndMask channelIndex:3 outputTexture:self->_tempMaskTexture];
  if (v18)
  {
    v21 = v18;
    sub_D0D4();
    return v21;
  }

  v19 = [(PTOpticalFlow *)self->_opticalFlow warpCoordFWD:*frame inTexture:self->_tempMaskTexture coordFWD:self->_warpedKeyFrameToCurrentFrameCoord outTextureWarped:self->_warpedKeyFrameToCurrentFrameMask];
  if (v19)
  {
    sub_D150(v19, &v25);
    return v25;
  }

  v20 = [(PTOpticalFlow *)self->_opticalFlow warpCoordFWD:*frame inTexture:self->_keyFrameAndMask coordFWD:self->_warpedKeyFrameToCurrentFrameCoord outTextureWarped:self->_warpedKeyFrameToCurrentFrameImage];
  if (v20)
  {
    sub_D1CC(v20, &v25);
    return v25;
  }

  return 0;
}

- (int)computeLKTIIRFilter:(id *)filter inputSegmentationMask:(id)mask filteredSegmentationMask:(id)segmentationMask
{
  maskCopy = mask;
  segmentationMaskCopy = segmentationMask;
  v10 = maskCopy;
  v11 = v10;
  if (!filter)
  {
    sub_D63C(v10, &v31);
    goto LABEL_25;
  }

  if (!v10)
  {
    sub_D590(&v31);
    goto LABEL_25;
  }

  if (!segmentationMaskCopy)
  {
    sub_D4CC(v10, &v31);
    goto LABEL_25;
  }

  if (!self->_opticalFlowComputed)
  {
    sub_D248(v10, &v31);
    goto LABEL_25;
  }

  v12 = v10;
  if ([v10 pixelFormat] == &stru_20.segname[15])
  {
    v13 = [(FigLKTIIRFilter *)self _convert:v11 toHalf:self->_inputSegmentationMaskF16 commandBuffer:*filter];
    if (v13)
    {
      LODWORD(v25) = v13;
      sub_D30C(v13, v11);
      goto LABEL_17;
    }

    v12 = self->_inputSegmentationMaskF16;
  }

  if (self->_frameIndex)
  {
    opticalFlow = self->_opticalFlow;
    v15 = *filter;
    v16 = [(NSArray *)self->_maskArray objectAtIndexedSubscript:self->_currentIIRFrameIndex ^ 1];
    displacementFWD = self->_displacementFWD;
    if (displacementFWD)
    {
      v18 = [(PTOpticalFlow *)opticalFlow warp_displacementFWD:v15 inTexture:v16 displacementFWD:displacementFWD outTextureWarped:self->_previousMaskWarped];
    }

    else
    {
      displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
      v18 = [(PTOpticalFlow *)opticalFlow warp_displacementFWD:v15 inTexture:v16 displacementFWD:displacementFWD outTextureWarped:self->_previousMaskWarped];
    }

    if (!v18)
    {
      v22 = *filter;
      previousMaskWarped = self->_previousMaskWarped;
      v24 = self->_displacementFWD;
      if (v24)
      {
        *&v21 = self->_maxBlendingCoeff;
        v25 = [(FigLKTIIRFilter *)self _computeIIRFilter:*filter previousAlphaTexture:self->_previousMaskWarped newAlphaTexture:v12 displacementMapTexture:v24 outputAlphaTexture:segmentationMaskCopy maxBlendingCoef:v21];
        if (!v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        displacementFWD2 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
        *&v30 = self->_maxBlendingCoeff;
        v25 = [(FigLKTIIRFilter *)self _computeIIRFilter:v22 previousAlphaTexture:previousMaskWarped newAlphaTexture:v12 displacementMapTexture:displacementFWD2 outputAlphaTexture:segmentationMaskCopy maxBlendingCoef:v30];

        if (!v25)
        {
          goto LABEL_16;
        }
      }

      sub_D438(v25, v12);
      goto LABEL_17;
    }

    sub_D3A0(v18, v12, &v31);
LABEL_25:
    LODWORD(v25) = v31;
    goto LABEL_17;
  }

  blitCommandEncoder = [*filter blitCommandEncoder];
  [blitCommandEncoder copyFromTexture:v12 toTexture:segmentationMaskCopy];
  [blitCommandEncoder endEncoding];

LABEL_16:
  blitCommandEncoder2 = [*filter blitCommandEncoder];
  v27 = [(NSArray *)self->_maskArray objectAtIndexedSubscript:self->_currentIIRFrameIndex];
  [blitCommandEncoder2 copyFromTexture:segmentationMaskCopy toTexture:v27];

  [blitCommandEncoder2 endEncoding];
  LODWORD(v25) = 0;
LABEL_17:

  return v25;
}

- (void)nextFrame
{
  self->_currentIIRFrameIndex ^= 1u;
  self->_opticalFlowComputed = 0;
  ++self->_frameIndex;
}

- (int)_computeIIRFilter:(id)filter previousAlphaTexture:(id)texture newAlphaTexture:(id)alphaTexture displacementMapTexture:(id)mapTexture outputAlphaTexture:(id)outputAlphaTexture maxBlendingCoef:(float)coef
{
  coefCopy = coef;
  outputAlphaTextureCopy = outputAlphaTexture;
  mapTextureCopy = mapTexture;
  alphaTextureCopy = alphaTexture;
  textureCopy = texture;
  computeCommandEncoder = [filter computeCommandEncoder];
  v18 = self->_pipelineStates[0];
  [computeCommandEncoder setComputePipelineState:v18];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:alphaTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:mapTextureCopy atIndex:2];

  [computeCommandEncoder setTexture:outputAlphaTextureCopy atIndex:3];
  [computeCommandEncoder setBytes:&coefCopy length:4 atIndex:0];
  threadExecutionWidth = [(MTLComputePipelineState *)v18 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v18 maxTotalThreadsPerThreadgroup];

  width = [outputAlphaTextureCopy width];
  LODWORD(v18) = [outputAlphaTextureCopy height];

  v24[0] = width;
  v24[1] = v18;
  v24[2] = 1;
  v23[0] = threadExecutionWidth;
  v23[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v23[2] = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:v23];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (int)_convert:(id)_convert toHalf:(id)half commandBuffer:(id)buffer
{
  halfCopy = half;
  _convertCopy = _convert;
  computeCommandEncoder = [buffer computeCommandEncoder];
  v11 = self->_pipelineStates[1];
  [computeCommandEncoder setComputePipelineState:v11];
  [computeCommandEncoder setTexture:_convertCopy atIndex:0];

  [computeCommandEncoder setTexture:halfCopy atIndex:1];
  threadExecutionWidth = [(MTLComputePipelineState *)v11 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v11 maxTotalThreadsPerThreadgroup];

  width = [halfCopy width];
  LODWORD(v11) = [halfCopy height];

  v17[0] = width;
  v17[1] = v11;
  v17[2] = 1;
  v16[0] = threadExecutionWidth;
  v16[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
  v16[2] = 1;
  [computeCommandEncoder dispatchThreads:v17 threadsPerThreadgroup:v16];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (FigLKTIIRFilter)initWithMetalContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = FigLKTIIRFilter;
  v5 = [(FigLKTIIRFilter *)&v10 init];
  if (v5)
  {
    if (contextCopy)
    {
      v6 = contextCopy;
    }

    else
    {
      v6 = objc_alloc_init(FigMetalContext);
    }

    metalContext = v5->_metalContext;
    v5->_metalContext = v6;

    if (v5->_metalContext)
    {
      if ([(FigLKTIIRFilter *)v5 _compileShaders])
      {
        fig_log_get_emitter();
        sub_1860();
        FigDebugAssert3();
      }

      else
      {
        v5->_frameIndex = 0;
        FigGetCFPreferenceDoubleWithDefault();
        *&v8 = v8;
        v5->_maxBlendingCoeff = *&v8;
      }
    }

    else
    {
      fig_log_get_emitter();
      sub_1860();
      FigDebugAssert3();

      v5 = 0;
    }
  }

  return v5;
}

@end