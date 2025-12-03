@interface DenoiseRemixStageShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (DenoiseRemixStageShared)init;
- (id)getShaders:(id)shaders lumaFP16:(BOOL)p16 chromaFP16:(BOOL)fP16 options:(const DenoiseRemixStageOptions *)options;
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

- (id)getShaders:(id)shaders lumaFP16:(BOOL)p16 chromaFP16:(BOOL)fP16 options:(const DenoiseRemixStageOptions *)options
{
  fP16Copy = fP16;
  p16Copy = p16;
  shadersCopy = shaders;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  count = selfCopy->_cache.count;
  if (count >= 1)
  {
    v15 = 0;
    p_enableGdFlatness = &selfCopy->_cache.entries[0].options.enableGdFlatness;
    while (*(p_enableGdFlatness - 13) != p16Copy || *(p_enableGdFlatness - 12) != fP16Copy || options->lgaAlgorithm != *(p_enableGdFlatness - 9) || options->enableBandZeroDenoising != *(p_enableGdFlatness - 5) || options->enableBilateralRegression != *(p_enableGdFlatness - 4) || options->enableLoGOffset != *(p_enableGdFlatness - 3) || options->enableLowVarSharpening != *(p_enableGdFlatness - 2) || options->enableNoiseMap != *(p_enableGdFlatness - 1) || options->enableGdFlatness != *p_enableGdFlatness)
    {
      p_enableGdFlatness += 20;
      if (count == ++v15)
      {
        goto LABEL_13;
      }
    }

    v23 = objc_msgSend_objectAtIndexedSubscript_(selfCopy->_denoiseShaders, v12, v15, v13);
    if (v23)
    {
      goto LABEL_22;
    }
  }

LABEL_13:
  v17 = [DenoiseRemixShaders alloc];
  if (p16Copy)
  {
    v19 = 25;
  }

  else
  {
    v19 = 10;
  }

  if (fP16Copy)
  {
    v20 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v17, v18, shadersCopy, @"RemixDenoise_vert", v19, 65, options);
  }

  else
  {
    v20 = objc_msgSend_initWithMetal_vertName_pixelFormatLuma_pixelFormatChroma_options_(v17, v18, shadersCopy, @"RemixDenoise_vert", v19, 30, options);
  }

  v23 = v20;
  if (v20)
  {
    v24 = selfCopy->_cache.count;
    if (v24 < 100)
    {
      v25 = &selfCopy->_cache.entries[v24];
      *(v25 + 4) = p16Copy;
      *(v25 + 5) = fP16Copy;
      v26 = *&options->lgaAlgorithm;
      *(v25 + 16) = *&options->enableNoiseMap;
      *(v25 + 8) = v26;
      selfCopy->_cache.count = v24 + 1;
      objc_msgSend_addObject_(selfCopy->_denoiseShaders, v21, v20, v22);
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

  objc_sync_exit(selfCopy);

  return v27;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  v4 = objc_opt_class();
  objc_sync_enter(v4);
  v5 = qword_2A18C2328;
  if (release)
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