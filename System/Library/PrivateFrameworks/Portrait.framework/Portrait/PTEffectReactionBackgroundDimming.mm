@interface PTEffectReactionBackgroundDimming
- (PTEffectReactionBackgroundDimming)initWithMetalContext:(id)context;
- (int)backgroundDimAndConvertRGBLinearFromPTTexture:(id)texture inPTTexture:(id)tTexture inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation outRGBA:(id)a dimmingFactor:(float)factor disparityRemapping:(CGRect)remapping outColorROI:(CGRect)self0;
@end

@implementation PTEffectReactionBackgroundDimming

- (PTEffectReactionBackgroundDimming)initWithMetalContext:(id)context
{
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = PTEffectReactionBackgroundDimming;
  v6 = [(PTEffectReactionBackgroundDimming *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = objc_opt_new();
    v16 = 0;
    backgroundDimAndConvertYUVtoRGB = v7->_backgroundDimAndConvertYUVtoRGB;
    while (1)
    {
      [v8 reset];
      [v8 setConstantValue:&v16 type:29 withName:@"kColorTransferFunction"];
      v10 = [contextCopy computePipelineStateFor:@"backgroundDimAndConvertYUVToRGB" withConstants:v8];
      v11 = backgroundDimAndConvertYUVtoRGB[v16];
      backgroundDimAndConvertYUVtoRGB[v16] = v10;

      v12 = v16;
      if (!backgroundDimAndConvertYUVtoRGB[v16])
      {
        break;
      }

      ++v16;
      if (v12 > 7)
      {
        v13 = v7;
        goto LABEL_10;
      }
    }

    v14 = _PTLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [PTEffectReactionBackgroundDimming initWithMetalContext:v14];
    }

    v13 = 0;
LABEL_10:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int)backgroundDimAndConvertRGBLinearFromPTTexture:(id)texture inPTTexture:(id)tTexture inCenteredDisparity:(id)disparity inSegmentation:(id)segmentation outRGBA:(id)a dimmingFactor:(float)factor disparityRemapping:(CGRect)remapping outColorROI:(CGRect)self0
{
  y = remapping.origin.y;
  width = remapping.size.width;
  height = remapping.size.height;
  x = remapping.origin.x;
  tTextureCopy = tTexture;
  disparityCopy = disparity;
  segmentationCopy = segmentation;
  v19 = segmentationCopy;
  _D1 = factor * 0.6;
  __asm { FCVT            H1, D1 }

  v56[0] = LOWORD(_D1);
  _D1 = factor * 0.85;
  __asm { FCVT            H1, D1 }

  v56[1] = LOWORD(_D1);
  _D0 = factor * 0.95;
  __asm { FCVT            H0, D0 }

  v56[2] = LOWORD(_D0);
  v57 = -1207911424;
  if (segmentationCopy)
  {
    v27 = segmentationCopy;
    v57 = 1006632960;
  }

  else
  {
    v27 = disparityCopy;
  }

  memset(v55, 0, sizeof(v55));
  aCopy = a;
  textureCopy = texture;
  transferFunction = [tTextureCopy transferFunction];
  v31 = [PTColorConversion getTransferFunction:transferFunction toLinear:1];

  computeCommandEncoder = [textureCopy computeCommandEncoder];

  if (!computeCommandEncoder)
  {
    v34 = _PTLogSystem();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [PTEffectReactionBackgroundDimming backgroundDimAndConvertRGBLinearFromPTTexture:v34 inPTTexture:? inCenteredDisparity:? inSegmentation:? outRGBA:? dimmingFactor:? disparityRemapping:? outColorROI:?];
    }
  }

  [computeCommandEncoder setComputePipelineState:{self->_backgroundDimAndConvertYUVtoRGB[v31], *&i.size.height, v33}];
  if ([tTextureCopy isRGB])
  {
    texRGBA = [tTextureCopy texRGBA];
    [computeCommandEncoder setTexture:texRGBA atIndex:0];

    [computeCommandEncoder setTexture:0 atIndex:1];
  }

  else
  {
    [PTColorConversion getColorMatrix:tTextureCopy toRGB:1];
    v36 = tTextureCopy;
    texLuma = [v36 texLuma];
    [computeCommandEncoder setTexture:texLuma atIndex:0];

    texChroma = [v36 texChroma];

    [computeCommandEncoder setTexture:texChroma atIndex:1];
  }

  [computeCommandEncoder setTexture:v27 atIndex:2];
  [computeCommandEncoder setTexture:aCopy atIndex:3];
  [computeCommandEncoder setBytes:v55 length:24 atIndex:0];
  [computeCommandEncoder setBytes:v56 length:10 atIndex:1];
  v39.f64[0] = width;
  v40.f64[0] = x;
  v39.f64[1] = height;
  v40.f64[1] = y;
  v54 = vcvt_hight_f32_f64(vcvt_f32_f64(v40), v39);
  [computeCommandEncoder setBytes:&v54 length:16 atIndex:2];
  v41.f64[0] = i.size.width;
  v41.f64[1] = v45;
  v53 = vcvt_hight_f32_f64(vcvt_f32_f64(i.origin), v41);
  [computeCommandEncoder setBytes:&v53 length:16 atIndex:3];
  width = [aCopy width];
  height = [aCopy height];

  v52[0] = width;
  v52[1] = height;
  v52[2] = 1;
  v50 = xmmword_2244A5230;
  v51 = 1;
  [computeCommandEncoder dispatchThreads:v52 threadsPerThreadgroup:&v50];
  [computeCommandEncoder endEncoding];

  return 0;
}

- (void)initWithMetalContext:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_backgroundDimAndConvertYUVtoRGB[i]";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

- (void)backgroundDimAndConvertRGBLinearFromPTTexture:(os_log_t)log inPTTexture:inCenteredDisparity:inSegmentation:outRGBA:dimmingFactor:disparityRemapping:outColorROI:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "computeEncoder";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end