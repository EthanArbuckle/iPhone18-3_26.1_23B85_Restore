@interface PISemanticStyleRenderNode
- (NURenderNode)input;
- (PISemanticStyleRenderNode)initWithInput:(id)a3 settings:(id)a4;
- (PISemanticStyleRenderNode)initWithSettings:(id)a3 inputs:(id)a4;
- (id)_evaluateImage:(id *)a3;
- (id)_evaluateImageGeometry:(id *)a3;
- (id)_evaluateVideo:(id *)a3;
- (id)_evaluateVideoComposition:(id *)a3;
- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5;
- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6;
@end

@implementation PISemanticStyleRenderNode

- (id)_evaluateImage:(id *)a3
{
  v143 = *MEMORY[0x1E69E9840];
  v137 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v137 outputImage:a3];
  if (v5)
  {
    v6 = [(NURenderNode *)self inputForKey:@"subjectMatte"];
    v141 = 0;
    v7 = [v6 outputImage:&v141];
    v8 = v141;
    if (!v7)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
      }

      v9 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v8;
        _os_log_impl(&dword_1C7694000, v9, OS_LOG_TYPE_INFO, "Failed to obtain matte image: %{public}@", buf, 0xCu);
      }

      v10 = MEMORY[0x1E695F658];
      v11 = [MEMORY[0x1E695F610] blackColor];
      v12 = [v10 imageWithColor:v11];
      [v5 extent];
      v7 = [v12 imageByCroppingToRect:?];
    }

    v13 = [(NURenderNode *)self inputForKey:@"skinMatte"];
    v140 = 0;
    v14 = [v13 outputImage:&v140];
    v15 = v140;

    v135 = v14;
    if (!v14)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
      }

      v16 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v15;
        _os_log_impl(&dword_1C7694000, v16, OS_LOG_TYPE_INFO, "Failed to obtain matte image: %{public}@", buf, 0xCu);
      }

      v17 = MEMORY[0x1E695F658];
      v18 = [MEMORY[0x1E695F610] blackColor];
      v19 = [v17 imageWithColor:v18];
      [v5 extent];
      v135 = [v19 imageByCroppingToRect:?];
    }

    [(NURenderNode *)self inputForKey:@"skyMatte"];
    v134 = v139 = 0;
    v20 = [v134 outputImage:&v139];
    v21 = v139;

    if (!v20)
    {
      if (*MEMORY[0x1E69B3D78] != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
      }

      v22 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        *&buf[4] = v21;
        _os_log_impl(&dword_1C7694000, v22, OS_LOG_TYPE_INFO, "Failed to obtain matte image: %{public}@", buf, 0xCu);
      }

      v23 = MEMORY[0x1E695F658];
      v24 = [MEMORY[0x1E695F610] blackColor];
      v25 = [v23 imageWithColor:v24];
      [v5 extent];
      v20 = [v25 imageByCroppingToRect:?];
    }

    v136 = v5;
    v26 = [(NURenderNode *)self inputForKey:@"linearThumbnail"];
    v138 = 0;
    v27 = [v26 outputImage:&v138];
    v28 = v138;

    if (v27)
    {
      v118 = v26;
      v119 = v28;
      v132 = v20;
      v29 = [(NURenderNode *)self settings];
      v30 = [v29 objectForKeyedSubscript:@"applyInverseCurveToLinearThumbnail"];
      v31 = [v30 BOOLValue];

      v120 = v13;
      v121 = v6;
      v133 = v7;
      if (v31)
      {
        v32 = [v27 imageByApplyingFilter:@"CIAppleLogToLinear"];
        v33 = v32;
        if (v32)
        {
          v34 = v32;

          v27 = v34;
        }

        else
        {
          if (*MEMORY[0x1E69B3D78] != -1)
          {
            dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
          }

          v35 = *MEMORY[0x1E69B3D80];
          if (os_log_type_enabled(*MEMORY[0x1E69B3D80], OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = @"CIAppleLogToLinear";
            _os_log_error_impl(&dword_1C7694000, v35, OS_LOG_TYPE_ERROR, "Failed to convert linear thumbnail from Log to Linear: missing filter (%@)", buf, 0xCu);
          }
        }

        v36 = [(NURenderNode *)self settings];
        v37 = [v36 objectForKeyedSubscript:@"linearRangeMin"];

        v38 = [(NURenderNode *)self settings];
        v39 = [v38 objectForKeyedSubscript:@"linearRangeMax"];

        v40 = [(NURenderNode *)self settings];
        v41 = [v40 objectForKeyedSubscript:@"linearGain"];

        if (v37 && v39 && v41)
        {
          [v41 floatValue];
          LODWORD(v42) = 0;
          *(&v42 + 1) = 1.0 / v43;
          v44 = [v27 _imageByApplyingColorMatrixRed:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0 / v43)) green:v42 blue:0.0 bias:0.0];

          [v37 floatValue];
          v46 = v45;
          [v39 floatValue];
          v48 = v47;
          v49 = [MEMORY[0x1E695F648] colorClampFilter];
          [v49 setInputImage:v44];
          v50 = [MEMORY[0x1E695F688] vectorWithX:v46 Y:v46 Z:v46 W:0.0];
          [v49 setMinComponents:v50];

          v51 = [MEMORY[0x1E695F688] vectorWithX:v48 Y:v48 Z:v48 W:1.0];
          [v49 setMaxComponents:v51];

          v27 = [v49 outputImage];
        }

        v7 = v133;
      }

      v52 = [MEMORY[0x1E69B3A10] displayP3LinearColorSpace];
      v131 = [v27 imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v52, "CGColorSpace")}];

      v53 = [(NURenderNode *)self settings];
      v54 = [v53 objectForKeyedSubscript:@"globalToneCurve"];

      if (!v54)
      {
        *buf = 0x3F80000000000000;
        v54 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:8];
      }

      v55 = [(NURenderNode *)self settings];
      v56 = [v55 objectForKeyedSubscript:@"baselineExposure"];

      if (v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = &unk_1F471F6A0;
      }

      v58 = [(NURenderNode *)self settings];
      v59 = [v58 objectForKeyedSubscript:@"sceneType"];

      v60 = [(NURenderNode *)self settings];
      v61 = [v60 objectForKeyedSubscript:@"srlCurveParameter"];

      v62 = [(NURenderNode *)self settings];
      v130 = [v62 objectForKeyedSubscript:@"stats"];

      v63 = [(NURenderNode *)self settings];
      v129 = [v63 objectForKeyedSubscript:@"lightMap"];

      v64 = [(NURenderNode *)self settings];
      v128 = [v64 objectForKeyedSubscript:@"linearLightMap"];

      v65 = [(NURenderNode *)self settings];
      v127 = [v65 objectForKeyedSubscript:@"lightMapWidth"];

      v66 = [(NURenderNode *)self settings];
      v126 = [v66 objectForKeyedSubscript:@"lightMapHeight"];

      v67 = [(NURenderNode *)self settings];
      v125 = [v67 objectForKeyedSubscript:@"tuningType"];

      v68 = [(NURenderNode *)self settings];
      v124 = [v68 objectForKeyedSubscript:@"brightness"];

      v69 = [(NURenderNode *)self settings];
      v123 = [v69 objectForKeyedSubscript:@"baseGain"];

      v70 = [(NURenderNode *)self settings];
      v122 = [v70 objectForKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];

      v71 = [(NURenderNode *)self settings];
      v72 = [v71 objectForKeyedSubscript:@"xstats"];

      v73 = [(NURenderNode *)self settings];
      v74 = [v73 objectForKeyedSubscript:@"tone"];
      [v74 doubleValue];
      v76 = v75;

      v77 = [(NURenderNode *)self settings];
      v78 = [v77 objectForKeyedSubscript:@"color"];
      [v78 doubleValue];
      v80 = v79;

      v81 = [(NURenderNode *)self settings];
      v82 = [v81 objectForKeyedSubscript:@"cast"];

      v83 = [(NURenderNode *)self settings];
      v84 = [v83 objectForKeyedSubscript:@"intensity"];
      [v84 doubleValue];
      v86 = v85;

      LOBYTE(v83) = [v82 isEqualToString:@"None"];
      v27 = v136;
      if ((v83 & 1) == 0)
      {
        v117 = v61;
        v87 = v59;
        v88 = [(NURenderNode *)self settings];
        v89 = [v88 objectForKeyedSubscript:@"isFallback"];
        v90 = [v89 BOOLValue];

        if (v90)
        {
          v91 = MEMORY[0x1E695F658];
          v92 = [MEMORY[0x1E695F610] colorWithRed:0.76 green:0.69 blue:0.88];
          v93 = [v91 imageWithColor:v92];
          [v27 extent];
          v95 = v94;
          v97 = v96;
          v99 = v98;
          v101 = v100;

          v27 = [v93 imageByCroppingToRect:{v95, v97, v99, v101}];
        }

        else
        {
          v92 = objc_alloc_init(PISemanticStyleFilter);
          [(PISemanticStyleFilter *)v92 setInputImage:v27];
          [(PISemanticStyleFilter *)v92 setInputSubjectMatteImage:v133];
          [(PISemanticStyleFilter *)v92 setInputSkinMatteImage:v135];
          [(PISemanticStyleFilter *)v92 setInputSkyMatteImage:v132];
          [(PISemanticStyleFilter *)v92 setInputLinearThumbnailImage:v131];
          v102 = MEMORY[0x1E695F658];
          v103 = [MEMORY[0x1E695F610] blackColor];
          v104 = [v102 imageWithColor:v103];
          [v27 extent];
          v106 = v105;
          v108 = v107;
          v110 = v109;
          v112 = v111;

          v113 = [v104 imageByCroppingToRect:{v106, v108, v110, v112}];
          [(PISemanticStyleFilter *)v92 setInputGainMapImage:v113];

          [(PISemanticStyleFilter *)v92 setInputToneBias:v76];
          [(PISemanticStyleFilter *)v92 setInputColorBias:v80];
          [(PISemanticStyleFilter *)v92 setInputCast:v82];
          [(PISemanticStyleFilter *)v92 setInputIntensity:v86];
          [(PISemanticStyleFilter *)v92 setInputSceneType:v87];
          [(PISemanticStyleFilter *)v92 setInputTRCData:v54];
          [v57 doubleValue];
          [(PISemanticStyleFilter *)v92 setInputBaselineExposure:?];
          [(PISemanticStyleFilter *)v92 setInputSRLCurveParameter:v117];
          [(PISemanticStyleFilter *)v92 setInputStatistics:v130];
          [(PISemanticStyleFilter *)v92 setInputExtendedStatistics:v72];
          [(PISemanticStyleFilter *)v92 setInputLightMapData:v129];
          [(PISemanticStyleFilter *)v92 setInputLinearLightMapData:v128];
          [(PISemanticStyleFilter *)v92 setInputLightMapWidth:v127];
          [(PISemanticStyleFilter *)v92 setInputLightMapHeight:v126];
          [(PISemanticStyleFilter *)v92 setBrightnessValue:v124];
          [(PISemanticStyleFilter *)v92 setTuningType:v125];
          [(PISemanticStyleFilter *)v92 setBaseGain:v123];
          [(PISemanticStyleFilter *)v92 setFaceBasedGlobalExposureBoostRatio:v122];
          v114 = [(NURenderNode *)self settings];
          v115 = [v114 objectForKeyedSubscript:@"useStyleEngine"];
          -[PISemanticStyleFilter setUseStyleEngine:](v92, "setUseStyleEngine:", [v115 BOOLValue]);

          v27 = [(PISemanticStyleFilter *)v92 outputImage];
        }

        v7 = v133;
        v59 = v87;
        v61 = v117;
      }

      v13 = v120;
      v6 = v121;
      v20 = v132;
      v26 = v118;
      v28 = v119;
    }

    else
    {
      *a3 = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to evaluate linear thumbnail" object:v26 underlyingError:v28];
    }

    v5 = v136;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)_evaluateImageGeometry:(id *)a3
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 outputImageGeometry:a3];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (id)resolvedNodeWithCachedInputs:(id)a3 settings:(id)a4 pipelineState:(id)a5 error:(id *)a6
{
  v69 = *MEMORY[0x1E69E9840];
  v10 = a3;
  specific = a4;
  v12 = a5;
  if (!a6)
  {
    v57 = NUAssertLogger_11150();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v13 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v10 = NUAssertLogger_11150();
    v59 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v59)
      {
        specific = dispatch_get_specific(*v13);
        v60 = MEMORY[0x1E696AF00];
        v61 = specific;
        v13 = [v60 callStackSymbols];
        v62 = [v13 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = specific;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v59)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_1C7694000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_47;
  }

  v13 = v12;
  if ([v12 evaluationMode] == 2 || !objc_msgSend(v13, "evaluationMode"))
  {
    v67.receiver = self;
    v67.super_class = PISemanticStyleRenderNode;
    v20 = [(NURenderNode *)&v67 resolvedNodeWithCachedInputs:v10 settings:specific pipelineState:v13 error:a6];
    goto LABEL_32;
  }

  if ([v13 evaluationMode] != 3)
  {
    if ([v13 evaluationMode] != 1)
    {
      v15 = 0;
      v19 = 0;
      goto LABEL_14;
    }

    v15 = [v10 objectForKeyedSubscript:@"inputImage"];
    v65 = 0;
    v21 = [v15 imageProperties:&v65];
    v19 = v65;
    v22 = [v21 semanticStyleProperties];
    if (!v22)
    {
      v52 = [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"Unable to obtain styles properties" object:0 underlyingError:v19];
      goto LABEL_24;
    }

    v18 = v22;

LABEL_12:
    v15 = v18;
LABEL_14:
    v23 = [v15 version];
    v24 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:2 minor:15];
    v25 = [v23 isCompatibleWithVersion:v24];

    if (v25)
    {
      v63 = v19;
      v26 = [specific mutableCopy];
      v27 = [v15 subjectRelightingValue];
      [v26 setObject:v27 forKeyedSubscript:@"srlCurveParameter"];

      v28 = [v15 globalToneCurveData];
      [v26 setObject:v28 forKeyedSubscript:@"globalToneCurve"];

      v29 = MEMORY[0x1E696AD98];
      [v15 baselineExposure];
      v30 = [v29 numberWithDouble:?];
      [v26 setObject:v30 forKeyedSubscript:@"baselineExposure"];

      v31 = [v15 sceneType];
      [v26 setObject:v31 forKeyedSubscript:@"sceneType"];

      v32 = [v15 tuningType];
      [v26 setObject:v32 forKeyedSubscript:@"tuningType"];

      v33 = [v15 brightness];
      [v26 setObject:v33 forKeyedSubscript:@"brightness"];

      v34 = [v15 stats];
      [v26 setObject:v34 forKeyedSubscript:@"stats"];

      v35 = [v15 lightMapData];
      [v26 setObject:v35 forKeyedSubscript:@"lightMap"];

      v36 = [v15 linearLightMapData];
      [v26 setObject:v36 forKeyedSubscript:@"linearLightMap"];

      v37 = [v15 lightMapWidth];
      [v26 setObject:v37 forKeyedSubscript:@"lightMapWidth"];

      v38 = [v15 lightMapHeight];
      [v26 setObject:v38 forKeyedSubscript:@"lightMapHeight"];

      v39 = [v15 baseGain];
      [v26 setObject:v39 forKeyedSubscript:@"baseGain"];

      v40 = [v15 faceBasedGlobalExposureBoostRatio];
      [v26 setObject:v40 forKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];

      v41 = [v15 extendedStats];
      [v26 setObject:v41 forKeyedSubscript:@"xstats"];

      v42 = [v15 linearGain];
      if (v42)
      {
        v43 = v42;
        v44 = [v15 linearRangeMin];
        if (v44)
        {
          v45 = v44;
          v46 = [v15 linearRangeMax];

          if (v46)
          {
            v47 = [v15 linearGain];
            [v26 setObject:v47 forKeyedSubscript:@"linearGain"];

            v48 = [v15 linearRangeMin];
            [v26 setObject:v48 forKeyedSubscript:@"linearRangeMin"];

            v49 = [v15 linearRangeMax];
            [v26 setObject:v49 forKeyedSubscript:@"linearRangeMax"];
            v50 = 1;
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      if ([v13 mediaComponentType] != 2)
      {
        v50 = 0;
        goto LABEL_30;
      }

      v49 = [v15 version];
      v50 = [v49 minor] > 9;
LABEL_28:

LABEL_30:
      v54 = [MEMORY[0x1E696AD98] numberWithBool:v50];
      [v26 setObject:v54 forKeyedSubscript:@"applyInverseCurveToLinearThumbnail"];

      v64.receiver = self;
      v64.super_class = PISemanticStyleRenderNode;
      v20 = [(NURenderNode *)&v64 resolvedNodeWithCachedInputs:v10 settings:v26 pipelineState:v13 error:a6];

      v19 = v63;
      goto LABEL_31;
    }

    v51 = MEMORY[0x1E69B3A48];
    v21 = [v15 version];
    v52 = [v51 unsupportedError:@"Incompatible styles properties" object:v21];
LABEL_24:
    *a6 = v52;

    v20 = 0;
    goto LABEL_31;
  }

  v14 = [v13 videoMetadataSamples];
  v15 = [v14 objectForKeyedSubscript:*MEMORY[0x1E69B3920]];

  if (!v15)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_21:
      v53 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        if (v13)
        {
          [v13 time];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v56 = NUStringFromTime();
        *buf = 138543362;
        *&buf[4] = v56;
        _os_log_error_impl(&dword_1C7694000, v53, OS_LOG_TYPE_ERROR, "Missing style metadata sample at %{public}@, style won't be applied", buf, 0xCu);
      }

      v20 = [v10 objectForKeyedSubscript:@"inputImage"];
      v15 = 0;
      v19 = 0;
      goto LABEL_31;
    }

LABEL_47:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
    goto LABEL_21;
  }

  v16 = MEMORY[0x1E69B3D40];
  v17 = [v15 metadataGroup];
  v66 = 0;
  *buf = *MEMORY[0x1E6960C70];
  *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
  v18 = [v16 semanticStylePropertiesFromMetadataGroup:v17 keyTime:buf error:&v66];
  v19 = v66;

  if (v18)
  {
    goto LABEL_12;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"Unable to obtain semantic style metadata" object:v15 underlyingError:v19];
  *a6 = v20 = 0;
LABEL_31:

LABEL_32:

  return v20;
}

- (id)_evaluateVideoComposition:(id *)a3
{
  v82[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v45 = NUAssertLogger_11150();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      LODWORD(v81.value) = 138543362;
      *(&v81.value + 4) = v46;
      _os_log_error_impl(&dword_1C7694000, v45, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v81, 0xCu);
    }

    v47 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v49 = NUAssertLogger_11150();
    v50 = os_log_type_enabled(v49, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v50)
      {
        v53 = dispatch_get_specific(*v47);
        v54 = MEMORY[0x1E696AF00];
        v55 = v53;
        v56 = [v54 callStackSymbols];
        v57 = [v56 componentsJoinedByString:@"\n"];
        LODWORD(v81.value) = 138543618;
        *(&v81.value + 4) = v53;
        LOWORD(v81.flags) = 2114;
        *(&v81.flags + 2) = v57;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v81, 0x16u);
      }
    }

    else if (v50)
    {
      v51 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [v51 componentsJoinedByString:@"\n"];
      LODWORD(v81.value) = 138543362;
      *(&v81.value + 4) = v52;
      _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v81, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v5 = [(NURenderNode *)self outputVideo:?];
  if (!v5)
  {
    v21 = 0;
    goto LABEL_29;
  }

  v6 = [(PISemanticStyleRenderNode *)self input];
  v7 = [v6 outputVideoComposition:a3];

  if (v7)
  {
    v8 = [v7 instructions];
    v9 = [v8 count];

    if (v9 == 1)
    {
      v10 = [v7 instructions];
      v11 = [v10 firstObject];

      v12 = [(PISemanticStyleRenderNode *)self input];
      v13 = [v12 videoProperties:a3];

      if (v13)
      {
        v14 = [v11 copy];
        v60 = v13;
        v15 = [v13 auxiliaryVideoTrackProperties];
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __55__PISemanticStyleRenderNode__evaluateVideoComposition___block_invoke;
        v76[3] = &unk_1E82AAB38;
        v61 = v11;
        v77 = v11;
        v16 = v14;
        v78 = v16;
        [v15 enumerateKeysAndObjectsUsingBlock:v76];

        v17 = [MEMORY[0x1E69B3D40] metadataTrackWithIdenfifier:*MEMORY[0x1E69B3D90] forAsset:v5];
        v18 = v17;
        if (v17)
        {
          v19 = *MEMORY[0x1E69B3920];
          v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v17, "trackID")}];
          [v16 setSourceIdentifier:v19 forMetadataTrackID:v20];
        }

        v58 = v18;
        v21 = [v7 mutableCopy];
        v82[0] = v16;
        v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:1];
        [v21 setInstructions:v22];

        v23 = [v16 requiredSourceSampleDataTrackIDs];
        [v21 setSourceSampleDataTrackIDs:v23];

        [v16 setRequestedWindowOfSamples:1];
        [v16 setMainTrackSourceIdentifier:@"video"];
        [MEMORY[0x1E69B3AB0] semanticStyleInterpolationHalfWindowTime];
        memset(&v81, 0, sizeof(v81));
        CMTimeMakeWithSeconds(&v81, v24, 600);
        v25 = objc_alloc(MEMORY[0x1E6988188]);
        v75 = v81;
        v74 = v81;
        v72 = *MEMORY[0x1E6960CC0];
        v73 = *(MEMORY[0x1E6960CC0] + 16);
        v70 = v72;
        v71 = v73;

        v26 = MEMORY[0x1E695DF90];
        v27 = [v16 requiredSourceTrackIDs];
        v28 = [v26 dictionaryWithCapacity:{objc_msgSend(v27, "count")}];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v29 = [v16 requiredSourceTrackIDs];
        v30 = [v29 countByEnumeratingWithState:&v66 objects:v80 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v67;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v67 != v32)
              {
                objc_enumerationMutation(v29);
              }

              [v28 setObject:v25 forKeyedSubscript:*(*(&v66 + 1) + 8 * i)];
            }

            v31 = [v29 countByEnumeratingWithState:&v66 objects:v80 count:16];
          }

          while (v31);
        }

        [v21 setSourceVideoTrackWindowsForTrackIDs:v28];
        v34 = MEMORY[0x1E695DF90];
        v35 = [v16 requiredSourceSampleDataTrackIDs];
        v36 = [v34 dictionaryWithCapacity:{objc_msgSend(v35, "count")}];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v59 = v16;
        v37 = [v16 requiredSourceSampleDataTrackIDs];
        v38 = [v37 countByEnumeratingWithState:&v62 objects:v79 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v63;
          do
          {
            for (j = 0; j != v39; ++j)
            {
              if (*v63 != v40)
              {
                objc_enumerationMutation(v37);
              }

              [v36 setObject:v25 forKeyedSubscript:*(*(&v62 + 1) + 8 * j)];
            }

            v39 = [v37 countByEnumeratingWithState:&v62 objects:v79 count:16];
          }

          while (v39);
        }

        [v21 setSourceSampleDataTrackWindowsForTrackIDs:v36];
        v13 = v60;
        v11 = v61;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_28;
    }

    v42 = MEMORY[0x1E69B3A48];
    v43 = [v7 instructions];
    *a3 = [v42 unsupportedError:@"Unsupported video configuration" object:v43];
  }

  v21 = 0;
LABEL_28:

LABEL_29:

  return v21;
}

void __55__PISemanticStyleRenderNode__evaluateVideoComposition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a3;
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 requiredSourceTrackIDs];
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "trackID")}];
  v9 = [v7 containsObject:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [*(a1 + 40) requiredSourceTrackIDs];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "trackID")}];
    v12 = [v10 arrayByAddingObject:v11];
    [*(a1 + 40) setRequiredSourceTrackIDs:v12];
  }

  v13 = *(a1 + 40);
  v14 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "trackID")}];
  [v13 setSourceIdentifier:v6 forTrackID:v14];
}

- (id)_evaluateVideo:(id *)a3
{
  v5.receiver = self;
  v5.super_class = PISemanticStyleRenderNode;
  v3 = [(NURenderNode *)&v5 _evaluateVideo:a3];

  return v3;
}

- (id)nodeByReplayingAgainstCache:(id)a3 pipelineState:(id)a4 error:(id *)a5
{
  v89 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (![v9 evaluationMode])
  {
    v86.receiver = self;
    v86.super_class = PISemanticStyleRenderNode;
    [(NURenderNode *)&v86 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
    goto LABEL_6;
  }

  if ([v9 auxiliaryImageType] == 1)
  {
    if ([v9 evaluationMode] == 2)
    {
      v85.receiver = self;
      v85.super_class = PISemanticStyleRenderNode;
      [(NURenderNode *)&v85 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
      v10 = LABEL_6:;
      goto LABEL_54;
    }

    v11 = [(PISemanticStyleRenderNode *)self input];
    v12 = [(PISemanticStyleRenderNode *)self input];
    v13 = [v12 imageProperties:a5];

    if (!v13)
    {
      v10 = 0;
LABEL_52:

      goto LABEL_53;
    }

    v14 = [v13 size];
    [v13 size];
    v16 = v15;
    if (v14 >= v15)
    {
      v17 = 192;
    }

    else
    {
      v17 = 256;
    }

    if (v14 >= v15)
    {
      v18 = 256;
    }

    else
    {
      v18 = 192;
    }

    v19 = [v13 auxiliaryImagePropertiesForType:10];
    v79 = v19;
    if (v19)
    {
      v20 = [v19 size];
      v22 = v21;
    }

    else
    {
      v23 = v14 < v16;
      if (v14 >= v16)
      {
        v22 = 96;
      }

      else
      {
        v22 = 128;
      }

      if (v23)
      {
        v20 = 96;
      }

      else
      {
        v20 = 128;
      }
    }

    if (v20 > v18 && v22 > v17)
    {
      v18 = v20;
      v17 = v22;
    }

    v24 = [objc_alloc(MEMORY[0x1E69B3A78]) initWithTargetPixelSize:{v18, v17}];
    v25 = [objc_alloc(MEMORY[0x1E69B3A68]) initWithTargetPixelSize:{v20, v22}];
    v26 = [(PISemanticStyleRenderNode *)self input];
    v27 = [v26 outputImageGeometry:a5];

    if (!v27)
    {
      v10 = 0;
LABEL_51:

      goto LABEL_52;
    }

    v75 = v13;
    v28 = [v27 size];
    v78 = v24;
    v30 = [v24 scaleForImageSize:{v28, v29}];
    v32 = v31;
    v76 = v27;
    v33 = [v27 size];
    v77 = v25;
    v35 = [v25 scaleForImageSize:{v33, v34}];
    v73 = v36;
    v37 = [v9 copy];
    v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = [v11 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];

    if (!v38)
    {
      v10 = 0;
      v25 = v77;
      v24 = v78;
      v63 = v80;
LABEL_50:

      v11 = v38;
      v13 = v75;
      v27 = v76;
      goto LABEL_51;
    }

    [v37 setScale:{v30, v32}];
    [v37 setSampleMode:2];
    v72 = v38;
    [v80 setObject:v38 forKeyedSubscript:*MEMORY[0x1E695FAB0]];
    v39 = [(NURenderNode *)self settings];
    v40 = [v39 objectForKeyedSubscript:@"isFallback"];
    v41 = [v40 BOOLValue];

    if ((v41 & 1) == 0)
    {
      v71 = v37;
      v42 = [v9 copy];
      [v42 setAuxiliaryImageType:10];
      [v42 setScale:{v35, v73}];
      [v42 setSampleMode:2];
      v43 = [(PISemanticStyleRenderNode *)self input];
      v84 = 0;
      v44 = [v43 nodeByReplayingAgainstCache:v8 pipelineState:v42 error:&v84];
      v45 = v84;

      if (!v44)
      {
        v66 = MEMORY[0x1E69B3A48];
        v67 = [(PISemanticStyleRenderNode *)self input];
        v68 = [v66 errorWithCode:1 reason:@"Failed to evaluate linear thumbnail" object:v67 underlyingError:v45];
        v69 = v68;

        *a5 = v68;
        v10 = 0;
        v25 = v77;
        v24 = v78;
        v63 = v80;
LABEL_49:

        v38 = v72;
        goto LABEL_50;
      }

      v74 = v44;
      [v80 setObject:v44 forKeyedSubscript:@"linearThumbnail"];
      v46 = v37;
      [v37 setAuxiliaryImageType:3];
      v47 = [(PISemanticStyleRenderNode *)self input];
      v83 = 0;
      v48 = [v47 nodeByReplayingAgainstCache:v8 pipelineState:v37 error:&v83];
      v49 = v83;

      v50 = v48;
      if (!v48)
      {
        v51 = NULogger_11199();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v88 = v49;
          _os_log_impl(&dword_1C7694000, v51, OS_LOG_TYPE_INFO, "Missing subject matte image: %{public}@", buf, 0xCu);
        }

        v46 = v71;
      }

      [v80 setObject:v48 forKeyedSubscript:@"subjectMatte"];
      [v46 setAuxiliaryImageType:4];
      v52 = [(PISemanticStyleRenderNode *)self input];
      v82 = 0;
      v53 = [v52 nodeByReplayingAgainstCache:v8 pipelineState:v46 error:&v82];
      v54 = v82;
      v55 = v49;
      v56 = v54;

      v57 = v53;
      if (!v53)
      {
        v58 = NULogger_11199();
        if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v88 = v56;
          _os_log_impl(&dword_1C7694000, v58, OS_LOG_TYPE_INFO, "Missing skin matte image: %{public}@", buf, 0xCu);
        }

        v46 = v71;
      }

      v70 = v50;
      [v80 setObject:v53 forKeyedSubscript:@"skinMatte"];
      [v46 setAuxiliaryImageType:9];
      v59 = [(PISemanticStyleRenderNode *)self input];
      v81 = 0;
      v60 = [v59 nodeByReplayingAgainstCache:v8 pipelineState:v46 error:&v81];
      v61 = v81;

      if (!v60)
      {
        v62 = NULogger_11199();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          *buf = 138543362;
          v88 = v61;
          _os_log_impl(&dword_1C7694000, v62, OS_LOG_TYPE_INFO, "Missing sky matte image: %{public}@", buf, 0xCu);
        }
      }

      [v80 setObject:v60 forKeyedSubscript:@"skyMatte"];

      v37 = v71;
    }

    [v37 setAuxiliaryImageType:1];
    v63 = v80;
    v64 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v80 cache:v8 pipelineState:v37 error:a5];
    if (v64)
    {
      v42 = v64;
      v10 = v42;
    }

    else
    {
      v42 = 0;
      v10 = 0;
    }

    v25 = v77;
    v24 = v78;
    goto LABEL_49;
  }

  v11 = [(PISemanticStyleRenderNode *)self input];
  v10 = [v11 nodeByReplayingAgainstCache:v8 pipelineState:v9 error:a5];
LABEL_53:

LABEL_54:

  return v10;
}

- (NURenderNode)input
{
  v2 = [(NURenderNode *)self inputs];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (PISemanticStyleRenderNode)initWithInput:(id)a3 settings:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_11150();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v29 = v13;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v14 = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    v16 = NUAssertLogger_11150();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(*v14);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        v23 = [v21 callStackSymbols];
        v24 = [v23 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v20;
        v30 = 2114;
        v31 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      v18 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [v18 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = v7;
  v26 = *MEMORY[0x1E695FAB0];
  v27 = v6;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25.receiver = self;
  v25.super_class = PISemanticStyleRenderNode;
  v10 = [(NURenderNode *)&v25 initWithSettings:v8 inputs:v9];

  return v10;
}

- (PISemanticStyleRenderNode)initWithSettings:(id)a3 inputs:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = MEMORY[0x1E69B3D78];
  if (*MEMORY[0x1E69B3D78] != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = MEMORY[0x1E69B3D70];
    v10 = *MEMORY[0x1E69B3D70];
    if (os_log_type_enabled(*MEMORY[0x1E69B3D70], OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AEC0];
      v12 = v10;
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      v16 = [v11 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v14, v15];
      *buf = 138543362;
      v32 = v16;
      _os_log_error_impl(&dword_1C7694000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

      v17 = *v8;
      if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
      {
        if (v17 != -1)
        {
          dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
        }

LABEL_11:
        v23 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
          v25 = MEMORY[0x1E696AF00];
          v26 = specific;
          v27 = v23;
          v28 = [v25 callStackSymbols];
          v29 = [v28 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v32 = specific;
          v33 = 2114;
          v34 = v29;
          _os_log_error_impl(&dword_1C7694000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }

        goto LABEL_13;
      }

      if (v17 != -1)
      {
        dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
      }
    }

    else if (dispatch_get_specific(*MEMORY[0x1E69B38E8]))
    {
      goto LABEL_11;
    }

    v18 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v19 = MEMORY[0x1E696AF00];
      v20 = v18;
      v21 = [v19 callStackSymbols];
      v22 = [v21 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v22;
      _os_log_error_impl(&dword_1C7694000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

LABEL_13:
    v30 = objc_opt_class();
    NSStringFromClass(v30);
    objc_claimAutoreleasedReturnValue();
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    _NUAssertFailHandler();
LABEL_14:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_255);
  }
}

@end