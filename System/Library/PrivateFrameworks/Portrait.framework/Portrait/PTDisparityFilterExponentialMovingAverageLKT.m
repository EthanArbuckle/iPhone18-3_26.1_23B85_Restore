@interface PTDisparityFilterExponentialMovingAverageLKT
- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)a3;
- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)a3 disparitySize:(id *)a4 disparityFilteredSize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9;
- (int)copyDisparityWithBias:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 disparityBias:(float)a6;
- (int)exponentialMovingAverageFilter:(PTDisparityFilterExponentialMovingAverageLKT *)self inDisplacement:(SEL)a2 inDisparityPrev:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 updateCoefficient:(id)a6 disparityBias:(id)a7;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inDisparityPrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 disparityBias:(float)a8;
- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outState:(id)a8;
@end

@implementation PTDisparityFilterExponentialMovingAverageLKT

- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)a3
{
  v5 = a3;
  v29.receiver = self;
  v29.super_class = PTDisparityFilterExponentialMovingAverageLKT;
  v6 = [(PTDisparityFilterExponentialMovingAverageLKT *)&v29 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  *v7->_iirUpdateCoefficient = COERCE_UNSIGNED_INT(0.25);
  v8 = [v5 computePipelineStateFor:@"temporalFilterExponentialMovingAverageLKT" withConstants:0];
  temporalFilterExponentialMovingAverageLKT = v7->_temporalFilterExponentialMovingAverageLKT;
  v7->_temporalFilterExponentialMovingAverageLKT = v8;

  if (!v7->_temporalFilterExponentialMovingAverageLKT)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterExponentialMovingAverageLKT *)v13 initWithMetalContext:v14, v15, v16, v17, v18, v19, v20];
    }

    goto LABEL_9;
  }

  v10 = [v5 computePipelineStateFor:@"copyDisparityWithBias" withConstants:0];
  copyDisparityWithBias = v7->_copyDisparityWithBias;
  v7->_copyDisparityWithBias = v10;

  if (!v7->_copyDisparityWithBias)
  {
    v13 = _PTLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [(PTDisparityFilterExponentialMovingAverageLKT *)v13 initWithMetalContext:v21, v22, v23, v24, v25, v26, v27];
    }

LABEL_9:

LABEL_10:
    v12 = 0;
    goto LABEL_11;
  }

  v12 = v7;
LABEL_11:

  return v12;
}

- (PTDisparityFilterExponentialMovingAverageLKT)initWithMetalContext:(id)a3 disparitySize:(id *)a4 disparityFilteredSize:(id *)a5 disparityPixelFormat:(unint64_t)a6 colorSize:(id *)a7 colorPixelFormat:(unint64_t)a8 sensorPort:(id)a9
{
  v13 = a3;
  v14 = [(PTDisparityFilterExponentialMovingAverageLKT *)self initWithMetalContext:v13];
  v15 = v14;
  if (v14)
  {
    v14->_frameCount = 0;
    v16 = *&a4->var0;
    v14->_disparitySize.depth = a4->var2;
    *&v14->_disparitySize.width = v16;
    v17 = *&a5->var0;
    v14->_disparityFilteredSize.depth = a5->var2;
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
      v23 = [v22 intValue];
    }

    else
    {
      v23 = 1;
    }

    v24 = [PTOpticalFlow alloc];
    v29 = *&a7->var0;
    var2 = a7->var2;
    v25 = [(PTOpticalFlow *)v24 initWithMetalContext:v13 colorSize:&v29 lktPreset:v23];
    opticalFlow = v15->_opticalFlow;
    v15->_opticalFlow = v25;

    v27 = v15;
  }

  return v15;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inStatePrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 outState:(id)a8
{
  v14 = a8;
  v15 = a7;
  v16 = a3;
  LODWORD(a6) = [(PTDisparityFilterExponentialMovingAverageLKT *)self temporalDisparityFilter:v16 inDisplacement:a4 inDisparityPrev:a5 inDisparity:a6 outDisparity:v15 disparityBias:0.0];
  v17 = [(PTMetalContext *)self->_metalContext textureUtil];
  LODWORD(a4) = [v17 copy:v16 inTex:v15 outTex:v14];

  return a4 | a6;
}

- (int)temporalDisparityFilter:(id)a3 inDisplacement:(id)a4 inDisparityPrev:(id)a5 inDisparity:(id)a6 outDisparity:(id)a7 disparityBias:(float)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  if (v16 == v18)
  {
    v22 = _PTLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [PTFilterEMA_LKT temporalDisparityFilter:v22 inDisplacement:? inDisparityPrev:? inDisparity:? outDisparity:? disparityBias:?];
    }

    v21 = -1;
  }

  else
  {
    if (self->_frameCount)
    {
      LOWORD(v19) = *self->_iirUpdateCoefficient;
      *&v20 = a8;
      v21 = [(PTDisparityFilterExponentialMovingAverageLKT *)self exponentialMovingAverageFilter:v14 inDisplacement:v15 inDisparityPrev:v16 inDisparity:v17 outDisparity:v18 updateCoefficient:v19 disparityBias:v20];
    }

    else
    {
      *&v19 = a8;
      [(PTDisparityFilterExponentialMovingAverageLKT *)self copyDisparityWithBias:v14 inDisparity:v17 outDisparity:v18 disparityBias:v19];
      v21 = 0;
    }

    ++self->_frameCount;
  }

  return v21;
}

- (int)exponentialMovingAverageFilter:(PTDisparityFilterExponentialMovingAverageLKT *)self inDisplacement:(SEL)a2 inDisparityPrev:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 updateCoefficient:(id)a6 disparityBias:(id)a7
{
  v34 = v7;
  v33 = v8;
  v14 = a7;
  v15 = a6;
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

  [v18 setComputePipelineState:self->_temporalFilterExponentialMovingAverageLKT];
  [v18 setTexture:v17 atIndex:0];

  [v18 setTexture:v16 atIndex:1];
  [v18 setTexture:v15 atIndex:2];

  [v18 setTexture:v14 atIndex:3];
  [v18 setBytes:&v34 length:2 atIndex:0];
  [v18 setBytes:&v33 length:4 atIndex:1];
  v27 = [v14 width];
  v28 = [v14 height];

  v32[0] = v27;
  v32[1] = v28;
  v32[2] = 1;
  v30 = xmmword_2244A5230;
  v31 = 1;
  [v18 dispatchThreads:v32 threadsPerThreadgroup:&v30];
  [v18 endEncoding];

  return 0;
}

- (int)copyDisparityWithBias:(id)a3 inDisparity:(id)a4 outDisparity:(id)a5 disparityBias:(float)a6
{
  v26 = a6;
  v9 = a5;
  v10 = a4;
  v11 = [a3 computeCommandEncoder];
  if (!v11)
  {
    v12 = _PTLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v12 disparityApplyPostModifier:v13 inDisparity:v14 outDisparity:v15 postModifier:v16, v17, v18, v19];
    }
  }

  [v11 setComputePipelineState:self->_copyDisparityWithBias];
  [v11 setTexture:v10 atIndex:0];

  [v11 setTexture:v9 atIndex:1];
  [v11 setBytes:&v26 length:4 atIndex:0];
  v20 = [v9 width];
  v21 = [v9 height];

  v25[0] = v20;
  v25[1] = v21;
  v25[2] = 1;
  v23 = xmmword_2244A5230;
  v24 = 1;
  [v11 dispatchThreads:v25 threadsPerThreadgroup:&v23];
  [v11 endEncoding];

  return 0;
}

@end