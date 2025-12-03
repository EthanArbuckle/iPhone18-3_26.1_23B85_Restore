@interface PTEffectTemporalFilter
- (PTEffectTemporalFilter)initWithMetalContext:(id)context disparitySize:(id *)size;
- (unsigned)filter:(id)filter inDisparity:(id)disparity inNormal:(id)normal inDiffuse:(id)diffuse filterNormalSpatial:(BOOL)spatial filterDiffuseSpatial:(BOOL)diffuseSpatial frameIndex:(int)index disparityScale:(float)self0;
- (unsigned)prepareFilter:(id)filter opticalFlowRGB:(id)b frameIndex:(int)index;
- (unsigned)reset;
@end

@implementation PTEffectTemporalFilter

- (PTEffectTemporalFilter)initWithMetalContext:(id)context disparitySize:(id *)size
{
  contextCopy = context;
  v78.receiver = self;
  v78.super_class = PTEffectTemporalFilter;
  v8 = [(PTEffectTemporalFilter *)&v78 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&size->var0;
    *(v8 + 13) = size->var2;
    *(v8 + 88) = v10;
    objc_storeStrong(v8 + 1, context);
    if (v9[1])
    {
      v75 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(*&size->var0)), 0x3F0000003F000000)));
      v76 = v75;
      v77 = 1;
      v11 = [[PTOpticalFlow alloc] initWithMetalContext:contextCopy colorSize:&v76 lktPreset:4 allocateDisplacementFWD:1 needConversionBGRA2YUVA:0 inverseFlow:1];
      v12 = v9[2];
      v9[2] = v11;

      if (v9[2])
      {
        v13 = 0;
        v14 = v9 + 4;
        v15 = v9 + 6;
        v16 = v9 + 8;
        v17 = 1;
        do
        {
          v18 = v17;
          textureUtil = [contextCopy textureUtil];
          v20 = [textureUtil createWithWidth:size->var0 height:size->var1 pixelFormat:25];
          v21 = v14[v13];
          v14[v13] = v20;

          if (!v14[v13])
          {
            v31 = _PTLogSystem();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectTemporalFilter *)v31 initWithMetalContext:v46 disparitySize:v47, v48, v49, v50, v51, v52];
            }

            goto LABEL_23;
          }

          textureUtil2 = [contextCopy textureUtil];
          v23 = [textureUtil2 createWithWidth:size->var0 height:size->var1 pixelFormat:115];
          v24 = v15[v13];
          v15[v13] = v23;

          if (!v15[v13])
          {
            v31 = _PTLogSystem();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectTemporalFilter *)v31 initWithMetalContext:v53 disparitySize:v54, v55, v56, v57, v58, v59];
            }

            goto LABEL_23;
          }

          textureUtil3 = [contextCopy textureUtil];
          v26 = [textureUtil3 createWithWidth:size->var0 height:size->var1 pixelFormat:10];
          v27 = v16[v13];
          v16[v13] = v26;

          if (!v16[v13])
          {
            v31 = _PTLogSystem();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              [(PTEffectTemporalFilter *)v31 initWithMetalContext:v60 disparitySize:v61, v62, v63, v64, v65, v66];
            }

            goto LABEL_23;
          }

          v17 = 0;
          v13 = 1;
        }

        while ((v18 & 1) != 0);
        v28 = [[PTFilterEMA_LKT alloc] initWithMetalContext:contextCopy];
        v29 = v9[10];
        v9[10] = v28;

        if (v9[10])
        {
          v30 = v9;
          goto LABEL_25;
        }

        v31 = _PTLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTEffectTemporalFilter *)v31 initWithMetalContext:v67 disparitySize:v68, v69, v70, v71, v72, v73];
        }
      }

      else
      {
        v31 = _PTLogSystem();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [(PTEffectTemporalFilter *)v31 initWithMetalContext:v39 disparitySize:v40, v41, v42, v43, v44, v45];
        }
      }
    }

    else
    {
      v31 = _PTLogSystem();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [(PTEffectTemporalFilter *)v31 initWithMetalContext:v32 disparitySize:v33, v34, v35, v36, v37, v38];
      }
    }

LABEL_23:
  }

  v30 = 0;
LABEL_25:

  return v30;
}

- (unsigned)prepareFilter:(id)filter opticalFlowRGB:(id)b frameIndex:(int)index
{
  opticalFlow = self->_opticalFlow;
  v7 = (index + 1) & 1;
  if (index >= -1)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = [(PTOpticalFlow *)opticalFlow estimateDisplacementStream:filter index:v8 doOpticalFlow:index > 0 destRGBA:b];
  if (v9)
  {
    v10 = _PTLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTEffectTemporalFilter prepareFilter:v9 opticalFlowRGB:v10 frameIndex:?];
    }
  }

  return v9;
}

- (unsigned)filter:(id)filter inDisparity:(id)disparity inNormal:(id)normal inDiffuse:(id)diffuse filterNormalSpatial:(BOOL)spatial filterDiffuseSpatial:(BOOL)diffuseSpatial frameIndex:(int)index disparityScale:(float)self0
{
  diffuseSpatialCopy = diffuseSpatial;
  filterCopy = filter;
  disparityCopy = disparity;
  normalCopy = normal;
  diffuseCopy = diffuse;
  if (__PAIR128__([disparityCopy height], objc_msgSend(disparityCopy, "width")) != *&self->_disparitySize.width)
  {
    v31 = _PTLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [PTEffectTemporalFilter filter:v31 inDisparity:? inNormal:? inDiffuse:? filterNormalSpatial:? filterDiffuseSpatial:? frameIndex:? disparityScale:?];
    }

    diffuseSpatialCopy = -10;
    goto LABEL_12;
  }

  v21 = (index + 1) & 1;
  if (index < -1)
  {
    v21 = -v21;
  }

  v22 = index & 1;
  if (index < 0)
  {
    v22 = -v22;
  }

  self->_indexIn = v21;
  self->_indexOut = v22;
  disparityFilter = self->_disparityFilter;
  displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
  indexIn = self->_indexIn;
  indexOut = self->_indexOut;
  v28 = self->_temporalDisparity[indexIn];
  v29 = self->_temporalDisparity[indexOut];
  if (!spatial)
  {
    LODWORD(v38) = index;
    [(PTFilterEMA_LKT *)disparityFilter emaFilterDisparityNormal:filterCopy inDisplacement:displacementFWD inDisparityPrev:v28 inDisparity:disparityCopy outDisparity:v29 inNormalPrev:self->_temporalNormal[indexIn] inNormal:normalCopy outNormal:self->_temporalNormal[indexOut] frameIndex:v38];
    goto LABEL_14;
  }

  *&v25 = scale;
  [(PTFilterEMA_LKT *)disparityFilter emaFilter:filterCopy inDisplacement:displacementFWD inTexPrev:v28 inTex:disparityCopy outTex:v29 frameIndex:index scale:v25];

  if (normalCopy)
  {
    v30 = self->_disparityFilter;
    displacementFWD = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    [(PTFilterEMA_LKT *)v30 gaussEMAFilterNormal:filterCopy inDisplacement:displacementFWD inNormalPrev:self->_temporalNormal[self->_indexIn] inNormal:normalCopy outNormal:self->_temporalNormal[self->_indexOut] frameIndex:index];
LABEL_14:
  }

  if (diffuseCopy)
  {
    v33 = self->_disparityFilter;
    displacementFWD2 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    v36 = self->_temporalDiffuse[self->_indexIn];
    v37 = self->_temporalDiffuse[self->_indexOut];
    if (!diffuseSpatialCopy)
    {
      LODWORD(v35) = 1.0;
      [(PTFilterEMA_LKT *)v33 emaFilter:filterCopy inDisplacement:displacementFWD2 inTexPrev:v36 inTex:diffuseCopy outTex:v37 frameIndex:index scale:v35];

      goto LABEL_12;
    }

    [(PTFilterEMA_LKT *)v33 gaussEMAFilter:filterCopy inDisplacement:displacementFWD2 inTexPrev:v36 inTex:diffuseCopy outTex:v37 frameIndex:index];
  }

  diffuseSpatialCopy = 0;
LABEL_12:

  return diffuseSpatialCopy;
}

- (unsigned)reset
{
  kdebug_trace();
  [(PTOpticalFlow *)self->_opticalFlow reset];
  kdebug_trace();
  return 0;
}

- (void)prepareFilter:(int)a1 opticalFlowRGB:(NSObject *)a2 frameIndex:.cold.1(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "status";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_2243FB000, a2, OS_LOG_TYPE_ERROR, "Assertion failed %s %i", &v2, 0x12u);
}

@end