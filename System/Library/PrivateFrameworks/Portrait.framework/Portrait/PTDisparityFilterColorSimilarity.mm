@interface PTDisparityFilterColorSimilarity
- (PTDisparityFilterColorSimilarity)initWithMetalContext:(id)context;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state;
@end

@implementation PTDisparityFilterColorSimilarity

- (PTDisparityFilterColorSimilarity)initWithMetalContext:(id)context
{
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v31.receiver = self;
  v31.super_class = PTDisparityFilterColorSimilarity;
  v5 = [(PTDisparityFilterColorSimilarity *)&v31 init];
  if (v5)
  {
    v6 = 0.0;
    v7 = -1;
    v8 = v32;
    do
    {
      v9 = 0;
      v10 = -1;
      do
      {
        v11 = pow(2.71828183, (((v10 * v10) + (v7 * v7)) * -0.5)) * 0.159154943;
        v6 = v6 + v11;
        *&v8[v9] = v11;
        v9 += 3;
        ++v10;
      }

      while (v9 != 9);
      ++v7;
      ++v8;
    }

    while (v7 != 2);
    for (i = 0; i != 9; ++i)
    {
      *&v32[i] = *&v32[i] / v6;
    }

    _S0 = v32[0];
    _S1 = v32[1];
    __asm { FCVT            H0, S0 }

    v30[0] = _S0;
    __asm { FCVT            H0, S1 }

    v30[1] = _S0;
    _S0 = v32[2];
    _S1 = v32[3];
    __asm { FCVT            H0, S0 }

    v30[2] = _S0;
    __asm { FCVT            H0, S1 }

    v29[0] = _S0;
    _S0 = v32[4];
    _S1 = v32[5];
    __asm { FCVT            H0, S0 }

    v29[1] = _S0;
    __asm { FCVT            H0, S1 }

    v29[2] = _S0;
    v23 = objc_opt_new();
    [v23 setConstantHalf3:v30 withName:@"kWeights2DRow0_half3"];
    [v23 setConstantHalf3:v29 withName:@"kWeights2DRow1_half3"];
    v24 = [contextCopy computePipelineStateFor:@"temporalFilterExponentialMovingAverageColorSimilarities" withConstants:v23];
    temporalFilterExponentialMovingAverageColorSimilarities = v5->_temporalFilterExponentialMovingAverageColorSimilarities;
    v5->_temporalFilterExponentialMovingAverageColorSimilarities = v24;

    if (v5->_temporalFilterExponentialMovingAverageColorSimilarities)
    {
      v5->_frameIndex = 0;
      v26 = v5;
    }

    else
    {
      v27 = _PTLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [PTDisparityFilterColorSimilarity initWithMetalContext:v27];
      }

      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state
{
  stateCopy = state;
  outDisparityCopy = outDisparity;
  disparityCopy = disparity;
  prevCopy = prev;
  computeCommandEncoder = [filter computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_temporalFilterExponentialMovingAverageColorSimilarities];
  [computeCommandEncoder setTexture:self->_inputRGB atIndex:0];
  if (self->_frameIndex)
  {
    v18 = prevCopy;
  }

  else
  {
    v18 = 0;
  }

  [computeCommandEncoder setTexture:v18 atIndex:1];

  [computeCommandEncoder setTexture:disparityCopy atIndex:2];
  [computeCommandEncoder setTexture:outDisparityCopy atIndex:3];
  [computeCommandEncoder setTexture:stateCopy atIndex:4];

  v26 = 12902;
  v25 = COERCE_UNSIGNED_INT(20.0);
  [computeCommandEncoder setBytes:&v26 length:2 atIndex:0];
  [computeCommandEncoder setBytes:&v25 length:2 atIndex:1];
  width = [outDisparityCopy width];
  height = [outDisparityCopy height];

  v24[0] = width;
  v24[1] = height;
  v24[2] = 1;
  v22 = xmmword_2244A5230;
  v23 = 1;
  [computeCommandEncoder dispatchThreads:v24 threadsPerThreadgroup:&v22];
  [computeCommandEncoder endEncoding];
  ++self->_frameIndex;

  return 0;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias
{
  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PTDisparityFilterColorSimilarity temporalDisparityFilter:v8 inDisplacement:? inDisparityPrev:? inDisparity:? outDisparity:? disparityBias:?];
  }

  return -1;
}

- (void)initWithMetalContext:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_temporalFilterExponentialMovingAverageColorSimilarities";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end