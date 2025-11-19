@interface PISemanticStyleProcessor
+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6;
+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (id)roiTileArrayForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5;
+ (int)formatForInputAtIndex:(int)a3;
@end

@implementation PISemanticStyleProcessor

+ (id)roiTileArrayForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  v8[1] = *MEMORY[0x1E69E9840];
  [a1 roiForInput:*&a3 arguments:a4 outputRect:{a5.origin.x, a5.origin.y, a5.size.width, a5.size.height}];
  v5 = [MEMORY[0x1E695F688] vectorWithCGRect:?];
  v8[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  return v6;
}

+ (CGRect)roiForInput:(int)a3 arguments:(id)a4 outputRect:(CGRect)a5
{
  if (a3)
  {
    v6 = a3;
    v7 = a4;
    v8 = [v7 objectForKeyedSubscript:@"extents"];
    v9 = [v7 objectForKeyedSubscript:@"useLightMap"];

    [v9 BOOLValue];
    v10 = [v8 objectAtIndexedSubscript:v6];
    [v10 CGRectValue];
    x = v11;
    y = v13;
    width = v15;
    height = v17;

    if ((a3 - 6) >= 3)
    {
      v19 = [v8 objectAtIndexedSubscript:0];
      [v19 CGRectValue];

      NUCGRectConvertFromRectToRect();
      x = v20;
      y = v21;
      width = v22;
      height = v23;
    }
  }

  else
  {
    height = a5.size.height;
    width = a5.size.width;
    y = a5.origin.y;
    x = a5.origin.x;
  }

  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

+ (int)formatForInputAtIndex:(int)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3 < 9)
  {
    return **(&unk_1E82ABD38 + a3);
  }

  v23 = *&a3;
  v4 = NUAssertLogger_22529();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid index %d", v23];
    *buf = 138543362;
    v25 = v5;
    _os_log_error_impl(&dword_1C7694000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
  }

  v6 = MEMORY[0x1E69B38E8];
  specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
  v8 = NUAssertLogger_22529();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (specific)
  {
    if (v9)
    {
      v12 = dispatch_get_specific(*v6);
      v13 = MEMORY[0x1E696AF00];
      v14 = v12;
      v15 = [v13 callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543618;
      v25 = v12;
      v26 = 2114;
      v27 = v16;
      _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
    }
  }

  else if (v9)
  {
    v10 = [MEMORY[0x1E696AF00] callStackSymbols];
    v11 = [v10 componentsJoinedByString:@"\n"];
    *buf = 138543362;
    v25 = v11;
    _os_log_error_impl(&dword_1C7694000, v8, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
  }

  v17 = _NUAssertFailHandler();
  return [(PISemanticStyleProcessor *)v17 processWithInputs:v18 arguments:v19 output:v20 error:v21, v22];
}

+ (BOOL)processWithInputs:(id)a3 arguments:(id)a4 output:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKeyedSubscript:@"useStyleEngine"];
  v60 = [v11 BOOLValue];

  v12 = [v9 objectForKeyedSubscript:@"useLightMap"];
  v13 = [v12 BOOLValue];

  v59 = [v8 objectAtIndexedSubscript:0];
  v56 = [v8 objectAtIndexedSubscript:4];
  v55 = [v8 objectAtIndexedSubscript:5];
  v51 = [v8 objectAtIndexedSubscript:1];
  v50 = [v8 objectAtIndexedSubscript:2];
  v48 = [v8 objectAtIndexedSubscript:3];
  v45 = [v8 objectAtIndexedSubscript:6];
  v14 = 0;
  v15 = 0;
  v53 = v13;
  if (v13)
  {
    v15 = [v8 objectAtIndexedSubscript:7];
    v14 = [v8 objectAtIndexedSubscript:8];
  }

  v16 = [v9 objectForKeyedSubscript:@"extents"];
  v17 = [v16 objectAtIndexedSubscript:0];
  [v17 CGRectValue];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  [v10 region];
  v92.origin.x = v19;
  v92.origin.y = v21;
  v92.size.width = v23;
  v92.size.height = v25;
  v91 = CGRectIntersection(v90, v92);
  x = v91.origin.x;
  y = v91.origin.y;
  width = v91.size.width;
  height = v91.size.height;
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __69__PISemanticStyleProcessor_processWithInputs_arguments_output_error___block_invoke;
  v83[3] = &unk_1E82ABCC8;
  v84 = v8;
  v85 = v16;
  v86 = v19;
  v87 = v21;
  v88 = v23;
  v89 = v25;
  v58 = v16;
  v57 = v8;
  v29 = MEMORY[0x1CCA61740](v83);
  v30 = [v9 objectForKeyedSubscript:@"stats"];

  if (v30)
  {
    v31 = 2;
  }

  else
  {
    v31 = 3;
  }

  v42 = v31;
  v47 = [v10 metalCommandBuffer];
  v41 = [v47 commandQueue];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __69__PISemanticStyleProcessor_processWithInputs_arguments_output_error___block_invoke_2;
  v61[3] = &unk_1E82ABCF0;
  v74 = v19;
  v75 = v21;
  v76 = v23;
  v77 = v25;
  v78 = x;
  v79 = y;
  v80 = width;
  v81 = height;
  v62 = v10;
  v63 = v59;
  v64 = v56;
  v65 = v55;
  v66 = v51;
  v67 = v50;
  v68 = v48;
  v69 = v9;
  v70 = v15;
  v82 = v53;
  v73 = v29;
  v71 = v14;
  v72 = v45;
  v46 = v45;
  v32 = v14;
  v54 = v15;
  v44 = v9;
  v49 = v48;
  v33 = v50;
  v52 = v51;
  v34 = v55;
  v35 = v56;
  v36 = v29;
  v37 = v59;
  v38 = v10;
  v39 = [PISemanticStyleRenderer usingSharedSemanticStyleRendererWithMetalCommandQueue:v41 processingType:v42 useStyleEngine:v60 perform:v61];

  return v39;
}

uint64_t __69__PISemanticStyleProcessor_processWithInputs_arguments_output_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  [v4 region];

  v5 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v5 CGRectValue];

  NUPixelRectFromCGRect();
  NUPixelRectScale();
  NUPixelRectToCGRect();
  return NURectFlipYOrigin();
}

BOOL __69__PISemanticStyleProcessor_processWithInputs_arguments_output_error___block_invoke_2(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [v3 setLogicalImageSize:{*(a1 + 144), *(a1 + 152)}];
  NURectFlipYOrigin();
  [v3 setRenderRegionRect:?];
  v4 = [*(a1 + 32) metalTexture];
  [v3 setOutputImageTexture:v4];

  [*(a1 + 32) region];
  NURectFlipYOrigin();
  [v3 setOutputImageTextureMappedRegion:?];
  v5 = [*(a1 + 40) metalTexture];
  [v3 setInputImageTexture:v5];

  (*(*(a1 + 120) + 16))();
  [v3 setInputImageTextureMappedRegion:?];
  v6 = [*(a1 + 48) metalTexture];
  [v3 setInputLinearImageTexture:v6];

  __asm { FMOV            V1.2D, #1.0 }

  [v3 setLogicalImageToInputLinearImageScale:{vdivq_f64(_Q1, *(a1 + 144))}];
  v12 = [*(a1 + 56) metalTexture];
  [v3 setInputGainMapTexture:v12];

  v13 = [*(a1 + 64) metalTexture];
  [v3 setInputPersonMaskTexture:v13];

  (*(*(a1 + 120) + 16))();
  [v3 setInputPersonMaskTextureMappedRegion:?];
  v14 = [*(a1 + 72) metalTexture];
  [v3 setInputSkinMaskTexture:v14];

  (*(*(a1 + 120) + 16))();
  [v3 setInputSkinMaskTextureMappedRegion:?];
  v15 = [*(a1 + 80) metalTexture];
  [v3 setInputSkyMaskTexture:v15];

  (*(*(a1 + 120) + 16))();
  [v3 setInputSkyMaskTextureMappedRegion:?];
  v16 = [*(a1 + 88) objectForKeyedSubscript:@"sceneType"];
  [v3 setSemanticStyleSceneType:{objc_msgSend(v16, "intValue")}];

  v17 = [*(a1 + 88) objectForKeyedSubscript:@"srlCurveParameter"];
  [v17 floatValue];
  [v3 setInputSRLCurveParameter:?];

  v18 = [*(a1 + 88) objectForKeyedSubscript:@"brightnessValue"];
  [v3 setBrightnessValue:v18];

  v19 = [*(a1 + 88) objectForKeyedSubscript:@"tuningType"];
  [v3 setTuningParameterVariant:v19];

  v20 = [*(a1 + 88) objectForKeyedSubscript:@"baseGain"];
  [v20 floatValue];
  [v3 setInputLinearBaseGain:?];

  v21 = [*(a1 + 88) objectForKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];
  [v21 floatValue];
  [v3 setFaceBasedGlobalExposureBoostRatio:?];

  v22 = [*(a1 + 88) objectForKeyedSubscript:@"cast"];
  v23 = PISemanticStyleCastToMakerNoteString(v22);

  v24 = [*(a1 + 88) objectForKeyedSubscript:@"intensity"];
  [v24 floatValue];
  v26 = v25;

  v27 = [*(a1 + 88) objectForKeyedSubscript:@"tone"];
  [v27 floatValue];
  v29 = v28;

  v30 = [*(a1 + 88) objectForKeyedSubscript:@"color"];
  [v30 floatValue];
  v32 = v31;

  v33 = objc_alloc(MEMORY[0x1E6991720]);
  LODWORD(v34) = v26;
  LODWORD(v35) = v29;
  LODWORD(v36) = v32;
  v37 = [v33 initWithCastType:v23 castIntensity:v34 toneBias:v35 colorBias:v36];
  [v3 setInputStyle:v37];
  if (*(a1 + 192) == 1)
  {
    v38 = [*(a1 + 88) objectForKeyedSubscript:@"stats"];
    [v3 setInputStatisticsByStatsType:v38];

    v39 = [*(a1 + 88) objectForKeyedSubscript:@"xstats"];
    [v3 setInputStatisticsByStatsKey:v39];

    v40 = [*(a1 + 96) metalTexture];
    [v3 setInputSmallLightMapTexture:v40];

    v41 = [*(a1 + 104) metalTexture];
    [v3 setInputSmallLinearLightMapTexture:v41];
  }

  v42 = [*(a1 + 88) objectForKeyedSubscript:@"baselineExposure"];
  [v42 floatValue];
  [v3 setBaselineExposure:?];

  v43 = [*(a1 + 112) metalTexture];
  [v3 setInputGlobalToneCurveTexture:v43];

  v44 = [v3 process];
  if (v44)
  {
    if (*MEMORY[0x1E69B3D78] != -1)
    {
      dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_405);
    }

    v45 = *MEMORY[0x1E69B3D80];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
    {
      v47[0] = 67109120;
      v47[1] = v44;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "PISemanticStyleProcessor: process failed with error %d", v47, 8u);
    }
  }

  return v44 == 0;
}

@end