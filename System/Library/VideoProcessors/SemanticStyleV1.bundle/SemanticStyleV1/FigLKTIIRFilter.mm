@interface FigLKTIIRFilter
- (FigLKTIIRFilter)initWithMetalContext:(id)a3;
- (int)_compileShaders;
- (int)_computeIIRFilter:(id)a3 previousAlphaTexture:(id)a4 newAlphaTexture:(id)a5 displacementMapTexture:(id)a6 outputAlphaTexture:(id)a7 maxBlendingCoef:(float)a8;
- (int)_convert:(id)a3 toHalf:(id)a4 commandBuffer:(id)a5;
- (int)_extractTextureChannel:(id)a3 inputTexture:(id)a4 channelIndex:(int)a5 outputTexture:(id)a6;
- (int)allocateResourcesForMaskSize:(FigLKTIIRFilter *)self;
- (int)cacheInputMask:(id)a3 inputImage:(id)a4 frameIndex:(int)a5 commandBuffer:(id *)a6;
- (int)computeLKTIIRFilter:(id *)a3 inputSegmentationMask:(id)a4 filteredSegmentationMask:(id)a5;
- (int)computeOpticalFlow:(id *)a3 inputImage:(id)a4;
- (int)makeKeyFrameAndMaskFromInputImage:(id)a3 inputSegmentationMask:(id)a4 outTexture:(id)a5 commandBuffer:(id)a6;
- (int)updateWarpedKeyFrameToCurrentFrame:(id *)a3 frameIndex:(int)a4;
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
  v7 = [(FigMetalContext *)self->_metalContext device];
  v8 = [(FigMetalContext *)self->_metalContext commandQueue];
  v59[0] = v4;
  v59[1] = v5;
  v59[2] = 0;
  v58[0] = v4;
  v58[1] = v5;
  v58[2] = 0;
  v9 = [(PTOpticalFlow *)v6 initWithDevice:v7 commandQueue:v8 colorSize:v59 disparitySize:v58];
  opticalFlow = self->_opticalFlow;
  self->_opticalFlow = v9;

  v11 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:v4 height:v5 mipmapped:0];
  [v11 setUsage:7];
  v12 = [(FigMetalContext *)self->_metalContext device];
  v13 = [v12 newTextureWithDescriptor:v11];
  v57[0] = v13;
  v14 = [(FigMetalContext *)self->_metalContext device];
  v15 = [v14 newTextureWithDescriptor:v11];
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
    v18 = [(FigMetalContext *)self->_metalContext device];
    v19 = [v18 newTextureWithDescriptor:v11];
    warpedKeyFrameToCurrentFrameImage = self->_warpedKeyFrameToCurrentFrameImage;
    self->_warpedKeyFrameToCurrentFrameImage = v19;

    if (!self->_warpedKeyFrameToCurrentFrameImage)
    {
      sub_CB3C(v59);
      goto LABEL_29;
    }

    v21 = [(FigMetalContext *)self->_metalContext device];
    v22 = [v21 newTextureWithDescriptor:v11];
    keyFrameAndMask = self->_keyFrameAndMask;
    self->_keyFrameAndMask = v22;

    if (!self->_keyFrameAndMask)
    {
      sub_CA90(v59);
      goto LABEL_29;
    }
  }

  [v11 setPixelFormat:25];
  v24 = [(FigMetalContext *)self->_metalContext device];
  v25 = [v24 newTextureWithDescriptor:v11];
  previousMaskWarped = self->_previousMaskWarped;
  self->_previousMaskWarped = v25;

  if (!self->_previousMaskWarped)
  {
    sub_C9E4(v59);
    goto LABEL_29;
  }

  v27 = [(FigMetalContext *)self->_metalContext device];
  v28 = [v27 newTextureWithDescriptor:v11];
  v29 = [(FigMetalContext *)self->_metalContext device];
  v30 = [v29 newTextureWithDescriptor:v11];
  v56[1] = v30;
  v31 = [NSArray arrayWithObjects:v56 count:2];
  maskArray = self->_maskArray;
  self->_maskArray = v31;

  if ([(NSArray *)self->_maskArray count]!= &dword_0 + 2)
  {
    sub_C484(v59);
    goto LABEL_29;
  }

  v33 = [(FigMetalContext *)self->_metalContext device];
  v34 = [v33 newTextureWithDescriptor:v11];
  inputSegmentationMaskF16 = self->_inputSegmentationMaskF16;
  self->_inputSegmentationMaskF16 = v34;

  if (!self->_inputSegmentationMaskF16)
  {
    sub_C938(v59);
    goto LABEL_29;
  }

  if (self->_maskInterpolationEnabled)
  {
    v36 = [(FigMetalContext *)self->_metalContext device];
    v37 = [v36 newTextureWithDescriptor:v11];
    warpedKeyFrameToCurrentFrameMask = self->_warpedKeyFrameToCurrentFrameMask;
    self->_warpedKeyFrameToCurrentFrameMask = v37;

    if (self->_warpedKeyFrameToCurrentFrameMask)
    {
      v39 = [(FigMetalContext *)self->_metalContext device];
      v40 = [v39 newTextureWithDescriptor:v11];
      tempMaskTexture = self->_tempMaskTexture;
      self->_tempMaskTexture = v40;

      if (self->_tempMaskTexture)
      {
        [v11 setPixelFormat:65];
        v42 = [(FigMetalContext *)self->_metalContext device];
        v43 = [v42 newTextureWithDescriptor:v11];
        warpedKeyFrameToCurrentFrameDisplacementMap = self->_warpedKeyFrameToCurrentFrameDisplacementMap;
        self->_warpedKeyFrameToCurrentFrameDisplacementMap = v43;

        if (self->_warpedKeyFrameToCurrentFrameDisplacementMap)
        {
          v45 = [(FigMetalContext *)self->_metalContext device];
          v46 = [v45 newTextureWithDescriptor:v11];
          warpedKeyFrameToCurrentFrameCoord = self->_warpedKeyFrameToCurrentFrameCoord;
          self->_warpedKeyFrameToCurrentFrameCoord = v46;

          if (self->_warpedKeyFrameToCurrentFrameCoord)
          {
            v48 = [(FigMetalContext *)self->_metalContext device];
            v49 = [v48 newTextureWithDescriptor:v11];
            tmpDisplacementMap = self->_tmpDisplacementMap;
            self->_tmpDisplacementMap = v49;

            if (self->_tmpDisplacementMap)
            {
              v51 = [(FigMetalContext *)self->_metalContext device];
              v52 = [v51 newTextureWithDescriptor:v11];
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

- (int)computeOpticalFlow:(id *)a3 inputImage:(id)a4
{
  v6 = a4;
  v7 = v6;
  if (self->_opticalFlowComputed)
  {
    sub_CBE8(&v15);
LABEL_12:
    v13 = v15;
    goto LABEL_7;
  }

  if (!a3)
  {
    sub_CDBC(&v15);
    goto LABEL_12;
  }

  if (!v6)
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

  v11 = [*a3 blitCommandEncoder];
  v12 = [(NSArray *)self->_imageArray objectAtIndexedSubscript:self->_currentIIRFrameIndex];
  [v11 copyFromTexture:v7 toTexture:v12];

  [v11 endEncoding];
  self->_opticalFlowComputed = 1;

  v13 = 0;
LABEL_7:

  return v13;
}

- (int)makeKeyFrameAndMaskFromInputImage:(id)a3 inputSegmentationMask:(id)a4 outTexture:(id)a5 commandBuffer:(id)a6
{
  v10 = self->_pipelineStates[2];
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [a6 computeCommandEncoder];
  [v14 setComputePipelineState:v10];
  [v14 setTexture:v12 atIndex:0];

  [v14 setTexture:v13 atIndex:1];
  [v14 setTexture:v11 atIndex:2];
  v15 = [(MTLComputePipelineState *)v10 threadExecutionWidth];
  v16 = [(MTLComputePipelineState *)v10 maxTotalThreadsPerThreadgroup];

  v17 = [v11 width];
  LODWORD(v10) = [v11 height];

  v20[0] = v17;
  v20[1] = v10;
  v20[2] = 1;
  v19[0] = v15;
  v19[1] = v16 / v15;
  v19[2] = 1;
  [v14 dispatchThreads:v20 threadsPerThreadgroup:v19];
  [v14 endEncoding];

  return 0;
}

- (int)_extractTextureChannel:(id)a3 inputTexture:(id)a4 channelIndex:(int)a5 outputTexture:(id)a6
{
  v19 = a5;
  v9 = self->_pipelineStates[3];
  v10 = a6;
  v11 = a4;
  v12 = [a3 computeCommandEncoder];
  [v12 setComputePipelineState:v9];
  [v12 setTexture:v11 atIndex:0];

  [v12 setTexture:v10 atIndex:1];
  [v12 setBytes:&v19 length:4 atIndex:0];
  v13 = [(MTLComputePipelineState *)v9 threadExecutionWidth];
  v14 = [(MTLComputePipelineState *)v9 maxTotalThreadsPerThreadgroup];

  v15 = [v10 width];
  LODWORD(v9) = [v10 height];

  v18[0] = v15;
  v18[1] = v9;
  v18[2] = 1;
  v17[0] = v13;
  v17[1] = v14 / v13;
  v17[2] = 1;
  [v12 dispatchThreads:v18 threadsPerThreadgroup:v17];
  [v12 endEncoding];

  return 0;
}

- (int)cacheInputMask:(id)a3 inputImage:(id)a4 frameIndex:(int)a5 commandBuffer:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = [(FigLKTIIRFilter *)self makeKeyFrameAndMaskFromInputImage:v11 inputSegmentationMask:v10 outTexture:self->_keyFrameAndMask commandBuffer:*a6];
  if (v12)
  {
    v20 = v12;
    sub_CE68();
    v13 = 0;
    goto LABEL_8;
  }

  self->_hasKeyFrame = 1;
  self->_keyFrameIndex = a5;
  v13 = [*a6 blitCommandEncoder];
  [v13 copyFromTexture:v10 toTexture:self->_warpedKeyFrameToCurrentFrameMask];
  [v13 copyFromTexture:v11 toTexture:self->_warpedKeyFrameToCurrentFrameImage];
  displacementFWD = self->_displacementFWD;
  if (displacementFWD)
  {
    [v13 copyFromTexture:displacementFWD toTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap];
  }

  else
  {
    v15 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    [v13 copyFromTexture:v15 toTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap];
  }

  [v13 endEncoding];
  opticalFlow = self->_opticalFlow;
  v17 = *a6;
  v18 = self->_displacementFWD;
  if (!v18)
  {
    v22 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    v19 = [(PTOpticalFlow *)opticalFlow convertDisplacementToCoordFWD:v17 displacementFWD:v22 coordFWD:self->_warpedKeyFrameToCurrentFrameCoord];

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

- (int)updateWarpedKeyFrameToCurrentFrame:(id *)a3 frameIndex:(int)a4
{
  if (self->_keyFrameIndex != a4)
  {
    opticalFlow = self->_opticalFlow;
    v7 = *a3;
    warpedKeyFrameToCurrentFrameDisplacementMap = self->_warpedKeyFrameToCurrentFrameDisplacementMap;
    displacementFWD = self->_displacementFWD;
    if (displacementFWD)
    {
      v10 = [(PTOpticalFlow *)self->_opticalFlow warp_displacementFWD:*a3 inTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap displacementFWD:displacementFWD outTextureWarped:self->_tmpDisplacementMap];
      if (!v10)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v23 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
      v10 = [(PTOpticalFlow *)opticalFlow warp_displacementFWD:v7 inTexture:warpedKeyFrameToCurrentFrameDisplacementMap displacementFWD:v23 outTextureWarped:self->_tmpDisplacementMap];

      if (!v10)
      {
LABEL_4:
        v11 = [*a3 blitCommandEncoder];
        [v11 copyFromTexture:self->_tmpDisplacementMap toTexture:self->_warpedKeyFrameToCurrentFrameDisplacementMap];
        [v11 endEncoding];
        v12 = self->_opticalFlow;
        v13 = *a3;
        v14 = self->_displacementFWD;
        if (v14)
        {
          v15 = [(PTOpticalFlow *)self->_opticalFlow convertDisplacementToCoordFWD:*a3 displacementFWD:v14 coordFWD:self->_tmpCoord];
          if (!v15)
          {
LABEL_6:
            v16 = [(PTOpticalFlow *)self->_opticalFlow warpCoordFWD:*a3 inTexture:self->_warpedKeyFrameToCurrentFrameCoord coordFWD:self->_tmpCoord outTextureWarped:self->_tmpDisplacementMap];
            if (!v16)
            {
              v17 = [*a3 blitCommandEncoder];
              [v17 copyFromTexture:self->_tmpDisplacementMap toTexture:self->_warpedKeyFrameToCurrentFrameCoord];
              [v17 endEncoding];

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
          v24 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
          v15 = [(PTOpticalFlow *)v12 convertDisplacementToCoordFWD:v13 displacementFWD:v24 coordFWD:self->_tmpCoord];

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
  v18 = [(FigLKTIIRFilter *)self _extractTextureChannel:*a3 inputTexture:self->_keyFrameAndMask channelIndex:3 outputTexture:self->_tempMaskTexture];
  if (v18)
  {
    v21 = v18;
    sub_D0D4();
    return v21;
  }

  v19 = [(PTOpticalFlow *)self->_opticalFlow warpCoordFWD:*a3 inTexture:self->_tempMaskTexture coordFWD:self->_warpedKeyFrameToCurrentFrameCoord outTextureWarped:self->_warpedKeyFrameToCurrentFrameMask];
  if (v19)
  {
    sub_D150(v19, &v25);
    return v25;
  }

  v20 = [(PTOpticalFlow *)self->_opticalFlow warpCoordFWD:*a3 inTexture:self->_keyFrameAndMask coordFWD:self->_warpedKeyFrameToCurrentFrameCoord outTextureWarped:self->_warpedKeyFrameToCurrentFrameImage];
  if (v20)
  {
    sub_D1CC(v20, &v25);
    return v25;
  }

  return 0;
}

- (int)computeLKTIIRFilter:(id *)a3 inputSegmentationMask:(id)a4 filteredSegmentationMask:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = v8;
  v11 = v10;
  if (!a3)
  {
    sub_D63C(v10, &v31);
    goto LABEL_25;
  }

  if (!v10)
  {
    sub_D590(&v31);
    goto LABEL_25;
  }

  if (!v9)
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
    v13 = [(FigLKTIIRFilter *)self _convert:v11 toHalf:self->_inputSegmentationMaskF16 commandBuffer:*a3];
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
    v15 = *a3;
    v16 = [(NSArray *)self->_maskArray objectAtIndexedSubscript:self->_currentIIRFrameIndex ^ 1];
    displacementFWD = self->_displacementFWD;
    if (displacementFWD)
    {
      v18 = [(PTOpticalFlow *)opticalFlow warp_displacementFWD:v15 inTexture:v16 displacementFWD:displacementFWD outTextureWarped:self->_previousMaskWarped];
    }

    else
    {
      v20 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
      v18 = [(PTOpticalFlow *)opticalFlow warp_displacementFWD:v15 inTexture:v16 displacementFWD:v20 outTextureWarped:self->_previousMaskWarped];
    }

    if (!v18)
    {
      v22 = *a3;
      previousMaskWarped = self->_previousMaskWarped;
      v24 = self->_displacementFWD;
      if (v24)
      {
        *&v21 = self->_maxBlendingCoeff;
        v25 = [(FigLKTIIRFilter *)self _computeIIRFilter:*a3 previousAlphaTexture:self->_previousMaskWarped newAlphaTexture:v12 displacementMapTexture:v24 outputAlphaTexture:v9 maxBlendingCoef:v21];
        if (!v25)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v29 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
        *&v30 = self->_maxBlendingCoeff;
        v25 = [(FigLKTIIRFilter *)self _computeIIRFilter:v22 previousAlphaTexture:previousMaskWarped newAlphaTexture:v12 displacementMapTexture:v29 outputAlphaTexture:v9 maxBlendingCoef:v30];

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

  v19 = [*a3 blitCommandEncoder];
  [v19 copyFromTexture:v12 toTexture:v9];
  [v19 endEncoding];

LABEL_16:
  v26 = [*a3 blitCommandEncoder];
  v27 = [(NSArray *)self->_maskArray objectAtIndexedSubscript:self->_currentIIRFrameIndex];
  [v26 copyFromTexture:v9 toTexture:v27];

  [v26 endEncoding];
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

- (int)_computeIIRFilter:(id)a3 previousAlphaTexture:(id)a4 newAlphaTexture:(id)a5 displacementMapTexture:(id)a6 outputAlphaTexture:(id)a7 maxBlendingCoef:(float)a8
{
  v25 = a8;
  v13 = a7;
  v14 = a6;
  v15 = a5;
  v16 = a4;
  v17 = [a3 computeCommandEncoder];
  v18 = self->_pipelineStates[0];
  [v17 setComputePipelineState:v18];
  [v17 setTexture:v16 atIndex:0];

  [v17 setTexture:v15 atIndex:1];
  [v17 setTexture:v14 atIndex:2];

  [v17 setTexture:v13 atIndex:3];
  [v17 setBytes:&v25 length:4 atIndex:0];
  v19 = [(MTLComputePipelineState *)v18 threadExecutionWidth];
  v20 = [(MTLComputePipelineState *)v18 maxTotalThreadsPerThreadgroup];

  v21 = [v13 width];
  LODWORD(v18) = [v13 height];

  v24[0] = v21;
  v24[1] = v18;
  v24[2] = 1;
  v23[0] = v19;
  v23[1] = v20 / v19;
  v23[2] = 1;
  [v17 dispatchThreads:v24 threadsPerThreadgroup:v23];
  [v17 endEncoding];

  return 0;
}

- (int)_convert:(id)a3 toHalf:(id)a4 commandBuffer:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [a5 computeCommandEncoder];
  v11 = self->_pipelineStates[1];
  [v10 setComputePipelineState:v11];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v12 = [(MTLComputePipelineState *)v11 threadExecutionWidth];
  v13 = [(MTLComputePipelineState *)v11 maxTotalThreadsPerThreadgroup];

  v14 = [v8 width];
  LODWORD(v11) = [v8 height];

  v17[0] = v14;
  v17[1] = v11;
  v17[2] = 1;
  v16[0] = v12;
  v16[1] = v13 / v12;
  v16[2] = 1;
  [v10 dispatchThreads:v17 threadsPerThreadgroup:v16];
  [v10 endEncoding];

  return 0;
}

- (FigLKTIIRFilter)initWithMetalContext:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = FigLKTIIRFilter;
  v5 = [(FigLKTIIRFilter *)&v10 init];
  if (v5)
  {
    if (v4)
    {
      v6 = v4;
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