@interface PTPyramid
- (PTPyramid)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 pixelFormat:(unint64_t)a5 skipFullSizeLayer:(BOOL)a6 doFirstLevelGaussianDownsample:(BOOL)a7 mipmapLevelCount:(int)a8;
- (id)findMipmapLevelLargerThan:(id *)a3;
- (id)findMipmapLevelLargerThan:(id *)a3 fromLevel:(int)a4;
- (int)updatePyramid:(id)a3 inPTTexture:(id)a4;
- (int)updatePyramid:(id)a3 offset:(int)a4 samplingRadius:(float)a5;
@end

@implementation PTPyramid

- (PTPyramid)initWithMetalContext:(id)a3 colorSize:(CGSize)a4 pixelFormat:(unint64_t)a5 skipFullSizeLayer:(BOOL)a6 doFirstLevelGaussianDownsample:(BOOL)a7 mipmapLevelCount:(int)a8
{
  v10 = a6;
  height = a4.height;
  width = a4.width;
  v122 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v120 = a7;
  v119.receiver = self;
  v119.super_class = PTPyramid;
  v17 = [(PTPyramid *)&v119 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_26;
  }

  objc_storeStrong(&v17->_metalContext, a3);
  v18->_skipFullSizeLayer = v10;
  v18->_doFirstLevelGaussianDownsample = a7;
  v19 = [(PTMetalContext *)v18->_metalContext textureUtil];
  v20 = v19;
  v21 = (width + 1.0) * 0.5;
  v22 = (height + 1.0) * 0.5;
  if (!v10)
  {
    v22 = height;
    v21 = width;
  }

  v23 = [v19 createWithWidth:v21 height:v22 pixelFormat:a5 mipmapLevelCount:a8];
  mipmapTexture = v18->_mipmapTexture;
  v18->_mipmapTexture = v23;

  if (!v18->_mipmapTexture)
  {
    v45 = _PTLogSystem();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v45 initWithMetalContext:v63 colorSize:v64 pixelFormat:v65 skipFullSizeLayer:v66 doFirstLevelGaussianDownsample:v67 mipmapLevelCount:v68, v69];
    }

    goto LABEL_44;
  }

  v25 = [(PTMetalContext *)v18->_metalContext textureUtil];
  v26 = [v25 mipmapLevelsUsingTextureView:v18->_mipmapTexture];
  mipmapLevels = v18->_mipmapLevels;
  v18->_mipmapLevels = v26;

  if (!v18->_mipmapLevels)
  {
    v45 = _PTLogSystem();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v45 initWithMetalContext:v70 colorSize:v71 pixelFormat:v72 skipFullSizeLayer:v73 doFirstLevelGaussianDownsample:v74 mipmapLevelCount:v75, v76];
    }

LABEL_44:

    v62 = 0;
    goto LABEL_45;
  }

  v115 = v16;
  v28 = 0.0;
  v29 = -1;
  v30 = v121;
  do
  {
    v31 = 0;
    v32 = -1;
    do
    {
      v33 = pow(2.71828183, (((v32 * v32) + (v29 * v29)) * -0.5)) * 0.159154943;
      v28 = v28 + v33;
      *&v30[v31] = v33;
      v31 += 3;
      ++v32;
    }

    while (v31 != 9);
    ++v29;
    ++v30;
  }

  while (v29 != 2);
  for (i = 0; i != 9; ++i)
  {
    *&v121[i] = *&v121[i] / v28;
  }

  _S0 = v121[0];
  _S1 = v121[1];
  __asm { FCVT            H0, S0 }

  v118[0] = _S0;
  __asm { FCVT            H0, S1 }

  v118[1] = _S0;
  _S0 = v121[2];
  _S1 = v121[3];
  __asm { FCVT            H0, S0 }

  v118[2] = _S0;
  __asm { FCVT            H0, S1 }

  v117[0] = _S0;
  _S0 = v121[4];
  _S1 = v121[5];
  __asm { FCVT            H0, S0 }

  v117[1] = _S0;
  __asm { FCVT            H0, S1 }

  v117[2] = _S0;
  v45 = objc_opt_new();
  [v45 setConstantHalf3:v118 withName:@"kWeights2DRow0_half3"];
  [v45 setConstantHalf3:v117 withName:@"kWeights2DRow1_half3"];
  v46 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"downscaleGaussian3x3" withConstants:v45];
  downscaleGaussian3x3 = v18->_downscaleGaussian3x3;
  v18->_downscaleGaussian3x3 = v46;

  if (!v18->_downscaleGaussian3x3)
  {
    v77 = _PTLogSystem();
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v77 initWithMetalContext:v78 colorSize:v79 pixelFormat:v80 skipFullSizeLayer:v81 doFirstLevelGaussianDownsample:v82 mipmapLevelCount:v83, v84];
    }

    v62 = 0;
    v16 = v115;
    goto LABEL_45;
  }

  v48 = 0;
  updateLevel0FromRGBA = v18->_updateLevel0FromRGBA;
  updateLevel0FromYUV = v18->_updateLevel0FromYUV;
  updateLevel0and1FromRGBA = v18->_updateLevel0and1FromRGBA;
  updateLevel0and1FromYUV = v18->_updateLevel0and1FromYUV;
  do
  {
    v116 = supportedColorTransferFunctions_1[v48];
    [v45 setConstantValue:&v116 type:29 withName:@"kColorTransferFunctionToLinear"];
    [v45 setConstantValue:&v120 type:53 withName:@"kDoFirstLevelGaussianDownsample"];
    v53 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0FromRGBA" withConstants:v45];
    v54 = updateLevel0FromRGBA[v116];
    updateLevel0FromRGBA[v116] = v53;

    if (!updateLevel0FromRGBA[v116])
    {
      v85 = _PTLogSystem();
      v16 = v115;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v85 initWithMetalContext:v86 colorSize:v87 pixelFormat:v88 skipFullSizeLayer:v89 doFirstLevelGaussianDownsample:v90 mipmapLevelCount:v91, v92];
      }

      goto LABEL_43;
    }

    v55 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0FromYUV" withConstants:v45];
    v56 = updateLevel0FromYUV[v116];
    updateLevel0FromYUV[v116] = v55;

    if (!updateLevel0FromYUV[v116])
    {
      v85 = _PTLogSystem();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v85 initWithMetalContext:v93 colorSize:v94 pixelFormat:v95 skipFullSizeLayer:v96 doFirstLevelGaussianDownsample:v97 mipmapLevelCount:v98, v99];
      }

      goto LABEL_40;
    }

    v57 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0and1FromRGBA" withConstants:v45];
    v58 = updateLevel0and1FromRGBA[v116];
    updateLevel0and1FromRGBA[v116] = v57;

    if (!updateLevel0and1FromRGBA[v116])
    {
      v85 = _PTLogSystem();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v85 initWithMetalContext:v100 colorSize:v101 pixelFormat:v102 skipFullSizeLayer:v103 doFirstLevelGaussianDownsample:v104 mipmapLevelCount:v105, v106];
      }

LABEL_40:
      v16 = v115;
LABEL_43:

      goto LABEL_44;
    }

    v59 = [(PTMetalContext *)v18->_metalContext computePipelineStateFor:@"updateLevel0and1FromYUV" withConstants:v45];
    v60 = updateLevel0and1FromYUV[v116];
    updateLevel0and1FromYUV[v116] = v59;

    if (!updateLevel0and1FromYUV[v116])
    {
      v85 = _PTLogSystem();
      v16 = v115;
      if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
      {
        [(PTPyramid *)v85 initWithMetalContext:v107 colorSize:v108 pixelFormat:v109 skipFullSizeLayer:v110 doFirstLevelGaussianDownsample:v111 mipmapLevelCount:v112, v113];
      }

      goto LABEL_43;
    }

    ++v48;
  }

  while (v48 != 5);
  v16 = v115;
  if (!v18->_mipmapTexture || !v18->_mipmapLevels || !v18->_downscaleGaussian3x3)
  {
    v61 = _PTLogSystem();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [PTPyramid initWithMetalContext:v61 colorSize:? pixelFormat:? skipFullSizeLayer:? doFirstLevelGaussianDownsample:? mipmapLevelCount:?];
    }
  }

LABEL_26:
  v62 = v18;
LABEL_45:

  return v62;
}

- (int)updatePyramid:(id)a3 inPTTexture:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 transferFunction];
  v9 = [PTColorConversion getTransferFunction:v8 toLinear:1];

  v10 = [v6 computeCommandEncoder];
  if (!v10)
  {
    v11 = _PTLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(PTRaytracingUtils *)v11 disparityApplyPostModifier:v12 inDisparity:v13 outDisparity:v14 postModifier:v15, v16, v17, v18];
    }
  }

  if (![v7 isRGB] || !self->_skipFullSizeLayer)
  {
    if (([v7 isRGB] & 1) != 0 || !self->_skipFullSizeLayer)
    {
      if ([v7 isRGB])
      {
        [v10 setComputePipelineState:self->_updateLevel0and1FromRGBA[v9]];
        v31 = [v7 texRGBA];
        [v10 setTexture:v31 atIndex:0];

        v32 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
        [v10 setTexture:v32 atIndex:1];

        v20 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:1];
        v21 = v10;
        v22 = v20;
        v23 = 2;
        goto LABEL_13;
      }

      v42 = 0;
      v43 = 0;
      v44 = 0;
      [PTColorConversion getColorMatrix:v7 toRGB:1];
      [PTColorConversion getChromaOffset:v7];
      [v10 setComputePipelineState:{self->_updateLevel0and1FromYUV[v9], v33}];
      v34 = [v7 texLuma];
      [v10 setTexture:v34 atIndex:0];

      v35 = [v7 texChroma];
      [v10 setTexture:v35 atIndex:1];

      v36 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
      [v10 setTexture:v36 atIndex:2];

      v27 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:1];
      v28 = v10;
      v29 = v27;
      v30 = 3;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = 0;
      [PTColorConversion getColorMatrix:v7 toRGB:1];
      [PTColorConversion getChromaOffset:v7];
      [v10 setComputePipelineState:{self->_updateLevel0FromYUV[v9], v24}];
      v25 = [v7 texLuma];
      [v10 setTexture:v25 atIndex:0];

      v26 = [v7 texChroma];
      [v10 setTexture:v26 atIndex:1];

      v27 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
      v28 = v10;
      v29 = v27;
      v30 = 2;
    }

    [v28 setTexture:v29 atIndex:v30];

    [v10 setBytes:&v42 length:24 atIndex:0];
    [v10 setBytes:&v40 length:8 atIndex:1];
    goto LABEL_16;
  }

  [v10 setComputePipelineState:self->_updateLevel0FromRGBA[v9]];
  v19 = [v7 texRGBA];
  [v10 setTexture:v19 atIndex:0];

  v20 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  v21 = v10;
  v22 = v20;
  v23 = 1;
LABEL_13:
  [v21 setTexture:v22 atIndex:v23];

LABEL_16:
  v37 = [v7 width] >> 1;
  v38 = [v7 height];
  v42 = v37;
  v43 = v38 >> 1;
  v44 = 1;
  v40 = vdupq_n_s64(8uLL);
  v41 = 1;
  [v10 dispatchThreads:&v42 threadsPerThreadgroup:&v40];
  [v10 endEncoding];
  [(PTPyramid *)self updatePyramid:v6 offset:!self->_skipFullSizeLayer];

  return 0;
}

- (int)updatePyramid:(id)a3 offset:(int)a4 samplingRadius:(float)a5
{
  v8 = a3;
  v32 = a5;
  v9 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  if ([v9 pixelFormat]== 71)
  {
    goto LABEL_6;
  }

  v10 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  if ([v10 pixelFormat] == 70)
  {
LABEL_5:

LABEL_6:
    goto LABEL_7;
  }

  v11 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  if ([v11 pixelFormat] == 115)
  {

    goto LABEL_5;
  }

  v19 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:0];
  v20 = [v19 pixelFormat];

  if (v20 != 555)
  {
    v9 = _PTLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(PTPyramid *)v9 updatePyramid:v21 offset:v22 samplingRadius:v23, v24, v25, v26, v27];
    }

    goto LABEL_6;
  }

LABEL_7:
  v12 = [v8 computeCommandEncoder];
  [v12 setComputePipelineState:self->_downscaleGaussian3x3];
  [v12 setBytes:&v32 length:4 atIndex:0];
  LODWORD(v13) = a4 + 1;
  if ([(NSArray *)self->_mipmapLevels count]> v13)
  {
    v13 = v13;
    v28 = xmmword_2244A5440;
    do
    {
      v14 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:v13 - 1, v28];
      v15 = [(NSArray *)self->_mipmapLevels objectAtIndexedSubscript:v13];
      [v12 setTexture:v14 atIndex:0];
      [v12 setTexture:v15 atIndex:1];
      v16 = [v15 width];
      v17 = [v15 height];
      v31[0] = v16;
      v31[1] = v17;
      v31[2] = 1;
      v29 = v28;
      v30 = 1;
      [v12 dispatchThreads:v31 threadsPerThreadgroup:&v29];

      ++v13;
    }

    while (v13 < [(NSArray *)self->_mipmapLevels count]);
  }

  [v12 endEncoding];

  return 0;
}

- (id)findMipmapLevelLargerThan:(id *)a3
{
  v5 = *a3;
  v3 = [(PTPyramid *)self findMipmapLevelLargerThan:&v5 fromLevel:0];

  return v3;
}

- (id)findMipmapLevelLargerThan:(id *)a3 fromLevel:(int)a4
{
  mipmapLevels = self->_mipmapLevels;
  v7 = *a3;
  v5 = [PTUtil findMipmapLevel:mipmapLevels largerThan:&v7 fromLevel:*&a4];

  return v5;
}

@end