@interface PTFilterEMA_LKT
- (PTFilterEMA_LKT)initWithMetalContext:(id)context;
- (PTFilterEMA_LKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port;
- (int)emaFilter:(id)filter inDisplacement:(id)displacement inTexPrev:(id)prev inTex:(id)tex outTex:(id)outTex frameIndex:(int)index scale:(float)scale;
- (int)emaFilterDisparityNormal:(id)normal inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity inNormalPrev:(id)normalPrev inNormal:(id)inNormal outNormal:(id)self0 frameIndex:(int)self1;
- (int)gaussEMAFilter:(id)filter inDisplacement:(id)displacement inTexPrev:(id)prev inTex:(id)tex outTex:(id)outTex frameIndex:(int)index;
- (int)gaussEMAFilterNormal:(id)normal inDisplacement:(id)displacement inNormalPrev:(id)prev inNormal:(id)inNormal outNormal:(id)outNormal frameIndex:(int)index;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias;
- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state;
@end

@implementation PTFilterEMA_LKT

- (PTFilterEMA_LKT)initWithMetalContext:(id)context
{
  v71 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v69.receiver = self;
  v69.super_class = PTFilterEMA_LKT;
  v6 = [(PTFilterEMA_LKT *)&v69 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v67 = 0x408000003F800000;
    v68 = 0x3F8000003E6B851FLL;
    HIDWORD(v66) = 1069547520;
    v8 = 0.0;
    v9 = -1;
    v10 = v70;
    do
    {
      v11 = 0;
      v12 = -1;
      do
      {
        v13 = pow(2.71828183, (((v12 * v12) + (v9 * v9)) * -0.5)) * 0.159154943;
        v8 = v8 + v13;
        *&v10[v11] = v13;
        v11 += 3;
        ++v12;
      }

      while (v11 != 9);
      ++v9;
      ++v10;
    }

    while (v9 != 2);
    for (i = 0; i != 9; ++i)
    {
      *&v70[i] = *&v70[i] / v8;
    }

    _S0 = v70[0];
    _S1 = v70[1];
    __asm { FCVT            H0, S0 }

    HIWORD(v65) = _S0;
    __asm { FCVT            H0, S1 }

    LOWORD(v66) = _S0;
    _S0 = v70[2];
    _S1 = v70[3];
    __asm { FCVT            H0, S0 }

    WORD1(v66) = _S0;
    __asm { FCVT            H0, S1 }

    LOWORD(v65) = _S0;
    _S0 = v70[4];
    _S1 = v70[5];
    __asm { FCVT            H0, S0 }

    WORD1(v65) = _S0;
    __asm { FCVT            H0, S1 }

    WORD2(v65) = _S0;
    v25 = objc_opt_new();
    [v25 setConstantValue:&v68 type:4 withName:{@"kIIRUpdateCoefficients", v65, v66, v67}];
    [v25 setConstantValue:&v67 type:4 withName:@"kMotionThresholdMinMax"];
    v26 = [contextCopy computePipelineStateFor:@"temporalFilterEMA_LKT" withConstants:v25];
    temporalFilterEMA_LKT = v7->_temporalFilterEMA_LKT;
    v7->_temporalFilterEMA_LKT = v26;

    if (v7->_temporalFilterEMA_LKT)
    {
      v28 = [contextCopy computePipelineStateFor:@"temporalFilterEMA_LKTDisparityNormal" withConstants:v25];
      temporalFilterEMA_LKTDisparityNormal = v7->_temporalFilterEMA_LKTDisparityNormal;
      v7->_temporalFilterEMA_LKTDisparityNormal = v28;

      if (v7->_temporalFilterEMA_LKTDisparityNormal)
      {
        [v25 setConstantValue:&v66 + 4 type:3 withName:@"kGaussianWidth"];
        [v25 setConstantValue:&v65 + 6 type:18 withName:@"kWeights2DRow0"];
        [v25 setConstantValue:&v65 type:18 withName:@"kWeights2DRow1"];
        v30 = [contextCopy computePipelineStateFor:@"temporalFilterGaussEMA_LKTNormal" withConstants:v25];
        temporalFilterGaussEMA_LKTNormal = v7->_temporalFilterGaussEMA_LKTNormal;
        v7->_temporalFilterGaussEMA_LKTNormal = v30;

        if (v7->_temporalFilterGaussEMA_LKTNormal)
        {
          v32 = [contextCopy computePipelineStateFor:@"temporalFilterGaussEMA_LKT" withConstants:v25];
          temporalFilterGaussEMA_LKT = v7->_temporalFilterGaussEMA_LKT;
          v7->_temporalFilterGaussEMA_LKT = v32;

          if (v7->_temporalFilterGaussEMA_LKT)
          {
            v34 = v7;
LABEL_23:

            goto LABEL_24;
          }

          v35 = _PTLogSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [(PTFilterEMA_LKT *)v35 initWithMetalContext:v57, v58, v59, v60, v61, v62, v63];
          }
        }

        else
        {
          v35 = _PTLogSystem();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            [(PTFilterEMA_LKT *)v35 initWithMetalContext:v50, v51, v52, v53, v54, v55, v56];
          }
        }
      }

      else
      {
        v35 = _PTLogSystem();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          [(PTFilterEMA_LKT *)v35 initWithMetalContext:v43, v44, v45, v46, v47, v48, v49];
        }
      }
    }

    else
    {
      v35 = _PTLogSystem();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [(PTFilterEMA_LKT *)v35 initWithMetalContext:v36, v37, v38, v39, v40, v41, v42];
      }
    }

    v34 = 0;
    goto LABEL_23;
  }

  v34 = 0;
LABEL_24:

  return v34;
}

- (PTFilterEMA_LKT)initWithMetalContext:(id)context disparitySize:(id *)size disparityFilteredSize:(id *)filteredSize disparityPixelFormat:(unint64_t)format colorSize:(id *)colorSize colorPixelFormat:(unint64_t)pixelFormat sensorPort:(id)port
{
  contextCopy = context;
  v14 = [(PTFilterEMA_LKT *)self initWithMetalContext:contextCopy];
  v15 = v14;
  if (v14)
  {
    v14->_frameIndex = 0;
    v16 = *&size->var0;
    v14->_disparitySize.depth = size->var2;
    *&v14->_disparitySize.width = v16;
    v17 = *&filteredSize->var0;
    v14->_disparityFilteredSize.depth = filteredSize->var2;
    *&v14->_disparityFilteredSize.width = v17;
    v18 = PTDefaultsGetDictionary();
    v19 = [v18 objectForKeyedSubscript:@"PortraitDump"];
    if (v19)
    {
      v20 = [PTUtil temporaryDirectory:v19];
      dumpInputOutputFolder = v15->_dumpInputOutputFolder;
      v15->_dumpInputOutputFolder = v20;
    }

    v22 = [v18 objectForKeyedSubscript:@"PTDisparityFilterLKTQuality"];

    if (v22)
    {
      intValue = [v22 intValue];
    }

    else
    {
      intValue = 1;
    }

    v24 = [PTOpticalFlow alloc];
    v29 = *&colorSize->var0;
    var2 = colorSize->var2;
    v25 = [(PTOpticalFlow *)v24 initWithMetalContext:contextCopy colorSize:&v29 lktPreset:intValue allocateDisplacementFWD:0 needConversionBGRA2YUVA:0 inverseFlow:1];
    opticalFlow = v15->_opticalFlow;
    v15->_opticalFlow = v25;

    v27 = v15;
  }

  return v15;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inStatePrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity outState:(id)state
{
  v8 = _PTLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [PTFilterEMA_LKT temporalDisparityFilter:v8 inDisplacement:? inStatePrev:? inDisparity:? outDisparity:? outState:?];
  }

  return -1;
}

- (int)temporalDisparityFilter:(id)filter inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity disparityBias:(float)bias
{
  if (prev == outDisparity)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PTFilterEMA_LKT temporalDisparityFilter:v11 inDisplacement:? inDisparityPrev:? inDisparity:? outDisparity:? disparityBias:?];
    }

    return -1;
  }

  else
  {
    LODWORD(v9) = 1.0;
    result = [PTFilterEMA_LKT emaFilter:"emaFilter:inDisplacement:inTexPrev:inTex:outTex:frameIndex:scale:" inDisplacement:filter inTexPrev:displacement inTex:prev outTex:disparity frameIndex:v9 scale:?];
    ++self->_frameIndex;
  }

  return result;
}

- (int)emaFilter:(id)filter inDisplacement:(id)displacement inTexPrev:(id)prev inTex:(id)tex outTex:(id)outTex frameIndex:(int)index scale:(float)scale
{
  filterCopy = filter;
  displacementCopy = displacement;
  prevCopy = prev;
  texCopy = tex;
  outTexCopy = outTex;
  scaleCopy = scale;
  if (index)
  {
    computeCommandEncoder = [filterCopy computeCommandEncoder];
    if (!computeCommandEncoder)
    {
      v22 = _PTLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v22 disparityApplyPostModifier:v23 inDisparity:v24 outDisparity:v25 postModifier:v26, v27, v28, v29];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_temporalFilterEMA_LKT];
    [computeCommandEncoder setTexture:displacementCopy atIndex:0];
    [computeCommandEncoder setTexture:prevCopy atIndex:1];
    [computeCommandEncoder setTexture:texCopy atIndex:2];
    [computeCommandEncoder setTexture:outTexCopy atIndex:3];
    [computeCommandEncoder setBytes:&scaleCopy length:4 atIndex:0];
    v35[0] = [outTexCopy width];
    v35[1] = [outTexCopy height];
    v35[2] = 1;
    v33 = xmmword_2244A5230;
    v34 = 1;
    [computeCommandEncoder dispatchThreads:v35 threadsPerThreadgroup:&v33];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    textureUtil = [(PTMetalContext *)self->_metalContext textureUtil];
    computeCommandEncoder = textureUtil;
    if (scale == 1.0)
    {
      [textureUtil copy:filterCopy inTex:texCopy outTex:outTexCopy];
    }

    else
    {
      *&v31 = scale;
      [textureUtil multiply:filterCopy inTex:texCopy outTex:outTexCopy multiplier:v31];
    }
  }

  return 0;
}

- (int)gaussEMAFilter:(id)filter inDisplacement:(id)displacement inTexPrev:(id)prev inTex:(id)tex outTex:(id)outTex frameIndex:(int)index
{
  displacementCopy = displacement;
  prevCopy = prev;
  if (index)
  {
    outTexCopy = outTex;
    texCopy = tex;
    filterCopy = filter;
    computeCommandEncoder = [filterCopy computeCommandEncoder];

    if (!computeCommandEncoder)
    {
      v20 = _PTLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v20 disparityApplyPostModifier:v21 inDisparity:v22 outDisparity:v23 postModifier:v24, v25, v26, v27];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_temporalFilterGaussEMA_LKT];
    [computeCommandEncoder setTexture:displacementCopy atIndex:0];
    [computeCommandEncoder setTexture:prevCopy atIndex:1];
    [computeCommandEncoder setTexture:texCopy atIndex:2];

    [computeCommandEncoder setTexture:outTexCopy atIndex:3];
    width = [outTexCopy width];
    height = [outTexCopy height];

    v38[0] = width;
    v38[1] = height;
    v38[2] = 1;
    v36 = xmmword_2244A5230;
    v37 = 1;
    [computeCommandEncoder dispatchThreads:v38 threadsPerThreadgroup:&v36];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    metalContext = self->_metalContext;
    outTexCopy2 = outTex;
    texCopy2 = tex;
    filterCopy2 = filter;
    textureUtil = [(PTMetalContext *)metalContext textureUtil];
    [textureUtil copy:filterCopy2 inTex:texCopy2 outTex:outTexCopy2];
  }

  return 0;
}

- (int)gaussEMAFilterNormal:(id)normal inDisplacement:(id)displacement inNormalPrev:(id)prev inNormal:(id)inNormal outNormal:(id)outNormal frameIndex:(int)index
{
  displacementCopy = displacement;
  prevCopy = prev;
  if (index)
  {
    outNormalCopy = outNormal;
    inNormalCopy = inNormal;
    normalCopy = normal;
    computeCommandEncoder = [normalCopy computeCommandEncoder];

    if (!computeCommandEncoder)
    {
      v20 = _PTLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v20 disparityApplyPostModifier:v21 inDisparity:v22 outDisparity:v23 postModifier:v24, v25, v26, v27];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_temporalFilterGaussEMA_LKTNormal];
    [computeCommandEncoder setTexture:displacementCopy atIndex:0];
    [computeCommandEncoder setTexture:prevCopy atIndex:1];
    [computeCommandEncoder setTexture:inNormalCopy atIndex:2];

    [computeCommandEncoder setTexture:outNormalCopy atIndex:3];
    width = [outNormalCopy width];
    height = [outNormalCopy height];

    v38[0] = width;
    v38[1] = height;
    v38[2] = 1;
    v36 = xmmword_2244A5230;
    v37 = 1;
    [computeCommandEncoder dispatchThreads:v38 threadsPerThreadgroup:&v36];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    metalContext = self->_metalContext;
    outNormalCopy2 = outNormal;
    inNormalCopy2 = inNormal;
    normalCopy2 = normal;
    textureUtil = [(PTMetalContext *)metalContext textureUtil];
    [textureUtil copy:normalCopy2 inTex:inNormalCopy2 outTex:outNormalCopy2];
  }

  return 0;
}

- (int)emaFilterDisparityNormal:(id)normal inDisplacement:(id)displacement inDisparityPrev:(id)prev inDisparity:(id)disparity outDisparity:(id)outDisparity inNormalPrev:(id)normalPrev inNormal:(id)inNormal outNormal:(id)self0 frameIndex:(int)self1
{
  displacementCopy = displacement;
  prevCopy = prev;
  normalPrevCopy = normalPrev;
  if (index)
  {
    outNormalCopy = outNormal;
    inNormalCopy = inNormal;
    outDisparityCopy = outDisparity;
    disparityCopy = disparity;
    normalCopy = normal;
    computeCommandEncoder = [normalCopy computeCommandEncoder];

    if (!computeCommandEncoder)
    {
      v26 = _PTLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(PTRaytracingUtils *)v26 disparityApplyPostModifier:v27 inDisparity:v28 outDisparity:v29 postModifier:v30, v31, v32, v33];
      }
    }

    [computeCommandEncoder setComputePipelineState:self->_temporalFilterEMA_LKTDisparityNormal];
    [computeCommandEncoder setTexture:displacementCopy atIndex:0];
    [computeCommandEncoder setTexture:prevCopy atIndex:1];
    [computeCommandEncoder setTexture:disparityCopy atIndex:2];

    [computeCommandEncoder setTexture:normalPrevCopy atIndex:3];
    [computeCommandEncoder setTexture:inNormalCopy atIndex:4];

    [computeCommandEncoder setTexture:outDisparityCopy atIndex:5];
    [computeCommandEncoder setTexture:outNormalCopy atIndex:6];

    width = [outDisparityCopy width];
    height = [outDisparityCopy height];

    v47[0] = width;
    v47[1] = height;
    v47[2] = 1;
    v45 = xmmword_2244A5230;
    v46 = 1;
    [computeCommandEncoder dispatchThreads:v47 threadsPerThreadgroup:&v45];
    [computeCommandEncoder endEncoding];
  }

  else
  {
    metalContext = self->_metalContext;
    outNormalCopy2 = outNormal;
    inNormalCopy2 = inNormal;
    outDisparityCopy2 = outDisparity;
    disparityCopy2 = disparity;
    normalCopy2 = normal;
    textureUtil = [(PTMetalContext *)metalContext textureUtil];
    [textureUtil copy:normalCopy2 inTex:disparityCopy2 outTex:outDisparityCopy2];

    textureUtil2 = [(PTMetalContext *)self->_metalContext textureUtil];
    [textureUtil2 copy:normalCopy2 inTex:inNormalCopy2 outTex:outNormalCopy2];
  }

  return 0;
}

@end