@interface PTEffectTemporalFilter
- (PTEffectTemporalFilter)initWithMetalContext:(id)a3 disparitySize:(id *)a4;
- (unsigned)filter:(id)a3 inDisparity:(id)a4 inNormal:(id)a5 inDiffuse:(id)a6 filterNormalSpatial:(BOOL)a7 filterDiffuseSpatial:(BOOL)a8 frameIndex:(int)a9 disparityScale:(float)a10;
- (unsigned)prepareFilter:(id)a3 opticalFlowRGB:(id)a4 frameIndex:(int)a5;
- (unsigned)reset;
@end

@implementation PTEffectTemporalFilter

- (PTEffectTemporalFilter)initWithMetalContext:(id)a3 disparitySize:(id *)a4
{
  v7 = a3;
  v78.receiver = self;
  v78.super_class = PTEffectTemporalFilter;
  v8 = [(PTEffectTemporalFilter *)&v78 init];
  v9 = v8;
  if (v8)
  {
    v10 = *&a4->var0;
    *(v8 + 13) = a4->var2;
    *(v8 + 88) = v10;
    objc_storeStrong(v8 + 1, a3);
    if (v9[1])
    {
      v75 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(vcvt_f32_f64(vcvtq_f64_u64(*&a4->var0)), 0x3F0000003F000000)));
      v76 = v75;
      v77 = 1;
      v11 = [[PTOpticalFlow alloc] initWithMetalContext:v7 colorSize:&v76 lktPreset:4 allocateDisplacementFWD:1 needConversionBGRA2YUVA:0 inverseFlow:1];
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
          v19 = [v7 textureUtil];
          v20 = [v19 createWithWidth:a4->var0 height:a4->var1 pixelFormat:25];
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

          v22 = [v7 textureUtil];
          v23 = [v22 createWithWidth:a4->var0 height:a4->var1 pixelFormat:115];
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

          v25 = [v7 textureUtil];
          v26 = [v25 createWithWidth:a4->var0 height:a4->var1 pixelFormat:10];
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
        v28 = [[PTFilterEMA_LKT alloc] initWithMetalContext:v7];
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

- (unsigned)prepareFilter:(id)a3 opticalFlowRGB:(id)a4 frameIndex:(int)a5
{
  opticalFlow = self->_opticalFlow;
  v7 = (a5 + 1) & 1;
  if (a5 >= -1)
  {
    v8 = v7;
  }

  else
  {
    v8 = -v7;
  }

  v9 = [(PTOpticalFlow *)opticalFlow estimateDisplacementStream:a3 index:v8 doOpticalFlow:a5 > 0 destRGBA:a4];
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

- (unsigned)filter:(id)a3 inDisparity:(id)a4 inNormal:(id)a5 inDiffuse:(id)a6 filterNormalSpatial:(BOOL)a7 filterDiffuseSpatial:(BOOL)a8 frameIndex:(int)a9 disparityScale:(float)a10
{
  v11 = a8;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  if (__PAIR128__([v18 height], objc_msgSend(v18, "width")) != *&self->_disparitySize.width)
  {
    v31 = _PTLogSystem();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      [PTEffectTemporalFilter filter:v31 inDisparity:? inNormal:? inDiffuse:? filterNormalSpatial:? filterDiffuseSpatial:? frameIndex:? disparityScale:?];
    }

    v11 = -10;
    goto LABEL_12;
  }

  v21 = (a9 + 1) & 1;
  if (a9 < -1)
  {
    v21 = -v21;
  }

  v22 = a9 & 1;
  if (a9 < 0)
  {
    v22 = -v22;
  }

  self->_indexIn = v21;
  self->_indexOut = v22;
  disparityFilter = self->_disparityFilter;
  v24 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
  indexIn = self->_indexIn;
  indexOut = self->_indexOut;
  v28 = self->_temporalDisparity[indexIn];
  v29 = self->_temporalDisparity[indexOut];
  if (!a7)
  {
    LODWORD(v38) = a9;
    [(PTFilterEMA_LKT *)disparityFilter emaFilterDisparityNormal:v17 inDisplacement:v24 inDisparityPrev:v28 inDisparity:v18 outDisparity:v29 inNormalPrev:self->_temporalNormal[indexIn] inNormal:v19 outNormal:self->_temporalNormal[indexOut] frameIndex:v38];
    goto LABEL_14;
  }

  *&v25 = a10;
  [(PTFilterEMA_LKT *)disparityFilter emaFilter:v17 inDisplacement:v24 inTexPrev:v28 inTex:v18 outTex:v29 frameIndex:a9 scale:v25];

  if (v19)
  {
    v30 = self->_disparityFilter;
    v24 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    [(PTFilterEMA_LKT *)v30 gaussEMAFilterNormal:v17 inDisplacement:v24 inNormalPrev:self->_temporalNormal[self->_indexIn] inNormal:v19 outNormal:self->_temporalNormal[self->_indexOut] frameIndex:a9];
LABEL_14:
  }

  if (v20)
  {
    v33 = self->_disparityFilter;
    v34 = [(PTOpticalFlow *)self->_opticalFlow displacementFWD];
    v36 = self->_temporalDiffuse[self->_indexIn];
    v37 = self->_temporalDiffuse[self->_indexOut];
    if (!v11)
    {
      LODWORD(v35) = 1.0;
      [(PTFilterEMA_LKT *)v33 emaFilter:v17 inDisplacement:v34 inTexPrev:v36 inTex:v20 outTex:v37 frameIndex:a9 scale:v35];

      goto LABEL_12;
    }

    [(PTFilterEMA_LKT *)v33 gaussEMAFilter:v17 inDisplacement:v34 inTexPrev:v36 inTex:v20 outTex:v37 frameIndex:a9];
  }

  v11 = 0;
LABEL_12:

  return v11;
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