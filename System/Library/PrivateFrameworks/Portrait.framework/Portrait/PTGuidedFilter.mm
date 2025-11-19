@interface PTGuidedFilter
- (PTGuidedFilter)initWithMetalContext:(id)a3 inputSize:(id *)a4 epsilon:(float)a5;
- (int)guidedFilter:(id)a3 filterMode:(int)a4 image:(id)a5 guideRGBACoefficients:(id)a6 guideRGBAUpscale:(id)a7 upscaledImageArray:(id)a8 sourceColorBitDepth:(int)a9 postModifierBuffer:(id)a10 postModifierPtr:(PTPostModifier *)a11;
- (int)guidedFilter:(id)a3 image:(id)a4 guideRGBACoefficients:(id)a5 guideRGBAUpscale:(id)a6 upscaledImage:(id)a7 sourceColorBitDepth:(int)a8 postModifierPtr:(PTPostModifier *)a9;
- (int)guidedFilter:(id)a3 image:(id)a4 guideRGBACoefficients:(id)a5 guideRGBAUpscale:(id)a6 upscaledImageArray:(id)a7 sourceColorBitDepth:(int)a8 postModifierBuffer:(id)a9;
- (void)applyUpsamplingCoefficients:(id)a3 guideTexture:(id)a4 coeffTexture:(id)a5 upscaledImageArray:(id)a6 guideMultiplier:(float)a7 postModifierBuffer:(id)a8 postModifierPtr:(PTPostModifier *)a9 filterMode:(int)a10;
- (void)averageUpsamplingCoefficients:(id)a3 coeffTexture:(id)a4 coeffAveragedTexture:(id)a5;
- (void)computeUpsamplingCoefficients:(id)a3 guideTexture:(id)a4 imageTexture:(id)a5 coeffTexture:(id)a6 weights:(id)a7 guideMultiplier:(float)a8;
@end

@implementation PTGuidedFilter

- (PTGuidedFilter)initWithMetalContext:(id)a3 inputSize:(id *)a4 epsilon:(float)a5
{
  v8 = a3;
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
  *&v12 = a5;
  [v11 setConstantFloat:@"kFilterEpsilon_float" withName:v12];
  LODWORD(v13) = 981668463;
  [v11 setConstantFloat:@"kFilterWeightEpsilon_float" withName:v13];
  [v11 setConstantValue:&v97 type:29 withName:@"kFilterRadius"];
  [v11 setConstantValue:&v98 type:29 withName:@"kFilterSamplePattern"];
  [v11 setConstantValue:&v96 type:53 withName:@"kFilterSqrtGuide"];
  v14 = [v8 computePipelineStateFor:@"guidedFilterAverageUpsamplingCoefficients" withConstants:v11];
  averageUpsamplingCoefficients = v10->_averageUpsamplingCoefficients;
  v10->_averageUpsamplingCoefficients = v14;

  if (v10->_averageUpsamplingCoefficients)
  {
    v16 = (v98 - 5) >= 5;
    v10->_useWeightedSampling = (v98 - 5) < 5;
    if (v16)
    {
      v38 = [v8 computePipelineStateFor:@"guidedFilterComputeUpsamplingCoefficients" withConstants:v11];
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
      v17 = [v8 computePipelineStateFor:@"computeWeightedUpsamplingCoefficients" withConstants:v11];
      computeWeightedUpsamplingCoefficients = v10->_computeWeightedUpsamplingCoefficients;
      v10->_computeWeightedUpsamplingCoefficients = v17;

      if (v10->_computeWeightedUpsamplingCoefficients)
      {
        v19 = [v8 textureUtil];
        v20 = [v19 createWithWidth:a4->var0 height:a4->var1 pixelFormat:10];
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
          v41 = [v8 computePipelineStateFor:@"guidedFilterApplyUpsamplingCoefficients" withConstants:v11];
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
        v44 = [v8 textureUtil];
        v45 = [v44 createWithWidth:a4->var0 height:a4->var1 pixelFormat:115];
        coeffTexture = v10->_coeffTexture;
        v10->_coeffTexture = v45;

        if (v10->_coeffTexture)
        {
          v47 = [v8 textureUtil];
          v48 = [v47 createWithWidth:a4->var0 height:a4->var1 pixelFormat:115];
          coeffAveragedTexture = v10->_coeffAveragedTexture;
          v10->_coeffAveragedTexture = v48;

          if (v10->_coeffAveragedTexture)
          {
            v50 = [[PTRaytracingUtils alloc] initWithMetalContext:v8];
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

- (int)guidedFilter:(id)a3 image:(id)a4 guideRGBACoefficients:(id)a5 guideRGBAUpscale:(id)a6 upscaledImage:(id)a7 sourceColorBitDepth:(int)a8 postModifierPtr:(PTPostModifier *)a9
{
  v25[1] = *MEMORY[0x277D85DE8];
  v25[0] = a7;
  v15 = MEMORY[0x277CBEA60];
  v16 = a7;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [v15 arrayWithObjects:v25 count:1];

  LODWORD(v24) = a8;
  v22 = [(PTGuidedFilter *)self guidedFilter:v20 filterMode:a9 != 0 image:v19 guideRGBACoefficients:v18 guideRGBAUpscale:v17 upscaledImageArray:v21 sourceColorBitDepth:v24 postModifierBuffer:0 postModifierPtr:a9];

  return v22;
}

- (int)guidedFilter:(id)a3 image:(id)a4 guideRGBACoefficients:(id)a5 guideRGBAUpscale:(id)a6 upscaledImageArray:(id)a7 sourceColorBitDepth:(int)a8 postModifierBuffer:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = [v19 count];
  if (v20 || v21 != 1)
  {
    if (v20 && [v19 count] <= 2)
    {
      v24 = 3 * [v19 count];
      if ([v20 length] >= (4 * v24))
      {
        if ([v19 count] == 1)
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
        [PTGuidedFilter guidedFilter:v20 image:4 * v24 guideRGBACoefficients:v25 guideRGBAUpscale:? upscaledImageArray:? sourceColorBitDepth:? postModifierBuffer:?];
      }
    }

    else
    {
      v25 = _PTLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [PTGuidedFilter guidedFilter:v19 image:v25 guideRGBACoefficients:? guideRGBAUpscale:? upscaledImageArray:? sourceColorBitDepth:? postModifierBuffer:?];
      }
    }

    v23 = -10;
    goto LABEL_13;
  }

  v22 = 0;
LABEL_4:
  LODWORD(v27) = a8;
  v23 = [(PTGuidedFilter *)self guidedFilter:v15 filterMode:v22 image:v16 guideRGBACoefficients:v17 guideRGBAUpscale:v18 upscaledImageArray:v19 sourceColorBitDepth:v27 postModifierBuffer:v20 postModifierPtr:0];
LABEL_13:

  return v23;
}

- (int)guidedFilter:(id)a3 filterMode:(int)a4 image:(id)a5 guideRGBACoefficients:(id)a6 guideRGBAUpscale:(id)a7 upscaledImageArray:(id)a8 sourceColorBitDepth:(int)a9 postModifierBuffer:(id)a10 postModifierPtr:(PTPostModifier *)a11
{
  v17 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a10;
  if (a9 == 8)
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
    [(PTRaytracingUtils *)self->_utils sobelEdgeDetection:v17 inImage:v18 outEdges:self->_edges edgeTolerance:v23];
  }

  if (self->_useHighresGuideForComputingCoefficients)
  {
    v25 = v20;
  }

  else
  {
    v25 = v19;
  }

  *&v23 = v24;
  [(PTGuidedFilter *)self computeUpsamplingCoefficients:v17 guideTexture:v25 imageTexture:v18 coeffTexture:self->_coeffTexture weights:self->_edges guideMultiplier:v23];
  if (self->_skipBoxFilter)
  {
    skipBoxFilter = 1;
  }

  else
  {
    [(PTGuidedFilter *)self averageUpsamplingCoefficients:v17 coeffTexture:self->_coeffTexture coeffAveragedTexture:self->_coeffAveragedTexture];
    skipBoxFilter = self->_skipBoxFilter;
  }

  v28 = !skipBoxFilter;
  v29 = 72;
  if (!v28)
  {
    v29 = 56;
  }

  LODWORD(v31) = a4;
  *&v26 = v24;
  [(PTGuidedFilter *)self applyUpsamplingCoefficients:v17 guideTexture:v20 coeffTexture:*(&self->super.isa + v29) upscaledImageArray:v21 guideMultiplier:v22 postModifierBuffer:a11 postModifierPtr:v26 filterMode:v31];

  return 0;
}

- (void)computeUpsamplingCoefficients:(id)a3 guideTexture:(id)a4 imageTexture:(id)a5 coeffTexture:(id)a6 weights:(id)a7 guideMultiplier:(float)a8
{
  v14 = a6;
  v15 = a7;
  v31 = a8;
  v16 = a5;
  v17 = a4;
  v18 = [a3 computeCommandEncoder];
  if (!v18)
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

  [v18 setComputePipelineState:*(&self->super.isa + v27)];
  [v18 setTexture:v17 atIndex:0];

  [v18 setTexture:v16 atIndex:1];
  [v18 setTexture:v14 atIndex:2];
  if (self->_useWeightedSampling)
  {
    [v18 setTexture:v15 atIndex:3];
  }

  [v18 setBytes:&v31 length:4 atIndex:0];
  v30[0] = [v14 width];
  v30[1] = [v14 height];
  v30[2] = 1;
  v28 = xmmword_2244A5230;
  v29 = 1;
  [v18 dispatchThreads:v30 threadsPerThreadgroup:&v28];
  [v18 endEncoding];
}

- (void)averageUpsamplingCoefficients:(id)a3 coeffTexture:(id)a4 coeffAveragedTexture:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [a3 computeCommandEncoder];
  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  [v10 setComputePipelineState:self->_averageUpsamplingCoefficients];
  [v10 setTexture:v9 atIndex:0];

  [v10 setTexture:v8 atIndex:1];
  v19 = [v8 width];
  v20 = [v8 height];

  v23[0] = v19;
  v23[1] = v20;
  v23[2] = 1;
  v21 = xmmword_2244A5230;
  v22 = 1;
  [v10 dispatchThreads:v23 threadsPerThreadgroup:&v21];
  [v10 endEncoding];
}

- (void)applyUpsamplingCoefficients:(id)a3 guideTexture:(id)a4 coeffTexture:(id)a5 upscaledImageArray:(id)a6 guideMultiplier:(float)a7 postModifierBuffer:(id)a8 postModifierPtr:(PTPostModifier *)a9 filterMode:(int)a10
{
  v17 = a6;
  v38 = a7;
  v18 = a8;
  v19 = a5;
  v20 = a4;
  v21 = [a3 computeCommandEncoder];
  if (!v21)
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v22 disparityApplyPostModifier:v23 inDisparity:v24 outDisparity:v25 postModifier:v26, v27, v28, v29];
    }
  }

  [v21 setComputePipelineState:self->_applyUpsamplingCoefficients[a10]];
  [v21 setTexture:v20 atIndex:0];

  [v21 setTexture:v19 atIndex:1];
  v30 = [v17 objectAtIndexedSubscript:0];
  [v21 setTexture:v30 atIndex:2];

  if ([v17 count] == 2)
  {
    v31 = [v17 objectAtIndexedSubscript:1];
    [v21 setTexture:v31 atIndex:3];
  }

  [v21 setBytes:&v38 length:4 atIndex:0];
  if (v18)
  {
    [v21 setBuffer:v18 offset:0 atIndex:1];
  }

  else if (a9)
  {
    [v21 setBytes:a9 length:12 atIndex:1];
  }

  v32 = [v17 objectAtIndexedSubscript:0];
  v33 = [v32 width];
  v34 = [v17 objectAtIndexedSubscript:0];
  v37[0] = v33;
  v37[1] = [v34 height];
  v37[2] = 1;
  v35 = xmmword_2244A5230;
  v36 = 1;
  [v21 dispatchThreads:v37 threadsPerThreadgroup:&v35];

  [v21 endEncoding];
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