@interface SDOFMetadata
+ (BOOL)getUnifiedRenderingForegroundBlurEnabled:(id)a3;
+ (BOOL)hasValidHeader:(void *)a3;
+ (blurmap_refinement_params)loadBlurmapRefinementParams:(SEL)a3 apertureScaling:(void *)a4 inputScale:(float)a5 focusWindow:(float)a6 segmentationFusionParams:(CGRect)a7;
+ (blurmap_smoothing_params)loadBlurmapSmoothingParams:(SEL)a3;
+ (crisp_hair_params)loadCrispHairParams:(SEL)a3;
+ (disparity_refinement_params)loadDisparityRefinementParams:(SEL)a3;
+ (face_mask_params)loadFaceMaskParams:(SEL)a3 facePoints:(void *)a4 simulatedAperture:(CGPoint *)a5 aspectRatio:(float)a6 maxBlur:(float)a7;
+ (float)defaultSimulatedAperture:(void *)a3;
+ (float)maxSimulatedAperture:(void *)a3;
+ (float)minSimulatedAperture:(void *)a3;
+ (hairnet_params)loadHairnetParams:(SEL)a3;
+ (int)disparityRefinementVersion:(void *)a3;
+ (int)getEffectiveVersion:(FigDepthBlurEffectRenderingParametersHeader *)a3;
+ (int)getMinorRenderingVersion:(void *)a3;
+ (int)getRenderingVersion:(void *)a3;
+ (int)loadMattingParams:(void *)a3 config:(id *)a4;
+ (rendering_config_params)loadRenderingParams:(SEL)a3 simulatedAperture:(void *)a4 lumaNoiseAmplitude:(float)a5 maxBlur:(float)a6;
+ (segmentation_fusion_params)loadSegmentationFusionParams:(SEL)a3 simulatedAperture:(void *)a4 maxBlur:(float)a5;
+ (simple_lens_model_params)loadLensModelParams:(SEL)a3 simulatedAperture:(void *)a4 focusWindow:(float)a5 frameNormalizedFocalLength:(CGRect)a6 maxBlur:(float)a7;
+ (void)getRenderingParametersFromMetaData:(id)a3;
@end

@implementation SDOFMetadata

+ (BOOL)getUnifiedRenderingForegroundBlurEnabled:(id)a3
{
  v4 = a3;
  v7 = objc_msgSend_bytes(a3, v5, v6);
  v8 = objc_opt_class();
  hasValidHeader = objc_msgSend_hasValidHeader_(v8, v9, v7);
  if (hasValidHeader)
  {
    if (*(v7 + 4) >= 6)
    {
      v12 = 0;
      sub_2956ADBB0(v7, 0x4B0u, 2u, &v12);
      LOBYTE(hasValidHeader) = v12 > 0;
    }

    else
    {
      LOBYTE(hasValidHeader) = 0;
    }
  }

  return hasValidHeader;
}

+ (int)getEffectiveVersion:(FigDepthBlurEffectRenderingParametersHeader *)a3
{
  if (!a3)
  {
    return 0;
  }

  var1 = a3->var1;
  if (var1 >= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = a3->var1;
  }

  if (var1 >= 0x10000)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

+ (BOOL)hasValidHeader:(void *)a3
{
  if (!a3)
  {
    return 0;
  }

  if (*a3 != 1145980242 || *(a3 + 1) > 9)
  {
    return 0;
  }

  EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a2, a3);
  if (EffectiveVersion != 4)
  {
    return EffectiveVersion == 3 && *(a3 + 2) == 472;
  }

  result = 0;
  v6 = *(a3 + 2);
  if (v6 >= 0x10 && (v6 & 7) == 0)
  {
    return 1;
  }

  return result;
}

+ (int)getRenderingVersion:(void *)a3
{
  v4 = objc_opt_class();
  if (objc_msgSend_hasValidHeader_(v4, v5, a3))
  {
    return *(a3 + 1);
  }

  else
  {
    return -1;
  }
}

+ (float)minSimulatedAperture:(void *)a3
{
  v4 = objc_opt_class();
  v7 = 0.0;
  if (objc_msgSend_hasValidHeader_(v4, v5, a3))
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, a3);
    if (EffectiveVersion == 4)
    {
      v10 = 0.0;
      sub_2956ADBB0(a3, 0x259u, 1u, &v10);
      return v10;
    }

    else if (EffectiveVersion == 3)
    {
      return *(a3 + 25);
    }
  }

  return v7;
}

+ (float)maxSimulatedAperture:(void *)a3
{
  v4 = objc_opt_class();
  v7 = 0.0;
  if (objc_msgSend_hasValidHeader_(v4, v5, a3))
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, a3);
    if (EffectiveVersion == 4)
    {
      v10 = 0.0;
      sub_2956ADBB0(a3, 0x25Au, 1u, &v10);
      return v10;
    }

    else if (EffectiveVersion == 3)
    {
      return *(a3 + 67);
    }
  }

  return v7;
}

+ (void)getRenderingParametersFromMetaData:(id)a3
{
  v3 = a3;
  v4 = v3;
  v7 = objc_msgSend_bytes(v4, v5, v6);
  if (*(v7 + 4) <= 9)
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v8, v7);
    if (EffectiveVersion == 4)
    {
      v16 = v3;
      v14 = v16;
      if (v16)
      {
        if (objc_msgSend_length(v16, v17, v18) >= 0x10 && (objc_msgSend_length(v14, v19, v20) & 7) == 0)
        {
          v23 = objc_msgSend_length(v14, v21, v22);
          v24 = malloc_type_malloc(v23, 0x1000040451B5BE8uLL);
          if (v24)
          {
            v10 = v24;
            v27 = objc_msgSend_length(v14, v25, v26);
            objc_msgSend_getBytes_length_(v14, v28, v10, v27);
            if (*v10 == 1145980242 && (*(v10 + 1) - 10) >= 0xFFFFFFFA)
            {
              v31 = *(v10 + 2);
              if (objc_msgSend_length(v14, v29, v30) == v31)
              {
                v32 = *(v10 + 2) - 16;
                if (v32 < 8)
                {
                  goto LABEL_31;
                }

                v33 = v32 >> 3;
                v34 = v33 <= 1 ? 1 : v33;
                if (v10[8] >= 1)
                {
                  v35 = v10 + 12;
                  v36 = 1;
                  do
                  {
                    v37 = v36;
                    if (v34 == v36)
                    {
                      break;
                    }

                    v38 = *v35;
                    v35 += 4;
                    ++v36;
                  }

                  while (v38 > 0);
                  if (v37 >= v33)
                  {
                    goto LABEL_31;
                  }
                }
              }
            }

            free(v10);
          }
        }
      }
    }

    else if (EffectiveVersion == 3)
    {
      v10 = malloc_type_malloc(0x1D8uLL, 0x1000040156972F5uLL);
      v11 = v3;
      v14 = v11;
      memset(v40, 0, 472);
      if (v11)
      {
        if (v10)
        {
          if (objc_msgSend_length(v11, v12, v13) >= 0x1D8)
          {
            objc_msgSend_getBytes_length_(v14, v15, v40, 472);
            if (LODWORD(v40[0]) == 1145980242 && *(v40 + 4) == 0x1D800000003)
            {
              memcpy(v10, v40, 0x1D8uLL);

LABEL_31:
              goto LABEL_27;
            }
          }
        }
      }

      free(v10);
    }
  }

  v10 = 0;
LABEL_27:

  return v10;
}

+ (int)disparityRefinementVersion:(void *)a3
{
  v4 = objc_opt_class();
  if (!objc_msgSend_hasValidHeader_(v4, v5, a3))
  {
    return -1;
  }

  EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, a3);
  result = -1;
  if (EffectiveVersion == 4)
  {
    v9 = -1;
    sub_2956ADBB0(a3, 0x64u, 2u, &v9);
    return v9;
  }

  else if (EffectiveVersion == 3)
  {
    return *(a3 + 70);
  }

  return result;
}

+ (float)defaultSimulatedAperture:(void *)a3
{
  v4 = objc_opt_class();
  v7 = 0.0;
  if (objc_msgSend_hasValidHeader_(v4, v5, a3))
  {
    EffectiveVersion = objc_msgSend_getEffectiveVersion_(SDOFMetadata, v6, a3);
    if (EffectiveVersion == 4)
    {
      v10 = 0.0;
      sub_2956ADBB0(a3, 0x258u, 1u, &v10);
      return v10;
    }

    else if (EffectiveVersion == 3)
    {
      return *(a3 + 71);
    }
  }

  return v7;
}

+ (simple_lens_model_params)loadLensModelParams:(SEL)a3 simulatedAperture:(void *)a4 focusWindow:(float)a5 frameNormalizedFocalLength:(CGRect)a6 maxBlur:(float)a7
{
  *&retstr->var12 = 0;
  *&retstr->var4 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var0 = 0u;
  if (*(a4 + 1) <= 9)
  {
    height = a6.size.height;
    width = a6.size.width;
    y = a6.origin.y;
    x = a6.origin.x;
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result == 4)
    {
      v27 = x;
      v28 = y;
      retstr->var0 = v27;
      retstr->var1 = v28;
      v29 = width;
      v30 = height;
      retstr->var2 = v29;
      retstr->var3 = v30;
      sub_2956ADBB0(a4, 0xC9u, 1u, &retstr->var4);
      retstr->var5 = a7 * 36.0;
      retstr->var6 = a5;
      sub_2956ADBB0(a4, 0x259u, 1u, &retstr->var7);
      sub_2956ADBB0(a4, 0x25Au, 1u, &retstr->var8);
      retstr->var9 = a7;
      sub_2956ADBB0(a4, 0xCAu, 1u, &retstr->var10);
      retstr->var11 = a8;
      sub_2956ADBB0(a4, 0xC8u, 1u, &retstr->var12);

      return sub_2956ADBB0(a4, 0x25Bu, 1u, &retstr->var13);
    }

    else if (result == 3)
    {
      v17 = x;
      v18 = *(a4 + 25);
      v19 = y;
      v20 = width;
      v21 = *(a4 + 67);
      v22 = height;
      v23 = *(a4 + 37);
      v24 = *(a4 + 38);
      v25 = *(a4 + 8);
      v26 = *(a4 + 72);
      retstr->var0 = v17;
      retstr->var1 = v19;
      retstr->var2 = v20;
      retstr->var3 = v22;
      retstr->var4 = v23;
      retstr->var5 = a7 * 36.0;
      retstr->var6 = a5;
      retstr->var7 = v18;
      retstr->var8 = v21;
      retstr->var9 = a7;
      retstr->var10 = v24;
      retstr->var11 = a8;
      retstr->var12 = v25;
      retstr->var13 = v26;
    }
  }

  return result;
}

+ (int)loadMattingParams:(void *)a3 config:(id *)a4
{
  result = -1;
  if (a3 && a4)
  {
    *a4 = *byte_2956D2CD0;
    if ((*(a3 + 1) - 10) >= 0xFFFFFFFB)
    {
      v7 = sub_2956ADBB0(a3, 0x75u, 1u, a4);
      v8 = sub_2956ADBB0(a3, 0x76u, 1u, &a4->var1) | v7;
      v9 = sub_2956ADBB0(a3, 0x77u, 1u, &a4->var2);
      v10 = v8 | v9 | sub_2956ADBB0(a3, 0x78u, 1u, &a4->var3);
      v11 = sub_2956ADBB0(a3, 0x79u, 1u, &a4->var4);
      v12 = v11 | sub_2956ADBB0(a3, 0x7Au, 1u, &a4->var5);
      v13 = v10 | v12 | sub_2956ADBB0(a3, 0x7Bu, 1u, &a4->var6);
      v14 = sub_2956ADBB0(a3, 0x7Cu, 1u, &a4->var7);
      v15 = v14 | sub_2956ADBB0(a3, 0x7Du, 1u, &a4->var8);
      v16 = v15 | sub_2956ADBB0(a3, 0x7Eu, 1u, &a4->var9);
      v17 = v13 | v16 | sub_2956ADBB0(a3, 0x7Fu, 2u, &a4->var11);
      return v17 | sub_2956ADBB0(a3, 0x80u, 1u, &a4->var10);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

+ (crisp_hair_params)loadCrispHairParams:(SEL)a3
{
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  if ((*(a4 + 1) - 10) >= 0xFFFFFFFA)
  {
    *&retstr->var0 = xmmword_2956D2D00;
    retstr->var4 = 0.4;
    sub_2956ADBB0(a4, 0x44Cu, 1u, retstr);
    sub_2956ADBB0(a4, 0x44Du, 1u, &retstr->var1);
    sub_2956ADBB0(a4, 0x44Eu, 1u, &retstr->var2);
    sub_2956ADBB0(a4, 0x44Fu, 1u, &retstr->var3);

    return sub_2956ADBB0(a4, 0x450u, 1u, &retstr->var4);
  }

  return result;
}

+ (disparity_refinement_params)loadDisparityRefinementParams:(SEL)a3
{
  retstr->fgBgDilationSize = 0;
  *&retstr->aaLumaSigma = 0u;
  *&retstr->fgBlurScale = 0u;
  *&retstr->outerSamplingRadius = 0u;
  *&retstr->segmentationSigma = 0u;
  *&retstr->radius = 0u;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result == 4)
    {
      sub_2956ADBB0(a4, 0x65u, 2u, retstr);
      sub_2956ADBB0(a4, 0x6Au, 1u, &retstr->weightScaling);
      sub_2956ADBB0(a4, 0x6Bu, 1u, &retstr->maxReconstructionWeight);
      sub_2956ADBB0(a4, 0x6Cu, 1u, &retstr->innerSamplingRadius);
      sub_2956ADBB0(a4, 0x6Du, 1u, &retstr->outerSamplingRadius);
      sub_2956ADBB0(a4, 0x6Eu, 2u, &retstr->nSamples);
      sub_2956ADBB0(a4, 0x6Fu, 1u, &retstr->lumaSigma);
      sub_2956ADBB0(a4, 0x70u, 1u, &retstr->chromaSigma);
      sub_2956ADBB0(a4, 0x73u, 1u, &retstr->segmentationSigma);
      sub_2956ADBB0(a4, 0x66u, 1u, &retstr->disparitySigma);
      sub_2956ADBB0(a4, 0x71u, 1u, &retstr->accumulatedWeightT0);
      sub_2956ADBB0(a4, 0x72u, 1u, &retstr->accumulatedWeightT1);
      sub_2956ADBB0(a4, 0x67u, 1u, &retstr->aaLumaSigma);
      sub_2956ADBB0(a4, 0x68u, 1u, &retstr->aaChromaSigma);
      sub_2956ADBB0(a4, 0x74u, 1u, &retstr->aaSegmentationSigma);
      result = sub_2956ADBB0(a4, 0x69u, 1u, &retstr->aaSpatialSigma);
      if (*(a4 + 1) < 6)
      {
        *&retstr->fgBlurScale = 0;
        *&retstr->fgDeadZoneOffset = 0;
        retstr->fgBgDilationSize = 0;
      }

      else
      {
        if (sub_2956ADBB0(a4, 0x4B5u, 1u, &retstr->fgBlurScale))
        {
          retstr->fgBlurScale = 1.0;
          v12 = uni_logger_api();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC3A0();
          }
        }

        if (sub_2956ADBB0(a4, 0x4B6u, 1u, &retstr->fgBlurClamp))
        {
          retstr->fgBlurClamp = 1.0;
          v13 = uni_logger_api();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC3E0();
          }
        }

        if (sub_2956ADBB0(a4, 0x4BBu, 1u, &retstr->fgDeadZoneOffset))
        {
          retstr->fgDeadZoneOffset = 0.0;
          v14 = uni_logger_api();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC420(v14, v15, v16, v17, v18, v19, v20, v21);
          }
        }

        if (sub_2956ADBB0(a4, 0x4BDu, 1u, &retstr->fgFgBgThreshold))
        {
          retstr->fgFgBgThreshold = 0.05;
          v22 = uni_logger_api();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC464();
          }
        }

        result = sub_2956ADBB0(a4, 0x4BEu, 2u, &retstr->fgBgDilationSize);
        if (result)
        {
          retstr->fgBgDilationSize = 7;
          v23 = uni_logger_api();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            sub_2956CC4B0(v23);
          }
        }
      }
    }

    else if (result == 3)
    {
      v6 = *(a4 + 32);
      *&v7 = *(a4 + 132);
      *&v8 = *(a4 + 140);
      v9 = *(a4 + 20);
      v10 = *(a4 + 69);
      v11 = *(a4 + 7);
      retstr->radius = *(a4 + 3);
      *&retstr->weightScaling = *(a4 + 7);
      DWORD2(v7) = *(a4 + 68);
      retstr->nSamples = v6;
      HIDWORD(v7) = *(a4 + 4);
      *&retstr->lumaSigma = v7;
      *(&v8 + 1) = v9;
      *&retstr->accumulatedWeightT0 = v8;
      retstr->aaSegmentationSigma = v10;
      retstr->aaSpatialSigma = v11;
      *&retstr->fgBlurScale = 0;
      *&retstr->fgDeadZoneOffset = 0;
      retstr->fgBgDilationSize = 0;
    }
  }

  return result;
}

+ (segmentation_fusion_params)loadSegmentationFusionParams:(SEL)a3 simulatedAperture:(void *)a4 maxBlur:(float)a5
{
  retstr->var8 = 0.0;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result == 4)
    {
      retstr->var0 = a5;
      retstr->var2 = a6;
      sub_2956ADBB0(a4, 0x258u, 1u, &retstr->var1);
      sub_2956ADBB0(a4, 0x384u, 1u, &retstr->var3);
      sub_2956ADBB0(a4, 0x385u, 1u, &retstr->var4);
      sub_2956ADBB0(a4, 0x386u, 1u, &retstr->var5);
      sub_2956ADBB0(a4, 0x387u, 1u, &retstr->var6);
      sub_2956ADBB0(a4, 0x388u, 1u, &retstr->var7);

      return sub_2956ADBB0(a4, 0x389u, 1u, &retstr->var8);
    }

    else if (result == 3)
    {
      v10 = *(a4 + 71);
      retstr->var0 = a5;
      retstr->var1 = v10;
      retstr->var2 = a6;
      *&retstr->var3 = *(a4 + 228);
      *&retstr->var7 = *(a4 + 244);
    }
  }

  return result;
}

+ (blurmap_refinement_params)loadBlurmapRefinementParams:(SEL)a3 apertureScaling:(void *)a4 inputScale:(float)a5 focusWindow:(float)a6 segmentationFusionParams:(CGRect)a7
{
  *&retstr->var13 = 0u;
  *&retstr->var10.var11 = 0u;
  *&retstr->var10.var15 = 0u;
  *&retstr->var10.var3 = 0u;
  *&retstr->var10.var7 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var9.var3 = 0u;
  *&retstr->var1.var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0.var3 = 0u;
  *&retstr->var1.var0.var3 = 0u;
  *&retstr->var0.var0.var0 = 0u;
  *&retstr->var0.var0.var4 = 0u;
  if (*(a4 + 1) <= 9)
  {
    height = a7.size.height;
    width = a7.size.width;
    y = a7.origin.y;
    x = a7.origin.x;
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result == 4)
    {
      *&retstr->var0.var0.var0 = *&a8->var3;
      *&retstr->var0.var0.var4 = *&a8->var7;
      sub_2956ADBB0(a4, 0x3F3u, 2u, &retstr->var0.var1);
      sub_2956ADBB0(a4, 0x3F4u, 1u, &retstr->var0.var2);
      sub_2956ADBB0(a4, 0x3F5u, 1u, &retstr->var0.var3);
      sub_2956ADBB0(a4, 0x3F9u, 1u, &retstr->var1.var0.var0);
      sub_2956ADBB0(a4, 0x3FAu, 1u, &retstr->var1.var0.var1);
      sub_2956ADBB0(a4, 0x3FEu, 1u, &retstr->var1.var0.var2);
      sub_2956ADBB0(a4, 0x3FBu, 1u, &retstr->var1.var0.var3);
      sub_2956ADBB0(a4, 0x3FCu, 1u, &retstr->var1.var0.var4);
      sub_2956ADBB0(a4, 0x3FDu, 1u, &retstr->var1.var0.var5);
      sub_2956ADBB0(a4, 0x3F6u, 2u, &retstr->var1.var1);
      sub_2956ADBB0(a4, 0x3F7u, 1u, &retstr->var1.var2);
      sub_2956ADBB0(a4, 0x3F8u, 1u, &retstr->var1.var3);
      sub_2956ADBB0(a4, 0x3ECu, 1u, &retstr->var2);
      retstr->var3 = a5;
      sub_2956ADBB0(a4, 0x3FFu, 1u, &retstr->var4);
      sub_2956ADBB0(a4, 0x3EEu, 1u, &retstr->var5);
      sub_2956ADBB0(a4, 0x3EFu, 1u, &retstr->var6);
      sub_2956ADBB0(a4, 0x3EDu, 1u, &retstr->var7);
      sub_2956ADBB0(a4, 0x3F0u, 1u, &retstr->var8);
      sub_2956ADBB0(a4, 0x3E8u, 1u, &retstr->var9.var0);
      sub_2956ADBB0(a4, 0x3E9u, 1u, &retstr->var9.var1);
      sub_2956ADBB0(a4, 0x3EAu, 1u, &retstr->var9.var2);
      sub_2956ADBB0(a4, 0x3EBu, 1u, &retstr->var9.var3);
      sub_2956ADBB0(a4, 0x400u, 2u, &retstr->var10.var0);
      sub_2956ADBB0(a4, 0x401u, 1u, &retstr->var10.var1);
      sub_2956ADBB0(a4, 0x402u, 1u, &retstr->var10.var2);
      sub_2956ADBB0(a4, 0x403u, 1u, &retstr->var10.var3);
      sub_2956ADBB0(a4, 0x404u, 1u, &retstr->var10.var4);
      sub_2956ADBB0(a4, 0x405u, 1u, &retstr->var10.var5);
      sub_2956ADBB0(a4, 0x406u, 1u, &retstr->var10.var6);
      sub_2956ADBB0(a4, 0x407u, 1u, &retstr->var10.var7);
      sub_2956ADBB0(a4, 0x408u, 1u, &retstr->var10.var8);
      sub_2956ADBB0(a4, 0x409u, 1u, &retstr->var10.var9);
      sub_2956ADBB0(a4, 0x40Au, 1u, &retstr->var10.var10);
      sub_2956ADBB0(a4, 0x40Bu, 1u, &retstr->var10.var11);
      sub_2956ADBB0(a4, 0x40Cu, 1u, &retstr->var10.var12);
      sub_2956ADBB0(a4, 0x40Du, 1u, &retstr->var10.var13);
      sub_2956ADBB0(a4, 0x40Eu, 1u, &retstr->var10.var14);
      sub_2956ADBB0(a4, 0x40Fu, 1u, &retstr->var10.var15);
      sub_2956ADBB0(a4, 0x3F1u, 1u, &retstr->var11);
      result = sub_2956ADBB0(a4, 0x3F2u, 1u, &retstr->var12);
      v27 = x;
      retstr->var13 = v27;
      v25 = y;
    }

    else
    {
      if (result != 3)
      {
        goto LABEL_7;
      }

      v17 = *(a4 + 84);
      *&v18 = *(a4 + 340);
      v19 = *(a4 + 87);
      v20 = *(a4 + 77);
      v21 = *(a4 + 96);
      v22 = *(a4 + 97);
      v23 = *(a4 + 110);
      v24 = x;
      v25 = y;
      *&retstr->var0.var0.var0 = *&a8->var3;
      *&retstr->var0.var0.var4 = *&a8->var7;
      retstr->var0.var1 = v17;
      v26 = *(a4 + 44);
      *(&v18 + 1) = *(a4 + 45);
      *&retstr->var0.var2 = v18;
      *&retstr->var1.var0.var2 = vextq_s8(*(a4 + 23), *(a4 + 23), 0xCuLL);
      retstr->var1.var1 = v19;
      *&retstr->var1.var2 = v26;
      retstr->var2 = v20;
      retstr->var3 = a5;
      retstr->var4 = v21;
      *&retstr->var5 = vzip2q_s32(vzip1q_s32(*(a4 + 312), vextq_s8(*(a4 + 312), *(a4 + 312), 0xCuLL)), *(a4 + 312));
      retstr->var9 = *(a4 + 292);
      retstr->var10.var0 = v22;
      *&retstr->var10.var1 = *(a4 + 392);
      *&retstr->var10.var5 = *(a4 + 408);
      *&retstr->var10.var9 = *(a4 + 424);
      retstr->var10.var13 = v23;
      *&retstr->var10.var14 = 0x3F80000000000000;
      *&retstr->var11 = *(a4 + 41);
      retstr->var13 = v24;
    }

    v28 = width;
    retstr->var14 = v25;
    retstr->var15 = v28;
    v29 = height;
    retstr->var16 = v29;
LABEL_7:
    if (a6 != 1.0)
    {
      retstr->var0.var1 = (retstr->var0.var1 * a6);
      retstr->var1.var1 = (retstr->var1.var1 * a6);
    }
  }

  return result;
}

+ (face_mask_params)loadFaceMaskParams:(SEL)a3 facePoints:(void *)a4 simulatedAperture:(CGPoint *)a5 aspectRatio:(float)a6 maxBlur:(float)a7
{
  *&retstr[2].var10 = 0u;
  *&retstr[2].var14 = 0u;
  *&retstr[2].var2 = 0u;
  *&retstr[2].var6 = 0u;
  *&retstr[1].var9 = 0u;
  *&retstr[1].var13 = 0u;
  *&retstr[1].var1 = 0u;
  *&retstr[1].var5 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result == 4)
    {
      retstr->var0 = a8;
      retstr->var1 = a6;
      sub_2956ADBB0(a4, 0x258u, 1u, &retstr->var2);
      v34.f64[0] = a5[8].x;
      v35.f64[0] = a5[8].y;
      v34.f64[1] = a5[12].x;
      v36.f64[0] = a5->x;
      v37.f64[0] = a5->y;
      v36.f64[1] = a5[4].x;
      v35.f64[1] = a5[12].y;
      v37.f64[1] = a5[4].y;
      *&retstr->var4 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr->var8 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      v34.f64[0] = a5[9].x;
      v35.f64[0] = a5[9].y;
      v34.f64[1] = a5[13].x;
      v36.f64[0] = a5[1].x;
      v37.f64[0] = a5[1].y;
      v36.f64[1] = a5[5].x;
      v35.f64[1] = a5[13].y;
      v37.f64[1] = a5[5].y;
      *&retstr->var12 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr[1].var1 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      v34.f64[0] = a5[10].x;
      v35.f64[0] = a5[10].y;
      v34.f64[1] = a5[14].x;
      v36.f64[0] = a5[2].x;
      v37.f64[0] = a5[2].y;
      v36.f64[1] = a5[6].x;
      v35.f64[1] = a5[14].y;
      v37.f64[1] = a5[6].y;
      *&retstr[1].var5 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr[1].var9 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      v34.f64[0] = a5[11].x;
      v35.f64[0] = a5[11].y;
      v34.f64[1] = a5[15].x;
      v36.f64[0] = a5[3].x;
      v37.f64[0] = a5[3].y;
      v36.f64[1] = a5[7].x;
      v35.f64[1] = a5[15].y;
      v37.f64[1] = a5[7].y;
      *&retstr[1].var13 = vcvt_hight_f32_f64(vcvt_f32_f64(v36), v34);
      *&retstr[2].var2 = vcvt_hight_f32_f64(vcvt_f32_f64(v37), v35);
      sub_2956ADBB0(a4, 0x130u, 1u, &retstr[2].var6);
      sub_2956ADBB0(a4, 0x131u, 1u, &retstr[2].var7);
      sub_2956ADBB0(a4, 0x12Fu, 1u, &retstr[2].var8);
      sub_2956ADBB0(a4, 0x12Cu, 1u, &retstr[2].var9);
      sub_2956ADBB0(a4, 0x12Du, 1u, &retstr[2].var10);
      sub_2956ADBB0(a4, 0x12Eu, 1u, &retstr[2].var11);
      sub_2956ADBB0(a4, 0x132u, 1u, &retstr[2].var12);
      result = sub_2956ADBB0(a4, 0x133u, 1u, &retstr[2].var13);
    }

    else
    {
      if (result != 3)
      {
        return result;
      }

      v14 = *(a4 + 71);
      v15.f64[0] = a5[8].x;
      v16.f64[0] = a5[8].y;
      v15.f64[1] = a5[12].x;
      v17.f64[0] = a5->x;
      v18.f64[0] = a5->y;
      v17.f64[1] = a5[4].x;
      v19 = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v15);
      v16.f64[1] = a5[12].y;
      v18.f64[1] = a5[4].y;
      v20 = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v16);
      v18.f64[0] = a5[9].x;
      v21.f64[0] = a5[9].y;
      v18.f64[1] = a5[13].x;
      v16.f64[0] = a5[1].x;
      v22.f64[0] = a5[1].y;
      v16.f64[1] = a5[5].x;
      v23 = vcvt_hight_f32_f64(vcvt_f32_f64(v16), v18);
      v21.f64[1] = a5[13].y;
      v22.f64[1] = a5[5].y;
      v24 = vcvt_hight_f32_f64(vcvt_f32_f64(v22), v21);
      v22.f64[0] = a5[10].x;
      v25.f64[0] = a5[10].y;
      v22.f64[1] = a5[14].x;
      v21.f64[0] = a5[2].x;
      v26.f64[0] = a5[2].y;
      v21.f64[1] = a5[6].x;
      v27 = vcvt_hight_f32_f64(vcvt_f32_f64(v21), v22);
      v25.f64[1] = a5[14].y;
      v26.f64[1] = a5[6].y;
      v28 = vcvt_hight_f32_f64(vcvt_f32_f64(v26), v25);
      v25.f64[0] = a5[11].x;
      v26.f64[0] = a5[11].y;
      v25.f64[1] = a5[15].x;
      v29.f64[0] = a5[3].x;
      v30.f64[0] = a5[3].y;
      v29.f64[1] = a5[7].x;
      v31 = vcvt_hight_f32_f64(vcvt_f32_f64(v29), v25);
      v26.f64[1] = a5[15].y;
      v30.f64[1] = a5[7].y;
      v32 = vcvt_hight_f32_f64(vcvt_f32_f64(v30), v26);
      v26.f64[0] = *(a4 + 212);
      v30.f64[0] = *(a4 + 5);
      LODWORD(v26.f64[1]) = *(a4 + 12);
      v33 = *(a4 + 220);
      HIDWORD(v26.f64[1]) = *(a4 + 9);
      retstr->var0 = a8;
      retstr->var1 = a6;
      retstr->var2 = v14;
      *&retstr->var4 = v19;
      *&retstr->var8 = v20;
      *&retstr->var12 = v23;
      *&retstr[1].var1 = v24;
      *&retstr[1].var5 = v27;
      *&retstr[1].var9 = v28;
      *&retstr[1].var13 = v31;
      *&retstr[2].var2 = v32;
      v30.f64[1] = v33;
      *&retstr[2].var6 = v26;
      *&retstr[2].var10 = v30;
    }

    __asm { FMOV            V0.2S, #1.0 }

    *&retstr[2].var14 = _D0;
    retstr[3].var1 = 0.5;
    retstr[3].var2 = a7;
  }

  return result;
}

+ (blurmap_smoothing_params)loadBlurmapSmoothingParams:(SEL)a3
{
  *&retstr->var0 = 0;
  *&retstr->var2 = 0;
  retstr->var4 = 0.0;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result == 4)
    {
      sub_2956ADBB0(a4, 0x320u, 2u, retstr);
      sub_2956ADBB0(a4, 0x321u, 1u, &retstr->var1);
      sub_2956ADBB0(a4, 0x322u, 1u, &retstr->var2);
      sub_2956ADBB0(a4, 0x323u, 1u, &retstr->var3);

      return sub_2956ADBB0(a4, 0x324u, 1u, &retstr->var4);
    }

    else if (result == 3)
    {
      retstr->var0 = *(a4 + 39);
      *&retstr->var1 = *(a4 + 252);
    }
  }

  return result;
}

+ (rendering_config_params)loadRenderingParams:(SEL)a3 simulatedAperture:(void *)a4 lumaNoiseAmplitude:(float)a5 maxBlur:(float)a6
{
  *&retstr->fgHitThreshold = 0u;
  *&retstr->fgBlurWeightSmoothstepEnd = 0u;
  *&retstr->ohlbIntensityGain = 0u;
  *&retstr->fgMinNRings = 0u;
  *&retstr->xhlrbMaxIntensityT1 = 0u;
  *&retstr->xhlrbWeightGain = 0u;
  *&retstr->ringAmplitude = 0u;
  *&retstr->xhlrbIterations = 0u;
  *&retstr->nRings = 0u;
  *&retstr->relativeWeightThreshold = 0u;
  *&retstr->maxBlur = 0u;
  *&retstr->lumaNoiseAmplitude = 0u;
  *&retstr->simulatedAperture = 0u;
  if (*(a4 + 1) > 9)
  {
    return result;
  }

  result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
  if (result != 4)
  {
    if (result == 3)
    {
      v12 = *(a4 + 71);
      v13 = *(a4 + 40);
      v14 = *(a4 + 43);
      v15 = *(a4 + 17);
      v17 = *(a4 + 23);
      v16 = *(a4 + 24);
      v18 = *(a4 + 44);
      v20 = *(a4 + 18);
      v19 = *(a4 + 19);
      *&v21 = *(a4 + 180);
      v22 = *(a4 + 10);
      v23 = *(a4 + 22);
      v24 = *(a4 + 13);
      *&v25 = *(a4 + 204);
      v26 = *(a4 + 7);
      v27 = *(a4 + 16);
      retstr->simulatedAperture = a5;
      retstr->defaultSimulatedAperture = v12;
      retstr->preFilterBlurStrength = v17;
      retstr->preFilterRadius = v13;
      retstr->maxBlur = a7;
      *&retstr->sharpRadius = *(a4 + 164);
      retstr->lumaNoiseModelCoeff = v14;
      retstr->lumaNoiseAmplitude = a6;
      retstr->highlightBoostGain = v19;
      retstr->minNRings = v15;
      retstr->maxNRings = v15;
      retstr->nRings = v15;
      retstr->basePixelWeight = 1.0e-12;
      retstr->antiAliasBlurStrength = v16;
      retstr->antiAliasRadius = v18;
      retstr->relativeWeightThreshold = v20;
      *(&v21 + 1) = v22;
      *&retstr->alphaEpsilon = v21;
      retstr->ringSharpness = v23;
      *&retstr->blendingQuarterResAlphaGain = *(a4 + 13);
      retstr->xhlrbIterations = v24;
      *(&v25 + 1) = v26;
      *&retstr->xhlrbBlurRadiusT0 = *(a4 + 188);
      *&retstr->xhlrbMinIntensityT0 = v25;
      retstr->xhlrbIntensityGain = v27;
      *&retstr->ohlbPreFilterGain = 0;
      *&retstr->ohlbIntensityGain = 0x800000000;
      __asm { FMOV            V0.2S, #4.0 }

      *&retstr->gainMapHeadroom = _D0;
      *&retstr->fgMinNRings = 0;
      retstr->fgNRings = 0;
      __asm { FMOV            V0.2S, #1.0 }

      *&retstr->fgTraceStepScale = _D0;
      *&retstr->fgBlurWeightSmoothstepStart = 0;
      *&retstr->fgAlphaSmoothstepStart = 0;
      retstr->bicubicDownsampleParamC = 0.0;
      *&retstr->fgAARadius = 0;
    }

    return result;
  }

  retstr->simulatedAperture = a5;
  sub_2956ADBB0(a4, 0x258u, 1u, &retstr->defaultSimulatedAperture);
  sub_2956ADBB0(a4, 0x1FAu, 1u, &retstr->preFilterBlurStrength);
  sub_2956ADBB0(a4, 0x1FCu, 2u, &retstr->preFilterRadius);
  retstr->maxBlur = a7;
  sub_2956ADBB0(a4, 0x1FDu, 1u, &retstr->sharpRadius);
  sub_2956ADBB0(a4, 0x1FEu, 1u, &retstr->softRadius);
  sub_2956ADBB0(a4, 0x1FFu, 1u, &retstr->lumaNoiseModelCoeff);
  retstr->lumaNoiseAmplitude = a6;
  sub_2956ADBB0(a4, 0x1F6u, 1u, &retstr->highlightBoostGain);
  sub_2956ADBB0(a4, 0x1F4u, 2u, &retstr->nRings);
  if (sub_2956ADBB0(a4, 0x1F2u, 2u, &retstr->minNRings))
  {
    retstr->minNRings = retstr->nRings;
  }

  if (sub_2956ADBB0(a4, 0x1F3u, 2u, &retstr->maxNRings))
  {
    retstr->maxNRings = retstr->nRings;
  }

  retstr->basePixelWeight = 1.0e-12;
  sub_2956ADBB0(a4, 0x1FBu, 1u, &retstr->antiAliasBlurStrength);
  sub_2956ADBB0(a4, 0x200u, 2u, &retstr->antiAliasRadius);
  sub_2956ADBB0(a4, 0x1F5u, 1u, &retstr->relativeWeightThreshold);
  sub_2956ADBB0(a4, 0x201u, 1u, &retstr->alphaEpsilon);
  sub_2956ADBB0(a4, 0x202u, 1u, &retstr->alphaGain);
  sub_2956ADBB0(a4, 0x1F7u, 1u, &retstr->shapeObstructionCoeff);
  sub_2956ADBB0(a4, 0x1F8u, 1u, &retstr->ringAmplitude);
  sub_2956ADBB0(a4, 0x1F9u, 1u, &retstr->ringSharpness);
  sub_2956ADBB0(a4, 0x2BCu, 1u, &retstr->blendingQuarterResAlphaGain);
  sub_2956ADBB0(a4, 0x2BDu, 1u, &retstr->blendingFullResAlphaGain);
  sub_2956ADBB0(a4, 0x190u, 2u, &retstr->xhlrbIterations);
  sub_2956ADBB0(a4, 0x194u, 1u, &retstr->xhlrbBlurRadiusT0);
  sub_2956ADBB0(a4, 0x195u, 1u, &retstr->xhlrbBlurRadiusT1);
  sub_2956ADBB0(a4, 0x196u, 1u, &retstr->xhlrbMaxIntensityT0);
  sub_2956ADBB0(a4, 0x197u, 1u, &retstr->xhlrbMaxIntensityT1);
  sub_2956ADBB0(a4, 0x198u, 1u, &retstr->xhlrbMinIntensityT0);
  sub_2956ADBB0(a4, 0x199u, 1u, &retstr->xhlrbMinIntensityT1);
  sub_2956ADBB0(a4, 0x191u, 1u, &retstr->xhlrbPreFilterGain);
  sub_2956ADBB0(a4, 0x192u, 1u, &retstr->xhlrbWeightGain);
  sub_2956ADBB0(a4, 0x193u, 1u, &retstr->xhlrbIntensityGain);
  sub_2956ADBB0(a4, 0x1C2u, 1u, &retstr->ohlbPreFilterGain);
  sub_2956ADBB0(a4, 0x1C3u, 1u, &retstr->ohlbWeightGain);
  sub_2956ADBB0(a4, 0x1C4u, 1u, &retstr->ohlbIntensityGain);
  result = sub_2956ADBB0(a4, 0x1C5u, 1u, &retstr->gainMapHeadroom);
  v34 = *(a4 + 1);
  if (v34 <= 4)
  {
    retstr->linearBoostGain = 4.0;
  }

  else
  {
    result = sub_2956ADBB0(a4, 0x1C6u, 1u, &retstr->linearBoostGain);
    if (v34 != 5)
    {
      sub_2956ADBB0(a4, 0x4B0u, 2u, &retstr->fgNRings);
      if (sub_2956ADBB0(a4, 0x4B1u, 2u, &retstr->fgMinNRings))
      {
        retstr->fgMinNRings = retstr->fgNRings;
      }

      if (sub_2956ADBB0(a4, 0x4B2u, 2u, &retstr->fgMaxNRings))
      {
        retstr->fgMaxNRings = retstr->fgNRings;
      }

      if (sub_2956ADBB0(a4, 0x4B3u, 1u, &retstr->fgTraceStepScale))
      {
        retstr->fgTraceStepScale = 1.0;
        v35 = uni_logger_api();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC504();
        }
      }

      if (sub_2956ADBB0(a4, 0x4B4u, 1u, &retstr->fgHitThreshold))
      {
        retstr->fgHitThreshold = 1.0;
        v36 = uni_logger_api();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC544();
        }
      }

      if (sub_2956ADBB0(a4, 0x4B7u, 1u, &retstr->fgAlphaSmoothstepStart))
      {
        retstr->fgAlphaSmoothstepStart = -2.0;
        v37 = uni_logger_api();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC584(v37, v38, v39, v40, v41, v42, v43, v44);
        }
      }

      if (sub_2956ADBB0(a4, 0x4B8u, 1u, &retstr->fgAlphaSmoothstepEnd))
      {
        retstr->fgAlphaSmoothstepEnd = 0.0;
        v45 = uni_logger_api();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC5CC(v45, v46, v47, v48, v49, v50, v51, v52);
        }
      }

      if (sub_2956ADBB0(a4, 0x4B9u, 1u, &retstr->fgBlurWeightSmoothstepStart))
      {
        retstr->fgBlurWeightSmoothstepStart = -1.0;
        v53 = uni_logger_api();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC610(v53, v54, v55, v56, v57, v58, v59, v60);
        }
      }

      if (sub_2956ADBB0(a4, 0x4BAu, 1u, &retstr->fgBlurWeightSmoothstepEnd))
      {
        retstr->fgBlurWeightSmoothstepEnd = 0.3;
        v61 = uni_logger_api();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC658();
        }
      }

      result = sub_2956ADBB0(a4, 0x4BCu, 1u, &retstr->fgAARadius);
      if (result)
      {
        retstr->fgAARadius = 2.0;
        v62 = uni_logger_api();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC6A0(v62, v63, v64, v65, v66, v67, v68, v69);
        }
      }

      goto LABEL_45;
    }
  }

  retstr->fgNRings = 0;
  *&retstr->fgMinNRings = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *&retstr->fgTraceStepScale = _D0;
  *&retstr->fgBlurWeightSmoothstepStart = 0;
  *&retstr->fgAlphaSmoothstepStart = 0;
  retstr->fgAARadius = 0.0;
LABEL_45:
  if (*(a4 + 1) < 7)
  {
    *&retstr->bicubicDownsampleParamB = 0x3F40000000000000;
  }

  else
  {
    if (sub_2956ADBB0(a4, 0x522u, 1u, &retstr->bicubicDownsampleParamB))
    {
      retstr->bicubicDownsampleParamB = 0.0;
      v71 = uni_logger_api();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        sub_2956CC6E8(v71, v72, v73, v74, v75, v76, v77, v78);
      }
    }

    result = sub_2956ADBB0(a4, 0x523u, 1u, &retstr->bicubicDownsampleParamC);
    if (result)
    {
      retstr->bicubicDownsampleParamC = 0.75;
      v79 = uni_logger_api();
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
      {
        sub_2956CC72C(v79, v80, v81, v82, v83, v84, v85, v86);
      }
    }
  }

  retstr->xhlrbTileSize = 8;
  return result;
}

+ (hairnet_params)loadHairnetParams:(SEL)a3
{
  *&retstr->var8 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var0 = 0u;
  *&retstr->var4 = 0u;
  if (*(a4 + 1) <= 9)
  {
    result = objc_msgSend_getEffectiveVersion_(SDOFMetadata, a3, a4);
    if (result >= 4 && *(a4 + 1) >= 7)
    {
      if (sub_2956ADBB0(a4, 0x514u, 1u, retstr))
      {
        retstr->var0 = 0.25;
        v6 = uni_logger_api();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC774(v6, v7, v8, v9, v10, v11, v12, v13);
        }
      }

      if (sub_2956ADBB0(a4, 0x515u, 1u, &retstr->var1))
      {
        retstr->var1 = 0.2163;
        v14 = uni_logger_api();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC7BC(v14, v15, v16, v17, v18, v19, v20, v21);
        }
      }

      if (sub_2956ADBB0(a4, 0x516u, 1u, &retstr->var2))
      {
        retstr->var2 = 0.029762;
        v22 = uni_logger_api();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC80C();
        }
      }

      if (sub_2956ADBB0(a4, 0x517u, 1u, &retstr->var3))
      {
        retstr->var3 = 0.02;
        v23 = uni_logger_api();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC858(v23, v24, v25, v26, v27, v28, v29, v30);
        }
      }

      if (sub_2956ADBB0(a4, 0x518u, 1u, &retstr->var4))
      {
        retstr->var4 = 0.85;
        v31 = uni_logger_api();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC8A8();
        }
      }

      if (sub_2956ADBB0(a4, 0x519u, 1u, &retstr->var5))
      {
        retstr->var5 = 0.029762;
        v32 = uni_logger_api();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC8F0();
        }
      }

      if (sub_2956ADBB0(a4, 0x51Au, 1u, &retstr->var6))
      {
        retstr->var6 = 0.001;
        v33 = uni_logger_api();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC93C(v33, v34, v35, v36, v37, v38, v39, v40);
        }
      }

      if (sub_2956ADBB0(a4, 0x51Bu, 1u, &retstr->var7))
      {
        retstr->var7 = 0.0014881;
        v41 = uni_logger_api();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC98C(v41, v42, v43, v44, v45, v46, v47, v48);
        }
      }

      if (sub_2956ADBB0(a4, 0x51Cu, 1u, &retstr->var8))
      {
        retstr->var8 = 0.2;
        v49 = uni_logger_api();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CC9DC();
        }
      }

      if (sub_2956ADBB0(a4, 0x51Du, 1u, &retstr->var9))
      {
        retstr->var9 = 0.0044643;
        v50 = uni_logger_api();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCA28();
        }
      }

      if (sub_2956ADBB0(a4, 0x51Eu, 1u, &retstr->var10))
      {
        retstr->var10 = 0.1;
        v51 = uni_logger_api();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCA74();
        }
      }

      if (sub_2956ADBB0(a4, 0x51Fu, 1u, &retstr->var11))
      {
        retstr->var11 = 1.5;
        v52 = uni_logger_api();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCAC0(v52, v53, v54, v55, v56, v57, v58, v59);
        }
      }

      if (sub_2956ADBB0(a4, 0x520u, 1u, &retstr->var12))
      {
        retstr->var12 = 0.6;
        v60 = uni_logger_api();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCB08();
        }
      }

      if (sub_2956ADBB0(a4, 0x521u, 1u, &retstr->var13))
      {
        retstr->var13 = 0.0019841;
        v61 = uni_logger_api();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCB50(v61, v62, v63, v64, v65, v66, v67, v68);
        }
      }

      if (sub_2956ADBB0(a4, 0x524u, 1u, &retstr->var14))
      {
        retstr->var14 = 0.33;
        v69 = uni_logger_api();
        if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCB9C(v69, v70, v71, v72, v73, v74, v75, v76);
        }
      }

      result = sub_2956ADBB0(a4, 0x525u, 1u, &retstr->var15);
      if (result)
      {
        retstr->var15 = 1.5;
        v77 = uni_logger_api();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
        {
          sub_2956CCBEC(v77, v78, v79, v80, v81, v82, v83, v84);
        }
      }
    }
  }

  return result;
}

+ (int)getMinorRenderingVersion:(void *)a3
{
  v4 = objc_opt_class();
  if (objc_msgSend_hasValidHeader_(v4, v5, a3))
  {
    return *(a3 + 3);
  }

  else
  {
    return -1;
  }
}

@end