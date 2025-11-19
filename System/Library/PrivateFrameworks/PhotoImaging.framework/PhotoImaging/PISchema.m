@interface PISchema
+ (NUIdentifier)identifier;
+ (id)apertureRedEyeSchema;
+ (id)autoLoopSchema;
+ (id)cinematicAudioSchema;
+ (id)cropSchema;
+ (id)curvesSchema;
+ (id)debugSchema;
+ (id)definitionSchema;
+ (id)depthEffectSchema;
+ (id)effect3DSchema;
+ (id)effectSchema;
+ (id)grainSchema;
+ (id)highResFusionSchema;
+ (id)inpaintMasksSchema;
+ (id)inpaintSchema;
+ (id)levelsSchema;
+ (id)livePhotoKeyFrameSchema;
+ (id)muteSchema;
+ (id)noiseReductionSchema;
+ (id)orientationSchema;
+ (id)photosCompositionSchema;
+ (id)photosSchema;
+ (id)portraitEffectSchema;
+ (id)portraitVideoSchema;
+ (id)rawNoiseReductionSchema;
+ (id)rawSchema;
+ (id)redEyeSchema;
+ (id)registerPhotosSchema;
+ (id)registeredPhotosSchemaIdentifier;
+ (id)retouchSchema;
+ (id)selectiveColorSchema;
+ (id)semanticEnhance;
+ (id)semanticStyleSchema;
+ (id)sharpenSchema;
+ (id)slomoSchema;
+ (id)smartBlackAndWhiteSchema;
+ (id)smartColorSchema;
+ (id)smartToneSchema;
+ (id)trimSchema;
+ (id)videoCrossfadeLoopSchema;
+ (id)videoPosterFrameSchema;
+ (id)videoStabilizeSchema;
+ (id)vignetteSchema;
+ (id)whiteBalanceSchema;
@end

@implementation PISchema

+ (NUIdentifier)identifier
{
  v2 = [objc_alloc(MEMORY[0x1E69B3AD0]) initWithName:@"PhotosComposition"];

  return v2;
}

+ (id)registerPhotosSchema
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[PISchema photosSchema];
  v4 = [MEMORY[0x1E69B3CA8] sharedRegistry];
  v27 = 0;
  v5 = [v4 registerSchemas:v3 error:&v27];
  v6 = v27;

  if (v5)
  {
    v7 = [MEMORY[0x1E69B39C8] registry];
    [v7 registerClass:objc_opt_class() forCacheNodeType:@"AutoLoop"];

    v8 = [MEMORY[0x1E69B39C8] registry];
    [v8 registerClass:objc_opt_class() forCacheNodeType:@"Retouch"];

    v9 = [MEMORY[0x1E69B39C8] registry];
    [v9 registerClass:objc_opt_class() forCacheNodeType:@"Inpaint"];

    v10 = objc_alloc_init(PIModernPhotosPipeline);
    v11 = [a1 identifier];
    v12 = [MEMORY[0x1E69B3C48] sharedRegistry];
    [v12 registerRenderPipeline:v10 forIdentifier:v11];

    return v11;
  }

  else
  {
    v14 = NUAssertLogger_25023();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"failed to register %@: %@", v3, v6];
      *buf = 138543362;
      v29 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_25023();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v22;
        v30 = 2114;
        v31 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    return NUAssertLogger_25023();
  }
}

+ (id)registeredPhotosSchemaIdentifier
{
  v3 = [a1 identifier];
  v4 = [MEMORY[0x1E69B3C48] sharedRegistry];
  v5 = [v4 renderPipelineForIdentifier:v3];

  if (!v5)
  {
    v6 = a1;
    objc_sync_enter(v6);
    v7 = [MEMORY[0x1E69B3C48] sharedRegistry];
    v8 = [v7 renderPipelineForIdentifier:v3];

    if (!v8)
    {
      v9 = [v6 registerPhotosSchema];
    }

    objc_sync_exit(v6);
  }

  return v3;
}

+ (id)photosCompositionSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4724500 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)photosSchema
{
  v44[40] = *MEMORY[0x1E69E9840];
  v43 = +[PISchema photosCompositionSchema];
  v44[0] = v43;
  v42 = +[PISchema rawSchema];
  v44[1] = v42;
  v41 = +[PISchema rawNoiseReductionSchema];
  v44[2] = v41;
  v40 = +[PISchema retouchSchema];
  v44[3] = v40;
  v39 = +[PISchema inpaintSchema];
  v44[4] = v39;
  v38 = +[PISchema inpaintMasksSchema];
  v44[5] = v38;
  v37 = +[PISchema smartToneSchema];
  v44[6] = v37;
  v36 = +[PISchema smartColorSchema];
  v44[7] = v36;
  v35 = +[PISchema whiteBalanceSchema];
  v44[8] = v35;
  v34 = +[PISchema cropSchema];
  v44[9] = v34;
  v33 = +[PISchema trimSchema];
  v44[10] = v33;
  v32 = +[PISchema slomoSchema];
  v44[11] = v32;
  v31 = +[PISchema livePhotoKeyFrameSchema];
  v44[12] = v31;
  v30 = +[PISchema muteSchema];
  v44[13] = v30;
  v29 = +[PISchema videoPosterFrameSchema];
  v44[14] = v29;
  v28 = +[PISchema autoLoopSchema];
  v44[15] = v28;
  v27 = +[PISchema orientationSchema];
  v44[16] = v27;
  v26 = +[PISchema effectSchema];
  v44[17] = v26;
  v25 = +[PISchema redEyeSchema];
  v44[18] = v25;
  v24 = +[PISchema apertureRedEyeSchema];
  v44[19] = v24;
  v23 = +[PISchema smartBlackAndWhiteSchema];
  v44[20] = v23;
  v22 = +[PISchema grainSchema];
  v44[21] = v22;
  v21 = +[PISchema sharpenSchema];
  v44[22] = v21;
  v20 = +[PISchema definitionSchema];
  v44[23] = v20;
  v19 = +[PISchema noiseReductionSchema];
  v44[24] = v19;
  v18 = +[PISchema vignetteSchema];
  v44[25] = v18;
  v17 = +[PISchema levelsSchema];
  v44[26] = v17;
  v16 = +[PISchema curvesSchema];
  v44[27] = v16;
  v15 = +[PISchema selectiveColorSchema];
  v44[28] = v15;
  v14 = +[PISchema depthEffectSchema];
  v44[29] = v14;
  v2 = +[PISchema effect3DSchema];
  v44[30] = v2;
  v3 = +[PISchema portraitEffectSchema];
  v44[31] = v3;
  v4 = +[PISchema highResFusionSchema];
  v44[32] = v4;
  v5 = +[PISchema videoStabilizeSchema];
  v44[33] = v5;
  v6 = +[PISchema videoCrossfadeLoopSchema];
  v44[34] = v6;
  v7 = +[PISchema debugSchema];
  v44[35] = v7;
  v8 = +[PISchema semanticEnhance];
  v44[36] = v8;
  v9 = +[PISchema semanticStyleSchema];
  v44[37] = v9;
  v10 = +[PISchema portraitVideoSchema];
  v44[38] = v10;
  v11 = +[PISchema cinematicAudioSchema];
  v44[39] = v11;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:40];

  return v13;
}

+ (id)cinematicAudioSchema
{
  v34[3] = *MEMORY[0x1E69E9840];
  v33[0] = @"isa";
  v33[1] = @"identifier";
  v34[0] = @"Adjustment";
  v34[1] = @"CinematicAudio~1.0";
  v33[2] = @"settings";
  v31[0] = @"enabled";
  v31[1] = @"dialogMixBias";
  v32[0] = &unk_1F4724460;
  v32[1] = &unk_1F4724488;
  v31[2] = @"renderingStyle";
  v30[0] = @"enum";
  v29[0] = @"isa";
  v29[1] = @"values";
  v28[0] = @"original";
  v28[1] = @"voice";
  v28[2] = @"studioVoice";
  v28[3] = @"onCameraVoice";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:4];
  v29[2] = @"default";
  v30[1] = v2;
  v30[2] = @"original";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v31[3] = @"renderingVersion";
  v32[2] = v3;
  v32[3] = &unk_1F47244B0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:4];
  v34[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v23 = 0;
  v6 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:v5 error:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    v10 = NUAssertLogger_25023();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v8];
      *buf = 138543362;
      v25 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_25023();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v6;
}

+ (id)portraitVideoSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4724438 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)semanticStyleSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47242F8 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)semanticEnhance
{
  v42[3] = *MEMORY[0x1E69E9840];
  v41[0] = @"isa";
  v41[1] = @"identifier";
  v42[0] = @"Adjustment";
  v42[1] = @"SemanticEnhance~1.0";
  v41[2] = @"settings";
  v39[0] = @"enabled";
  v39[1] = @"intensity";
  v40[0] = &unk_1F4723F88;
  v40[1] = &unk_1F4723FB0;
  v39[2] = @"sceneLabel";
  v39[3] = @"sceneConfidence";
  v40[2] = &unk_1F4723FD8;
  v40[3] = &unk_1F4724000;
  v39[4] = @"boundingBoxes";
  v38[0] = @"array";
  v37[0] = @"isa";
  v37[1] = @"content";
  v35[0] = @"isa";
  v35[1] = @"properties";
  v36[0] = @"compound";
  v36[1] = &unk_1F4723F60;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v37[2] = @"required";
  v3 = MEMORY[0x1E695E110];
  v38[1] = v2;
  v38[2] = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];
  v40[4] = v4;
  v39[5] = @"faceBoundingBoxes";
  v34[0] = @"array";
  v33[0] = @"isa";
  v33[1] = @"content";
  v31[0] = @"isa";
  v31[1] = @"properties";
  v32[0] = @"compound";
  v32[1] = &unk_1F4723F60;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v33[2] = @"required";
  v34[1] = v5;
  v34[2] = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v40[5] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:6];
  v42[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:3];

  v26 = 0;
  v9 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:v8 error:&v26];
  v10 = v26;
  v11 = v10;
  if (!v9)
  {
    v13 = NUAssertLogger_25023();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v11];
      *buf = 138543362;
      v28 = v14;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v15 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v17 = NUAssertLogger_25023();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v18)
      {
        v21 = dispatch_get_specific(*v15);
        v22 = MEMORY[0x1E696AF00];
        v23 = v21;
        v24 = [v22 callStackSymbols];
        v25 = [v24 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v28 = v21;
        v29 = 2114;
        v30 = v25;
        _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v18)
    {
      v19 = [MEMORY[0x1E696AF00] callStackSymbols];
      v20 = [v19 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v20;
      _os_log_error_impl(&dword_1C7694000, v17, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v9;
}

+ (id)debugSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4723E98 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)videoCrossfadeLoopSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4723C40 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)videoStabilizeSchema
{
  v38[3] = *MEMORY[0x1E69E9840];
  v37[0] = @"isa";
  v37[1] = @"identifier";
  v38[0] = @"Adjustment";
  v38[1] = @"VideoStabilize~1.0";
  v37[2] = @"settings";
  v36[0] = &unk_1F4723A38;
  v35[0] = @"enabled";
  v35[1] = @"keyframes";
  v33[1] = @"content";
  v34[0] = @"array";
  v31[0] = @"isa";
  v31[1] = @"properties";
  v32[0] = @"compound";
  v32[1] = &unk_1F4723948;
  v33[0] = @"isa";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:2];
  v36[1] = v3;
  v35[2] = @"stabCropRect";
  v29[0] = @"isa";
  v29[1] = @"properties";
  v30[0] = @"compound";
  v30[1] = &unk_1F4723A10;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
  v36[2] = v4;
  v36[3] = &unk_1F4723A60;
  v35[3] = @"cropFraction";
  v35[4] = @"analysisType";
  v36[4] = &unk_1F4723A88;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:5];
  v38[2] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

  v24 = 0;
  v7 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:v6 error:&v24];
  v8 = v24;
  v9 = v8;
  if (!v7)
  {
    v11 = NUAssertLogger_25023();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v9];
      *buf = 138543362;
      v26 = v12;
      _os_log_error_impl(&dword_1C7694000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v15 = NUAssertLogger_25023();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v19 = dispatch_get_specific(*v13);
        v20 = MEMORY[0x1E696AF00];
        v21 = v19;
        v22 = [v20 callStackSymbols];
        v23 = [v22 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v26 = v19;
        v27 = 2114;
        v28 = v23;
        _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v26 = v18;
      _os_log_error_impl(&dword_1C7694000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v7;
}

+ (id)selectiveColorSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4723880 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)curvesSchema
{
  v53[3] = *MEMORY[0x1E69E9840];
  v52[0] = @"isa";
  v52[1] = @"identifier";
  v53[0] = @"Adjustment";
  v53[1] = @"Curves";
  v52[2] = @"settings";
  v51[0] = &unk_1F4723650;
  v50[0] = @"enabled";
  v50[1] = @"pointsR";
  v49[0] = @"array";
  v48[0] = @"isa";
  v48[1] = @"content";
  v46[0] = @"isa";
  v46[1] = @"properties";
  v47[0] = @"compound";
  v47[1] = &unk_1F4723628;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v49[1] = v28;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v51[1] = v27;
  v50[2] = @"pointsG";
  v44[1] = @"content";
  v45[0] = @"array";
  v43[1] = &unk_1F4723628;
  v44[0] = @"isa";
  v42[0] = @"isa";
  v42[1] = @"properties";
  v43[0] = @"compound";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
  v45[1] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v51[2] = v3;
  v50[3] = @"pointsB";
  v40[1] = @"content";
  v41[0] = @"array";
  v39[1] = &unk_1F4723628;
  v40[0] = @"isa";
  v38[0] = @"isa";
  v38[1] = @"properties";
  v39[0] = @"compound";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v41[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:2];
  v51[3] = v5;
  v50[4] = @"pointsL";
  v36[1] = @"content";
  v37[0] = @"array";
  v35[1] = &unk_1F4723628;
  v36[0] = @"isa";
  v34[0] = @"isa";
  v34[1] = @"properties";
  v35[0] = @"compound";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v37[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v50[5] = @"auto";
  v51[4] = v7;
  v51[5] = &unk_1F4723678;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:v50 count:6];
  v53[2] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:3];

  v29 = 0;
  v10 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:v9 error:&v29];
  v11 = v29;
  v12 = v11;
  if (!v10)
  {
    v14 = NUAssertLogger_25023();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v12];
      *buf = 138543362;
      v31 = v15;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v16 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v18 = NUAssertLogger_25023();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v19)
      {
        v22 = dispatch_get_specific(*v16);
        v23 = MEMORY[0x1E696AF00];
        v24 = v22;
        v25 = [v23 callStackSymbols];
        v26 = [v25 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v31 = v22;
        v32 = 2114;
        v33 = v26;
        _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v19)
    {
      v20 = [MEMORY[0x1E696AF00] callStackSymbols];
      v21 = [v20 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v31 = v21;
      _os_log_error_impl(&dword_1C7694000, v18, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v10;
}

+ (id)levelsSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4723588 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)whiteBalanceSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4722E80 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)noiseReductionSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4722B88 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)definitionSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4722A98 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)orientationSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47229D0 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)vignetteSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4722958 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)inpaintMasksSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4722840 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)inpaintSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47227F0 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)retouchSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4722250 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)apertureRedEyeSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721D78 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)redEyeSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721BE8 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)effectSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721AF8 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)portraitEffectSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721A08 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)effect3DSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47218C8 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)depthEffectSchema
{
  v32[3] = *MEMORY[0x1E69E9840];
  v31[0] = @"isa";
  v31[1] = @"identifier";
  v32[0] = @"Adjustment";
  v32[1] = @"DepthEffect~1.0";
  v31[2] = @"settings";
  v29[0] = @"enabled";
  v29[1] = @"glassesMatteAllowed";
  v30[0] = &unk_1F4721760;
  v30[1] = &unk_1F4721788;
  v30[2] = &unk_1F47217B0;
  v29[2] = @"aperture";
  v29[3] = @"focusRect";
  v27[0] = @"isa";
  v27[1] = @"properties";
  v28[0] = @"compound";
  v28[1] = &unk_1F4721738;
  v27[2] = @"required";
  v28[2] = MEMORY[0x1E695E110];
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:3];
  v29[4] = @"depthInfo";
  v30[3] = v2;
  v30[4] = &unk_1F47217D8;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];
  v32[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v22 = 0;
  v5 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:v4 error:&v22];
  v6 = v22;
  v7 = v6;
  if (!v5)
  {
    v9 = NUAssertLogger_25023();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v7];
      *buf = 138543362;
      v24 = v10;
      _os_log_error_impl(&dword_1C7694000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v11 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v13 = NUAssertLogger_25023();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(*v11);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        v20 = [v18 callStackSymbols];
        v21 = [v20 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v17;
        v25 = 2114;
        v26 = v21;
        _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      v15 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [v15 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v16;
      _os_log_error_impl(&dword_1C7694000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v5;
}

+ (id)highResFusionSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721670 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)autoLoopSchema
{
  v34[3] = *MEMORY[0x1E69E9840];
  v33[0] = @"isa";
  v33[1] = @"identifier";
  v34[0] = @"Adjustment";
  v34[1] = @"AutoLoop~1.0";
  v33[2] = @"settings";
  v31[0] = @"enabled";
  v31[1] = @"recipe";
  v32[0] = &unk_1F47215A8;
  v32[1] = &unk_1F47215D0;
  v31[2] = @"flavor";
  v30[0] = @"enum";
  v29[0] = @"isa";
  v29[1] = @"values";
  v28[0] = @"AutoLoop";
  v28[1] = @"Mirror";
  v28[2] = @"LongExposure";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v29[2] = @"default";
  v30[1] = v2;
  v30[2] = @"AutoLoop";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:3];
  v32[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:3];
  v34[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];

  v23 = 0;
  v6 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:v5 error:&v23];
  v7 = v23;
  v8 = v7;
  if (!v6)
  {
    v10 = NUAssertLogger_25023();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v8];
      *buf = 138543362;
      v25 = v11;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v12 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v14 = NUAssertLogger_25023();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(*v12);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        v21 = [v19 callStackSymbols];
        v22 = [v21 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v18;
        v26 = 2114;
        v27 = v22;
        _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      v16 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v17;
      _os_log_error_impl(&dword_1C7694000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v6;
}

+ (id)videoPosterFrameSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721580 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)muteSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47214E0 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)livePhotoKeyFrameSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721468 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)slomoSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47213C8 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)trimSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47212B0 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)cropSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4721198 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)sharpenSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4720F90 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)grainSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4720E78 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)smartBlackAndWhiteSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4720D88 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)smartColorSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4720C20 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)smartToneSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4720A40 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)rawNoiseReductionSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F47204F0 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

+ (id)rawSchema
{
  v24 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [MEMORY[0x1E69B3CA0] deserializeFromDictionary:&unk_1F4720388 error:&v19];
  v3 = v19;
  v4 = v3;
  if (!v2)
  {
    v6 = NUAssertLogger_25023();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to register schema %@: %@", 0, v4];
      *buf = 138543362;
      v21 = v7;
      _os_log_error_impl(&dword_1C7694000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v8 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_25023();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v11)
      {
        v14 = dispatch_get_specific(*v8);
        v15 = MEMORY[0x1E696AF00];
        v16 = v14;
        v17 = [v15 callStackSymbols];
        v18 = [v17 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v21 = v14;
        v22 = 2114;
        v23 = v18;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      v12 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [v12 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v21 = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  return v2;
}

@end