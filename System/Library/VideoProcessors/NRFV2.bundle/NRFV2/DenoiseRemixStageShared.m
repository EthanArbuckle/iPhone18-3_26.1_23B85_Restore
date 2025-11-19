@interface DenoiseRemixStageShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (DenoiseRemixStageShared)init;
- (id)getShaders:(id)a3 lumaFP16:(BOOL)a4 chromaFP16:(BOOL)a5 options:(const DenoiseRemixStageOptions *)a6;
@end

@implementation DenoiseRemixStageShared

- (DenoiseRemixStageShared)init
{
  v7.receiver = self;
  v7.super_class = DenoiseRemixStageShared;
  v2 = [(DenoiseRemixStageShared *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_cache.count = 0;
    v4 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    denoiseShaders = v3->_denoiseShaders;
    v3->_denoiseShaders = v4;
  }

  else
  {
    sub_2958CDC18();
  }

  return v3;
}

- (id)getShaders:(id)a3 lumaFP16:(BOOL)a4 chromaFP16:(BOOL)a5 options:(const DenoiseRemixStageOptions *)a6
{
  v7 = a5;
  v8 = a4;
  v10 = a3;
  v11 = self;
  objc_sync_enter(v11);
  count = v11->_cache.count;
  if (count >= 1)
  {
    v15 = 0;
    p_enableGdFlatness = &v11->_cache.entries[0].options.enableGdFlatness;
    while (*(p_enableGdFlatness - 13) != v8 || *(p_enableGdFlatness - 12) != v7 || a6->lgaAlgorithm != *(p_enableGdFlatness - 9) || a6->enableBandZeroDenoising != *(p_enableGdFlatness - 5) || a6->enableBilateralRegression != *(p_enableGdFlatness - 4) || a6->enableLoGOffset != *(p_enableGdFlatness - 3) || a6->enableLowVarSharpening != *(p_enableGdFlatness - 2) || a6->enableNoiseMap != *(p_enableGdFlatness - 1) || a6->enableGdFlatness != *p_enableGdFlatness)
    {
      p_enableGdFlatness += 20;
      if (count == ++v15)
      {
        goto LABEL_13;
      }
    }

    v23 = objc_msgSend_objectAtIndexedSubscript_(v11->_denoiseShaders, v12, v15, v13);
    if (v23)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  v17 = [DenoiseRemixShaders alloc];
  if (v8)
  {
    v19 = 25;
  }

  else
  {
    v19 = 10;
  }

  if (v7)
  {
    v20 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v17, v18, v10, @"RemixDenoise_vert", v19, 65, a6);
  }

  else
  {
    v20 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v17, v18, v10, @"RemixDenoise_vert", v19, 30, a6);
  }

  v23 = v20;
  if (v20)
  {
    v24 = v11->_cache.count;
    if (v24 < 100)
    {
      v25 = &v11->_cache.entries[v24];
      *(v25 + 4) = v8;
      *(v25 + 5) = v7;
      v26 = *&a6->lgaAlgorithm;
      *(v25 + 16) = *&a6->enableNoiseMap;
      *(v25 + 8) = v26;
      v11->_cache.count = v24 + 1;
      objc_msgSend_addObject_(v11->_denoiseShaders, v21, v20, v22);
LABEL_22:
      v27 = v23;
      v23 = v27;
      goto LABEL_23;
    }

    FigDebugAssert3();
    FigSignalErrorAtGM();
    v27 = 0;
  }

  else
  {
    FigDebugAssert3();
    FigSignalErrorAtGM();
    v27 = 0;
    v23 = 0;
  }

LABEL_23:

  objc_sync_exit(v11);

  return v27;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2328;
  if (a3)
  {
    v6 = 0;
  }

  else
  {
    if (qword_2A18C2328)
    {
      goto LABEL_6;
    }

    v6 = objc_alloc_init(DenoiseRemixStageShared);
    v5 = qword_2A18C2328;
  }

  qword_2A18C2328 = v6;

LABEL_6:
  v7 = qword_2A18C2328;
  objc_sync_exit(v4);

  return v7;
}

@end