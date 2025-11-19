@interface ApplyBlurmap
- (ApplyBlurmap)init;
- (ApplyBlurmap)initWithMetalQueue:(id)a3;
- (BOOL)gainMapNeedsGamma22:(id)a3;
- (__int16)computeDynamicParams;
- (id)addChromaNoise:(id)a3;
- (id)applyBackgroundUsingConfig:(const rendering_config_params *)a3 inputBlurMap:(id)a4 inputAlpha:(id)a5 inputGainMap:(id)a6 inputImage:(id)a7 inputLuma:(id)a8 inputChroma:(id)a9 inputHalfRes1:(id)a10 inputHalfRes2:(id)a11 scale:(float)a12 coreImageRender:(BOOL)a13 version:(int)a14 context:(id)a15 captureFolderMiscPath:(id)a16;
- (id)applyForegroundUsingConfig:(const rendering_config_params *)a3 image:(id)a4 inputBlurMap:(id)a5 inputAlpha:(id)a6 inputGainMap:(id)a7 inputImage:(id)a8 inputLuma:(id)a9 inputChroma:(id)a10 inputIntermediate:(id)a11 inputHalfRes1:(id)a12 inputHalfRes2:(id)a13 inputHalfResRG:(id)a14 outputLuma:(id)a15 outputChroma:(id)a16 scale:(float)a17 coreImageRender:(BOOL)a18 version:(int)a19 context:(id)a20 captureFolderMiscPath:(id)a21;
- (id)applyHairnetUsingConfig:(const rendering_config_params *)a3 hairnetParams:(hairnet_params *)a4 inputImage:(id)a5 inputBackBlurImage:(id)a6 inputBlurMap:(id)a7 inputAlpha:(id)a8 scale:(float)a9 coreImageRender:(BOOL)a10 version:(int)a11 context:(id)a12 captureFolderMiscPath:(id)a13;
- (id)backgroundImageUsingArgs:(id)a3;
- (id)erodeAndDilate:(id)a3 radius:(int)a4 coreImageRender:(BOOL)a5 context:(id)a6 extent:(CGRect)a7 pixelFormat:(unint64_t)a8;
- (id)gainMapToLightMap:(id)a3 inputImage:(id)a4 inputLuma:(id)a5 inputChroma:(id)a6 headroom:(float)a7 context:(id)a8;
- (id)hairnetModelPath;
- (id)imageUsingArgs:(id)a3;
- (id)imageUsingArgs:(id)a3 backgroundBlur:(id)a4;
- (int)enqueueRenderingUsingArgs:(id)a3;
- (int)enqueueRenderingUsingRenderingConfig:(const rendering_config_params *)a3 inputBlurMap:(id)a4 inputAlpha:(id)a5 inputGainMap:(id)a6 inputLuma:(id)a7 inputChroma:(id)a8 inputIntermediate:(id)a9 inputHalfRes1:(id)a10 inputHalfRes2:(id)a11 inputHalfResRG:(id)a12 outputLuma:(id)a13 outputChroma:(id)a14 scale:(float)a15 version:(int)a16 context:(id)a17 captureFolderMiscPath:(id)a18;
- (int)loadModels:(const void *)a3;
- (int)loadShaders;
- (int)setOptions:(const void *)a3 isPrewarm:(BOOL)a4;
- (void)_setROICallbacks;
- (void)dealloc;
@end

@implementation ApplyBlurmap

- (ApplyBlurmap)init
{
  v2 = uni_logger_api();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = objc_opt_class();
    v6 = 136446466;
    v7 = "[ApplyBlurmap init]";
    v8 = 2080;
    v9 = objc_msgSend_UTF8String(v3, v4, v5);
    _os_log_error_impl(&dword_295691000, v2, OS_LOG_TYPE_ERROR, "%{public}s invalid initialization method for %s", &v6, 0x16u);
  }

  abort();
}

- (ApplyBlurmap)initWithMetalQueue:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (v5)
  {
    v9 = objc_msgSend_device(v5, v6, v7);
  }

  else
  {
    v9 = 0;
  }

  v48.receiver = self;
  v48.super_class = ApplyBlurmap;
  v10 = [(ApplyBlurmap *)&v48 init];
  v11 = v10;
  if (!v10)
  {
    sub_2956C8DA8(&v49);
    v15 = 0;
    goto LABEL_26;
  }

  *(v10 + 28) = 0x23D4CCCCDLL;
  *(v10 + 232) = xmmword_2956D2AC0;
  *(v10 + 63) = 0;
  *(v10 + 32) = 0x400000004;
  *(v10 + 33) = 0x2B8CBCCC00000004;
  *(v10 + 34) = 0x33DCCCCCDLL;
  *(v10 + 280) = xmmword_2956D2AD0;
  *(v10 + 296) = xmmword_2956D2AE0;
  *(v10 + 78) = 50;
  *(v10 + 316) = xmmword_2956D2AF0;
  *(v10 + 332) = xmmword_2956D2B00;
  *(v10 + 91) = 8;
  *(v10 + 90) = 0;
  *(v10 + 44) = 0;
  *(v10 + 87) = 0;
  *(v10 + 93) = 1082130432;
  *(v10 + 52) = 0x3F40000000000000;
  objc_storeStrong(v10 + 1, a3);
  v12 = MEMORY[0x29EDB9F48];
  v13 = objc_opt_class();
  v15 = objc_msgSend_bundleForClass_(v12, v14, v13);
  if (!v15)
  {
    sub_2956C8D20(&v49);
    goto LABEL_26;
  }

  v16 = [UniLibrary alloc];
  v18 = objc_msgSend_initWithDevice_metalOnly_(v16, v17, v9, v8 != 0);
  v19 = *(v11 + 2);
  *(v11 + 2) = v18;

  if (!*(v11 + 2))
  {
    sub_2956C8C98(&v49);
    goto LABEL_26;
  }

  v20 = sub_295693A0C(*(v11 + 132));
  v21 = *(v11 + 25);
  *(v11 + 25) = v20;

  v24 = *(v11 + 25);
  if (!v24)
  {
    sub_2956C8C10(&v49);
    goto LABEL_26;
  }

  if (objc_msgSend_count(v24, v22, v23) != 2)
  {
    sub_2956C8A78(&v49);
    goto LABEL_26;
  }

  v26 = objc_msgSend_objectAtIndexedSubscript_(*(v11 + 25), v25, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = objc_msgSend_objectAtIndexedSubscript_(*(v11 + 25), v27, 1);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      if (*(v11 + 96) < 1)
      {
LABEL_16:
        v40 = [UniMorphology alloc];
        v42 = objc_msgSend_initWithDevice_(v40, v41, v9);
        v43 = *(v11 + 24);
        *(v11 + 24) = v42;

LABEL_31:
        v45 = v11;
        goto LABEL_32;
      }

      v30 = sub_295693A0C(*(v11 + 96));
      v31 = *(v11 + 26);
      *(v11 + 26) = v30;

      v34 = *(v11 + 26);
      if (v34)
      {
        if (objc_msgSend_count(v34, v32, v33) == 2)
        {
          v36 = objc_msgSend_objectAtIndexedSubscript_(*(v11 + 26), v35, 0);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = objc_msgSend_objectAtIndexedSubscript_(*(v11 + 26), v37, 1);
            objc_opt_class();
            v39 = objc_opt_isKindOfClass();

            if (v39)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }

          goto LABEL_28;
        }

        sub_2956C8B00(&v49);
      }

      else
      {
        sub_2956C8B88(&v49);
      }

LABEL_26:
      v44 = v49;
      goto LABEL_29;
    }
  }

  else
  {
  }

LABEL_28:
  FigDebugAssert3();
  v44 = FigSignalErrorAtGM();
LABEL_29:
  if (!v44)
  {
    goto LABEL_31;
  }

  v45 = 0;
LABEL_32:
  v46 = v45;

  return v46;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ApplyBlurmap;
  [(ApplyBlurmap *)&v2 dealloc];
}

- (id)hairnetModelPath
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = sub_295693CE8;
  block[3] = &unk_29EDD47F0;
  block[4] = self;
  if (qword_2A18BA2B0 != -1)
  {
    dispatch_once(&qword_2A18BA2B0, block);
  }

  return qword_2A18BA2B8;
}

- (int)loadModels:(const void *)a3
{
  if (a3 && (*(a3 + 3) != 0.0 || *(a3 + 4) != 0.0))
  {
    v3 = objc_msgSend_hairnetModelPath(self, a2, a3);
    v5 = objc_msgSend_cachedEspressoWrapper_(EspressoWrapper, v4, v3);
    objc_msgSend_buildWait(v5, v6, v7);
  }

  return 0;
}

- (int)setOptions:(const void *)a3 isPrewarm:(BOOL)a4
{
  if (!a3)
  {
    sub_2956C91DC(&v47);
    return v47;
  }

  v4 = a4;
  if (*(a3 + 12) != self->_config_params.nRings)
  {
    v7 = sub_295693A0C(*(a3 + 12));
    segmentArray = self->_segmentArray;
    self->_segmentArray = v7;

    v11 = self->_segmentArray;
    if (!v11)
    {
      sub_2956C8F10(&v47);
      return v47;
    }

    if (objc_msgSend_count(v11, v9, v10) != 2)
    {
      sub_2956C8E88(&v47);
      return v47;
    }

    v13 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentArray, v12, 0);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_43;
    }

    v15 = objc_msgSend_objectAtIndexedSubscript_(self->_segmentArray, v14, 1);
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
LABEL_43:
      FigDebugAssert3();

      return FigSignalErrorAtGM();
    }
  }

  if (*(a3 + 42) == self->_config_params.fgNRings && self->_fgSegmentArray)
  {
    goto LABEL_13;
  }

  v17 = sub_295693A0C(*(a3 + 42));
  fgSegmentArray = self->_fgSegmentArray;
  self->_fgSegmentArray = v17;

  v21 = self->_fgSegmentArray;
  if (!v21)
  {
    sub_2956C9154(&v47);
    return v47;
  }

  if (objc_msgSend_count(v21, v19, v20) != 2)
  {
    sub_2956C8F98(&v47);
    return v47;
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(self->_fgSegmentArray, v22, 0);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_43;
  }

  v25 = objc_msgSend_objectAtIndexedSubscript_(self->_fgSegmentArray, v24, 1);
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if ((v26 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_13:
  *&self->_config_params.simulatedAperture = *a3;
  v27 = *(a3 + 1);
  v28 = *(a3 + 2);
  v29 = *(a3 + 4);
  *&self->_config_params.nRings = *(a3 + 3);
  *&self->_config_params.relativeWeightThreshold = v29;
  *&self->_config_params.maxBlur = v27;
  *&self->_config_params.lumaNoiseAmplitude = v28;
  v30 = *(a3 + 5);
  v31 = *(a3 + 6);
  v32 = *(a3 + 8);
  *&self->_config_params.xhlrbMaxIntensityT1 = *(a3 + 7);
  *&self->_config_params.xhlrbWeightGain = v32;
  *&self->_config_params.ringAmplitude = v30;
  *&self->_config_params.xhlrbIterations = v31;
  v33 = *(a3 + 9);
  v34 = *(a3 + 10);
  v35 = *(a3 + 12);
  *&self->_config_params.fgHitThreshold = *(a3 + 11);
  *&self->_config_params.fgBlurWeightSmoothstepEnd = v35;
  *&self->_config_params.ohlbIntensityGain = v33;
  *&self->_config_params.fgMinNRings = v34;
  if (v4)
  {
    basePixelWeight = self->_config_params.basePixelWeight;
    v37 = *(a3 + 11);
    if (qword_2A18BA2D0 != -1)
    {
      sub_2956C9020();
    }

    if (v37 >= dword_2A1388808)
    {
      v38 = dword_2A1388808;
    }

    else
    {
      v38 = v37;
    }

    if (*(a3 + 10) >= v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = *(a3 + 10);
    }

    nRings = self->_config_params.nRings;
    v41 = v39;
    do
    {
      self->_config_params.nRings = v41;
      Shaders = objc_msgSend_loadShaders(self, a2, a3);
      self->_config_params.nRings = nRings;
      if (Shaders)
      {
        sub_2956C9034();
        return -1;
      }

      ++v41;
    }

    while (v38 + 1 != v41);
    self->_config_params.basePixelWeight = 1.0e-12;
    v43 = v38 + 1;
    do
    {
      self->_config_params.nRings = v39;
      v44 = objc_msgSend_loadShaders(self, a2, a3);
      self->_config_params.nRings = nRings;
      if (v44)
      {
        sub_2956C907C();
        return -1;
      }

      ++v39;
    }

    while (v43 != v39);
    v45 = objc_msgSend_loadShaders(self, a2, a3);
    self->_config_params.basePixelWeight = basePixelWeight;
    if (!v45)
    {
      goto LABEL_29;
    }

    sub_2956C90C4();
    return -1;
  }

LABEL_29:
  result = objc_msgSend_loadShaders(self, a2, a3);
  if (result)
  {
    sub_2956C910C();
    return -1;
  }

  return result;
}

- (void)_setROICallbacks
{
  objc_msgSend_setRoiCallback_(self->_prefilterX, a2, &unk_2A1C89F88);
  objc_msgSend_setRoiCallback_(self->_prefilterY, v3, &unk_2A1C89FA8);
  objc_msgSend_setRoiCallback_(self->_preprocess, v4, &unk_2A1C89FC8);
  objc_msgSend_setRoiCallback_(self->_preprocessScaled, v5, &unk_2A1C89FE8);
  objc_msgSend_setRoiCallback_(self->_gainmapMultiply, v6, &unk_2A1C8A008);
  objc_msgSend_setRoiCallback_(self->_gainmapRGBMultiply, v7, &unk_2A1C8A028);
  objc_msgSend_setRoiCallback_(self->_sparseWithAlpha, v8, &unk_2A1C8A048);
  objc_msgSend_setRoiCallback_(self->_sparseNoAlpha, v9, &unk_2A1C8A068);
  objc_msgSend_setRoiCallback_(self->_sparseNoAlphaRayFg, v10, &unk_2A1C8A088);
  objc_msgSend_setRoiCallback_(self->_antialiasX, v11, &unk_2A1C8A0A8);
  objc_msgSend_setRoiCallback_(self->_antialiasY, v12, &unk_2A1C8A0C8);
  objc_msgSend_setRoiCallback_(self->_antialiasRGBAX, v13, &unk_2A1C8A0E8);
  objc_msgSend_setRoiCallback_(self->_antialiasRGBAY, v14, &unk_2A1C8A108);
  objc_msgSend_setRoiCallback_(self->_yuv1, v15, &unk_2A1C8A128);
  objc_msgSend_setRoiCallback_(self->_yuv2, v16, &unk_2A1C8A148);
  objc_msgSend_setRoiCallback_(self->_localContrast, v17, &unk_2A1C8A168);
  blendRaytraced = self->_blendRaytraced;

  objc_msgSend_setRoiCallback_(blendRaytraced, v18, &unk_2A1C8A188);
}

- (int)loadShaders
{
  nRings = self->_config_params.nRings;
  v394 = 3 * nRings * nRings;
  v392 = 3 * self->_config_params.fgNRings * self->_config_params.fgNRings;
  relativeWeightThreshold = self->_config_params.relativeWeightThreshold;
  maxBlur = self->_config_params.maxBlur;
  v6 = 0.5 / (relativeWeightThreshold / maxBlur);
  v7 = (relativeWeightThreshold * v6) / maxBlur;
  v8 = 1.0 - self->_config_params.alphaEpsilon;
  antiAliasBlurStrength = self->_config_params.antiAliasBlurStrength;
  xhlrbMaxIntensityT0 = self->_config_params.xhlrbMaxIntensityT0;
  v11 = 1.0 / (self->_config_params.xhlrbMaxIntensityT1 - xhlrbMaxIntensityT0);
  xhlrbMinIntensityT0 = self->_config_params.xhlrbMinIntensityT0;
  v13 = 1.0 / (self->_config_params.xhlrbMinIntensityT1 - xhlrbMinIntensityT0);
  xhlrbTileSize = self->_config_params.xhlrbTileSize;
  v14 = -(v11 * xhlrbMaxIntensityT0);
  v15 = -(v13 * xhlrbMinIntensityT0);
  v412[0] = @"SparseRenderer::kPreFilterRadius";
  v16 = antiAliasBlurStrength / nRings;
  v17 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], a2, self->_config_params.preFilterRadius);
  v413[0] = v17;
  v412[1] = @"SparseRenderer::kMaxBlur_ushort";
  v18 = MEMORY[0x29EDBA070];
  *&v19 = convertFloatToF16AsUshort(self->_config_params.maxBlur);
  v22 = objc_msgSend_numberWithUnsignedShort_(v18, v21, v20, v19);
  v413[1] = v22;
  v412[2] = @"SparseRenderer::kAntiAliasBlurStrength_ushort";
  v23 = MEMORY[0x29EDBA070];
  *&v24 = convertFloatToF16AsUshort(v16);
  v27 = objc_msgSend_numberWithUnsignedShort_(v23, v26, v25, v24);
  v413[2] = v27;
  v387 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v28, v413, v412, 3);

  v410[0] = @"SparseRenderer::kAntiAliasRadius";
  v30 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v29, self->_config_params.antiAliasRadius);
  v411[0] = v30;
  v410[1] = @"SparseRenderer::kMaxBlur_ushort";
  v31 = MEMORY[0x29EDBA070];
  *&v32 = convertFloatToF16AsUshort(self->_config_params.maxBlur);
  v35 = objc_msgSend_numberWithUnsignedShort_(v31, v34, v33, v32);
  v411[1] = v35;
  v410[2] = @"SparseRenderer::kAntiAliasBlurStrength_ushort";
  v36 = MEMORY[0x29EDBA070];
  *&v37 = convertFloatToF16AsUshort(v16);
  v40 = objc_msgSend_numberWithUnsignedShort_(v36, v39, v38, v37);
  v411[2] = v40;
  v42 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v41, v411, v410, 3);

  v386 = v42;
  v44 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v43, v42);
  v45 = MEMORY[0x29EDBA070];
  *&v46 = convertFloatToF16AsUshort(self->_config_params.lumaNoiseModelCoeff);
  v49 = objc_msgSend_numberWithUnsignedShort_(v45, v48, v47, v46);
  v385 = v44;
  objc_msgSend_setObject_forKeyedSubscript_(v44, v50, v49, @"SparseRenderer::kLumaNoiseModelCoeff_ushort");

  v408 = @"SparseRenderer::kLumaNoiseModelCoeff_ushort";
  v51 = MEMORY[0x29EDBA070];
  *&v52 = convertFloatToF16AsUshort(self->_config_params.lumaNoiseModelCoeff);
  v55 = objc_msgSend_numberWithUnsignedShort_(v51, v54, v53, v52);
  v409 = v55;
  v388 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v56, &v409, &v408, 1);

  v406[0] = @"SparseRenderer::kSharpRadius_ushort";
  v57 = MEMORY[0x29EDBA070];
  *&v58 = convertFloatToF16AsUshort(self->_config_params.sharpRadius);
  v61 = objc_msgSend_numberWithUnsignedShort_(v57, v60, v59, v58);
  v407[0] = v61;
  v406[1] = @"SparseRenderer::kSoftRadius_ushort";
  v62 = MEMORY[0x29EDBA070];
  *&v63 = convertFloatToF16AsUshort(self->_config_params.softRadius);
  v66 = objc_msgSend_numberWithUnsignedShort_(v62, v65, v64, v63);
  v407[1] = v66;
  v406[2] = @"SparseRenderer::kMaxBlur_ushort";
  v67 = MEMORY[0x29EDBA070];
  *&v68 = convertFloatToF16AsUshort(self->_config_params.maxBlur);
  v71 = objc_msgSend_numberWithUnsignedShort_(v67, v70, v69, v68);
  v407[2] = v71;
  v406[3] = @"SparseRenderer::kBlendingQuarterResAlphaGain_ushort";
  v72 = MEMORY[0x29EDBA070];
  *&v73 = convertFloatToF16AsUshort(self->_config_params.blendingQuarterResAlphaGain);
  v76 = objc_msgSend_numberWithUnsignedShort_(v72, v75, v74, v73);
  v407[3] = v76;
  v406[4] = @"SparseRenderer::kBlendingFullResAlphaGain_ushort";
  v77 = MEMORY[0x29EDBA070];
  *&v78 = convertFloatToF16AsUshort(self->_config_params.blendingFullResAlphaGain);
  v81 = objc_msgSend_numberWithUnsignedShort_(v77, v80, v79, v78);
  v407[4] = v81;
  v389 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v82, v407, v406, 5);

  v404[0] = @"SparseRenderer::kMaxBlur_ushort";
  v83 = MEMORY[0x29EDBA070];
  *&v84 = convertFloatToF16AsUshort(self->_config_params.maxBlur);
  v390 = objc_msgSend_numberWithUnsignedShort_(v83, v86, v85, v84);
  v405[0] = v390;
  v404[1] = @"SparseRenderer::kSharpRadius_ushort";
  v87 = MEMORY[0x29EDBA070];
  *&v88 = convertFloatToF16AsUshort(self->_config_params.sharpRadius);
  v382 = objc_msgSend_numberWithUnsignedShort_(v87, v90, v89, v88);
  v405[1] = v382;
  v404[2] = @"SparseRenderer::kBasePixelWeight_uint32";
  v380 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v91, LODWORD(self->_config_params.basePixelWeight));
  v405[2] = v380;
  v404[3] = @"SparseRenderer::kNumSegments";
  v93 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v92, v394);
  v405[3] = v93;
  v404[4] = @"SparseRenderer::kRingAmplitude_ushort";
  v94 = MEMORY[0x29EDBA070];
  *&v95 = convertFloatToF16AsUshort(self->_config_params.ringAmplitude);
  v98 = objc_msgSend_numberWithUnsignedShort_(v94, v97, v96, v95);
  v405[4] = v98;
  v404[5] = @"SparseRenderer::kRingSharpness_ushort";
  v99 = MEMORY[0x29EDBA070];
  *&v100 = convertFloatToF16AsUshort(self->_config_params.ringSharpness);
  v103 = objc_msgSend_numberWithUnsignedShort_(v99, v102, v101, v100);
  v405[5] = v103;
  v404[6] = @"SparseRenderer::kHighlightBoostGain_ushort";
  v104 = MEMORY[0x29EDBA070];
  *&v105 = convertFloatToF16AsUshort(self->_config_params.highlightBoostGain);
  v108 = objc_msgSend_numberWithUnsignedShort_(v104, v107, v106, v105);
  v405[6] = v108;
  v404[7] = @"SparseRenderer::kLinearBoostGain_ushort";
  v109 = MEMORY[0x29EDBA070];
  *&v110 = convertFloatToF16AsUshort(self->_config_params.linearBoostGain);
  v113 = objc_msgSend_numberWithUnsignedShort_(v109, v112, v111, v110);
  v405[7] = v113;
  v404[8] = @"SparseRenderer::kRelativeWeightThresholdM_ushort";
  v114 = MEMORY[0x29EDBA070];
  *&v115 = convertFloatToF16AsUshort(v6);
  v118 = objc_msgSend_numberWithUnsignedShort_(v114, v117, v116, v115);
  v405[8] = v118;
  v404[9] = @"SparseRenderer::kRelativeWeightThresholdC_ushort";
  v119 = MEMORY[0x29EDBA070];
  *&v120 = convertFloatToF16AsUshort(v7);
  v123 = objc_msgSend_numberWithUnsignedShort_(v119, v122, v121, v120);
  v405[9] = v123;
  v125 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v124, v405, v404, 10);

  v395 = v125;
  v127 = objc_msgSend_dictionaryWithDictionary_(MEMORY[0x29EDB8E00], v126, v125);
  v128 = MEMORY[0x29EDBA070];
  *&v129 = convertFloatToF16AsUshort(self->_config_params.alphaEpsilon);
  v132 = objc_msgSend_numberWithUnsignedShort_(v128, v131, v130, v129);
  objc_msgSend_setObject_forKeyedSubscript_(v127, v133, v132, @"SparseRenderer::kAlphaEpsilon_ushort");

  v134 = MEMORY[0x29EDBA070];
  *&v135 = convertFloatToF16AsUshort(v8);
  v138 = objc_msgSend_numberWithUnsignedShort_(v134, v137, v136, v135);
  objc_msgSend_setObject_forKeyedSubscript_(v127, v139, v138, @"SparseRenderer::kAlphaEpsilonRem_ushort");

  v140 = MEMORY[0x29EDBA070];
  *&v141 = convertFloatToF16AsUshort(self->_config_params.alphaGain);
  v144 = objc_msgSend_numberWithUnsignedShort_(v140, v143, v142, v141);
  v391 = v127;
  objc_msgSend_setObject_forKeyedSubscript_(v127, v145, v144, @"SparseRenderer::kAlphaGain_ushort");

  v402[0] = @"SparseRenderer::kMaxBlur_ushort";
  v146 = MEMORY[0x29EDBA070];
  *&v147 = convertFloatToF16AsUshort(self->_config_params.maxBlur);
  v383 = objc_msgSend_numberWithUnsignedShort_(v146, v149, v148, v147);
  v403[0] = v383;
  v402[1] = @"SparseRenderer::kNumSegments";
  v381 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v150, v392);
  v403[1] = v381;
  v402[2] = @"SparseRenderer::kRingAmplitude_ushort";
  v151 = MEMORY[0x29EDBA070];
  *&v152 = convertFloatToF16AsUshort(self->_config_params.ringAmplitude);
  v155 = objc_msgSend_numberWithUnsignedShort_(v151, v154, v153, v152);
  v403[2] = v155;
  v402[3] = @"SparseRenderer::kRingSharpness_ushort";
  v156 = MEMORY[0x29EDBA070];
  *&v157 = convertFloatToF16AsUshort(self->_config_params.ringSharpness);
  v160 = objc_msgSend_numberWithUnsignedShort_(v156, v159, v158, v157);
  v403[3] = v160;
  v402[4] = @"SparseRenderer::kFGTraceStepScale_ushort";
  v161 = MEMORY[0x29EDBA070];
  *&v162 = convertFloatToF16AsUshort(self->_config_params.fgTraceStepScale);
  v165 = objc_msgSend_numberWithUnsignedShort_(v161, v164, v163, v162);
  v403[4] = v165;
  v402[5] = @"SparseRenderer::kFGHitThreshold_ushort";
  v166 = MEMORY[0x29EDBA070];
  *&v167 = convertFloatToF16AsUshort(self->_config_params.fgHitThreshold);
  v170 = objc_msgSend_numberWithUnsignedShort_(v166, v169, v168, v167);
  v403[5] = v170;
  v402[6] = @"SparseRenderer::kFGAlphaSmoothstepStart_ushort";
  v171 = MEMORY[0x29EDBA070];
  *&v172 = convertFloatToF16AsUshort(self->_config_params.fgAlphaSmoothstepStart);
  v175 = objc_msgSend_numberWithUnsignedShort_(v171, v174, v173, v172);
  v403[6] = v175;
  v402[7] = @"SparseRenderer::kFGAlphaSmoothstepEnd_ushort";
  v176 = MEMORY[0x29EDBA070];
  *&v177 = convertFloatToF16AsUshort(self->_config_params.fgAlphaSmoothstepEnd);
  v180 = objc_msgSend_numberWithUnsignedShort_(v176, v179, v178, v177);
  v403[7] = v180;
  v402[8] = @"SparseRenderer::kFGBlurWeightSmoothstepStart_ushort";
  v181 = MEMORY[0x29EDBA070];
  *&v182 = convertFloatToF16AsUshort(self->_config_params.fgBlurWeightSmoothstepStart);
  v185 = objc_msgSend_numberWithUnsignedShort_(v181, v184, v183, v182);
  v403[8] = v185;
  v402[9] = @"SparseRenderer::kFGBlurWeightSmoothstepEnd_ushort";
  v186 = MEMORY[0x29EDBA070];
  *&v187 = convertFloatToF16AsUshort(self->_config_params.fgBlurWeightSmoothstepEnd);
  v190 = objc_msgSend_numberWithUnsignedShort_(v186, v189, v188, v187);
  v403[9] = v190;
  v393 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v191, v403, v402, 10);

  v400[0] = @"SparseRenderer::kMaxBlur_ushort";
  v192 = MEMORY[0x29EDBA070];
  *&v193 = convertFloatToF16AsUshort(self->_config_params.maxBlur);
  v196 = objc_msgSend_numberWithUnsignedShort_(v192, v195, v194, v193);
  v401[0] = v196;
  v400[1] = @"SparseRenderer::kSharpRadius_ushort";
  v197 = MEMORY[0x29EDBA070];
  *&v198 = convertFloatToF16AsUshort(self->_config_params.sharpRadius);
  v201 = objc_msgSend_numberWithUnsignedShort_(v197, v200, v199, v198);
  v401[1] = v201;
  v400[2] = @"SparseRenderer::kSoftRadius_ushort";
  v202 = MEMORY[0x29EDBA070];
  *&v203 = convertFloatToF16AsUshort(self->_config_params.softRadius);
  v206 = objc_msgSend_numberWithUnsignedShort_(v202, v205, v204, v203);
  v401[2] = v206;
  v208 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v207, v401, v400, 3);

  v398[0] = @"SparseRenderer::kXhlrbTileSize";
  v210 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x29EDBA070], v209, xhlrbTileSize);
  v399[0] = v210;
  v398[1] = @"SparseRenderer::kXhlrbMaxIntensityThresholdM_ushort";
  v211 = MEMORY[0x29EDBA070];
  *&v212 = convertFloatToF16AsUshort(v11);
  v215 = objc_msgSend_numberWithUnsignedShort_(v211, v214, v213, v212);
  v399[1] = v215;
  v398[2] = @"SparseRenderer::kXhlrbMaxIntensityThresholdC_ushort";
  v216 = MEMORY[0x29EDBA070];
  *&v217 = convertFloatToF16AsUshort(v14);
  v220 = objc_msgSend_numberWithUnsignedShort_(v216, v219, v218, v217);
  v399[2] = v220;
  v398[3] = @"SparseRenderer::kXhlrbMinIntensityThresholdM_ushort";
  v221 = MEMORY[0x29EDBA070];
  *&v222 = convertFloatToF16AsUshort(v13);
  v225 = objc_msgSend_numberWithUnsignedShort_(v221, v224, v223, v222);
  v399[3] = v225;
  v398[4] = @"SparseRenderer::kXhlrbMinIntensityThresholdC_ushort";
  v226 = MEMORY[0x29EDBA070];
  *&v227 = convertFloatToF16AsUshort(v15);
  v230 = objc_msgSend_numberWithUnsignedShort_(v226, v229, v228, v227);
  v399[4] = v230;
  v232 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v231, v399, v398, 5);

  v396 = @"SparseRenderer::kLocalContrastBias_ushort";
  v233 = MEMORY[0x29EDBA070];
  *&v234 = convertFloatToF16AsUshort(0.0);
  v237 = objc_msgSend_numberWithUnsignedShort_(v233, v236, v235, v234);
  v397 = v237;
  v239 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v238, &v397, &v396, 1);

  v240 = [UniKernel alloc];
  v242 = objc_msgSend_initWithName_library_(v240, v241, @"sparserendering_preprocess", self->_library);
  preprocess = self->_preprocess;
  self->_preprocess = v242;

  v245 = self->_preprocess;
  if (!v245)
  {
    sub_2956C9D8C(v414);
    v378 = v414[0];
    v252 = v386;
    v261 = v387;
    v253 = v385;
LABEL_47:
    v268 = v388;
    goto LABEL_24;
  }

  objc_msgSend_setPreferredOutputFormat_(v245, v244, &unk_2A1C949A8);
  v246 = [UniKernel alloc];
  v248 = objc_msgSend_initWithName_library_(v246, v247, @"sparserendering_preprocess_scaled", self->_library);
  preprocessScaled = self->_preprocessScaled;
  self->_preprocessScaled = v248;

  v251 = self->_preprocessScaled;
  v253 = v385;
  v252 = v386;
  if (!v251)
  {
    sub_2956C9D04(v414);
    v378 = v414[0];
    v261 = v387;
    v268 = v388;
    goto LABEL_24;
  }

  objc_msgSend_setPreferredOutputFormat_(v251, v250, &unk_2A1C949A8);
  v254 = [UniHighlightRecovery alloc];
  v257 = objc_msgSend_device(self->_mtlQueue, v255, v256);
  v259 = objc_msgSend_initWithDevice_library_constants_(v254, v258, v257, self->_library, v232);
  highlightRecovery = self->_highlightRecovery;
  self->_highlightRecovery = v259;

  v261 = v387;
  if (!self->_highlightRecovery)
  {
    sub_2956C9C7C(v414);
LABEL_46:
    v378 = v414[0];
    goto LABEL_47;
  }

  v262 = [UniKernel alloc];
  v264 = objc_msgSend_initWithName_library_constants_(v262, v263, @"sparserendering_prefilter_x", self->_library, v387);
  prefilterX = self->_prefilterX;
  self->_prefilterX = v264;

  v267 = self->_prefilterX;
  v268 = v388;
  if (!v267)
  {
    sub_2956C9BF4(v414);
LABEL_49:
    v378 = v414[0];
    goto LABEL_24;
  }

  objc_msgSend_setPreferredOutputFormat_(v267, v266, &unk_2A1C949C0);
  v269 = [UniKernel alloc];
  v271 = objc_msgSend_initWithName_library_constants_(v269, v270, @"sparserendering_prefilter_y", self->_library, v387);
  prefilterY = self->_prefilterY;
  self->_prefilterY = v271;

  v274 = self->_prefilterY;
  if (!v274)
  {
    sub_2956C9B6C(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v274, v273, &unk_2A1C949C0);
  v275 = [UniKernel alloc];
  v277 = objc_msgSend_initWithName_library_constants_(v275, v276, @"sparserendering_sample_noAlpha", self->_library, v395);
  sparseNoAlpha = self->_sparseNoAlpha;
  self->_sparseNoAlpha = v277;

  v280 = self->_sparseNoAlpha;
  if (!v280)
  {
    sub_2956C9AE4(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v280, v279, &unk_2A1C949C0);
  v281 = [UniKernel alloc];
  v283 = objc_msgSend_initWithName_library_constants_(v281, v282, @"sparserendering_sample_noAlpha_ray", self->_library, v393);
  sparseNoAlphaRayFg = self->_sparseNoAlphaRayFg;
  self->_sparseNoAlphaRayFg = v283;

  v286 = self->_sparseNoAlphaRayFg;
  if (!v286)
  {
    sub_2956C9A5C(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v286, v285, &unk_2A1C949C0);
  v287 = [UniKernel alloc];
  v289 = objc_msgSend_initWithName_library_constants_(v287, v288, @"sparserendering_sample_withAlpha", self->_library, v391);
  sparseWithAlpha = self->_sparseWithAlpha;
  self->_sparseWithAlpha = v289;

  v292 = self->_sparseWithAlpha;
  if (!v292)
  {
    sub_2956C99D4(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v292, v291, &unk_2A1C949C0);
  v293 = [UniKernel alloc];
  v295 = objc_msgSend_initWithName_library_(v293, v294, @"gainmapMultiply_scaled", self->_library);
  gainmapMultiply = self->_gainmapMultiply;
  self->_gainmapMultiply = v295;

  v298 = self->_gainmapMultiply;
  if (!v298)
  {
    sub_2956C994C(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v298, v297, &unk_2A1C949D8);
  v299 = [UniKernel alloc];
  v301 = objc_msgSend_initWithName_library_(v299, v300, @"gainmapMultiply_rgb_scaled", self->_library);
  gainmapRGBMultiply = self->_gainmapRGBMultiply;
  self->_gainmapRGBMultiply = v301;

  if (!self->_gainmapMultiply)
  {
    sub_2956C98C4(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(self->_gainmapRGBMultiply, v303, &unk_2A1C949D8);
  v304 = [UniKernel alloc];
  v306 = objc_msgSend_initWithName_library_constants_(v304, v305, @"sparserendering_antialias_x", self->_library, v386);
  antialiasX = self->_antialiasX;
  self->_antialiasX = v306;

  v309 = self->_antialiasX;
  if (!v309)
  {
    sub_2956C983C(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v309, v308, &unk_2A1C949C0);
  v310 = [UniKernel alloc];
  v312 = objc_msgSend_initWithName_library_constants_(v310, v311, @"sparserendering_antialias_y", self->_library, v385);
  antialiasY = self->_antialiasY;
  self->_antialiasY = v312;

  v315 = self->_antialiasY;
  if (!v315)
  {
    sub_2956C97B4(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v315, v314, &unk_2A1C949C0);
  v316 = [UniKernel alloc];
  v318 = objc_msgSend_initWithName_library_(v316, v317, @"sparserendering_antialias_x_4chan", self->_library);
  antialiasRGBAX = self->_antialiasRGBAX;
  self->_antialiasRGBAX = v318;

  v321 = self->_antialiasRGBAX;
  if (!v321)
  {
    sub_2956C972C(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v321, v320, &unk_2A1C949C0);
  v322 = [UniKernel alloc];
  v324 = objc_msgSend_initWithName_library_constants_(v322, v323, @"sparserendering_antialias_y_4chan", self->_library, v388);
  antialiasRGBAY = self->_antialiasRGBAY;
  self->_antialiasRGBAY = v324;

  v327 = self->_antialiasRGBAY;
  if (!v327)
  {
    sub_2956C96A4(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v327, v326, &unk_2A1C949C0);
  v328 = [UniKernel alloc];
  v330 = objc_msgSend_initWithName_library_constants_(v328, v329, @"sparserendering_add_noise_only", self->_library, v388);
  addNoiseOnly = self->_addNoiseOnly;
  self->_addNoiseOnly = v330;

  v333 = self->_addNoiseOnly;
  if (!v333)
  {
    sub_2956C961C(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v333, v332, &unk_2A1C949C0);
  v334 = [UniKernel alloc];
  v336 = objc_msgSend_initWithName_library_constants_(v334, v335, @"sparserendering_yuv_out_1", self->_library, v389);
  yuv1 = self->_yuv1;
  self->_yuv1 = v336;

  v339 = self->_yuv1;
  if (!v339)
  {
    sub_2956C9594(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v339, v338, &unk_2A1C949A8);
  v340 = [UniKernel alloc];
  v342 = objc_msgSend_initWithName_library_(v340, v341, @"sparserendering_yuv_out_2", self->_library);
  yuv2 = self->_yuv2;
  self->_yuv2 = v342;

  objc_msgSend_setPreferredOutputFormat_(self->_yuv2, v344, &unk_2A1C949A8);
  if (!self->_yuv2)
  {
    sub_2956C950C(v414);
    goto LABEL_49;
  }

  v345 = [UniKernel alloc];
  v347 = objc_msgSend_initWithName_library_constants_(v345, v346, @"sparserendering_localContrast", self->_library, v239);
  localContrast = self->_localContrast;
  self->_localContrast = v347;

  objc_msgSend_setPreferredOutputFormat_(self->_localContrast, v349, &unk_2A1C949F0);
  if (!self->_localContrast)
  {
    sub_2956C9484(v414);
    goto LABEL_49;
  }

  v350 = [UniKernel alloc];
  v352 = objc_msgSend_initWithName_library_(v350, v351, @"disparity_refinement_extract_positive_blur_values", self->_library);
  extractPositiveBlurValues = self->_extractPositiveBlurValues;
  self->_extractPositiveBlurValues = v352;

  v355 = self->_extractPositiveBlurValues;
  if (!v355)
  {
    sub_2956C93FC(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v355, v354, &unk_2A1C949F0);
  v356 = [UniKernel alloc];
  v358 = objc_msgSend_initWithName_library_(v356, v357, @"disparity_refinement_extract_negative_blur_values", self->_library);
  extractNegativeBlurValues = self->_extractNegativeBlurValues;
  self->_extractNegativeBlurValues = v358;

  v361 = self->_extractNegativeBlurValues;
  if (!v361)
  {
    sub_2956C9374(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v361, v360, &unk_2A1C949F0);
  v362 = [UniMorphology alloc];
  v365 = objc_msgSend_device(self->_mtlQueue, v363, v364);
  v367 = objc_msgSend_initWithDevice_(v362, v366, v365);
  morphology = self->_morphology;
  self->_morphology = v367;

  objc_msgSend_setPreferredOutputFormat_(self->_morphology, v369, &unk_2A1C949D8);
  if (!self->_morphology)
  {
    sub_2956C92EC(v414);
    goto LABEL_46;
  }

  v370 = [UniKernel alloc];
  v372 = objc_msgSend_initWithName_library_constants_(v370, v371, @"sparserendering_blend_raytraced", self->_library, v208);
  blendRaytraced = self->_blendRaytraced;
  self->_blendRaytraced = v372;

  v375 = self->_blendRaytraced;
  v268 = v388;
  if (!v375)
  {
    sub_2956C9264(v414);
    goto LABEL_49;
  }

  objc_msgSend_setPreferredOutputFormat_(v375, v374, &unk_2A1C949C0);
  objc_msgSend__setROICallbacks(self, v376, v377);
  v378 = 0;
LABEL_24:

  return v378;
}

- (__int16)computeDynamicParams
{
  v2 = *(a1 + 216);
  v3 = *(a1 + 220);
  v4 = v3 <= 0.0 || v2 <= 0.0;
  v5 = v3 / v2;
  if (v4)
  {
    v5 = 1.0;
  }

  v6 = *(a1 + 232);
  v7 = (*(a1 + 316) * v5) / v6;
  v8 = 1.0 / (((*(a1 + 320) * v5) / v6) - v7);
  _Q0.f32[0] = v5 * *(a1 + 292);
  _Q0.f32[1] = v8;
  _Q0.f32[2] = -(v8 * v7);
  _Q0.i32[3] = *(a1 + 340);
  *a2 = vcvt_hight_f16_f32(vcvt_f16_f32(_Q0), *(a1 + 344));
  _Q0.i32[0] = *(a1 + 360);
  __asm { FCVT            H0, S0 }

  a2[1].i16[0] = _Q0.i16[0];
  _Q0.i32[0] = *(a1 + 248);
  __asm { FCVT            H0, S0 }

  a2[1].i16[1] = _Q0.i16[0];
  _Q0.f32[0] = sqrtf(4.0 / fminf(fmaxf(*(a1 + 368), 1.0), 4.0));
  __asm { FCVT            H0, S0 }

  a2[1].i16[2] = result;
  return result;
}

- (id)erodeAndDilate:(id)a3 radius:(int)a4 coreImageRender:(BOOL)a5 context:(id)a6 extent:(CGRect)a7 pixelFormat:(unint64_t)a8
{
  height = a7.size.height;
  width = a7.size.width;
  y = a7.origin.y;
  x = a7.origin.x;
  v17 = a3;
  v20 = a6;
  if (!v17 || a4 <= 0)
  {
    v35 = objc_msgSend_null(MEMORY[0x29EDB8E28], v18, v19);
    v82[0] = v35;
    v38 = objc_msgSend_null(MEMORY[0x29EDB8E28], v36, v37);
    v82[1] = v38;
    v40 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v39, v82, 2);
    goto LABEL_19;
  }

  v21 = 0x29EDB8000uLL;
  if (a5)
  {
    v22 = MEMORY[0x29EDB9178];
    v23 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v18, v19);
    v25 = objc_msgSend_imageWithColor_(v22, v24, v23);

    v28 = objc_msgSend_imageByCroppingToRect_(v25, v26, v27, x, y, width, height);

    v29 = [UniFakeImage alloc];
    v31 = objc_msgSend_initWithCIImage_format_(v29, v30, v28, a8);
    v81[0] = v31;
    v81[1] = v31;
    v81[2] = v31;
    v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v32, v81, 3);
  }

  else
  {
    v33 = tmpTexturesFromTexture(v17, 3u, a8);
  }

  extractNegativeBlurValues = self->_extractNegativeBlurValues;
  v80[0] = v17;
  v79[0] = @"signedBlurMapTex";
  v79[1] = @"outputBlurMapTex";
  v42 = objc_msgSend_objectAtIndexedSubscript_(v33, v34, 0);
  v79[2] = @"_renderContext";
  v80[1] = v42;
  v80[2] = v20;
  v44 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v43, v80, v79, 3);
  v35 = objc_msgSend_imageByApplyingParameters_(extractNegativeBlurValues, v45, v44);

  v73 = v33;
  if (v35)
  {
    v72 = v17;
    morphology = self->_morphology;
    v78[0] = v35;
    v77[0] = @"inputImage";
    v77[1] = @"outputImage";
    objc_msgSend_objectAtIndexedSubscript_(v33, v46, 1);
    v49 = v20;
    v51 = v50 = v33;
    v78[1] = v51;
    v77[2] = @"inputRadius";
    v52 = (2 * a4) | 1u;
    v54 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v53, v52);
    v78[2] = v54;
    v78[3] = &unk_2A1C94A20;
    v77[3] = @"inputDoMin";
    v77[4] = @"_renderContext";
    v78[4] = v49;
    v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v55, v78, v77, 5);
    v58 = objc_msgSend_imageByApplyingParameters_(morphology, v57, v56);

    v59 = self->_morphology;
    v76[0] = v35;
    v75[0] = @"inputImage";
    v75[1] = @"outputImage";
    v60 = v50;
    v20 = v49;
    v62 = objc_msgSend_objectAtIndexedSubscript_(v60, v61, 2);
    v76[1] = v62;
    v75[2] = @"inputRadius";
    v64 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v63, v52);
    v76[2] = v64;
    v76[3] = &unk_2A1C94A08;
    v75[3] = @"inputDoMin";
    v75[4] = @"_renderContext";
    v76[4] = v49;
    v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v65, v76, v75, 5);
    v38 = objc_msgSend_imageByApplyingParameters_(v59, v67, v66);

    if (v58)
    {
      v68 = 0;
      v69 = v58;
      v21 = 0x29EDB8000;
      v17 = v72;
      goto LABEL_13;
    }

    v21 = 0x29EDB8000uLL;
    v17 = v72;
  }

  else
  {
    v38 = 0;
  }

  v69 = objc_msgSend_null(MEMORY[0x29EDB8E28], v46, v47);
  v58 = 0;
  v68 = 1;
LABEL_13:
  v74[0] = v69;
  v70 = v38;
  if (!v38)
  {
    v70 = objc_msgSend_null(MEMORY[0x29EDB8E28], v46, v47);
  }

  v74[1] = v70;
  v40 = objc_msgSend_arrayWithObjects_count_(*(v21 + 3456), v46, v74, 2);
  if (!v38)
  {

    if (!v68)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v68)
  {
LABEL_17:
  }

LABEL_18:

LABEL_19:

  return v40;
}

- (id)gainMapToLightMap:(id)a3 inputImage:(id)a4 inputLuma:(id)a5 inputChroma:(id)a6 headroom:(float)a7 context:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a8;
  if (objc_msgSend_conformsToProtocol_(v14, v19, &unk_2A1CA0A70))
  {
    v20 = tmpTexturesFromTexture(v14, 1u, 25);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    v25 = objc_msgSend_texture(v22, v23, v24);
  }

  else
  {
    v26 = sub_295696FA8(v14);
    v28 = v27;
    v29 = MEMORY[0x29EDB9178];
    v32 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v30, v31);
    v34 = objc_msgSend_imageWithColor_(v29, v33, v32);
    v20 = objc_msgSend_imageByCroppingToRect_(v34, v35, v36, 0.0, 0.0, v26, v28);

    v37 = [UniFakeImage alloc];
    v25 = objc_msgSend_initWithCIImage_format_(v37, v38, v20, 25);
  }

  if (v15)
  {
    gainmapRGBMultiply = self->_gainmapRGBMultiply;
    v59[0] = @"inputRGBTex";
    v59[1] = @"inputGainMapTex";
    v60[0] = v15;
    v60[1] = v14;
    v60[2] = v25;
    v59[2] = @"outputTex";
    v59[3] = @"headroom";
    v40 = MEMORY[0x29EDBA070];
    v41 = v14;
    *&v42 = a7;
    v45 = objc_msgSend_numberWithFloat_(v40, v43, v44, v42);
    v59[4] = @"_renderContext";
    v60[3] = v45;
    v60[4] = v18;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v46, v60, v59, 5);
  }

  else
  {
    gainmapRGBMultiply = self->_gainmapMultiply;
    v58[0] = v16;
    v58[1] = v17;
    v58[2] = v14;
    v58[3] = v25;
    v47 = MEMORY[0x29EDBA070];
    v48 = v14;
    *&v49 = a7;
    v45 = objc_msgSend_numberWithFloat_(v47, v50, v51, v49, @"inputLumaTex", @"inputChromaTex", @"inputGainMapTex", @"outputTex", @"headroom");
    v57[5] = @"_renderContext";
    v58[4] = v45;
    v58[5] = v18;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v52, v58, v57, 6);
  }
  v53 = ;
  v55 = objc_msgSend_imageByApplyingParameters_(gainmapRGBMultiply, v54, v53);

  return v55;
}

- (id)applyBackgroundUsingConfig:(const rendering_config_params *)a3 inputBlurMap:(id)a4 inputAlpha:(id)a5 inputGainMap:(id)a6 inputImage:(id)a7 inputLuma:(id)a8 inputChroma:(id)a9 inputHalfRes1:(id)a10 inputHalfRes2:(id)a11 scale:(float)a12 coreImageRender:(BOOL)a13 version:(int)a14 context:(id)a15 captureFolderMiscPath:(id)a16
{
  v227 = a4;
  v22 = a5;
  v235 = a6;
  v221 = a7;
  v220 = a8;
  v230 = a9;
  v232 = a10;
  v225 = a11;
  v236 = a15;
  v218 = a16;
  v219 = v22;
  if (v22)
  {
    v23 = a3;
    if (a3->alphaGain <= 0.0)
    {
      v24 = 0;
    }

    else
    {
      v24 = v22;
      if (a3->alphaEpsilon >= 1.0)
      {
        v24 = 0;
      }
    }

    v25 = self;
  }

  else
  {
    v24 = 0;
    v25 = self;
    v23 = a3;
  }

  v229 = v24;
  v226 = objc_alloc_init(UniTextureView);
  v224 = objc_alloc_init(UniTextureView);
  v274 = 0;
  v275 = &v274;
  v276 = 0x3032000000;
  v277 = sub_295698668;
  v278 = sub_295698678;
  v279 = 0;
  v268 = 0;
  v269 = &v268;
  v270 = 0x3032000000;
  v271 = sub_295698668;
  v272 = sub_295698678;
  v273 = 0;
  v266[0] = 0;
  v266[1] = v266;
  v266[2] = 0x2020000000;
  v267 = 0;
  v265[0] = MEMORY[0x29EDCA5F8];
  v265[1] = 3221225472;
  v265[2] = sub_295698680;
  v265[3] = &unk_29EDD4838;
  v265[4] = v266;
  v265[5] = &v274;
  v265[6] = &v268;
  v26 = MEMORY[0x29C250590](v265);
  if (objc_msgSend_setOptions_isPrewarm_(v25, v27, v23, 0))
  {
    syslog(3, "err error, (%s) at %s:%d", "[ApplyBlurmap applyBackgroundUsingConfig:inputBlurMap:inputAlpha:inputGainMap:inputImage:inputLuma:inputChroma:inputHalfRes1:inputHalfRes2:scale:coreImageRender:version:context:captureFolderMiscPath:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/VideoProcessors/Portrait/CCPortrait/ApplyBlurmap.m", 1981);
    goto LABEL_104;
  }

  gainMapHeadroom = 0.0;
  if (v235 && a14 >= 7)
  {
    v29 = v235;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = objc_msgSend_properties(v29, v30, v31);
      objc_msgSend_objectForKeyedSubscript_(v32, v33, *MEMORY[0x29EDBB1C0]);
    }

    else
    {
      v32 = 0;
      objc_msgSend_objectForKeyedSubscript_(0, v30, *MEMORY[0x29EDBB1C0]);
    }
    v34 = ;

    v260.i32[0] = 0;
    v35 = sub_29569B374(v34, @"HDRGainMap:HDRGainMapVersion", &v260);
    v36 = v260.i32[0];
    v260.i32[0] = 0;
    v37 = sub_29569B374(v34, @"HDRToneMap:Version", &v260);
    v38 = v36 >= 0x20000 && v35;
    v39 = v260.i32[0] > 0 && v37;
    if (!v38 && !v39)
    {
      v40 = uni_logger_api();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        sub_2956C9E14(v40);
      }

      v41 = v29;
      goto LABEL_62;
    }

    gainMapHeadroom = v23->gainMapHeadroom;
    if (gainMapHeadroom != 0.0)
    {
LABEL_59:

      *&v70 = gainMapHeadroom;
      if (gainMapHeadroom < 1.0)
      {
        v235 = v29;
LABEL_63:
        v25 = self;
        goto LABEL_64;
      }

      v41 = objc_msgSend_gainMapToLightMap_inputImage_inputLuma_inputChroma_headroom_context_(self, v28, v29, v221, v220, v230, v236, v70);
LABEL_62:

      v235 = v41;
      goto LABEL_63;
    }

    if (v34)
    {
      v260.i32[0] = 0;
      v42 = sub_29569B374(v34, @"HDRGainMap:HDRGainMapVersion", &v260);
      v44 = v260.i32[0] >= 0x20000 && v42 && sub_29569B4A0(v34, @"HDRGainMap::HDRGainMapHeadroom", &gainMapHeadroom);
      v260.i32[0] = 0;
      v45 = sub_29569B374(v34, @"HDRToneMap:Version", &v260);
      if (v260.i32[0] > 0 && v45)
      {
        v260.i32[0] = 0;
        v44 = sub_29569B4A0(v34, @"HDRToneMap:AlternateHeadroom", &v260);
        if (v44)
        {
          gainMapHeadroom = exp2f(*v260.i32);
        }
      }

      if (v44)
      {
        v47 = gainMapHeadroom;
        if (gainMapHeadroom != 0.0)
        {
LABEL_55:
          if (v47 == 0.0)
          {
            v69 = uni_logger_api();
            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
            {
              sub_2956C9E6C(v69);
            }
          }

          goto LABEL_59;
        }
      }
    }

    v48 = v221;
    v51 = objc_msgSend_properties(v48, v49, v50);
    v53 = objc_msgSend_valueForKeyPath_(v51, v52, @"{MakerApple}.33");

    v47 = 0.0;
    if (v53)
    {
LABEL_54:

      gainMapHeadroom = v47;
      goto LABEL_55;
    }

    v56 = objc_msgSend_properties(v48, v54, v55);
    v58 = objc_msgSend_valueForKeyPath_(v56, v57, @"{MakerApple}.48");

    if (v58)
    {
LABEL_53:

      goto LABEL_54;
    }

    objc_msgSend_floatValue(0, v59, v60);
    v62 = v61;
    objc_msgSend_floatValue(0, v63, v64);
    if (v62 >= 1.0)
    {
      if (v65 <= 0.01)
      {
        v68 = (v65 * -70.0) + 3.0;
        goto LABEL_52;
      }

      v66 = 2.303;
      v67 = -0.303;
    }

    else if (v65 <= 0.01)
    {
      v66 = 1.8;
      v67 = -20.0;
    }

    else
    {
      v66 = 1.601;
      v67 = -0.101;
    }

    v68 = v66 + (v65 * v67);
LABEL_52:
    v47 = exp2f(v68);
    goto LABEL_53;
  }

LABEL_64:
  if (!objc_msgSend_setOptions_isPrewarm_(v25, v28, v23, 0))
  {
    v231 = objc_msgSend_imageWithObject_(UniImage, v71, v227);
    v263[0] = 0;
    v262 = 0;
    *(v263 + 6) = 0;
    objc_msgSend_computeDynamicParams(v25, v72, v73);
    v234 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v74, &v262, 22);
    v76 = objc_msgSend_imageWithObject_(UniImage, v75, v232);
    objc_msgSend_extent(v76, v77, v78);
    v222 = v79;
    v223 = v80;
    v82 = v81;
    v84 = v83;

    v85 = [UniRunInfo alloc];
    v86.f64[0] = v222;
    v86.f64[1] = v223;
    __asm { FMOV            V1.2D, #0.5 }

    v260 = vcvtq_u64_f64(vmulq_f64(v86, _Q1));
    v261 = 1;
    v228 = objc_msgSend_initWithGridSize_kernel_(v85, v92, &v260, v25->_preprocess);
    objc_msgSend_setCoreImageOutputExtent_(v228, v93, v94, v82, v84, v222, v223);
    if (a13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v95 = v221;
      v96 = sub_295696FA8(v231);
      v98 = sub_2956986C4(v95, v96, v97, v23->bicubicDownsampleParamB, v23->bicubicDownsampleParamC);

      v99 = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F0]);
      v101 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v98, v100, v99);

      CGColorSpaceRelease(v99);
      v103 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v102, @"ccp_preprocess");
      v104 = v227;
      objc_msgSend_extent(v104, v105, v106);
      v108 = v107;
      v110 = v109;
      v112 = v111;
      v114 = v113;
      v259[0] = v101;
      v259[1] = v104;
      v116 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v115, v259, 2);
      v118 = objc_msgSend_applyWithExtent_arguments_(v103, v117, v116, v108, v110, v112, v114);

      v120 = objc_msgSend_imageWithCIImage_(UniImage, v119, v118);
    }

    else
    {
      v121 = sub_295696FA8(v231);
      v123 = v122;
      if (v121 == sub_295696FA8(v230) && v123 == v125)
      {
        preprocess = v25->_preprocess;
        v257[0] = @"inputLumaTex";
        v257[1] = @"inputChromaTex";
        v258[0] = v220;
        v258[1] = v230;
        v257[2] = @"inputBlurMapTex";
        v257[3] = @"outputTex";
        v258[2] = v231;
        v258[3] = v232;
        v257[4] = @"_renderContext";
        v258[4] = v236;
        v118 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v124, v258, v257, 5);
        v128 = objc_msgSend_imageByApplyingParameters_runInfo_(preprocess, v127, v118, v228);
      }

      else
      {
        preprocessScaled = v25->_preprocessScaled;
        v255[0] = @"inputLumaTex";
        v255[1] = @"inputChromaTex";
        v256[0] = v220;
        v256[1] = v230;
        v255[2] = @"inputBlurMapTex";
        v255[3] = @"outputTex";
        v256[2] = v231;
        v256[3] = v232;
        v255[4] = @"_renderContext";
        v256[4] = v236;
        v118 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v124, v256, v255, 5);
        v128 = objc_msgSend_imageByApplyingParameters_(preprocessScaled, v130, v118);
      }

      v120 = v128;
    }

    if (v120)
    {
      v253[0] = @"inputImage";
      v253[1] = @"_renderContext";
      v254[0] = v120;
      v254[1] = v236;
      v253[2] = @"desiredFormat";
      v254[2] = &unk_2A1C949C0;
      v132 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v131, v254, v253, 3);
      v134 = objc_msgSend_imageByApplyingParameters_(v226, v133, v132);
      v135 = v275[5];
      v275[5] = v134;

      if (v275[5])
      {
        v251[0] = @"inputImage";
        v251[1] = @"_renderContext";
        v252[0] = v225;
        v252[1] = v236;
        v251[2] = @"desiredFormat";
        v252[2] = &unk_2A1C949C0;
        v137 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v136, v252, v251, 3);
        v139 = objc_msgSend_imageByApplyingParameters_(v224, v138, v137);
        v140 = v269[5];
        v269[5] = v139;

        if (v269[5])
        {
          v141 = v275[5];

          if (v23->xhlrbIterations >= 1)
          {
            highlightRecovery = v25->_highlightRecovery;
            v249[0] = *MEMORY[0x29EDB9248];
            *&v144 = a12;
            v146 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v142, v143, v144);
            v250[0] = v146;
            v249[1] = @"inputIterations";
            v148 = objc_msgSend_numberWithInt_(MEMORY[0x29EDBA070], v147, v23->xhlrbIterations);
            v250[1] = v148;
            v250[2] = v234;
            v249[2] = @"dynamic_params";
            v249[3] = @"inputImage";
            v250[3] = v141;
            v249[4] = @"outputImage";
            v149 = v26[2](v26);
            v249[5] = @"_renderContext";
            v250[4] = v149;
            v250[5] = v236;
            v151 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v150, v250, v249, 6);
            v153 = objc_msgSend_imageByApplyingParameters_(highlightRecovery, v152, v151);

            if (!v153)
            {
              FigDebugAssert3();
              goto LABEL_115;
            }

            if (a13)
            {
              v141 = v153;
            }

            else
            {
              v154 = (v26[2])(v26);
              v141 = v275[5];
            }
          }

          if (v23->preFilterRadius >= 1 && v23->preFilterBlurStrength > 0.0)
          {
            prefilterX = v25->_prefilterX;
            v247[0] = @"dynamic_params";
            v247[1] = @"inputTex";
            v248[0] = v234;
            v248[1] = v141;
            v247[2] = @"outputTex";
            v156 = v26[2](v26);
            v248[2] = v156;
            v248[3] = v236;
            v247[3] = @"_renderContext";
            v247[4] = @"_kernelScale";
            *&v157 = a12;
            v160 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v158, v159, v157);
            v248[4] = v160;
            v162 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v161, v248, v247, 5);
            v164 = objc_msgSend_imageByApplyingParameters_(prefilterX, v163, v162);

            if (!v164)
            {
              FigDebugAssert3();
              goto LABEL_115;
            }

            prefilterY = v25->_prefilterY;
            v245[0] = @"dynamic_params";
            v245[1] = @"inputTex";
            v246[0] = v234;
            v246[1] = v164;
            v245[2] = @"outputTex";
            v166 = v26[2](v26);
            v246[2] = v166;
            v246[3] = v236;
            v245[3] = @"_renderContext";
            v245[4] = @"_kernelScale";
            *&v167 = a12;
            v170 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v168, v169, v167);
            v246[4] = v170;
            v172 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v171, v246, v245, 5);
            v141 = objc_msgSend_imageByApplyingParameters_(prefilterY, v173, v172);

            if (!v141)
            {
              FigDebugAssert3();
              goto LABEL_115;
            }
          }

          if (v229)
          {
            sparseWithAlpha = v25->_sparseWithAlpha;
            v244[0] = v234;
            v243[0] = @"dynamic_params";
            v243[1] = @"segmentStepLUT";
            v175 = objc_msgSend_objectAtIndexedSubscript_(v25->_segmentArray, v142, 0);
            v244[1] = v175;
            v243[2] = @"segmentBaseVecLUT";
            v179 = objc_msgSend_objectAtIndexedSubscript_(v25->_segmentArray, v176, 1);
            v244[2] = v179;
            v244[3] = v141;
            v243[3] = @"inputTex";
            v243[4] = @"gainTex";
            v180 = v235;
            if (!v235)
            {
              v180 = objc_msgSend_null(MEMORY[0x29EDB8E28], v177, v178);
            }

            v244[4] = v180;
            v243[5] = @"outputTex";
            v181 = v26[2](v26);
            v244[5] = v181;
            v244[6] = v229;
            v243[6] = @"alphaTex";
            v243[7] = @"_renderContext";
            v244[7] = v236;
            v183 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v182, v244, v243, 8);
            v185 = objc_msgSend_imageByApplyingParameters_(sparseWithAlpha, v184, v183);

            if (!v235)
            {
            }

            if (!v185)
            {
              FigDebugAssert3();
LABEL_115:
              FigSignalErrorAtGM();
              goto LABEL_116;
            }
          }

          else
          {
            sparseNoAlpha = v25->_sparseNoAlpha;
            v242[0] = v234;
            v241[0] = @"dynamic_params";
            v241[1] = @"segmentStepLUT";
            v187 = objc_msgSend_objectAtIndexedSubscript_(v25->_segmentArray, v142, 0);
            v242[1] = v187;
            v241[2] = @"segmentBaseVecLUT";
            v191 = objc_msgSend_objectAtIndexedSubscript_(v25->_segmentArray, v188, 1);
            v242[2] = v191;
            v242[3] = v141;
            v241[3] = @"inputTex";
            v241[4] = @"gainTex";
            v192 = v235;
            if (!v235)
            {
              v192 = objc_msgSend_null(MEMORY[0x29EDB8E28], v189, v190);
            }

            v242[4] = v192;
            v241[5] = @"outputTex";
            v193 = v26[2](v26);
            v241[6] = @"_renderContext";
            v242[5] = v193;
            v242[6] = v236;
            v195 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v194, v242, v241, 7);
            v185 = objc_msgSend_imageByApplyingParameters_(sparseNoAlpha, v196, v195);

            if (!v235)
            {
            }

            if (!v185)
            {
              FigDebugAssert3();
              goto LABEL_115;
            }
          }

          antialiasX = v25->_antialiasX;
          v240[0] = v185;
          v239[0] = @"inputTex";
          v239[1] = @"outputTex";
          v198 = v26[2](v26);
          v240[1] = v198;
          v240[2] = v236;
          v239[2] = @"_renderContext";
          v239[3] = @"_kernelScale";
          *&v199 = a12;
          v202 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v200, v201, v199);
          v240[3] = v202;
          v204 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v203, v240, v239, 4);
          v206 = objc_msgSend_imageByApplyingParameters_(antialiasX, v205, v204);

          if (v206)
          {
            antialiasY = v25->_antialiasY;
            v238[0] = v206;
            v237[0] = @"inputTex";
            v237[1] = @"outputTex";
            v208 = v26[2](v26);
            v238[1] = v208;
            v238[2] = v234;
            v237[2] = @"dynamic_params";
            v237[3] = @"_renderContext";
            v238[3] = v236;
            v237[4] = @"_kernelScale";
            *&v209 = a12;
            v212 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v210, v211, v209);
            v238[4] = v212;
            v214 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v213, v238, v237, 5);
            v120 = objc_msgSend_imageByApplyingParameters_(antialiasY, v215, v214);

            if (v120)
            {
              goto LABEL_99;
            }

            FigDebugAssert3();
          }

          else
          {
            FigDebugAssert3();
          }

          goto LABEL_115;
        }

        FigDebugAssert3();
      }

      else
      {
        FigDebugAssert3();
      }

      FigSignalErrorAtGM();
      goto LABEL_99;
    }

    FigDebugAssert3();
    goto LABEL_115;
  }

  syslog(3, "err error, (%s) at %s:%d", "[ApplyBlurmap applyBackgroundUsingConfig:inputBlurMap:inputAlpha:inputGainMap:inputImage:inputLuma:inputChroma:inputHalfRes1:inputHalfRes2:scale:coreImageRender:version:context:captureFolderMiscPath:]", "/Library/Caches/com.apple.xbs/Sources/CameraCapture/VideoProcessors/Portrait/CCPortrait/ApplyBlurmap.m", 2036);
LABEL_104:
  v231 = 0;
  v228 = 0;
  v234 = 0;
LABEL_116:
  v120 = 0;
LABEL_99:
  v216 = v120;

  _Block_object_dispose(v266, 8);
  _Block_object_dispose(&v268, 8);

  _Block_object_dispose(&v274, 8);

  return v216;
}

- (id)applyHairnetUsingConfig:(const rendering_config_params *)a3 hairnetParams:(hairnet_params *)a4 inputImage:(id)a5 inputBackBlurImage:(id)a6 inputBlurMap:(id)a7 inputAlpha:(id)a8 scale:(float)a9 coreImageRender:(BOOL)a10 version:(int)a11 context:(id)a12 captureFolderMiscPath:(id)a13
{
  v137 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a12;
  v24 = a13;
  v26 = objc_msgSend_imageWithCIImage_(UniImage, v25, v20);
  v28 = v26;
  if (!a10 || !v22)
  {
    v29 = v26;
    goto LABEL_6;
  }

  if (objc_msgSend_setOptions_isPrewarm_(self, v27, a3, 0))
  {
    v29 = 0;
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    sub_2956C9EF0();
  }

  v31 = v21;
  if (objc_msgSend_outputFormat(v31, v32, v33) == *MEMORY[0x29EDB91E8] || (v36 = objc_msgSend_outputFormat(v31, v34, v35), v135 = *MEMORY[0x29EDB9218], v36 == *MEMORY[0x29EDB9218]) || objc_msgSend_outputFormat(v31, v37, v38) == *MEMORY[0x29EDB91F0])
  {
  }

  else
  {
    v131 = objc_msgSend_outputFormat(v31, v39, v40);
    v134 = v31;
    v41 = *MEMORY[0x29EDB9210];

    v43 = v131 == v41;
    v31 = v134;
    if (!v43)
    {
      v132 = objc_msgSend_colorKernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v42, @"ccp_just_inpaint", v135);
      objc_msgSend_extent(v134, v44, v45);
      v47 = v46;
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v143 = v134;
      v129 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v54, &v143, 1);
      v136 = objc_msgSend_applyWithExtent_arguments_(v132, v55, v129, v47, v49, v51, v53);

      if (v136)
      {
        v127 = objc_msgSend_hairnetModelPath(self, v56, v57);
        v133 = objc_msgSend_cachedEspressoWrapper_(EspressoWrapper, v58, v127);
        if (v133)
        {
          v128 = v20;
          objc_msgSend_extent(v128, v59, v60);
          v125 = objc_msgSend_imageBySettingAlphaOneInExtent_(v128, v61, v62);

          v130 = objc_msgSend_imageByApplyingFilter_(v125, v63, @"CILinearToSRGBToneCurve");

          v126 = v22;
          v123 = v137;
          objc_msgSend_extent(v130, v64, v65);
          v121 = sub_2956986C4(v123, v66, v67, a3->bicubicDownsampleParamB, a3->bicubicDownsampleParamC);

          space = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F0]);
          v124 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v121, v68, space);

          CGColorSpaceRelease(space);
          v69 = ApplyHairnetProcessor(v124, v126, v130, v136, v133, a4, v24);
          v122 = objc_msgSend_imageByApplyingFilter_(v69, v70, @"CISRGBToneCurveToLinear");

          if (a3->lumaNoiseAmplitude <= 0.0)
          {
            v95 = v122;
          }

          else
          {
            addNoiseOnly = self->_addNoiseOnly;
            v142[0] = v122;
            v141[0] = @"inputTex";
            v141[1] = @"outputTex";
            spacea = objc_msgSend_blackImage(MEMORY[0x29EDB9178], v71, v72);
            objc_msgSend_extent(v122, v73, v74);
            v115 = objc_msgSend_imageByCroppingToRect_(spacea, v75, v76);
            v114 = objc_msgSend_imageWithCIImage_(UniImage, v77, v115);
            v142[1] = v114;
            v141[2] = @"inputLumaNoiseAmplitude";
            *&v78 = a3->lumaNoiseAmplitude;
            v81 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v79, v80, v78);
            v142[2] = v81;
            v141[3] = @"_kernelScale";
            *&v82 = a9;
            v85 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v83, v84, v82);
            v142[3] = v85;
            v87 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v86, v142, v141, 4);
            v117 = objc_msgSend_imageByApplyingParameters_(addNoiseOnly, v88, v87);

            v91 = objc_msgSend_image(v117, v89, v90);
            v139[0] = @"inputBackgroundImage";
            v139[1] = @"inputMaskImage";
            v31 = v134;
            v140[0] = v122;
            v140[1] = v136;
            v93 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v92, v140, v139, 2);
            spaceb = objc_msgSend_imageByApplyingFilter_withInputParameters_(v91, v94, @"CIBlendWithRedMask", v93);

            v95 = spaceb;
          }

          v96 = objc_msgSend_colorKernelWithName_(CoreImageOnlyLibrary, v71, @"ccp_copy_alpha");
          objc_msgSend_extent(v95, v97, v98);
          v100 = v99;
          v102 = v101;
          v104 = v103;
          v106 = v105;
          v138[0] = v95;
          v138[1] = v128;
          v108 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v107, v138, 2);
          v110 = objc_msgSend_applyWithExtent_arguments_(v96, v109, v108, v100, v102, v104, v106);
          v111 = v95;
          v112 = v110;

          v29 = objc_msgSend_imageWithCIImage_(UniImage, v113, v112);
        }

        else
        {
          v29 = v28;
        }

        goto LABEL_15;
      }
    }
  }

  v29 = v28;
LABEL_15:

LABEL_6:

  return v29;
}

- (id)applyForegroundUsingConfig:(const rendering_config_params *)a3 image:(id)a4 inputBlurMap:(id)a5 inputAlpha:(id)a6 inputGainMap:(id)a7 inputImage:(id)a8 inputLuma:(id)a9 inputChroma:(id)a10 inputIntermediate:(id)a11 inputHalfRes1:(id)a12 inputHalfRes2:(id)a13 inputHalfResRG:(id)a14 outputLuma:(id)a15 outputChroma:(id)a16 scale:(float)a17 coreImageRender:(BOOL)a18 version:(int)a19 context:(id)a20 captureFolderMiscPath:(id)a21
{
  v188 = a4;
  v26 = a5;
  v190 = a6;
  v27 = a9;
  v189 = a10;
  v28 = a14;
  v29 = a15;
  v30 = a16;
  v31 = a20;
  if (objc_msgSend_setOptions_isPrewarm_(self, v32, a3, 0))
  {
    v35 = 0;
    v36 = v188;
    v37 = v189;
    goto LABEL_48;
  }

  v175 = a3;
  memset(v210, 0, 22);
  objc_msgSend_computeDynamicParams(self, v33, v34);
  v183 = objc_msgSend_dataWithBytes_length_(MEMORY[0x29EDB8DA0], v38, v210, 22);
  v186 = objc_alloc_init(UniTextureView);
  v39 = objc_opt_new();
  v42 = 0x29EDB8000;
  v182 = v29;
  v184 = v30;
  v185 = v27;
  v187 = v31;
  v179 = v26;
  v180 = v28;
  if (self->_config_params.fgNRings < 1)
  {
    v48 = v39;
    v43 = v188;
  }

  else
  {
    v177 = v39;
    v43 = v188;
    if (a18)
    {
      objc_msgSend_extent(v26, v40, v41);
      v47 = v46;
    }

    else
    {
      v47 = objc_msgSend_width(v26, v40, v41);
    }

    v49 = (ceilf(self->_config_params.maxBlur * v47) + 1.0);
    if (a18)
    {
      objc_msgSend_extent(v26, v44, v45);
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = self->_config_params.fgAARadius * a17;
      v176 = v58 > 0.0;
      v59 = MEMORY[0x29EDB9178];
      v62 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v60, v61);
      v64 = objc_msgSend_imageWithColor_(v59, v63, v62);

      v67 = objc_msgSend_imageByCroppingToRect_(v64, v65, v66, v51, v53, v55, v57);

      v68 = [UniFakeImage alloc];
      v70 = objc_msgSend_initWithCIImage_format_(v68, v69, v67, 71);
      v209[0] = v70;
      v209[1] = v70;
      v72 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v71, v209, 2);
    }

    else
    {
      v55 = objc_msgSend_width(v26, v44, v45);
      v57 = objc_msgSend_height(v26, v74, v75);
      v58 = self->_config_params.fgAARadius * a17;
      v176 = v58 > 0.0;
      if (v58 <= 0.0)
      {
        v76 = 1;
      }

      else
      {
        v76 = 2;
      }

      v72 = tmpTexturesFromTexture(v26, v76, 71);
      v53 = 0.0;
      v51 = 0.0;
    }

    v77 = objc_msgSend_erodeAndDilate_radius_coreImageRender_context_extent_pixelFormat_(self, v73, v26, v49, a18, v31, 10, v51, v53, v55, v57);
    sparseNoAlphaRayFg = self->_sparseNoAlphaRayFg;
    v208[0] = v183;
    v207[0] = @"dynamic_params";
    v207[1] = @"segmentStepLUT";
    v80 = objc_msgSend_objectAtIndexedSubscript_(self->_fgSegmentArray, v79, 0);
    v208[1] = v80;
    v207[2] = @"segmentBaseVecLUT";
    v82 = objc_msgSend_objectAtIndexedSubscript_(self->_fgSegmentArray, v81, 1);
    v208[2] = v82;
    v208[3] = v188;
    v207[3] = @"inputTex";
    v207[4] = @"signedBlurMapTex";
    v208[4] = v26;
    v207[5] = @"erodedBlurTex";
    v84 = objc_msgSend_objectAtIndexedSubscript_(v77, v83, 0);
    v208[5] = v84;
    v207[6] = @"dilatedBlurTex";
    v178 = v77;
    v86 = objc_msgSend_objectAtIndexedSubscript_(v77, v85, 1);
    v208[6] = v86;
    v207[7] = @"outputTex";
    v181 = v72;
    v88 = objc_msgSend_objectAtIndexedSubscript_(v72, v87, 1);
    v207[8] = @"_renderContext";
    v208[7] = v88;
    v208[8] = v31;
    v90 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v89, v208, v207, 9);
    v92 = objc_msgSend_imageByApplyingParameters_(sparseNoAlphaRayFg, v91, v90);

    if (!v92)
    {
      v118 = 2477;
      goto LABEL_59;
    }

    if (v176)
    {
      antialiasRGBAX = self->_antialiasRGBAX;
      v206[0] = v92;
      v205[0] = @"inputTex";
      v205[1] = @"outputTex";
      v95 = objc_msgSend_objectAtIndexedSubscript_(v181, v93, 0);
      v206[1] = v95;
      v206[2] = v31;
      v205[2] = @"_renderContext";
      v205[3] = @"inputBlurRadius";
      *&v96 = v58;
      v99 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v97, v98, v96);
      v206[3] = v99;
      v101 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v100, v206, v205, 4);
      v103 = objc_msgSend_imageByApplyingParameters_(antialiasRGBAX, v102, v101);

      if (!v103)
      {
        v118 = 2488;
        goto LABEL_59;
      }

      antialiasRGBAY = self->_antialiasRGBAY;
      v204[0] = v103;
      v203[0] = @"inputTex";
      v203[1] = @"outputTex";
      v106 = objc_msgSend_objectAtIndexedSubscript_(v181, v104, 1);
      v204[1] = v106;
      v204[2] = v183;
      v203[2] = @"dynamic_params";
      v203[3] = @"_renderContext";
      v204[3] = v31;
      v203[4] = @"_kernelScale";
      *&v107 = a17;
      v110 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v108, v109, v107);
      v204[4] = v110;
      v203[5] = @"inputBlurRadius";
      *&v111 = v58;
      v114 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v112, v113, v111);
      v204[5] = v114;
      v116 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v115, v204, v203, 6);
      v48 = objc_msgSend_imageByApplyingParameters_(antialiasRGBAY, v117, v116);

      if (!v48)
      {
        v118 = 2498;
LABEL_59:
        v26 = v179;
        v28 = v180;
        v30 = v184;
        v27 = v185;
        v37 = v189;
        v29 = v182;
        sub_2956CA038(v118, v178);
        v48 = v181;
        goto LABEL_47;
      }
    }

    else
    {
      addNoiseOnly = self->_addNoiseOnly;
      v202[0] = v92;
      v201[0] = @"inputTex";
      v201[1] = @"outputTex";
      v120 = objc_msgSend_objectAtIndexedSubscript_(v181, v93, 0);
      v202[1] = v120;
      v201[2] = @"inputLumaNoiseAmplitude";
      _H0 = WORD1(v210[2]);
      __asm { FCVT            S0, H0 }

      v129 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v127, v128, _D0);
      v202[2] = v129;
      v202[3] = v31;
      v201[3] = @"_renderContext";
      v201[4] = @"_kernelScale";
      *&v130 = a17;
      v133 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v131, v132, v130);
      v202[4] = v133;
      v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v134, v202, v201, 5);
      v48 = objc_msgSend_imageByApplyingParameters_(addNoiseOnly, v136, v135);

      if (!v48)
      {
        v118 = 2507;
        goto LABEL_59;
      }
    }

    v42 = 0x29EDB8000uLL;
  }

  v199[0] = @"inputImage";
  v199[1] = @"_renderContext";
  v200[0] = v43;
  v200[1] = v187;
  v199[2] = @"desiredFormat";
  v200[2] = &unk_2A1C949A8;
  v137 = objc_msgSend_dictionaryWithObjects_forKeys_count_(*(v42 + 3520), v40, v200, v199, 3);
  v139 = objc_msgSend_imageByApplyingParameters_(v186, v138, v137);

  if (!v139)
  {
    sub_2956C9FB0();
    v43 = 0;
    v26 = v179;
    v28 = v180;
    v27 = v185;
    v37 = v189;
LABEL_62:
    v29 = v182;
    v30 = v184;
    goto LABEL_47;
  }

  if (self->_config_params.fgNRings <= 0)
  {
    v143 = v190;
    if (v190)
    {
      v144 = v184;
      if (v175->alphaGain <= 0.0)
      {
        v143 = 0;
      }

      else
      {
        v143 = v190;
        if (v175->alphaEpsilon >= 1.0)
        {
          v143 = 0;
        }
      }
    }

    else
    {
      v144 = v184;
    }

    v141 = v143;
    v156 = sub_295696FA8(v139);
    v157 = sub_295696FA8(v144);
    yuv1 = self->_yuv1;
    v198[0] = v139;
    v197[0] = @"blurredTex";
    v197[1] = @"blurredScale";
    v163 = objc_msgSend_numberWithDouble_(MEMORY[0x29EDBA070], v159, v160, v156 / v157);
    v198[1] = v163;
    v198[2] = v185;
    v197[2] = @"inputLumaTex";
    v197[3] = @"inputChromaTex";
    v198[3] = v189;
    v198[4] = v180;
    v197[4] = @"outputLumaTex";
    v197[5] = @"outputChromaTex";
    v197[6] = @"inputAlphaTex";
    v164 = v141;
    v198[5] = v144;
    if (!v141)
    {
      v164 = objc_msgSend_null(MEMORY[0x29EDB8E28], v161, v162);
    }

    v197[7] = @"_renderContext";
    v198[6] = v164;
    v198[7] = v187;
    v165 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v161, v198, v197, 8);
    v167 = objc_msgSend_imageByApplyingParameters_(yuv1, v166, v165);

    if (!v141)
    {
    }

    v27 = v185;
    if (v167)
    {
      yuv2 = self->_yuv2;
      v195[0] = @"filteredLumaTex";
      v195[1] = @"inputLumaTex";
      v196[0] = v167;
      v196[1] = v185;
      v195[2] = @"outputLumaTex";
      v195[3] = @"_renderContext";
      v29 = v182;
      v196[2] = v182;
      v196[3] = v187;
      v170 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v168, v196, v195, 4);
      v43 = objc_msgSend_imageByApplyingParameters_(yuv2, v171, v170);

      if (v43)
      {
        v26 = v179;
        v28 = v180;
        v37 = v189;
        v30 = v184;
        goto LABEL_46;
      }

      v174 = 2553;
      v26 = v179;
      v28 = v180;
      v37 = v189;
    }

    else
    {
      v174 = 2536;
      v26 = v179;
      v28 = v180;
      v37 = v189;
      v29 = v182;
    }

    v30 = v184;
    sub_2956C9F1C(v174, v141);
    v43 = 0;
    goto LABEL_47;
  }

  if (a18)
  {
    v141 = 0;
    v142 = v182;
  }

  else
  {
    v145 = [UniRunInfo alloc];
    v142 = v182;
    v147 = objc_msgSend_imageWithMTLTexture_(UniImage, v146, v182);
    v141 = objc_msgSend_initWithImageDiv2_(v145, v148, v147);
  }

  blendRaytraced = self->_blendRaytraced;
  v193[0] = @"stockRenderTex";
  v193[1] = @"raytracedRenderTex";
  v194[0] = v139;
  v194[1] = v48;
  v193[2] = @"inputLumaTex";
  v193[3] = @"inputChromaTex";
  v37 = v189;
  v194[2] = v185;
  v194[3] = v189;
  v193[4] = @"outputLumaTex";
  v193[5] = @"outputChromaTex";
  v194[4] = v142;
  v194[5] = v184;
  v193[6] = @"_renderContext";
  v194[6] = v187;
  v150 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v140, v194, v193, 7);
  v43 = objc_msgSend_imageByApplyingParameters_runInfo_(blendRaytraced, v151, v150, v141);

  if (!v43)
  {
    v173 = 2573;
LABEL_61:
    v26 = v179;
    v28 = v180;
    sub_2956C9F1C(v173, v141);
    v43 = 0;
    v27 = v185;
    goto LABEL_62;
  }

  if (!a18)
  {
    v26 = v179;
    v27 = v185;
    goto LABEL_36;
  }

  v191[0] = @"inputImage";
  v191[1] = @"_renderContext";
  v192[0] = v43;
  v192[1] = v187;
  v191[2] = @"desiredFormat";
  v192[2] = &unk_2A1C949A8;
  v153 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x29EDB8DC0], v152, v192, v191, 3);
  v155 = objc_msgSend_imageByApplyingParameters_(v186, v154, v153);

  v27 = v185;
  if (!v155)
  {
    v173 = 2580;
    goto LABEL_61;
  }

  v43 = v155;
  v26 = v179;
LABEL_36:
  v28 = v180;
  v29 = v182;
  v30 = v184;
LABEL_46:

LABEL_47:
  v36 = v43;

  v35 = v36;
  v31 = v187;
LABEL_48:

  return v35;
}

- (int)enqueueRenderingUsingRenderingConfig:(const rendering_config_params *)a3 inputBlurMap:(id)a4 inputAlpha:(id)a5 inputGainMap:(id)a6 inputLuma:(id)a7 inputChroma:(id)a8 inputIntermediate:(id)a9 inputHalfRes1:(id)a10 inputHalfRes2:(id)a11 inputHalfResRG:(id)a12 outputLuma:(id)a13 outputChroma:(id)a14 scale:(float)a15 version:(int)a16 context:(id)a17 captureFolderMiscPath:(id)a18
{
  v20 = a18;
  v21 = a17;
  v45 = a14;
  v42 = a13;
  v39 = a12;
  v22 = a11;
  v23 = a10;
  v34 = a9;
  v24 = a8;
  v25 = a7;
  v36 = a6;
  v38 = a5;
  v41 = a4;
  *&v26 = a15;
  v44 = objc_msgSend_applyBackgroundUsingConfig_inputBlurMap_inputAlpha_inputGainMap_inputImage_inputLuma_inputChroma_inputHalfRes1_inputHalfRes2_scale_coreImageRender_version_context_captureFolderMiscPath_(self, v27, a3, v41, v38, v36, 0, v25, v26, v24, v23, v22, 0, v21, v20);
  *&v28 = a15;
  v30 = objc_msgSend_applyForegroundUsingConfig_image_inputBlurMap_inputAlpha_inputGainMap_inputImage_inputLuma_inputChroma_inputIntermediate_inputHalfRes1_inputHalfRes2_inputHalfResRG_outputLuma_outputChroma_scale_coreImageRender_version_context_captureFolderMiscPath_(self, v29, a3, v44, v41, v38, v36, 0, v28, v25, v24, v34, v23, v22, v39, v42, v45, 0, v21, v20);

  objc_msgSend_metalRender_waitUntilScheduled_waitUntilCompleted_(v30, v31, self->_mtlQueue, 0, 0);
  if (v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = -1;
  }

  return v32;
}

- (int)enqueueRenderingUsingArgs:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc_init(UniContext);
  if ((objc_msgSend_validateForMetal(v4, v7, v8) & 1) == 0)
  {
    sub_2956CA0CC();
LABEL_12:
    v81 = -1;
    goto LABEL_9;
  }

  v11 = objc_msgSend_metadata(v4, v9, v10);
  RenderingParametersFromMetaData = objc_msgSend_getRenderingParametersFromMetaData_(SDOFMetadata, v12, v11);

  if (!RenderingParametersFromMetaData)
  {
    sub_2956CA154();
    goto LABEL_12;
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  memset(v95, 0, sizeof(v95));
  objc_msgSend_simulatedAperture(v4, v14, v15);
  v17 = v16;
  objc_msgSend_lumaNoiseAmplitude(v4, v18, v19);
  v21 = v20;
  objc_msgSend_maxBlur(v4, v22, v23);
  LODWORD(v25) = v24;
  LODWORD(v26) = v17;
  LODWORD(v27) = v21;
  objc_msgSend_loadRenderingParams_simulatedAperture_lumaNoiseAmplitude_maxBlur_(SDOFMetadata, v28, RenderingParametersFromMetaData, v26, v27, v25);
  objc_msgSend_simulatedAperture(v4, v29, v30);
  v32 = v31;
  objc_msgSend_inputScale(v4, v33, v34);
  v38 = fminf(fmaxf(roundf(sqrtf(v37) * fminf(fmaxf(roundf((sqrtf(0.0) * 0) / sqrtf(v32)), 0), 0)), 0), 0);
  LODWORD(v96) = v38;
  v91 = self;
  if (qword_2A18BA2D0 != -1)
  {
    sub_2956CA12C();
  }

  if (v38 >= dword_2A1388808)
  {
    v39 = dword_2A1388808;
  }

  else
  {
    v39 = v38;
  }

  LODWORD(v96) = v39;
  v94 = objc_msgSend_inputBlurMap(v4, v35, v36);
  v93 = objc_msgSend_inputAlpha(v4, v40, v41);
  v88 = objc_msgSend_inputGainMap(v4, v42, v43);
  v87 = objc_msgSend_inputImageLuma(v4, v44, v45);
  v85 = objc_msgSend_inputImageChroma(v4, v46, v47);
  v90 = objc_msgSend_intermediates(v4, v48, v49);
  v92 = objc_msgSend_inputIntermediateTex(v90, v50, v51);
  v89 = objc_msgSend_intermediates(v4, v52, v53);
  v83 = objc_msgSend_inputHalfResTex1(v89, v54, v55);
  v86 = objc_msgSend_intermediates(v4, v56, v57);
  v60 = objc_msgSend_inputHalfResTex2(v86, v58, v59);
  v84 = objc_msgSend_intermediates(v4, v61, v62);
  v65 = objc_msgSend_inputHalfResRGTex(v84, v63, v64);
  v68 = objc_msgSend_outputImageLuma(v4, v66, v67);
  v71 = objc_msgSend_outputImageChroma(v4, v69, v70);
  RenderingVersion = objc_msgSend_getRenderingVersion_(SDOFMetadata, v72, RenderingParametersFromMetaData);
  v76 = objc_msgSend_captureFolderMiscPath(v4, v74, v75);
  LODWORD(v77) = 1.0;
  objc_msgSend_enqueueRenderingUsingRenderingConfig_inputBlurMap_inputAlpha_inputGainMap_inputLuma_inputChroma_inputIntermediate_inputHalfRes1_inputHalfRes2_inputHalfResRG_outputLuma_outputChroma_scale_version_context_captureFolderMiscPath_(v91, v78, v95, v94, v93, v88, v87, v85, v77, v92, v83, v60, v65, v68, v71, RenderingVersion, v6, v76);

  free(RenderingParametersFromMetaData);
  objc_msgSend_empty(v6, v79, v80);
  v81 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v5);
  return v81;
}

- (BOOL)gainMapNeedsGamma22:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = objc_msgSend_properties(v3, v4, v5);
      v8 = v6;
      if (v6)
      {
        v9 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x29EDBB1C0]);

        if (v9)
        {
          v14 = 0;
          v10 = sub_29569B374(v9, @"HDRGainMap:HDRGainMapVersion", &v14);
          v11 = v14 >= 0x20000 && v10;
          v15 = 0;
          v12 = sub_29569B374(v9, @"HDRToneMap:Version", &v15);
          LOBYTE(v9) = v11 || v12 && v15 > 0;
        }

        goto LABEL_12;
      }
    }

    else
    {
      v8 = 0;
    }

    LOBYTE(v9) = 0;
LABEL_12:

    goto LABEL_13;
  }

  LOBYTE(v9) = 0;
LABEL_13:

  return v9;
}

- (id)backgroundImageUsingArgs:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(UniContext);
  if ((objc_msgSend_validateForCoreImage(v3, v6, v7) & 1) == 0)
  {
    sub_2956CA1B4();
    v8 = 0;
    v50 = 0;
    RenderingParametersFromMetaData = 0;
LABEL_14:
    v74 = 0;
    goto LABEL_6;
  }

  v8 = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F0]);
  v11 = objc_msgSend_metadata(v3, v9, v10);
  RenderingParametersFromMetaData = objc_msgSend_getRenderingParametersFromMetaData_(SDOFMetadata, v12, v11);

  if (!RenderingParametersFromMetaData)
  {
    sub_2956CA214();
    v50 = 0;
    goto LABEL_14;
  }

  v86 = v8;
  v87 = v4;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  memset(v89, 0, sizeof(v89));
  objc_msgSend_simulatedAperture(v3, v14, v15);
  v17 = v16;
  objc_msgSend_lumaNoiseAmplitude(v3, v18, v19);
  v21 = v20;
  objc_msgSend_maxBlur(v3, v22, v23);
  LODWORD(v25) = v24;
  LODWORD(v26) = v17;
  LODWORD(v27) = v21;
  objc_msgSend_loadRenderingParams_simulatedAperture_lumaNoiseAmplitude_maxBlur_(SDOFMetadata, v28, RenderingParametersFromMetaData, v26, v27, v25);
  objc_msgSend_getRenderingVersion_(SDOFMetadata, v29, RenderingParametersFromMetaData);
  objc_msgSend_simulatedAperture(v3, v30, v31);
  v33 = v32;
  objc_msgSend_inputScale(v3, v34, v35);
  LODWORD(v90) = fminf(fmaxf(roundf(sqrtf(v36) * fminf(fmaxf(roundf((sqrtf(0.0) * 0) / sqrtf(v33)), 0), 0)), 0), 0);
  free(RenderingParametersFromMetaData);
  v37 = MEMORY[0x29EDB9178];
  v40 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v38, v39);
  RenderingParametersFromMetaData = objc_msgSend_imageWithColor_(v37, v41, v40);

  v44 = objc_msgSend_inputBlurMap(v3, v42, v43);
  v45 = sub_29569A5E0(v44);
  v48 = objc_msgSend_imageByCroppingToRect_(RenderingParametersFromMetaData, v46, v47, v45);
  v50 = objc_msgSend_imageWithCIImage_(UniImage, v49, v48);

  v53 = objc_msgSend_inputGainMap(v3, v51, v52);
  if (objc_msgSend_gainMapNeedsGamma22_(self, v54, v53))
  {
    v57 = objc_msgSend_imageByApplyingFilter_(v53, v55, @"CISRGBToneCurveToLinear");

    v53 = v57;
  }

  v58 = objc_msgSend_inputBlurMap(v3, v55, v56);
  v61 = objc_msgSend_inputAlpha(v3, v59, v60);
  v64 = objc_msgSend_inputImage(v3, v62, v63);
  objc_msgSend_inputScale(v3, v65, v66);
  v68 = v67;
  v71 = objc_msgSend_captureFolderMiscPath(v3, v69, v70);
  LODWORD(v72) = v68;
  v74 = objc_msgSend_applyBackgroundUsingConfig_inputBlurMap_inputAlpha_inputGainMap_inputImage_inputLuma_inputChroma_inputHalfRes1_inputHalfRes2_scale_coreImageRender_version_context_captureFolderMiscPath_(self, v73, v89, v58, v61, v53, v64, 0, v72, 0, v50, v50, 1, v5, v71);

  objc_msgSend_empty(v5, v75, v76);
  v8 = v86;
  v4 = v87;
LABEL_6:

  objc_autoreleasePoolPop(v4);
  CGColorSpaceRelease(v8);
  v79 = objc_msgSend_image(v74, v77, v78);
  v82 = v79;
  if (v79)
  {
    v83 = v79;
  }

  else
  {
    v83 = objc_msgSend_emptyImage(MEMORY[0x29EDB9178], v80, v81);
  }

  v84 = v83;

  return v84;
}

- (id)imageUsingArgs:(id)a3 backgroundBlur:(id)a4
{
  v6 = a3;
  v200 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc_init(UniContext);
  if ((objc_msgSend_validateForCoreImage(v6, v9, v10) & 1) == 0)
  {
    sub_2956CA274(v8, v7);
    v166 = 0;
    v199 = 0;
    v164 = 0;
    v173 = 0;
    v177 = 0;
    v201 = 0;
    v202 = 0;
    v163 = 0;
LABEL_9:
    objc_msgSend_inputImage(v6, v178, v179);
    a = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    goto LABEL_10;
  }

  v11 = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F0]);
  v14 = objc_msgSend_inputImage(v6, v12, v13);
  v201 = objc_msgSend_inputImageLuma(v6, v15, v16);
  v202 = objc_msgSend_inputImageChroma(v6, v17, v18);
  v21 = objc_msgSend_inputGainMap(v6, v19, v20);
  context = v7;
  if (objc_msgSend_gainMapNeedsGamma22_(self, v22, v21))
  {
    v25 = objc_msgSend_imageByApplyingFilter_(v21, v23, @"CISRGBToneCurveToLinear");

    v21 = v25;
  }

  v187 = v21;
  v188 = v11;
  v197 = v8;
  v186 = v14;
  if (v14)
  {
    v26 = objc_msgSend_imageYCC444_matrix_fullRange_colorSpace_(MEMORY[0x29EDB9178], v23, v14, 601, 1, v11);
    objc_msgSend_extent(v26, v27, v28);
    v30 = v29;
    v198 = v29;
    v32 = v31;
    v193 = v33;
    v195 = v31;
    v34 = v33;
    v36 = v35;
    v191 = v35;
    v38 = objc_msgSend_colorKernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v37, @"ccp_chroma", *MEMORY[0x29EDB9210]);
    v40 = objc_msgSend_colorKernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v39, @"ccp_luma", *MEMORY[0x29EDB9218]);
    memset(&v218, 0, sizeof(v218));
    CGAffineTransformMakeScale(&v218, 0.5, 0.5);
    v217 = v218;
    v220.origin.x = v30;
    v220.origin.y = v32;
    v220.size.width = v34;
    v220.size.height = v36;
    v221 = CGRectApplyAffineTransform(v220, &v217);
    v222 = CGRectIntegral(v221);
    x = v222.origin.x;
    y = v222.origin.y;
    width = v222.size.width;
    height = v222.size.height;
    v47 = objc_msgSend_imageByClampingToExtent(v26, v45, v46);
    v217 = v218;
    v49 = objc_msgSend_imageByApplyingTransform_(v47, v48, &v217);

    objc_msgSend_extent(v49, v50, v51);
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v216 = v49;
    v61 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v60, &v216, 1);
    v63 = objc_msgSend_applyWithExtent_arguments_(v38, v62, v61, v53, v55, v57, v59);

    v202 = objc_msgSend_imageByCroppingToRect_(v63, v64, v65, x, y, width, height);

    v215 = v26;
    v67 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v66, &v215, 1);
    v69 = objc_msgSend_applyWithExtent_arguments_(v40, v68, v67, v198, v195, v193, v191);

    v201 = v69;
  }

  v70 = objc_msgSend_metadata(v6, v23, v24);
  RenderingParametersFromMetaData = objc_msgSend_getRenderingParametersFromMetaData_(SDOFMetadata, v71, v70);

  v185 = v6;
  if (RenderingParametersFromMetaData)
  {
    v196 = self;
    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    v209 = 0u;
    v210 = 0u;
    v207 = 0u;
    v208 = 0u;
    v205 = 0u;
    v206 = 0u;
    memset(v204, 0, sizeof(v204));
    objc_msgSend_simulatedAperture(v6, v73, v74);
    v76 = v75;
    objc_msgSend_lumaNoiseAmplitude(v6, v77, v78);
    v80 = v79;
    objc_msgSend_maxBlur(v6, v81, v82);
    LODWORD(v84) = v83;
    LODWORD(v85) = v76;
    LODWORD(v86) = v80;
    objc_msgSend_loadRenderingParams_simulatedAperture_lumaNoiseAmplitude_maxBlur_(SDOFMetadata, v87, RenderingParametersFromMetaData, v85, v86, v84);
    v88 = RenderingParametersFromMetaData;
    objc_msgSend_getRenderingVersion_(SDOFMetadata, v89, RenderingParametersFromMetaData);
    objc_msgSend_simulatedAperture(v6, v90, v91);
    v93 = v92;
    objc_msgSend_inputScale(v6, v94, v95);
    LODWORD(v205) = fminf(fmaxf(roundf(sqrtf(v96) * fminf(fmaxf(roundf((sqrtf(0.0) * 0) / sqrtf(v93)), 0), 0)), 0), 0);
    v97 = MEMORY[0x29EDB9178];
    v100 = objc_msgSend_blackColor(MEMORY[0x29EDB9158], v98, v99);
    v102 = objc_msgSend_imageWithColor_(v97, v101, v100);

    objc_msgSend_extent(v202, v103, v104);
    v107 = objc_msgSend_imageByCroppingToRect_(v102, v105, v106);
    v194 = objc_msgSend_imageWithCIImage_(UniImage, v108, v107);

    objc_msgSend_extent(v201, v109, v110);
    v184 = v102;
    v113 = objc_msgSend_imageByCroppingToRect_(v102, v111, v112);
    v199 = objc_msgSend_imageWithCIImage_(UniImage, v114, v113);

    v117 = objc_msgSend_inputBlurMap(v6, v115, v116);
    v118 = sub_29569A5E0(v117);
    v121 = objc_msgSend_imageByCroppingToRect_(v102, v119, v120, v118);
    v192 = objc_msgSend_imageWithCIImage_(UniImage, v122, v121);

    v183 = objc_msgSend_imageWithCIImage_(UniImage, v123, v201);
    v190 = objc_msgSend_imageWithCIImage_(UniImage, v124, v202);
    memset(v203, 0, sizeof(v203));
    objc_msgSend_loadHairnetParams_(SDOFMetadata, v125, v88);
    v128 = objc_msgSend_inputBlurMap(v6, v126, v127);
    v131 = objc_msgSend_inputAlpha(v6, v129, v130);
    objc_msgSend_inputScale(v6, v132, v133);
    v135 = v134;
    v138 = objc_msgSend_captureFolderMiscPath(v6, v136, v137);
    LODWORD(v139) = v135;
    v141 = objc_msgSend_applyHairnetUsingConfig_hairnetParams_inputImage_inputBackBlurImage_inputBlurMap_inputAlpha_scale_coreImageRender_version_context_captureFolderMiscPath_(v196, v140, v204, v203, v186, v200, v128, v131, v139, 1, v197, v138);

    free(v88);
    v142 = v141;
    v182 = objc_msgSend_image(v141, v143, v144);
    v181 = objc_msgSend_inputBlurMap(v6, v145, v146);
    v149 = objc_msgSend_inputAlpha(v6, v147, v148);
    v152 = objc_msgSend_inputImage(v6, v150, v151);
    objc_msgSend_inputScale(v6, v153, v154);
    v156 = v155;
    v159 = objc_msgSend_captureFolderMiscPath(v6, v157, v158);
    LODWORD(v160) = v156;
    v162 = objc_msgSend_applyForegroundUsingConfig_image_inputBlurMap_inputAlpha_inputGainMap_inputImage_inputLuma_inputChroma_inputIntermediate_inputHalfRes1_inputHalfRes2_inputHalfResRG_outputLuma_outputChroma_scale_coreImageRender_version_context_captureFolderMiscPath_(v196, v161, v204, v182, v181, v149, v187, v152, v160, v183, v190, v192, v192, v192, v194, v199, v194, 1, v197, v159);

    v163 = v186;
    v164 = v194;
    v165 = v197;

    v166 = v192;
    v169 = objc_msgSend_image(v162, v167, v168);
    v170 = v188;
    objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v169, v171, v188);
    a = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v173 = v184;
    objc_msgSend_empty(v197, v174, v175);

    v176 = v187;
    v177 = v162;
  }

  else
  {
    sub_2956CA304(&v218);
    v166 = 0;
    v199 = 0;
    v164 = 0;
    v173 = 0;
    v177 = 0;
    a = v218.a;
    v165 = v197;
    v176 = v187;
    v170 = v188;
    v163 = v186;
  }

  objc_autoreleasePoolPop(context);
  CGColorSpaceRelease(v170);
  v6 = v185;
  if (a == 0.0)
  {
    goto LABEL_9;
  }

LABEL_10:

  return *&a;
}

- (id)addChromaNoise:(id)a3
{
  v3 = *MEMORY[0x29EDB9208];
  v4 = a3;
  v6 = objc_msgSend_colorKernelWithName_andOutputFormat_(CoreImageOnlyLibrary, v5, @"addChromaNoise", v3);
  v8 = objc_msgSend_filterWithName_(MEMORY[0x29EDB9170], v7, @"CIRandomGenerator");
  v11 = objc_msgSend_outputImage(v8, v9, v10);

  v12 = CGColorSpaceCreateWithName(*MEMORY[0x29EDB90F0]);
  v14 = objc_msgSend_imageByColorMatchingWorkingSpaceToColorSpace_(v4, v13, v12);

  objc_msgSend_extent(v14, v15, v16);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v35[0] = v14;
  v35[1] = v11;
  LODWORD(v17) = 998244352;
  v27 = objc_msgSend_numberWithFloat_(MEMORY[0x29EDBA070], v25, v26, v17);
  v35[2] = v27;
  v29 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x29EDB8D80], v28, v35, 3);
  v31 = objc_msgSend_applyWithExtent_arguments_(v6, v30, v29, v18, v20, v22, v24);

  v33 = objc_msgSend_imageByColorMatchingColorSpaceToWorkingSpace_(v31, v32, v12);

  CGColorSpaceRelease(v12);

  return v33;
}

- (id)imageUsingArgs:(id)a3
{
  v4 = a3;
  if (objc_msgSend_validateForCoreImage(v4, v5, v6))
  {
    v8 = objc_msgSend_backgroundImageUsingArgs_(self, v7, v4);
    v10 = objc_msgSend_imageUsingArgs_backgroundBlur_(self, v9, v4, v8);
    v12 = objc_msgSend_addChromaNoise_(self, v11, v10);

    if (v12)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_2956CA384();
    v8 = 0;
  }

  v12 = objc_msgSend_inputImage(v4, v13, v14);
LABEL_4:

  return v12;
}

@end