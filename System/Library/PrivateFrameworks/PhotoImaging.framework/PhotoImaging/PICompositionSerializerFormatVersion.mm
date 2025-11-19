@interface PICompositionSerializerFormatVersion
+ (BOOL)adjustmentHasPerspective:(id)a3 settings:(id)a4;
+ (BOOL)adjustmentHasRetouchStyleCleanupOperations:(id)a3 settings:(id)a4;
+ (id)_versionRules;
+ (id)adjustmentDataFormatVersionForComposition:(id)a3;
+ (id)formatVersionForAdjustment:(id)a3 identifier:(id)a4;
+ (id)locallySupportedFormatVersions;
+ (id)versionRules;
@end

@implementation PICompositionSerializerFormatVersion

+ (id)adjustmentDataFormatVersionForComposition:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 schema];
  v6 = [v5 contents];
  v7 = [v6 allKeys];

  v8 = @"1.4";
  if ([v4 mediaType] == 2)
  {
    v9 = [v4 objectForKeyedSubscript:@"autoLoop"];

    if (!v9)
    {
      v8 = @"1.6";
    }
  }

  v10 = [a1 locallySupportedFormatVersions];
  v24 = v8;
  v11 = [v10 indexOfObject:v8];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v4 objectForKeyedSubscript:v16];
        if (v17)
        {
          v18 = [a1 formatVersionForAdjustment:v17 identifier:v16];
          v19 = [a1 locallySupportedFormatVersions];
          v20 = [v19 indexOfObject:v18];

          if (v11 != 0x7FFFFFFFFFFFFFFFLL && v11 < v20)
          {
            v21 = v18;

            v11 = v20;
            v24 = v21;
          }
        }
      }

      v13 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v13);
  }

  return v24;
}

+ (id)formatVersionForAdjustment:(id)a3 identifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 versionRules];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"version"];
    if (v10)
    {
      goto LABEL_8;
    }

    v11 = [v9 objectForKeyedSubscript:@"dynamic"];
    v12 = v11;
    if (v11)
    {
      v13 = (*(v11 + 16))(v11, v6);
      if (v13)
      {
        v10 = v13;

        goto LABEL_8;
      }
    }
  }

  v10 = [a1 currentFormatVersion];
LABEL_8:

  return v10;
}

+ (id)versionRules
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PICompositionSerializerFormatVersion_versionRules__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (versionRules_onceToken != -1)
  {
    dispatch_once(&versionRules_onceToken, block);
  }

  v2 = versionRules_versionRules;

  return v2;
}

uint64_t __52__PICompositionSerializerFormatVersion_versionRules__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _versionRules];
  v2 = versionRules_versionRules;
  versionRules_versionRules = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)_versionRules
{
  v127[39] = *MEMORY[0x1E69E9840];
  v126[0] = @"apertureRedEye";
  v124 = @"version";
  v125 = @"1.4";
  v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v125 forKeys:&v124 count:1];
  v127[0] = v45;
  v126[1] = @"autoLoop";
  v122 = @"version";
  v123 = @"1.4";
  v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
  v127[1] = v44;
  v126[2] = @"cropStraighten";
  v120 = @"dynamic";
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __53__PICompositionSerializerFormatVersion__versionRules__block_invoke;
  v47[3] = &__block_descriptor_40_e32___NSString_16__0__NUAdjustment_8l;
  v47[4] = a1;
  v43 = MEMORY[0x1CCA61740](v47);
  v121 = v43;
  v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
  v127[2] = v42;
  v126[3] = @"curves";
  v118 = @"version";
  v119 = @"1.4";
  v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v119 forKeys:&v118 count:1];
  v127[3] = v41;
  v126[4] = @"definition";
  v116 = @"version";
  v117 = @"1.5";
  v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
  v127[4] = v40;
  v126[5] = @"depthEffect";
  v114 = @"dynamic";
  v115 = &__block_literal_global_98;
  v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v115 forKeys:&v114 count:1];
  v127[5] = v39;
  v126[6] = @"effect";
  v112 = @"dynamic";
  v113 = &__block_literal_global_115_17301;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v113 forKeys:&v112 count:1];
  v127[6] = v38;
  v126[7] = @"effect3D";
  v110 = @"dynamic";
  v111 = &__block_literal_global_123;
  v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
  v127[7] = v37;
  v126[8] = @"grain";
  v108 = @"version";
  v109 = @"1.6";
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
  v127[8] = v36;
  v126[9] = @"highResFusion";
  v106 = @"version";
  v107 = @"1.4";
  v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
  v127[9] = v35;
  v126[10] = @"levels";
  v104 = @"version";
  v105 = @"1.4";
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
  v127[10] = v34;
  v126[11] = @"livePhotoKeyFrame";
  v102 = @"version";
  v103 = @"1.4";
  v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
  v127[11] = v33;
  v126[12] = @"mute";
  v100 = @"version";
  v101 = @"1.4";
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
  v127[12] = v32;
  v126[13] = @"noiseReduction";
  v98 = @"dynamic";
  v99 = &__block_literal_global_143_17309;
  v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
  v127[13] = v31;
  v126[14] = @"orientation";
  v96 = @"version";
  v97 = @"1.4";
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
  v127[14] = v30;
  v126[15] = @"portraitEffect";
  v94 = @"dynamic";
  v95 = &__block_literal_global_154;
  v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
  v127[15] = v29;
  v126[16] = @"raw";
  v92 = @"dynamic";
  v93 = &__block_literal_global_180;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
  v127[16] = v28;
  v126[17] = @"rawNoiseReduction";
  v90 = @"version";
  v91 = @"1.4";
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:1];
  v127[17] = v27;
  v126[18] = @"redEye";
  v88 = @"dynamic";
  v89 = &__block_literal_global_191;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
  v127[18] = v26;
  v126[19] = @"retouch";
  v86 = @"dynamic";
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __53__PICompositionSerializerFormatVersion__versionRules__block_invoke_9;
  v46[3] = &__block_descriptor_40_e32___NSString_16__0__NUAdjustment_8l;
  v46[4] = a1;
  v25 = MEMORY[0x1CCA61740](v46);
  v87 = v25;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
  v127[19] = v24;
  v126[20] = @"inpaint";
  v84 = @"dynamic";
  v85 = &__block_literal_global_211;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
  v127[20] = v23;
  v126[21] = @"inpaintMasks";
  v82 = @"version";
  v83 = @"1.12";
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
  v127[21] = v22;
  v126[22] = @"selectiveColor";
  v80 = @"version";
  v81 = @"1.4";
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
  v127[22] = v21;
  v126[23] = @"sharpen";
  v78 = @"version";
  v79 = @"1.4";
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v127[23] = v20;
  v126[24] = @"slomo";
  v76 = @"version";
  v77 = @"1.4";
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
  v127[24] = v19;
  v126[25] = @"smartBlackAndWhite";
  v74 = @"version";
  v75 = @"1.4";
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
  v127[25] = v18;
  v126[26] = @"smartColor";
  v72 = @"version";
  v73 = @"1.5";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v127[26] = v17;
  v126[27] = @"smartTone";
  v70 = @"dynamic";
  v71 = &__block_literal_global_235;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
  v127[27] = v16;
  v126[28] = @"source";
  v68 = @"version";
  v69 = @"1.4";
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v69 forKeys:&v68 count:1];
  v127[28] = v15;
  v126[29] = @"trim";
  v66 = @"version";
  v67 = @"1.4";
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v127[29] = v14;
  v126[30] = @"videoPosterFrame";
  v64 = @"version";
  v65 = @"1.4";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
  v127[30] = v3;
  v126[31] = @"vignette";
  v62 = @"version";
  v63 = @"1.4";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
  v127[31] = v4;
  v126[32] = @"whiteBalance";
  v60 = @"dynamic";
  v61 = &__block_literal_global_252;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
  v127[32] = v5;
  v126[33] = @"videoStabilize";
  v58 = @"version";
  v59 = @"1.7";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v127[33] = v6;
  v126[34] = @"videoCrossfadeLoop";
  v56 = @"version";
  v57 = @"1.7";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
  v127[34] = v7;
  v126[35] = @"semanticEnhance";
  v54 = @"version";
  v55 = @"1.8";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
  v127[35] = v8;
  v126[36] = @"semanticStyle";
  v52 = @"dynamic";
  v53 = &__block_literal_global_272;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v53 forKeys:&v52 count:1];
  v127[36] = v9;
  v126[37] = @"portraitVideo";
  v50 = @"dynamic";
  v51 = &__block_literal_global_283;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v127[37] = v10;
  v126[38] = @"cinematicAudio";
  v48 = @"dynamic";
  v49 = &__block_literal_global_291_17337;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v127[38] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:39];

  return v12;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = [v2 settings];

  LODWORD(v3) = [v3 adjustmentHasPerspective:@"Crop" settings:v4];
  if (v3)
  {
    return @"1.6";
  }

  else
  {
    return @"1.4";
  }
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_9(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) locallySupportedFormatVersions];
  v5 = @"1.4";
  v6 = [v4 indexOfObject:@"1.4"];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = v3;
  obj = [v3 objectForKeyedSubscript:@"inputStrokes"];
  v7 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"mode"];
        v13 = PIRetouchModeFromString(v12);

        if (v13 == 2)
        {
          v14 = @"1.7";
        }

        else
        {
          v14 = @"1.4";
        }

        v15 = [v11 objectForKeyedSubscript:@"clipRect"];
        NUPixelRectFromArray();

        if (NUPixelRectIsNull())
        {
          v16 = v14;
        }

        else
        {
          v16 = @"1.9";
        }

        v17 = [*(a1 + 32) locallySupportedFormatVersions];
        v18 = [v17 indexOfObject:v16];

        if (v6 != 0x7FFFFFFFFFFFFFFFLL && v6 < v18)
        {
          v6 = v18;
          v5 = v16;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  return v5;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"renderingVersion"];
  v3 = v2;
  v4 = @"1.12";
  if (v2 && [v2 unsignedIntegerValue])
  {
    v4 = @"1.13";
  }

  return v4;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"renderingVersionAtCapture"];
  if ([v2 unsignedIntegerValue] <= 1)
  {
    v3 = @"1.9";
  }

  else
  {
    v3 = @"1.10";
  }

  return v3;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"cast"];
  if ([v2 isEqualToString:@"BrightPop"])
  {
    v3 = @"1.13";
  }

  else
  {
    v3 = @"1.12";
  }

  return v3;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"colorType"];
  if ([v2 isEqualToString:@"warmTint"])
  {
    v3 = @"1.5.1";
  }

  else
  {
    v3 = @"1.4";
  }

  return v3;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 settings];
  v3 = [PICompositionSerializerFormatVersion adjustmentHasRetouchStyleCleanupOperations:@"Cleanup" settings:v2];

  if (v3)
  {
    return @"1.12.2";
  }

  else
  {
    return @"1.12";
  }
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [a2 objectForKeyedSubscript:{@"inputCorrectionInfo", 0}];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    v6 = @"1.5";
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v8 = [*(*(&v10 + 1) + 8 * v7) objectForKeyedSubscript:@"convexHull"];

      if (v8)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        v6 = @"1.4";
        break;
      }
    }
  }

  else
  {
    v6 = @"1.4";
  }

  return v6;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_7(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"boostVersion"];

  if (v2)
  {
    return @"1.9.1";
  }

  else
  {
    return @"1.4";
  }
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"spillMatteAllowed"];

  if (v3)
  {
    v4 = @"1.8";
  }

  else
  {
    v5 = [v2 objectForKeyedSubscript:@"kind"];
    if ([v5 isEqualToString:@"StudioV2"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"ContourV2") & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"StageV2"))
    {
      v4 = @"1.5";
    }

    else
    {
      v4 = @"1.5";
      if (([v5 isEqualToString:@"StageMonoV2"] & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"StageWhite"))
      {
        v4 = @"1.4";
      }
    }
  }

  return v4;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 objectForKeyedSubscript:@"radius"];
  [v2 floatValue];
  if (v3 <= 5.0)
  {
    v4 = @"1.4";
  }

  else
  {
    v4 = @"1.5";
  }

  return v4;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"intensity"];

  v4 = @"1.4";
  if (v3)
  {
    v5 = [v2 objectForKeyedSubscript:@"intensity"];
    [v5 floatValue];
    if (v6 < 1.0)
    {
      v4 = @"1.6";
    }
  }

  return v4;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"intensity"];

  v4 = @"1.4";
  if (v3)
  {
    v5 = [v2 objectForKeyedSubscript:@"intensity"];
    [v5 floatValue];
    if (v6 < 1.0)
    {
      v4 = @"1.6";
    }
  }

  return v4;
}

__CFString *__53__PICompositionSerializerFormatVersion__versionRules__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKeyedSubscript:@"depthInfo"];
  v4 = [v3 objectForKeyedSubscript:@"SDOFRenderingVersion"];
  v5 = [v4 intValue];

  if (v5 <= 8)
  {
    v8 = [v2 objectForKeyedSubscript:@"focusRect"];

    v6 = @"1.11";
    if (!v8 && v5 <= 6)
    {
      if (v5 <= 5)
      {
        if (v5 == 5)
        {
          v6 = @"1.9";
        }

        else
        {
          v9 = [v2 objectForKeyedSubscript:@"glassesMatteAllowed"];

          if (v9)
          {
            v6 = @"1.8";
          }

          else
          {
            v6 = @"1.5";
          }
        }
      }

      else
      {
        v6 = @"1.10";
      }
    }
  }

  else
  {
    v6 = @"1.12.1";
  }

  return v6;
}

+ (BOOL)adjustmentHasRetouchStyleCleanupOperations:(id)a3 settings:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a4;
  if ([a3 isEqualToString:@"Cleanup"])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [v5 objectForKeyedSubscript:@"operations"];
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v20;
      v18 = v5;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v19 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"options"];
          v13 = [v11 objectForKeyedSubscript:@"mode"];
          if (([v12 integerValue] & 0x300) != 0)
          {

LABEL_15:
            v16 = 1;
            v5 = v18;
            goto LABEL_16;
          }

          v14 = kRepairModeClone;
          v15 = [v13 isEqualToString:v14];

          if (v15)
          {
            goto LABEL_15;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v16 = 0;
        v5 = v18;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_16:
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (BOOL)adjustmentHasPerspective:(id)a3 settings:(id)a4
{
  v5 = a4;
  if ([a3 isEqualToString:@"Crop"])
  {
    v6 = [v5 objectForKeyedSubscript:@"pitch"];
    if (v6 && (v7 = v6, [v5 objectForKeyedSubscript:@"pitch"], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "floatValue"), v9 = NUIsRoughlyEqual(), v8, v7, !v9) || (objc_msgSend(v5, "objectForKeyedSubscript:", @"yaw"), (v10 = objc_claimAutoreleasedReturnValue()) != 0) && (v11 = v10, objc_msgSend(v5, "objectForKeyedSubscript:", @"yaw"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "floatValue"), v13 = NUIsRoughlyEqual(), v12, v11, !v13))
    {
      v16 = 1;
    }

    else
    {
      v14 = [v5 objectForKeyedSubscript:@"smart"];
      if (v14)
      {
        v15 = [v5 objectForKeyedSubscript:@"smart"];
        v16 = [v15 BOOLValue];
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)locallySupportedFormatVersions
{
  if (locallySupportedFormatVersions_onceToken != -1)
  {
    dispatch_once(&locallySupportedFormatVersions_onceToken, &__block_literal_global_17547);
  }

  v3 = locallySupportedFormatVersions_locallySupportedFormatVersions;

  return v3;
}

void __70__PICompositionSerializerFormatVersion_locallySupportedFormatVersions__block_invoke()
{
  v2[15] = *MEMORY[0x1E69E9840];
  v2[0] = @"1.3";
  v2[1] = @"1.4";
  v2[2] = @"1.5";
  v2[3] = @"1.5.1";
  v2[4] = @"1.6";
  v2[5] = @"1.7";
  v2[6] = @"1.8";
  v2[7] = @"1.9";
  v2[8] = @"1.9.1";
  v2[9] = @"1.10";
  v2[10] = @"1.11";
  v2[11] = @"1.12";
  v2[12] = @"1.12.1";
  v2[13] = @"1.12.2";
  v2[14] = @"1.13";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:15];
  v1 = locallySupportedFormatVersions_locallySupportedFormatVersions;
  locallySupportedFormatVersions_locallySupportedFormatVersions = v0;
}

@end