@interface PTGuidedFilter
- (PTGuidedFilter)initWithMetalContext:(id)context inputSize:(id *)size epsilon:(float)epsilon;
- (int)guidedFilter:(id)filter filterMode:(int)mode image:(id)image guideRGBACoefficients:(id)coefficients guideRGBAUpscale:(id)upscale upscaledImageArray:(id)array sourceColorBitDepth:(int)depth postModifierBuffer:(id)self0 postModifierPtr:(PTPostModifier *)self1;
- (int)guidedFilter:(id)filter image:(id)image guideRGBACoefficients:(id)coefficients guideRGBAUpscale:(id)upscale upscaledImage:(id)upscaledImage sourceColorBitDepth:(int)depth postModifierPtr:(PTPostModifier *)ptr;
- (int)guidedFilter:(id)filter image:(id)image guideRGBACoefficients:(id)coefficients guideRGBAUpscale:(id)upscale upscaledImageArray:(id)array sourceColorBitDepth:(int)depth postModifierBuffer:(id)buffer;
- (void)applyUpsamplingCoefficients:(id)coefficients guideTexture:(id)texture coeffTexture:(id)coeffTexture upscaledImageArray:(id)array guideMultiplier:(float)multiplier postModifierBuffer:(id)buffer postModifierPtr:(PTPostModifier *)ptr filterMode:(int)self0;
- (void)averageUpsamplingCoefficients:(id)coefficients coeffTexture:(id)texture coeffAveragedTexture:(id)averagedTexture;
- (void)computeUpsamplingCoefficients:(id)coefficients guideTexture:(id)texture imageTexture:(id)imageTexture coeffTexture:(id)coeffTexture weights:(id)weights guideMultiplier:(float)multiplier;
@end

@implementation PTGuidedFilter

- (PTGuidedFilter)initWithMetalContext:(id)context inputSize:(id *)size epsilon:(float)epsilon
{
  contextCopy = context;
  v99.receiver = self;
  v99.super_class = PTGuidedFilter;
  v9 = [(PTGuidedFilter *)&v99 init];
  v10 = v9;
  if (!v9)
  {
    v30 = 0;
    goto LABEL_33;
  }

  v97 = 1;
  v98 = 0;
  v96 = 0;
  v9->_edgeTolerance = 1.0;
  *&v9->_useHighresGuideForComputingCoefficients = 0;
  v11 = objc_opt_new();
  *&v12 = epsilon;
  [v11 setConstantFloat:@"kFilterEpsilon_float" withName:v12];
  LODWORD(v13) = 981668463;
  [v11 setConstantFloat:@"kFilterWeightEpsilon_float" withName:v13];
  [v11 setConstantValue:&v97 type:29 withName:@"kFilterRadius"];
  [v11 setConstantValue:&v98 type:29 withName:@"kFilterSamplePattern"];
  [v11 setConstantValue:&v96 type:53 withName:@"kFilterSqrtGuide"];
  v14 = [contextCopy computePipelineStateFor:@"guidedFilterAverageUpsamplingCoefficients" withConstants:v11];
  averageUpsamplingCoefficients = v10->_averageUpsamplingCoefficients;
  v10->_averageUpsamplingCoefficients = v14;

  if (v10->_averageUpsamplingCoefficients)
  {
    v16 = (v98 - 5) >= 5;
    v10->_useWeightedSampling = (v98 - 5) < 5;
    if (v16)
    {
      v38 = [contextCopy computePipelineStateFor:@"guidedFilterComputeUpsamplingCoefficients" withConstants:v11];
      computeUpsamplingCoefficients = v10->_computeUpsamplingCoefficients;
      v10->_computeUpsamplingCoefficients = v38;

      if (v10->_computeUpsamplingCoefficients)
      {
        goto LABEL_12;
      }

      v22 = _PTLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(PTGuidedFilter *)v22 initWithMetalContext:v66 inputSize:v67 epsilon:v68, v69, v70, v71, v72];
      }
    }

    else
    {
      v17 = [contextCopy computePipelineStateFor:@"computeWeightedUpsamplingCoefficients" withConstants:v11];
      computeWeightedUpsamplingCoefficients = v10->_computeWeightedUpsamplingCoefficients;
      v10->_computeWeightedUpsamplingCoefficients = v17;

      if (v10->_computeWeightedUpsamplingCoefficients)
      {
        textureUtil = [contextCopy textureUtil];
        v20 = [textureUtil createWithWidth:size->var0 height:size->var1 pixelFormat:10];
        edges = v10->_edges;
        v10->_edges = v20;

        if (!v10->_edges)
        {
          v22 = _PTLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(PTGuidedFilter *)v22 initWithMetalContext:v23 inputSize:v24 epsilon:v25, v26, v27, v28, v29];
          }

          goto LABEL_31;
        }

LABEL_12:
        v95 = 0;
        applyUpsamplingCoefficients = v10->_applyUpsamplingCoefficients;
        do
        {
          [v11 setConstantValue:&v95 type:33 withName:@"kFilterMode"];
          v41 = [contextCopy computePipelineStateFor:@"guidedFilterApplyUpsamplingCoefficients" withConstants:v11];
          v42 = applyUpsamplingCoefficients[v95];
          applyUpsamplingCoefficients[v95] = v41;

          v43 = v95;
          if (!applyUpsamplingCoefficients[v95])
          {
            v22 = _PTLogSystem();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [(PTGuidedFilter *)v22 initWithMetalContext:v52 inputSize:v53 epsilon:v54, v55, v56, v57, v58];
            }

            goto LABEL_31;
          }

          ++v95;
        }

        while ((v43 + 1) <= 2);
        textureUtil2 = [contextCopy textureUtil];
        v45 = [textureUtil2 createWithWidth:size->var0 height:size->var1 pixelFormat:115];
        coeffTexture = v10->_coeffTexture;
        v10->_coeffTexture = v45;

        if (v10->_coeffTexture)
        {
          textureUtil3 = [contextCopy textureUtil];
          v48 = [textureUtil3 createWithWidth:size->var0 height:size->var1 pixelFormat:115];
          coeffAveragedTexture = v10->_coeffAveragedTexture;
          v10->_coeffAveragedTexture = v48;

          if (v10->_coeffAveragedTexture)
          {
            v50 = [[PTRaytracingUtils alloc] initWithMetalContext:contextCopy];
            utils = v10->_utils;
            v10->_utils = v50;

            if (v10->_utils)
            {
              v30 = v10;
              goto LABEL_32;
            }

            v22 = _PTLogSystem();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [(PTGuidedFilter *)v22 initWithMetalContext:v87 inputSize:v88 epsilon:v89, v90, v91, v92, v93];
            }
          }

          else
          {
            v22 = _PTLogSystem();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              [(PTGuidedFilter *)v22 initWithMetalContext:v80 inputSize:v81 epsilon:v82, v83, v84, v85, v86];
            }
          }
        }

        else
        {
          v22 = _PTLogSystem();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(PTGuidedFilter *)v22 initWithMetalContext:v73 inputSize:v74 epsilon:v75, v76, v77, v78, v79];
          }
        }

        goto LABEL_31;
      }

      v22 = _PTLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(PTGuidedFilter *)v22 initWithMetalContext:v59 inputSize:v60 epsilon:v61, v62, v63, v64, v65];
      }
    }
  }

  else
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTGuidedFilter *)v22 initWithMetalContext:v31 inputSize:v32 epsilon:v33, v34, v35, v36, v37];
    }
  }

LABEL_31:

  v30 = 0;
LABEL_32:

LABEL_33:
  return v30;
}

- (int)guidedFilter:(id)filter image:(id)image guideRGBACoefficients:(id)coefficients guideRGBAUpscale:(id)upscale upscaledImage:(id)upscaledImage sourceColorBitDepth:(int)depth postModifierPtr:(PTPostModifier *)ptr
{
  v25[1] = *MEMORY[0x277D85DE8];
  v25[0] = upscaledImage;
  v15 = MEMORY[0x277CBEA60];
  upscaledImageCopy = upscaledImage;
  upscaleCopy = upscale;
  coefficientsCopy = coefficients;
  imageCopy = image;
  filterCopy = filter;
  v21 = [v15 arrayWithObjects:v25 count:1];

  LODWORD(v24) = depth;
  v22 = [(PTGuidedFilter *)self guidedFilter:filterCopy filterMode:ptr != 0 image:imageCopy guideRGBACoefficients:coefficientsCopy guideRGBAUpscale:upscaleCopy upscaledImageArray:v21 sourceColorBitDepth:v24 postModifierBuffer:0 postModifierPtr:ptr];

  return v22;
}

- (int)guidedFilter:(id)filter image:(id)image guideRGBACoefficients:(id)coefficients guideRGBAUpscale:(id)upscale upscaledImageArray:(id)array sourceColorBitDepth:(int)depth postModifierBuffer:(id)buffer
{
  filterCopy = filter;
  imageCopy = image;
  coefficientsCopy = coefficients;
  upscaleCopy = upscale;
  arrayCopy = array;
  bufferCopy = buffer;
  v21 = [arrayCopy count];
  if (bufferCopy || v21 != 1)
  {
    if (bufferCopy && [arrayCopy count] <= 2)
    {
      v24 = 3 * [arrayCopy count];
      if ([bufferCopy length] >= (4 * v24))
      {
        if ([arrayCopy count] == 1)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        goto LABEL_4;
      }

      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PTGuidedFilter guidedFilter:bufferCopy image:4 * v24 guideRGBACoefficients:v25 guideRGBAUpscale:? upscaledImageArray:? sourceColorBitDepth:? postModifierBuffer:?];
      }
    }

    else
    {
      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PTGuidedFilter guidedFilter:arrayCopy image:v25 guideRGBACoefficients:? guideRGBAUpscale:? upscaledImageArray:? sourceColorBitDepth:? postModifierBuffer:?];
      }
    }

    v23 = -10;
    goto LABEL_13;
  }

  v22 = 0;
LABEL_4:
  LODWORD(v27) = depth;
  v23 = [(PTGuidedFilter *)self guidedFilter:filterCopy filterMode:v22 image:imageCopy guideRGBACoefficients:coefficientsCopy guideRGBAUpscale:upscaleCopy upscaledImageArray:arrayCopy sourceColorBitDepth:v27 postModifierBuffer:bufferCopy postModifierPtr:0];
LABEL_13:

  return v23;
}

- (int)guidedFilter:(id)filter filterMode:(int)mode image:(id)image guideRGBACoefficients:(id)coefficients guideRGBAUpscale:(id)upscale upscaledImageArray:(id)array sourceColorBitDepth:(int)depth postModifierBuffer:(id)self0 postModifierPtr:(PTPostModifier *)self1
{
  filterCopy = filter;
  imageCopy = image;
  coefficientsCopy = coefficients;
  upscaleCopy = upscale;
  arrayCopy = array;
  bufferCopy = buffer;
  if (depth == 8)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 0.16667;
  }

  if (self->_useWeightedSampling)
  {
    *&v23 = self->_edgeTolerance;
    [(PTRaytracingUtils *)self->_utils sobelEdgeDetection:filterCopy inImage:imageCopy outEdges:self->_edges edgeTolerance:v23];
  }

  if (self->_useHighresGuideForComputingCoefficients)
  {
    v25 = upscaleCopy;
  }

  else
  {
    v25 = coefficientsCopy;
  }

  *&v23 = v24;
  [(PTGuidedFilter *)self computeUpsamplingCoefficients:filterCopy guideTexture:v25 imageTexture:imageCopy coeffTexture:self->_coeffTexture weights:self->_edges guideMultiplier:v23];
  if (self->_skipBoxFilter)
  {
    skipBoxFilter = 1;
  }

  else
  {
    [(PTGuidedFilter *)self averageUpsamplingCoefficients:filterCopy coeffTexture:self->_coeffTexture coeffAveragedTexture:self->_coeffAveragedTexture];
    skipBoxFilter = self->_skipBoxFilter;
  }

  v28 = !skipBoxFilter;
  v29 = 72;
  if (!v28)
  {
    v29 = 56;
  }

  LODWORD(v31) = mode;
  *&v26 = v24;
  [(PTGuidedFilter *)self applyUpsamplingCoefficients:filterCopy guideTexture:upscaleCopy coeffTexture:*(&self->super.isa + v29) upscaledImageArray:arrayCopy guideMultiplier:bufferCopy postModifierBuffer:ptr postModifierPtr:v26 filterMode:v31];

  return 0;
}

- (void)computeUpsamplingCoefficients:(id)coefficients guideTexture:(id)texture imageTexture:(id)imageTexture coeffTexture:(id)coeffTexture weights:(id)weights guideMultiplier:(float)multiplier
{
  coeffTextureCopy = coeffTexture;
  weightsCopy = weights;
  multiplierCopy = multiplier;
  imageTextureCopy = imageTexture;
  textureCopy = texture;
  computeCommandEncoder = [coefficients computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v19 = _PTLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v19 disparityApplyPostModifier:v20 inDisparity:v21 outDisparity:v22 postModifier:v23, v24, v25, v26];
    }
  }

  v27 = 16;
  if (self->_useWeightedSampling)
  {
    v27 = 8;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v27)];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:imageTextureCopy atIndex:1];
  [computeCommandEncoder setTexture:coeffTextureCopy atIndex:2];
  if (self->_useWeightedSampling)
  {
    [computeCommandEncoder setTexture:weightsCopy atIndex:3];
  }

  [computeCommandEncoder setBytes:&multiplierCopy length:4 atIndex:0];
  v30[0] = [coeffTextureCopy width];
  v30[1] = [coeffTextureCopy height];
  v30[2] = 1;
  v28 = xmmword_2244A5230;
  v29 = 1;
  [computeCommandEncoder dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [computeCommandEncoder endEncoding];
}

- (void)averageUpsamplingCoefficients:(id)coefficients coeffTexture:(id)texture coeffAveragedTexture:(id)averagedTexture
{
  averagedTextureCopy = averagedTexture;
  textureCopy = texture;
  computeCommandEncoder = [coefficients computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_averageUpsamplingCoefficients];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:averagedTextureCopy atIndex:1];
  width = [averagedTextureCopy width];
  height = [averagedTextureCopy height];

  v23[0] = width;
  v23[1] = height;
  v23[2] = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [computeCommandEncoder dispatchThreads:v23 threadsPerThreadgroup:&v21];
  [computeCommandEncoder endEncoding];
}

- (void)applyUpsamplingCoefficients:(id)coefficients guideTexture:(id)texture coeffTexture:(id)coeffTexture upscaledImageArray:(id)array guideMultiplier:(float)multiplier postModifierBuffer:(id)buffer postModifierPtr:(PTPostModifier *)ptr filterMode:(int)self0
{
  arrayCopy = array;
  multiplierCopy = multiplier;
  bufferCopy = buffer;
  coeffTextureCopy = coeffTexture;
  textureCopy = texture;
  computeCommandEncoder = [coefficients computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v22 disparityApplyPostModifier:v23 inDisparity:v24 outDisparity:v25 postModifier:v26, v27, v28, v29];
    }
  }

  [computeCommandEncoder setComputePipelineState:self->_applyUpsamplingCoefficients[mode]];
  [computeCommandEncoder setTexture:textureCopy atIndex:0];

  [computeCommandEncoder setTexture:coeffTextureCopy atIndex:1];
  v30 = [arrayCopy objectAtIndexedSubscript:0];
  [computeCommandEncoder setTexture:v30 atIndex:2];

  if ([arrayCopy count] == 2)
  {
    v31 = [arrayCopy objectAtIndexedSubscript:1];
    [computeCommandEncoder setTexture:v31 atIndex:3];
  }

  [computeCommandEncoder setBytes:&multiplierCopy length:4 atIndex:0];
  if (bufferCopy)
  {
    [computeCommandEncoder setBuffer:bufferCopy offset:0 atIndex:1];
  }

  else if (ptr)
  {
    [computeCommandEncoder setBytes:ptr length:12 atIndex:1];
  }

  v32 = [arrayCopy objectAtIndexedSubscript:0];
  width = [v32 width];
  v34 = [arrayCopy objectAtIndexedSubscript:0];
  v37[0] = width;
  v37[1] = [v34 height];
  v37[2] = 1;
  v35 = xmmword_2244A5230;
  v36 = 1;
  [computeCommandEncoder dispatchThreads:v37 threadsPerThreadgroup:&v35];

  [computeCommandEncoder endEncoding];
}

- (void)guidedFilter:(NSObject *)a3 image:guideRGBACoefficients:guideRGBAUpscale:upscaledImageArray:sourceColorBitDepth:postModifierBuffer:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218240;
  v5 = a2;
  v6 = 2048;
  v7 = [a1 length];
  _os_log_error_impl(&dword_2243FB000, a3, OS_LOG_TYPE_ERROR, "postModifierBuffer.length expected %zu but was %zu", &v4, 0x16u);
}

- (void)guidedFilter:(void *)a1 image:(NSObject *)a2 guideRGBACoefficients:guideRGBAUpscale:upscaledImageArray:sourceColorBitDepth:postModifierBuffer:.cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = 3;
  v4 = 2048;
  v5 = [a1 count];
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "upscaledImageArray.count must be less than %i. Was %lu", v3, 0x12u);
}

@end