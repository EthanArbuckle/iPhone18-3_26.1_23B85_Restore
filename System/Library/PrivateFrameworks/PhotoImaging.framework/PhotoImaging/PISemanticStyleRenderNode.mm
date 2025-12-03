@interface PISemanticStyleRenderNode
- (NURenderNode)input;
- (PISemanticStyleRenderNode)initWithInput:(id)input settings:(id)settings;
- (PISemanticStyleRenderNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
@end

@implementation PISemanticStyleRenderNode

- (id)_evaluateImage:(id *)image
{
  v143 = *MEMORY[0x1E69E9840];
  v137 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v137 outputImage:image];
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
      blackColor = [MEMORY[0x1E695F610] blackColor];
      v12 = [v10 imageWithColor:blackColor];
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
      blackColor2 = [MEMORY[0x1E695F610] blackColor];
      v19 = [v17 imageWithColor:blackColor2];
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
      blackColor3 = [MEMORY[0x1E695F610] blackColor];
      v25 = [v23 imageWithColor:blackColor3];
      [v5 extent];
      v20 = [v25 imageByCroppingToRect:?];
    }

    v136 = v5;
    v26 = [(NURenderNode *)self inputForKey:@"linearThumbnail"];
    v138 = 0;
    outputImage = [v26 outputImage:&v138];
    v28 = v138;

    if (outputImage)
    {
      v118 = v26;
      v119 = v28;
      v132 = v20;
      settings = [(NURenderNode *)self settings];
      v30 = [settings objectForKeyedSubscript:@"applyInverseCurveToLinearThumbnail"];
      bOOLValue = [v30 BOOLValue];

      v120 = v13;
      v121 = v6;
      v133 = v7;
      if (bOOLValue)
      {
        v32 = [outputImage imageByApplyingFilter:@"CIAppleLogToLinear"];
        v33 = v32;
        if (v32)
        {
          v34 = v32;

          outputImage = v34;
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

        settings2 = [(NURenderNode *)self settings];
        v37 = [settings2 objectForKeyedSubscript:@"linearRangeMin"];

        settings3 = [(NURenderNode *)self settings];
        v39 = [settings3 objectForKeyedSubscript:@"linearRangeMax"];

        settings4 = [(NURenderNode *)self settings];
        v41 = [settings4 objectForKeyedSubscript:@"linearGain"];

        if (v37 && v39 && v41)
        {
          [v41 floatValue];
          LODWORD(v42) = 0;
          *(&v42 + 1) = 1.0 / v43;
          v44 = [outputImage _imageByApplyingColorMatrixRed:COERCE_DOUBLE(COERCE_UNSIGNED_INT(1.0 / v43)) green:v42 blue:0.0 bias:0.0];

          [v37 floatValue];
          v46 = v45;
          [v39 floatValue];
          v48 = v47;
          colorClampFilter = [MEMORY[0x1E695F648] colorClampFilter];
          [colorClampFilter setInputImage:v44];
          v50 = [MEMORY[0x1E695F688] vectorWithX:v46 Y:v46 Z:v46 W:0.0];
          [colorClampFilter setMinComponents:v50];

          v51 = [MEMORY[0x1E695F688] vectorWithX:v48 Y:v48 Z:v48 W:1.0];
          [colorClampFilter setMaxComponents:v51];

          outputImage = [colorClampFilter outputImage];
        }

        v7 = v133;
      }

      displayP3LinearColorSpace = [MEMORY[0x1E69B3A10] displayP3LinearColorSpace];
      v131 = [outputImage imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(displayP3LinearColorSpace, "CGColorSpace")}];

      settings5 = [(NURenderNode *)self settings];
      v54 = [settings5 objectForKeyedSubscript:@"globalToneCurve"];

      if (!v54)
      {
        *buf = 0x3F80000000000000;
        v54 = [MEMORY[0x1E695DEF0] dataWithBytes:buf length:8];
      }

      settings6 = [(NURenderNode *)self settings];
      v56 = [settings6 objectForKeyedSubscript:@"baselineExposure"];

      if (v56)
      {
        v57 = v56;
      }

      else
      {
        v57 = &unk_1F471F6A0;
      }

      settings7 = [(NURenderNode *)self settings];
      v59 = [settings7 objectForKeyedSubscript:@"sceneType"];

      settings8 = [(NURenderNode *)self settings];
      v61 = [settings8 objectForKeyedSubscript:@"srlCurveParameter"];

      settings9 = [(NURenderNode *)self settings];
      v130 = [settings9 objectForKeyedSubscript:@"stats"];

      settings10 = [(NURenderNode *)self settings];
      v129 = [settings10 objectForKeyedSubscript:@"lightMap"];

      settings11 = [(NURenderNode *)self settings];
      v128 = [settings11 objectForKeyedSubscript:@"linearLightMap"];

      settings12 = [(NURenderNode *)self settings];
      v127 = [settings12 objectForKeyedSubscript:@"lightMapWidth"];

      settings13 = [(NURenderNode *)self settings];
      v126 = [settings13 objectForKeyedSubscript:@"lightMapHeight"];

      settings14 = [(NURenderNode *)self settings];
      v125 = [settings14 objectForKeyedSubscript:@"tuningType"];

      settings15 = [(NURenderNode *)self settings];
      v124 = [settings15 objectForKeyedSubscript:@"brightness"];

      settings16 = [(NURenderNode *)self settings];
      v123 = [settings16 objectForKeyedSubscript:@"baseGain"];

      settings17 = [(NURenderNode *)self settings];
      v122 = [settings17 objectForKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];

      settings18 = [(NURenderNode *)self settings];
      v72 = [settings18 objectForKeyedSubscript:@"xstats"];

      settings19 = [(NURenderNode *)self settings];
      v74 = [settings19 objectForKeyedSubscript:@"tone"];
      [v74 doubleValue];
      v76 = v75;

      settings20 = [(NURenderNode *)self settings];
      v78 = [settings20 objectForKeyedSubscript:@"color"];
      [v78 doubleValue];
      v80 = v79;

      settings21 = [(NURenderNode *)self settings];
      v82 = [settings21 objectForKeyedSubscript:@"cast"];

      settings22 = [(NURenderNode *)self settings];
      v84 = [settings22 objectForKeyedSubscript:@"intensity"];
      [v84 doubleValue];
      v86 = v85;

      LOBYTE(settings22) = [v82 isEqualToString:@"None"];
      outputImage = v136;
      if ((settings22 & 1) == 0)
      {
        v117 = v61;
        v87 = v59;
        settings23 = [(NURenderNode *)self settings];
        v89 = [settings23 objectForKeyedSubscript:@"isFallback"];
        bOOLValue2 = [v89 BOOLValue];

        if (bOOLValue2)
        {
          v91 = MEMORY[0x1E695F658];
          v92 = [MEMORY[0x1E695F610] colorWithRed:0.76 green:0.69 blue:0.88];
          v93 = [v91 imageWithColor:v92];
          [outputImage extent];
          v95 = v94;
          v97 = v96;
          v99 = v98;
          v101 = v100;

          outputImage = [v93 imageByCroppingToRect:{v95, v97, v99, v101}];
        }

        else
        {
          v92 = objc_alloc_init(PISemanticStyleFilter);
          [(PISemanticStyleFilter *)v92 setInputImage:outputImage];
          [(PISemanticStyleFilter *)v92 setInputSubjectMatteImage:v133];
          [(PISemanticStyleFilter *)v92 setInputSkinMatteImage:v135];
          [(PISemanticStyleFilter *)v92 setInputSkyMatteImage:v132];
          [(PISemanticStyleFilter *)v92 setInputLinearThumbnailImage:v131];
          v102 = MEMORY[0x1E695F658];
          blackColor4 = [MEMORY[0x1E695F610] blackColor];
          v104 = [v102 imageWithColor:blackColor4];
          [outputImage extent];
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
          settings24 = [(NURenderNode *)self settings];
          v115 = [settings24 objectForKeyedSubscript:@"useStyleEngine"];
          -[PISemanticStyleFilter setUseStyleEngine:](v92, "setUseStyleEngine:", [v115 BOOLValue]);

          outputImage = [(PISemanticStyleFilter *)v92 outputImage];
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
      *image = [MEMORY[0x1E69B3A48] errorWithCode:1 reason:@"Failed to evaluate linear thumbnail" object:v26 underlyingError:v28];
    }

    v5 = v136;
  }

  else
  {
    outputImage = 0;
  }

  return outputImage;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v4 = [(NURenderNode *)self inputForKey:*MEMORY[0x1E695FAB0]];
  v5 = [v4 outputImageGeometry:geometry];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  return v6;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  specific = settings;
  stateCopy = state;
  if (!error)
  {
    v57 = NUAssertLogger_11150();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v58;
      _os_log_error_impl(&dword_1C7694000, v57, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    callStackSymbols = MEMORY[0x1E69B38E8];
    specific = dispatch_get_specific(*MEMORY[0x1E69B38E8]);
    inputsCopy = NUAssertLogger_11150();
    v59 = os_log_type_enabled(inputsCopy, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v59)
      {
        specific = dispatch_get_specific(*callStackSymbols);
        v60 = MEMORY[0x1E696AF00];
        v61 = specific;
        callStackSymbols = [v60 callStackSymbols];
        v62 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = specific;
        *&buf[12] = 2114;
        *&buf[14] = v62;
        _os_log_error_impl(&dword_1C7694000, inputsCopy, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v59)
    {
      specific = [MEMORY[0x1E696AF00] callStackSymbols];
      callStackSymbols = [specific componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = callStackSymbols;
      _os_log_error_impl(&dword_1C7694000, inputsCopy, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
    goto LABEL_47;
  }

  callStackSymbols = stateCopy;
  if ([stateCopy evaluationMode] == 2 || !objc_msgSend(callStackSymbols, "evaluationMode"))
  {
    v67.receiver = self;
    v67.super_class = PISemanticStyleRenderNode;
    v20 = [(NURenderNode *)&v67 resolvedNodeWithCachedInputs:inputsCopy settings:specific pipelineState:callStackSymbols error:error];
    goto LABEL_32;
  }

  if ([callStackSymbols evaluationMode] != 3)
  {
    if ([callStackSymbols evaluationMode] != 1)
    {
      v15 = 0;
      v19 = 0;
      goto LABEL_14;
    }

    v15 = [inputsCopy objectForKeyedSubscript:@"inputImage"];
    v65 = 0;
    version2 = [v15 imageProperties:&v65];
    v19 = v65;
    semanticStyleProperties = [version2 semanticStyleProperties];
    if (!semanticStyleProperties)
    {
      v52 = [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"Unable to obtain styles properties" object:0 underlyingError:v19];
      goto LABEL_24;
    }

    v18 = semanticStyleProperties;

LABEL_12:
    v15 = v18;
LABEL_14:
    version = [v15 version];
    v24 = [objc_alloc(MEMORY[0x1E69B3CF0]) initWithMajor:2 minor:15];
    v25 = [version isCompatibleWithVersion:v24];

    if (v25)
    {
      v63 = v19;
      v26 = [specific mutableCopy];
      subjectRelightingValue = [v15 subjectRelightingValue];
      [v26 setObject:subjectRelightingValue forKeyedSubscript:@"srlCurveParameter"];

      globalToneCurveData = [v15 globalToneCurveData];
      [v26 setObject:globalToneCurveData forKeyedSubscript:@"globalToneCurve"];

      v29 = MEMORY[0x1E696AD98];
      [v15 baselineExposure];
      v30 = [v29 numberWithDouble:?];
      [v26 setObject:v30 forKeyedSubscript:@"baselineExposure"];

      sceneType = [v15 sceneType];
      [v26 setObject:sceneType forKeyedSubscript:@"sceneType"];

      tuningType = [v15 tuningType];
      [v26 setObject:tuningType forKeyedSubscript:@"tuningType"];

      brightness = [v15 brightness];
      [v26 setObject:brightness forKeyedSubscript:@"brightness"];

      stats = [v15 stats];
      [v26 setObject:stats forKeyedSubscript:@"stats"];

      lightMapData = [v15 lightMapData];
      [v26 setObject:lightMapData forKeyedSubscript:@"lightMap"];

      linearLightMapData = [v15 linearLightMapData];
      [v26 setObject:linearLightMapData forKeyedSubscript:@"linearLightMap"];

      lightMapWidth = [v15 lightMapWidth];
      [v26 setObject:lightMapWidth forKeyedSubscript:@"lightMapWidth"];

      lightMapHeight = [v15 lightMapHeight];
      [v26 setObject:lightMapHeight forKeyedSubscript:@"lightMapHeight"];

      baseGain = [v15 baseGain];
      [v26 setObject:baseGain forKeyedSubscript:@"baseGain"];

      faceBasedGlobalExposureBoostRatio = [v15 faceBasedGlobalExposureBoostRatio];
      [v26 setObject:faceBasedGlobalExposureBoostRatio forKeyedSubscript:@"faceBasedGlobalExposureBoostRatio"];

      extendedStats = [v15 extendedStats];
      [v26 setObject:extendedStats forKeyedSubscript:@"xstats"];

      linearGain = [v15 linearGain];
      if (linearGain)
      {
        v43 = linearGain;
        linearRangeMin = [v15 linearRangeMin];
        if (linearRangeMin)
        {
          v45 = linearRangeMin;
          linearRangeMax = [v15 linearRangeMax];

          if (linearRangeMax)
          {
            linearGain2 = [v15 linearGain];
            [v26 setObject:linearGain2 forKeyedSubscript:@"linearGain"];

            linearRangeMin2 = [v15 linearRangeMin];
            [v26 setObject:linearRangeMin2 forKeyedSubscript:@"linearRangeMin"];

            linearRangeMax2 = [v15 linearRangeMax];
            [v26 setObject:linearRangeMax2 forKeyedSubscript:@"linearRangeMax"];
            v50 = 1;
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      if ([callStackSymbols mediaComponentType] != 2)
      {
        v50 = 0;
        goto LABEL_30;
      }

      linearRangeMax2 = [v15 version];
      v50 = [linearRangeMax2 minor] > 9;
LABEL_28:

LABEL_30:
      v54 = [MEMORY[0x1E696AD98] numberWithBool:v50];
      [v26 setObject:v54 forKeyedSubscript:@"applyInverseCurveToLinearThumbnail"];

      v64.receiver = self;
      v64.super_class = PISemanticStyleRenderNode;
      v20 = [(NURenderNode *)&v64 resolvedNodeWithCachedInputs:inputsCopy settings:v26 pipelineState:callStackSymbols error:error];

      v19 = v63;
      goto LABEL_31;
    }

    v51 = MEMORY[0x1E69B3A48];
    version2 = [v15 version];
    v52 = [v51 unsupportedError:@"Incompatible styles properties" object:version2];
LABEL_24:
    *error = v52;

    v20 = 0;
    goto LABEL_31;
  }

  videoMetadataSamples = [callStackSymbols videoMetadataSamples];
  v15 = [videoMetadataSamples objectForKeyedSubscript:*MEMORY[0x1E69B3920]];

  if (!v15)
  {
    if (*MEMORY[0x1E69B3D78] == -1)
    {
LABEL_21:
      v53 = *MEMORY[0x1E69B3D80];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        if (callStackSymbols)
        {
          [callStackSymbols time];
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

      v20 = [inputsCopy objectForKeyedSubscript:@"inputImage"];
      v15 = 0;
      v19 = 0;
      goto LABEL_31;
    }

LABEL_47:
    dispatch_once(MEMORY[0x1E69B3D78], &__block_literal_global_267_11043);
    goto LABEL_21;
  }

  v16 = MEMORY[0x1E69B3D40];
  metadataGroup = [v15 metadataGroup];
  v66 = 0;
  *buf = *MEMORY[0x1E6960C70];
  *&buf[16] = *(MEMORY[0x1E6960C70] + 16);
  v18 = [v16 semanticStylePropertiesFromMetadataGroup:metadataGroup keyTime:buf error:&v66];
  v19 = v66;

  if (v18)
  {
    goto LABEL_12;
  }

  [MEMORY[0x1E69B3A48] errorWithCode:3 reason:@"Unable to obtain semantic style metadata" object:v15 underlyingError:v19];
  *error = v20 = 0;
LABEL_31:

LABEL_32:

  return v20;
}

- (id)_evaluateVideoComposition:(id *)composition
{
  v82[1] = *MEMORY[0x1E69E9840];
  if (!composition)
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
        callStackSymbols = [v54 callStackSymbols];
        v57 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v81.value) = 138543618;
        *(&v81.value + 4) = v53;
        LOWORD(v81.flags) = 2114;
        *(&v81.flags + 2) = v57;
        _os_log_error_impl(&dword_1C7694000, v49, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v81, 0x16u);
      }
    }

    else if (v50)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v52 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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

  input = [(PISemanticStyleRenderNode *)self input];
  v7 = [input outputVideoComposition:composition];

  if (v7)
  {
    instructions = [v7 instructions];
    v9 = [instructions count];

    if (v9 == 1)
    {
      instructions2 = [v7 instructions];
      firstObject = [instructions2 firstObject];

      input2 = [(PISemanticStyleRenderNode *)self input];
      v13 = [input2 videoProperties:composition];

      if (v13)
      {
        v14 = [firstObject copy];
        v60 = v13;
        auxiliaryVideoTrackProperties = [v13 auxiliaryVideoTrackProperties];
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __55__PISemanticStyleRenderNode__evaluateVideoComposition___block_invoke;
        v76[3] = &unk_1E82AAB38;
        v61 = firstObject;
        v77 = firstObject;
        v16 = v14;
        v78 = v16;
        [auxiliaryVideoTrackProperties enumerateKeysAndObjectsUsingBlock:v76];

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

        requiredSourceSampleDataTrackIDs = [v16 requiredSourceSampleDataTrackIDs];
        [v21 setSourceSampleDataTrackIDs:requiredSourceSampleDataTrackIDs];

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
        requiredSourceTrackIDs = [v16 requiredSourceTrackIDs];
        v28 = [v26 dictionaryWithCapacity:{objc_msgSend(requiredSourceTrackIDs, "count")}];

        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        requiredSourceTrackIDs2 = [v16 requiredSourceTrackIDs];
        v30 = [requiredSourceTrackIDs2 countByEnumeratingWithState:&v66 objects:v80 count:16];
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
                objc_enumerationMutation(requiredSourceTrackIDs2);
              }

              [v28 setObject:v25 forKeyedSubscript:*(*(&v66 + 1) + 8 * i)];
            }

            v31 = [requiredSourceTrackIDs2 countByEnumeratingWithState:&v66 objects:v80 count:16];
          }

          while (v31);
        }

        [v21 setSourceVideoTrackWindowsForTrackIDs:v28];
        v34 = MEMORY[0x1E695DF90];
        requiredSourceSampleDataTrackIDs2 = [v16 requiredSourceSampleDataTrackIDs];
        v36 = [v34 dictionaryWithCapacity:{objc_msgSend(requiredSourceSampleDataTrackIDs2, "count")}];

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v59 = v16;
        requiredSourceSampleDataTrackIDs3 = [v16 requiredSourceSampleDataTrackIDs];
        v38 = [requiredSourceSampleDataTrackIDs3 countByEnumeratingWithState:&v62 objects:v79 count:16];
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
                objc_enumerationMutation(requiredSourceSampleDataTrackIDs3);
              }

              [v36 setObject:v25 forKeyedSubscript:*(*(&v62 + 1) + 8 * j)];
            }

            v39 = [requiredSourceSampleDataTrackIDs3 countByEnumeratingWithState:&v62 objects:v79 count:16];
          }

          while (v39);
        }

        [v21 setSourceSampleDataTrackWindowsForTrackIDs:v36];
        v13 = v60;
        firstObject = v61;
      }

      else
      {
        v21 = 0;
      }

      goto LABEL_28;
    }

    v42 = MEMORY[0x1E69B3A48];
    instructions3 = [v7 instructions];
    *composition = [v42 unsupportedError:@"Unsupported video configuration" object:instructions3];
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

- (id)_evaluateVideo:(id *)video
{
  v5.receiver = self;
  v5.super_class = PISemanticStyleRenderNode;
  v3 = [(NURenderNode *)&v5 _evaluateVideo:video];

  return v3;
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v89 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  if (![stateCopy evaluationMode])
  {
    v86.receiver = self;
    v86.super_class = PISemanticStyleRenderNode;
    [(NURenderNode *)&v86 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
    goto LABEL_6;
  }

  if ([stateCopy auxiliaryImageType] == 1)
  {
    if ([stateCopy evaluationMode] == 2)
    {
      v85.receiver = self;
      v85.super_class = PISemanticStyleRenderNode;
      [(NURenderNode *)&v85 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
      v10 = LABEL_6:;
      goto LABEL_54;
    }

    input = [(PISemanticStyleRenderNode *)self input];
    input2 = [(PISemanticStyleRenderNode *)self input];
    v13 = [input2 imageProperties:error];

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
    input3 = [(PISemanticStyleRenderNode *)self input];
    v27 = [input3 outputImageGeometry:error];

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
    v37 = [stateCopy copy];
    v80 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v38 = [input nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];

    if (!v38)
    {
      v10 = 0;
      v25 = v77;
      v24 = v78;
      v63 = v80;
LABEL_50:

      input = v38;
      v13 = v75;
      v27 = v76;
      goto LABEL_51;
    }

    [v37 setScale:{v30, v32}];
    [v37 setSampleMode:2];
    v72 = v38;
    [v80 setObject:v38 forKeyedSubscript:*MEMORY[0x1E695FAB0]];
    settings = [(NURenderNode *)self settings];
    v40 = [settings objectForKeyedSubscript:@"isFallback"];
    bOOLValue = [v40 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v71 = v37;
      v42 = [stateCopy copy];
      [v42 setAuxiliaryImageType:10];
      [v42 setScale:{v35, v73}];
      [v42 setSampleMode:2];
      input4 = [(PISemanticStyleRenderNode *)self input];
      v84 = 0;
      v44 = [input4 nodeByReplayingAgainstCache:cacheCopy pipelineState:v42 error:&v84];
      v45 = v84;

      if (!v44)
      {
        v66 = MEMORY[0x1E69B3A48];
        input5 = [(PISemanticStyleRenderNode *)self input];
        v68 = [v66 errorWithCode:1 reason:@"Failed to evaluate linear thumbnail" object:input5 underlyingError:v45];
        v69 = v68;

        *error = v68;
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
      input6 = [(PISemanticStyleRenderNode *)self input];
      v83 = 0;
      v48 = [input6 nodeByReplayingAgainstCache:cacheCopy pipelineState:v37 error:&v83];
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
      input7 = [(PISemanticStyleRenderNode *)self input];
      v82 = 0;
      v53 = [input7 nodeByReplayingAgainstCache:cacheCopy pipelineState:v46 error:&v82];
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
      input8 = [(PISemanticStyleRenderNode *)self input];
      v81 = 0;
      v60 = [input8 nodeByReplayingAgainstCache:cacheCopy pipelineState:v46 error:&v81];
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
    v64 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v80 cache:cacheCopy pipelineState:v37 error:error];
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

  input = [(PISemanticStyleRenderNode *)self input];
  v10 = [input nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
LABEL_53:

LABEL_54:

  return v10;
}

- (NURenderNode)input
{
  inputs = [(NURenderNode *)self inputs];
  v3 = [inputs objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  return v3;
}

- (PISemanticStyleRenderNode)initWithInput:(id)input settings:(id)settings
{
  v32 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  settingsCopy = settings;
  if (!inputCopy)
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
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v29 = v20;
        v30 = 2114;
        v31 = v24;
        _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v19;
      _os_log_error_impl(&dword_1C7694000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler();
  }

  v8 = settingsCopy;
  v26 = *MEMORY[0x1E695FAB0];
  v27 = inputCopy;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v25.receiver = self;
  v25.super_class = PISemanticStyleRenderNode;
  v10 = [(NURenderNode *)&v25 initWithSettings:v8 inputs:v9];

  return v10;
}

- (PISemanticStyleRenderNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v35 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
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
          callStackSymbols = [v25 callStackSymbols];
          v29 = [callStackSymbols componentsJoinedByString:@"\n"];
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
      callStackSymbols2 = [v19 callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
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