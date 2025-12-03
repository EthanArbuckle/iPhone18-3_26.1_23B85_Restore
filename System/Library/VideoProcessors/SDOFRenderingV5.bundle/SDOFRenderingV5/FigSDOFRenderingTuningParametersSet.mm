@interface FigSDOFRenderingTuningParametersSet
- ($56A7D0D9115FBA927525223D43EC1313)mattingConfig;
- (BOOL)readBlurMapSmoothingConfig:(id)config;
- (BOOL)readDisparityRefinementConfig:(id)config;
- (BOOL)readHairNetConfig:(id)config;
- (BOOL)readMattingConfig:(id)config;
- (BOOL)readRenderingConfig:(id)config;
- (BOOL)readSLMConfig:(id)config;
- (FigSDOFRenderingTuningParametersSet)init;
- (FigSDOFRenderingTuningParametersSet)initWithTuningDictionary:(id)dictionary suffix:(id)suffix;
- (blurmap_refinement_params)blurmapRefinementConfig;
- (disparity_refinement_params)disparityRefinementConfig;
- (dynamic_tuning_parameters)dynamicParams;
- (face_mask_params)faceMaskConfig;
- (hairnet_params)hairnetConfig;
- (rendering_config_params)renderingConfig;
- (segmentation_fusion_params)segmentationFusionConfig;
- (simple_lens_model_params)simpleLensModelConfig;
- (xhlrb_control_logic_params)xhlrbControlConfig;
@end

@implementation FigSDOFRenderingTuningParametersSet

- (FigSDOFRenderingTuningParametersSet)init
{
  v43.receiver = self;
  v43.super_class = FigSDOFRenderingTuningParametersSet;
  v2 = [(FigSDOFRenderingTuningParametersSet *)&v43 init];
  v3 = v2;
  if (v2)
  {
    v4 = v2 + 356;
    *(v2 + 300) = 4;
    sub_295EADDB4(&v31);
    v5 = v31;
    *(v3 + 184) = v32;
    v6 = v34;
    *(v3 + 200) = v33;
    *(v3 + 216) = v6;
    *(v3 + 232) = v35;
    *(v3 + 168) = v5;
    *v4 = xmmword_295EB9FD0;
    *(v3 + 372) = xmmword_295EB9FE0;
    *(v3 + 388) = xmmword_295EB9FF0;
    *(v3 + 404) = 0x3F8000003E560419;
    *(v3 + 164) = 5;
    *(v3 + 660) = xmmword_295EBA000;
    *(v3 + 110) = vdup_n_s32(0x40B33333u);
    *(v3 + 111) = 0x23D4CCCCDLL;
    *(v3 + 56) = xmmword_295EBA010;
    *(v3 + 114) = 0;
    *(v3 + 115) = 0x400000004;
    *(v3 + 116) = 0x2B8CBCCC00000004;
    *(v3 + 117) = 0x33DCCCCCDLL;
    *(v3 + 59) = xmmword_295EBA020;
    *(v3 + 60) = xmmword_295EBA030;
    *(v3 + 244) = 50;
    *(v3 + 980) = xmmword_295EBA040;
    *(v3 + 996) = xmmword_295EBA050;
    *(v3 + 253) = 0;
    *(v3 + 257) = 8;
    *(v3 + 259) = 1082130432;
    *(v3 + 262) = 0;
    *(v3 + 130) = 0;
    *(v3 + 1052) = xmmword_295EBA060;
    *(v3 + 1068) = xmmword_295EBA070;
    *(v3 + 271) = 1061158912;
    *(v3 + 106) = 1085485875;
    *(v3 + 52) = 0x40B333333CF5C28FLL;
    __asm { FMOV            V0.4S, #-1.0 }

    *(v3 + 27) = _Q0;
    *(v3 + 28) = _Q0;
    *(v3 + 29) = _Q0;
    *(v3 + 30) = _Q0;
    *(v3 + 31) = _Q0;
    *(v3 + 32) = _Q0;
    *(v3 + 33) = _Q0;
    *(v3 + 34) = _Q0;
    *(v3 + 35) = xmmword_295EBA080;
    *(v3 + 36) = xmmword_295EBA090;
    *(v3 + 74) = 0x3F0000003E4CCCCDLL;
    *(v3 + 150) = 0;
    sub_295EB14B4(&v31);
    v12 = v32;
    *(v3 + 38) = v31;
    *(v3 + 39) = v12;
    *(v3 + 160) = v33;
    sub_295EADD70(&v31);
    v13 = *v42;
    *(v3 + 836) = v41;
    *(v3 + 852) = v13;
    *(v3 + 54) = *&v42[12];
    v14 = v38;
    *(v3 + 772) = v37;
    *(v3 + 788) = v14;
    v15 = v40;
    *(v3 + 804) = v39;
    *(v3 + 820) = v15;
    v16 = v34;
    *(v3 + 708) = v33;
    *(v3 + 724) = v16;
    v17 = v36;
    *(v3 + 740) = v35;
    *(v3 + 756) = v17;
    v18 = v32;
    *(v3 + 676) = v31;
    *(v3 + 692) = v18;
    sub_295EB1478(&v31);
    *(v3 + 21) = v31;
    *(v3 + 88) = v32;
    sub_295EB1498(&v31);
    v19 = v32;
    *(v3 + 68) = v31;
    *(v3 + 69) = v19;
    v20 = v34;
    *(v3 + 70) = v33;
    *(v3 + 71) = v20;
    *(v3 + 72) = xmmword_295EBA0A0;
    *(v3 + 73) = xmmword_295EBA0B0;
    *(v3 + 148) = 0x38D1B71741000000;
    *(v3 + 149) = 0x3F80000000000032;
    sub_295EB1390(&v31, (COERCE_UNSIGNED_INT(1.0) | 0x38D1B71700000000));
    v21 = v31;
    *(v3 + 24) = v32;
    *(v3 + 8) = v21;
    LODWORD(v21) = *(v3 + 160);
    sub_295EB1390(&v31, *&v21);
    v22.i32[1] = DWORD1(v31);
    v23 = v32;
    *(v3 + 72) = v31;
    *(v3 + 88) = v23;
    v22.i32[0] = *(v3 + 157);
    sub_295EB1390(&v31, v22);
    v24.i32[1] = DWORD1(v31);
    v25 = v32;
    *(v3 + 40) = v31;
    *(v3 + 56) = v25;
    v24.i32[0] = *(v3 + 183);
    sub_295EB1390(&v31, v24);
    v26.i32[1] = DWORD1(v31);
    v27 = v32;
    *(v3 + 136) = v31;
    *(v3 + 152) = v27;
    v26.i32[0] = *(v3 + 180);
    sub_295EB1390(&v31, v26);
    v28 = v32;
    *(v3 + 104) = v31;
    *(v3 + 120) = v28;
    *(v3 + 41) = 0x73D4CCCCDLL;
    v29 = v3;
  }

  return v3;
}

- (BOOL)readDisparityRefinementConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy)
  {
    goto LABEL_28;
  }

  if (!sub_295EAB384(configCopy, "version", &self->_disparityRefinementVersion))
  {
    goto LABEL_28;
  }

  if (!sub_295EAB384(v5, "radius", &self->_disparityRefinementConfig.radius))
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "weightScaling", &self->_disparityRefinementConfig.weightScaling);
  if (!v6)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "maxReconstructionWeight", &self->_disparityRefinementConfig.maxReconstructionWeight);
  if (!v7)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "innerSamplingRadius", &self->_disparityRefinementConfig.innerSamplingRadius);
  if (!v8)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "outerSamplingRadius", &self->_disparityRefinementConfig.outerSamplingRadius);
  if (!v9)
  {
    goto LABEL_28;
  }

  if (!sub_295EAB384(v5, "nSamples", &self->_disparityRefinementConfig.nSamples))
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "lumaSigma", &self->_disparityRefinementConfig.lumaSigma);
  if (!v10)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "chromaSigma", &self->_disparityRefinementConfig.chromaSigma);
  if (!v11)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "segmentationSigma", &self->_disparityRefinementConfig.segmentationSigma);
  if (!v12)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "disparitySigma", &self->_disparityRefinementConfig.disparitySigma);
  if (!v13)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "accumulatedWeightT0", &self->_disparityRefinementConfig.accumulatedWeightT0);
  if (!v14)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "accumulatedWeightT1", &self->_disparityRefinementConfig.accumulatedWeightT1);
  if (!v15)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "aaLumaSigma", &self->_disparityRefinementConfig.aaLumaSigma);
  if (!v16)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "aaChromaSigma", &self->_disparityRefinementConfig.aaChromaSigma);
  if (!v17)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "aaSegmentationSigma", &self->_disparityRefinementConfig.aaSegmentationSigma);
  if (!v18)
  {
    goto LABEL_28;
  }

  sub_295EAB41C(v5, "aaSpatialSigma", &self->_disparityRefinementConfig.aaSpatialSigma);
  if (!v19)
  {
    goto LABEL_28;
  }

  p_fgBlurScale = &self->_disparityRefinementConfig.fgBlurScale;
  if (SLODWORD(self[1].super.isa) < 7)
  {
    *p_fgBlurScale = 0;
    *&self->_disparityRefinementConfig.fgDeadZoneOffset = 0;
    v25 = 1;
    p_fgBlurScale[4] = 0.0;
    goto LABEL_27;
  }

  sub_295EAB41C(v5, "fgBlurScale", p_fgBlurScale);
  if (!v21 || (sub_295EAB41C(v5, "fgBlurClamp", &self->_disparityRefinementConfig.fgBlurClamp), !v22) || (sub_295EAB41C(v5, "fgDeadZoneOffset", &self->_disparityRefinementConfig.fgDeadZoneOffset), !v23) || (sub_295EAB41C(v5, "fgFgBgThreshold", &self->_disparityRefinementConfig.fgFgBgThreshold), !v24) || !sub_295EAB384(v5, "fgBgDilationSize", &self->_disparityRefinementConfig.fgBgDilationSize))
  {
LABEL_28:
    v25 = 0;
    goto LABEL_27;
  }

  v25 = 1;
LABEL_27:

  return v25;
}

- (BOOL)readSLMConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy)
  {
    goto LABEL_15;
  }

  sub_295EAB41C(configCopy, "fallbackFocusROI_left", &self->_simpleLensModelConfig.left);
  if (!v6)
  {
    goto LABEL_15;
  }

  sub_295EAB41C(v5, "fallbackFocusROI_top", &self->_simpleLensModelConfig.top);
  if (!v7)
  {
    goto LABEL_15;
  }

  sub_295EAB41C(v5, "fallbackFocusROI_width", &self->_simpleLensModelConfig.width);
  if (!v8)
  {
    goto LABEL_15;
  }

  sub_295EAB41C(v5, "fallbackFocusROI_height", &self->_simpleLensModelConfig.height);
  if (v9 && (sub_295EAB41C(v5, "zeroShiftPercentile", &self->_simpleLensModelConfig.zeroShiftPercentile), v10) && (sub_295EAB41C(v5, "simulatedAperture", &self->_simpleLensModelConfig.simulatedAperture), v11) && (sub_295EAB41C(v5, "minimumSimulatedAperture", &self->_simpleLensModelConfig.minimumSimulatedAperture), v12) && (sub_295EAB41C(v5, "maximumSimulatedAperture", &self->_simpleLensModelConfig.maximumSimulatedAperture), v13) && (sub_295EAB41C(v5, "maxFGBlur", &self->_simpleLensModelConfig.maxFGBlur), v14) && (sub_295EAB41C(v5, "shiftDeadZone", &self->_simpleLensModelConfig.shiftDeadZone), v15) && (sub_295EAB5FC(v5, "disparityScalingFactor", &self->_dynamicParams) & 1) != 0)
  {
    v16 = 1;
  }

  else
  {
LABEL_15:
    v16 = 0;
  }

  return v16;
}

- (BOOL)readBlurMapSmoothingConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  v10 = 0;
  if (configCopy)
  {
    if (sub_295EAB384(configCopy, "nIterations", &self->_blurmapSmoothingConfig.originalBlurValueT1))
    {
      sub_295EAB41C(v5, "originalBlurValueT0", &self->_blurmapSmoothingConfig.localMinimumBlurValueT0);
      if (v6)
      {
        sub_295EAB41C(v5, "originalBlurValueT1", &self->_blurmapSmoothingConfig.localMinimumBlurValueT1);
        if (v7)
        {
          sub_295EAB41C(v5, "localMinimumBlurValueT0", &self->_blurmapRefinementConfig.personParams.fusion.subtractiveLowerAlpha);
          if (v8)
          {
            sub_295EAB41C(v5, "localMinimumBlurValueT1", &self->_blurmapRefinementConfig.personParams.fusion.subtractiveUpperAlpha);
            if (v9)
            {
              v10 = 1;
            }
          }
        }
      }
    }
  }

  return v10;
}

- (BOOL)readMattingConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy)
  {
    goto LABEL_16;
  }

  sub_295EAB41C(configCopy, "zeroShiftPercentile", &self->_mattingConfig.preprocessingAmplitude);
  if (!v6)
  {
    goto LABEL_16;
  }

  sub_295EAB41C(v5, "preprocessingAlphaThreshold", &self->_mattingConfig.preprocessingExponent);
  if (!v7)
  {
    goto LABEL_16;
  }

  sub_295EAB41C(v5, "preprocessingAmplitude", &self->_mattingConfig.preprocessingGamma);
  if (!v8)
  {
    goto LABEL_16;
  }

  sub_295EAB41C(v5, "preprocessingExponent", &self->_mattingConfig.preprocessingMinFactor);
  if (!v9)
  {
    goto LABEL_16;
  }

  sub_295EAB41C(v5, "preprocessingGamma", &self->_mattingConfig.preprocessingMaxFactor);
  if (v10 && (sub_295EAB41C(v5, "preprocessingMinFactor", &self->_mattingConfig.radius), v11) && (sub_295EAB41C(v5, "preprocessingMaxFactor", &self->_mattingConfig.subsampling), v12) && (sub_295EAB41C(v5, "radius", &self->_mattingConfig.epsilon), v13) && (sub_295EAB41C(v5, "subsampling", &self->_mattingConfig.iterations), v14) && (sub_295EAB41C(v5, "epsilon", &self->_mattingConfig.rgbWeight), v15) && sub_295EAB384(v5, "iterations", &self->_renderingMajorVersion) && (sub_295EAB41C(v5, "rgbWeight", &self->_renderingMajorVersion + 1), (v16 & 1) != 0))
  {
    v17 = 1;
  }

  else
  {
LABEL_16:
    v17 = 0;
  }

  return v17;
}

- (BOOL)readRenderingConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(configCopy, "preFilterBlurStrength", &self->_renderingConfig.maxBlur);
  if (!v6)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "preFilterRadius", &self->_renderingConfig.sharpRadius))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "maxBlur", &self->_renderingConfig.softRadius);
  if (!v7)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "sharpRadius", &self->_renderingConfig.lumaNoiseModelCoeff);
  if (!v8)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "softRadius", &self->_renderingConfig.lumaNoiseAmplitude);
  if (!v9)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "lumaNoiseModelCoeff", &self->_renderingConfig.highlightBoostGain);
  if (!v10)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "highlightBoostGain", &self->_renderingConfig.maxNRings);
  if (!v11)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "minNRings", &self->_renderingConfig.nRings))
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "maxNRings", &self->_renderingConfig.basePixelWeight))
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "nRings", &self->_renderingConfig.antiAliasBlurStrength))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "basePixelWeight", &self->_renderingConfig.antiAliasRadius);
  if (!v12)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "antiAliasRadius", &self->_renderingConfig.alphaEpsilon))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "antiAliasBlurStrength", &self->_renderingConfig.relativeWeightThreshold);
  if (!v13)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "relativeWeightThreshold", &self->_renderingConfig.alphaGain);
  if (!v14)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "alphaEpsilon", &self->_renderingConfig.shapeObstructionCoeff);
  if (!v15)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "alphaGain", &self->_renderingConfig.ringAmplitude);
  if (!v16)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "shapeObstructionCoeff", &self->_renderingConfig.ringSharpness);
  if (!v17)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "ringAmplitude", &self->_renderingConfig.blendingQuarterResAlphaGain);
  if (!v18)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "ringSharpness", &self->_renderingConfig.blendingFullResAlphaGain);
  if (!v19)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blendingQuarterResAlphaGain", &self->_renderingConfig.xhlrbIterations);
  if (!v20)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blendingFullResAlphaGain", &self->_renderingConfig.xhlrbBlurRadiusT0);
  if (!v21)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "xhlrbIterations", &self->_xhlrbControlConfig.maxColourDiffusionIterations))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbBlurRadiusT0", &self->_xhlrbControlConfig.blurRadiusT0);
  if (!v22)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbBlurRadiusT1", &self->_xhlrbControlConfig.blurRadiusT1);
  if (!v23)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbMaxIntensityT0", &self->_xhlrbControlConfig.maxIntensityT0);
  if (!v24)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbMaxIntensityT1", &self->_xhlrbControlConfig.maxIntensityT1);
  if (!v25)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbMinIntensityT0", &self->_xhlrbControlConfig.minIntensityT0);
  if (!v26)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbMinIntensityT1", &self->_xhlrbControlConfig.minIntensityT1);
  if (!v27)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbExposureScoreT0", &self->_xhlrbControlConfig.exposureScoreT0);
  if (!v28)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbExposureScoreT1", &self->_xhlrbControlConfig.exposureScoreT1);
  if (!v29)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbClippedPixelsT0", &self->_xhlrbControlConfig.clippedPixelsT0);
  if (!v30)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbClippedPixelsT1", &self->_xhlrbControlConfig.clippedPixelsT1);
  if (!v31)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbRecoveryScoreT", &self->_xhlrbControlConfig.recoveryScoreT);
  if (!v32)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbPreFilterGain", &self->_xhlrbControlConfig.maxPreFilterGain);
  if (!v33)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbWeightGain", &self->_xhlrbControlConfig.maxWeightGain);
  if (!v34)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "xhlrbIntensityGain", &self->_xhlrbControlConfig.maxIntensityGain);
  if (!v35)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "xhlrbTileSize", &self->_renderingConfig.linearBoostGain))
  {
    sub_295EB4628();
  }

  sub_295EAB41C(v5, "ohlbPreFilterGain", &self->_xhlrbControlConfig.maxObscenePreFilterGain);
  if (!v36)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "ohlbWeightGain", &self->_xhlrbControlConfig.maxObsceneWeightGain);
  if (!v37)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "ohlbIntensityGain", &self->_xhlrbControlConfig.maxObsceneIntensityGain);
  if (!v38)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "linearBoostGain", &self->_renderingConfig.fgMaxNRings);
  if ((v39 & 1) == 0)
  {
    sub_295EB4698();
  }

  if (SLODWORD(self[1].super.isa) < 7)
  {
    *&self->_renderingConfig.fgNRings = 0;
    *&self->_renderingConfig.fgHitThreshold = 0x3F80000000000000;
    self->_renderingConfig.fgAlphaSmoothstepEnd = 1.0;
    self->_renderingConfig.bicubicDownsampleParamC = 0.0;
    *&self->_renderingConfig.fgBlurWeightSmoothstepStart = 0u;
LABEL_61:
    *&self->_hairnetConfig.hairnetMaskGmagThreshold = 0x3F40000000000000;
    goto LABEL_62;
  }

  if (!sub_295EAB384(v5, "fgMinNRings", &self->_renderingConfig.fgNRings))
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "fgMaxNRings", &self->_renderingConfig.fgTraceStepScale))
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "fgNRings", &self->_renderingConfig.fgHitThreshold))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgTraceStepScale", &self->_renderingConfig.fgAlphaSmoothstepStart);
  if (!v40)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgHitThreshold", &self->_renderingConfig.fgAlphaSmoothstepEnd);
  if (!v41)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgAlphaSmoothstepStart", &self->_renderingConfig.fgBlurWeightSmoothstepStart);
  if (!v42)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgAlphaSmoothstepEnd", &self->_renderingConfig.fgBlurWeightSmoothstepEnd);
  if (!v43)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgBlurWeightSmoothstepStart", &self->_renderingConfig.fgAARadius);
  if (!v44)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgBlurWeightSmoothstepEnd", &self->_renderingConfig.bicubicDownsampleParamB);
  if (!v45)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "fgAARadius", &self->_renderingConfig.bicubicDownsampleParamC);
  if ((v46 & 1) == 0)
  {
    goto LABEL_130;
  }

  if (SLODWORD(self[1].super.isa) < 8)
  {
    goto LABEL_61;
  }

  sub_295EAB41C(v5, "bicubicDownsampleParamB", &self->_hairnetConfig.hairnetMaskGmagThreshold);
  if (!v47 || (sub_295EAB41C(v5, "bicubicDownsampleParamC", &self->_hairnetConfig.hairnetMaskBlurMapThreshold), (v48 & 1) == 0))
  {
LABEL_130:
    v108 = 0;
    goto LABEL_129;
  }

LABEL_62:
  softRadius = self->_renderingConfig.softRadius;
  self->_xhlrbControlConfig.maxBGBlur = softRadius;
  *&self->_renderingConfig.xhlrbMaxIntensityT0 = *&self->_xhlrbControlConfig.blurRadiusT0;
  *&self->_renderingConfig.xhlrbPreFilterGain = *&self->_xhlrbControlConfig.minIntensityT0;
  self->_renderingConfig.xhlrbBlurRadiusT1 = 0.0;
  self->_renderingConfig.fgMinNRings = 0;
  *&self->_renderingConfig.ohlbWeightGain = 0;
  *&self->_renderingConfig.xhlrbTileSize = 0;
  *&self->_renderingConfig.xhlrbIntensityGain = 0;
  self->_simpleLensModelConfig.maxBGBlur = softRadius;
  self->_faceMaskConfig.simulatedAperture = softRadius;
  self->_segmentationFusionConfig.subtractiveLowerAlpha = softRadius;
  simulatedAperture = self->_simpleLensModelConfig.simulatedAperture;
  self->_faceMaskConfig.defaultSimulatedAperture = simulatedAperture;
  self->_segmentationFusionConfig.defaultSimulatedAperture = simulatedAperture;
  self->_renderingConfig.preFilterBlurStrength = simulatedAperture;
  *self->_anon_1ac = simulatedAperture;
  self->_segmentationFusionConfig.maxBlur = simulatedAperture;
  *&self->_renderingConfig.preFilterRadius = simulatedAperture;
  sub_295EAB41C(v5, "faces.maxBlurOnEyes", &self->_anon_1ac[136]);
  if (!v51)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.maxBlurDistFromFocus", &self->_anon_1ac[140]);
  if (!v52)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.eyeToEyebrowRatio", &self->_anon_1ac[144]);
  if (!v53)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.linearBlurGrowthM", &self->_anon_1ac[148]);
  if (!v54)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.linearBlurGrowthC", &self->_anon_1ac[152]);
  if (!v55)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.distToBlurScaling", &self->_anon_1ac[156]);
  if (!v56)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.capMultip", &self->_anon_1ac[160]);
  if (!v57)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.gainMultip", &self->_anon_1ac[164]);
  if (!v58)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.chinThetaLimit", &self->_anon_1ac[168]);
  if (!v59)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.chinThetaMultip", &self->_anon_1ac[172]);
  if (!v60)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "faces.chinVectorSnapping", &self->_anon_1ac[176]);
  if (!v61)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "segfusion.subtractiveLowerAlpha", &self->_segmentationFusionConfig.subtractiveUpperAlpha);
  if (!v62)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "segfusion.subtractiveUpperAlpha", &self->_segmentationFusionConfig.subtractiveMaxBlur);
  if (!v63)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "segfusion.additiveLowerAlpha", &self->_segmentationFusionConfig.additiveUpperAlpha);
  if (!v64)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "segfusion.additiveUpperAlpha", &self->_segmentationFusionConfig.additiveMaxBlur);
  if (!v65 || !sub_295EAB5FC(v5, "segfusion.additiveMaxBlur", &self->_dynamicParams.segmentationFusionAdditiveMaxBlur) || !sub_295EAB5FC(v5, "segfusion.subtractiveMaxBlur", &self->_dynamicParams.segmentationFusionSubtractiveMaxBlur))
  {
    goto LABEL_130;
  }

  self->_segmentationFusionConfig.additiveLowerAlpha = self->_dynamicParams.segmentationFusionSubtractiveMaxBlur.brightLightNearValue;
  *&self->_noiseEstimationConfig = self->_dynamicParams.segmentationFusionAdditiveMaxBlur.brightLightNearValue;
  antiAliasBlurStrength = self->_renderingConfig.antiAliasBlurStrength;
  v67 = *&self->_renderingConfig.nRings;
  if (SLODWORD(v67) >= SLODWORD(antiAliasBlurStrength))
  {
    v67 = self->_renderingConfig.antiAliasBlurStrength;
  }

  *&self->_renderingConfig.nRings = v67;
  if (SLODWORD(self->_renderingConfig.basePixelWeight) > SLODWORD(antiAliasBlurStrength))
  {
    antiAliasBlurStrength = self->_renderingConfig.basePixelWeight;
  }

  self->_renderingConfig.basePixelWeight = antiAliasBlurStrength;
  sub_295EAB41C(v5, "blurmapRefinement.subjectDistance.minimumFocusDistance", &self->_blurmapRefinementConfig.subjectDistance.scalingFactor);
  if (!v68)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.subjectDistance.maximumFocusDistance", &self->_blurmapRefinementConfig.subjectDistance.offset);
  if (!v69)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.subjectDistance.scalingFactor", &self->_blurmapRefinementConfig.eyeProtectionParams.maxFaces);
  if (!v70)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.subjectDistance.offset", &self->_blurmapRefinementConfig.eyeProtectionParams.faceWeightsSmoothStepMin);
  if (!v71)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.protectBodyStrength", &self->_blurmapRefinementConfig.relativeApertureScalingStrength);
  if (!v72)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.smoothstepMin", &self->_blurmapRefinementConfig.maxBlur);
  if (!v73)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.smoothstepMax", &self->_blurmapRefinementConfig.distanceAdd);
  if (!v74)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.maxBlur", &self->_blurmapRefinementConfig.subjectDistance.minimumFocusDistance);
  if (!v75)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.distanceAdd", &self->_blurmapRefinementConfig.subjectDistance.maximumFocusDistance);
  if (!v76)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.relativeApertureScalingStrength", &self->_blurmapRefinementConfig.smoothstepMax);
  if (!v77)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.faceMaskAdditiveMaxBlur", &self->_blurmapRefinementConfig.focusWindowLeft);
  if (!v78)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.faceMaskSubtractiveMaxBlur", &self->_blurmapRefinementConfig.focusWindowTop);
  if (!v79)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "blurmapRefinement.personDistance", &self->_blurmapRefinementConfig.personParams.maxBlur))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.personThreshold", &self->_blurmapRefinementConfig.hairParams.fusion.subtractiveLowerAlpha);
  if (!v80)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.personMaxBlur", &self->_blurmapRefinementConfig.hairParams.fusion.subtractiveUpperAlpha);
  if (!v81)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.hairSubtractiveLowerAlpha", &self->_blurmapRefinementConfig.hairParams.fusion.subtractiveMaxBlur);
  if (!v82)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.hairSubtractiveUpperAlpha", &self->_blurmapRefinementConfig.hairParams.fusion.additiveLowerAlpha);
  if (!v83)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB5FC(v5, "blurmapRefinement.hairSubtractiveMaxBlur", &self->_dynamicParams.hairSubtractiveMaxBlur))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.hairAdditiveLowerAlpha", &self->_blurmapRefinementConfig.hairParams.fusion.additiveMaxBlur);
  if (!v84)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.hairAdditiveUpperAlpha", &self->_blurmapRefinementConfig.hairParams.maxDistance);
  if (!v85)
  {
    goto LABEL_130;
  }

  if (!sub_295EAB5FC(v5, "blurmapRefinement.hairAdditiveMaxBlur", &self->_dynamicParams.hairAdditiveMaxBlur))
  {
    goto LABEL_130;
  }

  if (!sub_295EAB384(v5, "blurmapRefinement.hairDistance", &self->_blurmapRefinementConfig.hairParams.maxBlur))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.hairThreshold", &self->_blurmapRefinementConfig.protectBodyStrength);
  if (!v86)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.hairMaxBlur", &self->_blurmapRefinementConfig.apertureScaling);
  if (!v87)
  {
    goto LABEL_130;
  }

  self->_blurmapRefinementConfig.hairParams.fusion.additiveUpperAlpha = self->_dynamicParams.hairSubtractiveMaxBlur.brightLightNearValue;
  self->_blurmapRefinementConfig.hairParams.thresholdValue = self->_dynamicParams.hairAdditiveMaxBlur.brightLightNearValue;
  if (!sub_295EAB384(v5, "blurmapRefinement.eyeProtectionParams.maxFaces", &self->_blurmapRefinementConfig.eyeProtectionParams.faceWeightsSmoothStepMax))
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.faceWeightsSmoothStepMin", &self->_blurmapRefinementConfig.eyeProtectionParams.ovalDimsDistanceScale);
  if (!v88)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.faceWeightsSmoothStepMax", &self->_blurmapRefinementConfig.eyeProtectionParams.ovalDimsDistanceOffset);
  if (!v89)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.ovalDimsDistanceScale", &self->_blurmapRefinementConfig.eyeProtectionParams.ovalDimsRadiusHorizontal);
  if (!v90)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.ovalDimsDistanceOffset", &self->_blurmapRefinementConfig.eyeProtectionParams.ovalDimsRadiusVertical);
  if (!v91)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.ovalDimsRadiusHorizontal", &self->_blurmapRefinementConfig.eyeProtectionParams.ovalFallOffSmoothStepMin);
  if (!v92)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.ovalDimsRadiusVertical", &self->_blurmapRefinementConfig.eyeProtectionParams.ovalFallOffSmoothStepMax);
  if (!v93)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.ovalFallOffSmoothStepMin", &self->_blurmapRefinementConfig.eyeProtectionParams.personMaskSmoothStepMin);
  if (!v94)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.ovalFallOffSmoothStepMax", &self->_blurmapRefinementConfig.eyeProtectionParams.personMaskSmoothStepMax);
  if (!v95)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.personMaskSmoothStepMin", &self->_blurmapRefinementConfig.eyeProtectionParams.preventStrength);
  if (!v96)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.personMaskSmoothStepMax", &self->_blurmapRefinementConfig.eyeProtectionParams.subtractiveMaxBlur);
  if (!v97)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.preventStrength", &self->_blurmapRefinementConfig.eyeProtectionParams.subtractiveApertureScaling);
  if (!v98)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.subtractiveMaxBlur", &self->_blurmapRefinementConfig.eyeProtectionParams.maxMaskSmoothstepMin);
  if (!v99)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.subtractiveApertureScaling", &self->_blurmapRefinementConfig.eyeProtectionParams.maxMaskSmoothstepMax);
  if (!v100)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.maxMaskSmoothstepMin", &self->_blurmapRefinementConfig.faceMask_additiveMaxBlur);
  if (!v101)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "blurmapRefinement.eyeProtectionParams.maxMaskSmoothstepMax", &self->_blurmapRefinementConfig.faceMask_subtractiveMaxBlur);
  if (!v102)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "crispHair.trustedRegionAlphaThreshold", &self->_crispHairConfig.trustedRegionAlphaThreshold);
  if (!v103)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "crispHair.trustedRegionErode", &self->_crispHairConfig.trustedRegionErode);
  if (!v104)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "crispHair.expandingRadius", &self->_crispHairConfig.expandingRadius);
  if (!v105)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "crispHair.compositeAlphaThresholdLow", &self->_crispHairConfig.compositeAlphaThresholdLow);
  if (!v106)
  {
    goto LABEL_130;
  }

  sub_295EAB41C(v5, "crispHair.compositeAlphaThresholdHigh", &self->_crispHairConfig.compositeAlphaThresholdHigh);
  if ((v107 & 1) == 0)
  {
    goto LABEL_130;
  }

  v108 = 1;
LABEL_129:

  return v108;
}

- (BOOL)readHairNetConfig:(id)config
{
  configCopy = config;
  v5 = configCopy;
  if (!configCopy)
  {
    goto LABEL_19;
  }

  p_hairnetMaskAlphaBlurSigma = &self->_hairnetConfig.hairnetMaskAlphaBlurSigma;
  if (SLODWORD(self[1].super.isa) < 8)
  {
    *&self->_hairnetConfig.hairnetMaskBlurMapSharpThreshold = 0u;
    *&self->_hairnetConfig.hairnetChromaWeight = 0u;
    *p_hairnetMaskAlphaBlurSigma = 0u;
    *&self->_hairnetConfig.hairnetMaskHairThreshold = 0u;
LABEL_21:
    v23 = 1;
    goto LABEL_22;
  }

  sub_295EAB41C(configCopy, "hairnetMaskGmagThreshold", p_hairnetMaskAlphaBlurSigma);
  if (v7)
  {
    sub_295EAB41C(v5, "hairnetMaskBlurMapThreshold", &self->_hairnetConfig.hairnetMaskAlphaThresholdLow);
    if (v8)
    {
      sub_295EAB41C(v5, "hairnetMaskAlphaBlurSigma", &self->_hairnetConfig.hairnetMaskAlphaThresholdHigh);
      if (v9)
      {
        sub_295EAB41C(v5, "hairnetMaskAlphaThresholdLow", &self->_hairnetConfig.hairnetMaskHairBlurSigma);
        if (v10)
        {
          sub_295EAB41C(v5, "hairnetMaskAlphaThresholdHigh", &self->_hairnetConfig.hairnetMaskHairThreshold);
          if (v11)
          {
            sub_295EAB41C(v5, "hairnetMaskHairBlurSigma", &self->_hairnetConfig.hairnetMaskGlassesBlurSigma);
            if (v12)
            {
              sub_295EAB41C(v5, "hairnetMaskHairThreshold", &self->_hairnetConfig.hairnetMaskGlassesThreshold);
              if (v13)
              {
                sub_295EAB41C(v5, "hairnetMaskGlassesBlurSigma", &self->_hairnetConfig.hairnetMaskBlurMapBlurSigma);
                if (v14)
                {
                  sub_295EAB41C(v5, "hairnetMaskGlassesThreshold", &self->_hairnetConfig.hairnetMaskBlurMapSharpThreshold);
                  if (v15)
                  {
                    sub_295EAB41C(v5, "hairnetMaskBlurMapBlurSigma", &self->_hairnetConfig.hairnetMaskBeardOvalWidthFactor);
                    if (v16)
                    {
                      sub_295EAB41C(v5, "hairnetMaskBlurMapSharpThreshold", &self->_hairnetConfig.hairnetMaskBeardOvalEccentricity);
                      if (v17)
                      {
                        sub_295EAB41C(v5, "hairnetMaskBeardOvalWidthFactor", &self->_hairnetConfig.hairnetMaskFinalDilation);
                        if (v18)
                        {
                          sub_295EAB41C(v5, "hairnetMaskBeardOvalEccentricity", &self->_hairnetConfig.hairnetChromaWeight);
                          if (v19)
                          {
                            sub_295EAB41C(v5, "hairnetMaskFinalDilation", &self->_hairnetConfig.hairnetChromaBlurSigma);
                            if (v20)
                            {
                              sub_295EAB41C(v5, "hairnetChromaWeight", &self->_mattingConfig.zeroShiftPercentile);
                              if (v21)
                              {
                                sub_295EAB41C(v5, "hairnetChromaBlurSigma", &self->_mattingConfig.preprocessingAlphaThreshold);
                                if (v22)
                                {
                                  goto LABEL_21;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_19:
  v23 = 0;
LABEL_22:

  return v23;
}

- (dynamic_tuning_parameters)dynamicParams
{
  v3 = *&self->hairSubtractiveMaxBlur.lowLightNearValue;
  *&retstr->hairSubtractiveMaxBlur.brightLightExposureLevel = *&self->hairSubtractiveMaxBlur.nearSubjectDistanceRatio;
  *&retstr->hairSubtractiveMaxBlur.brightLightNearValue = v3;
  v4 = *&self->hairAdditiveMaxBlur.lowLightNearValue;
  *&retstr->hairAdditiveMaxBlur.brightLightExposureLevel = *&self->hairAdditiveMaxBlur.nearSubjectDistanceRatio;
  *&retstr->hairAdditiveMaxBlur.brightLightNearValue = v4;
  v5 = *&self->segmentationFusionSubtractiveMaxBlur.lowLightNearValue;
  *&retstr->segmentationFusionSubtractiveMaxBlur.brightLightExposureLevel = *&self->segmentationFusionSubtractiveMaxBlur.nearSubjectDistanceRatio;
  *&retstr->segmentationFusionSubtractiveMaxBlur.brightLightNearValue = v5;
  v6 = *&self->segmentationFusionAdditiveMaxBlur.lowLightNearValue;
  *&retstr->segmentationFusionAdditiveMaxBlur.brightLightExposureLevel = *&self->segmentationFusionAdditiveMaxBlur.nearSubjectDistanceRatio;
  *&retstr->segmentationFusionAdditiveMaxBlur.brightLightNearValue = v6;
  v7 = *&self->disparityScalingFactor.lowLightNearValue;
  *&retstr->disparityScalingFactor.brightLightExposureLevel = *&self->disparityScalingFactor.nearSubjectDistanceRatio;
  *&retstr->disparityScalingFactor.brightLightNearValue = v7;
  return self;
}

- (xhlrb_control_logic_params)xhlrbControlConfig
{
  v3 = *&self[2].maxColourDiffusionIterations;
  v4 = *&self[2].blurRadiusT0;
  *&retstr->maxWeightGain = *&self[2].maxObscenePreFilterGain;
  *&retstr->maxObsceneIntensityGain = v4;
  *&retstr->maxIntensityT0 = *&self[2].minIntensityT0;
  *&retstr->mode = *&self[2].exposureScoreT1;
  *&retstr->clippedPixelsT1 = v3;
  return self;
}

- (disparity_refinement_params)disparityRefinementConfig
{
  v3 = *&self[3].aaLumaSigma;
  v4 = *&self[3].fgBlurScale;
  v5 = *&self[3].outerSamplingRadius;
  *&retstr->segmentationSigma = *&self[3].segmentationSigma;
  *&retstr->aaLumaSigma = v3;
  retstr->fgBgDilationSize = self[3].fgBgDilationSize;
  *&retstr->fgBlurScale = v4;
  *&retstr->radius = *&self[3].radius;
  *&retstr->outerSamplingRadius = v5;
  return self;
}

- (hairnet_params)hairnetConfig
{
  v3 = *&self[17].hairnetMaskAlphaThresholdHigh;
  *&retstr->hairnetMaskGmagThreshold = *&self[17].hairnetMaskGmagThreshold;
  *&retstr->hairnetMaskAlphaThresholdHigh = v3;
  v4 = *&self[17].hairnetMaskBeardOvalEccentricity;
  *&retstr->hairnetMaskGlassesThreshold = *&self[17].hairnetMaskGlassesThreshold;
  *&retstr->hairnetMaskBeardOvalEccentricity = v4;
  return self;
}

- (simple_lens_model_params)simpleLensModelConfig
{
  v3 = *&self[6].frameNormalizedFocalLength;
  *&retstr->left = *&self[6].simulatedFocalLength;
  *&retstr->zeroShiftPercentile = v3;
  *&retstr->maximumSimulatedAperture = *&self[6].disparityScalingFactor;
  *&retstr->shiftDeadZone = *&self[7].height;
  return self;
}

- (face_mask_params)faceMaskConfig
{
  v3 = *&self->_anon_1ac[136];
  v2[8] = *&self->_anon_1ac[120];
  v2[9] = v3;
  v4 = *&self->_anon_1ac[168];
  v2[10] = *&self->_anon_1ac[152];
  v2[11] = v4;
  v5 = *&self->_anon_1ac[72];
  v2[4] = *&self->_anon_1ac[56];
  v2[5] = v5;
  v6 = *&self->_anon_1ac[104];
  v2[6] = *&self->_anon_1ac[88];
  v2[7] = v6;
  v7 = *&self->_anon_1ac[8];
  *v2 = *&self->_faceMaskConfig.simulatedAperture;
  v2[1] = v7;
  v8 = *&self->_anon_1ac[24];
  v9 = *&self->_anon_1ac[40];
  v2[2] = v8;
  v2[3] = v9;
  result.simulatedAperture = *&v9;
  result.maxBlur = *&v8;
  return result;
}

- (segmentation_fusion_params)segmentationFusionConfig
{
  v3 = *&self[17].subtractiveLowerAlpha;
  *&retstr->simulatedAperture = *&self[16].additiveMaxBlur;
  *&retstr->subtractiveUpperAlpha = v3;
  retstr->additiveMaxBlur = self[17].additiveUpperAlpha;
  return self;
}

- (blurmap_refinement_params)blurmapRefinementConfig
{
  *&retstr->focusWindowLeft = *&self[4].hairParams.fusion.additiveLowerAlpha;
  v3 = *&self[4].hairParams.fusion.subtractiveLowerAlpha;
  *&retstr->eyeProtectionParams.preventStrength = *&self[4].personParams.fusion.additiveMaxBlur;
  *&retstr->eyeProtectionParams.maxMaskSmoothstepMax = v3;
  v4 = *&self[3].eyeProtectionParams.maxMaskSmoothstepMax;
  *&retstr->distanceAdd = *&self[3].eyeProtectionParams.preventStrength;
  *&retstr->subjectDistance.offset = v4;
  v5 = *&self[4].personParams.fusion.subtractiveUpperAlpha;
  *&retstr->eyeProtectionParams.ovalDimsDistanceScale = *&self[3].focusWindowTop;
  *&retstr->eyeProtectionParams.ovalFallOffSmoothStepMin = v5;
  v6 = *&self[3].subjectDistance.offset;
  *&retstr->personParams.maxBlur = *&self[3].distanceAdd;
  *&retstr->hairParams.fusion.additiveLowerAlpha = v6;
  v7 = *&self[3].eyeProtectionParams.ovalFallOffSmoothStepMin;
  *&retstr->hairParams.thresholdValue = *&self[3].eyeProtectionParams.ovalDimsDistanceScale;
  *&retstr->relativeApertureScalingStrength = v7;
  v8 = *&self[3].relativeApertureScalingStrength;
  *&retstr->personParams.fusion.subtractiveLowerAlpha = *&self[3].hairParams.thresholdValue;
  *&retstr->personParams.fusion.additiveUpperAlpha = v8;
  return self;
}

- (rendering_config_params)renderingConfig
{
  v3 = *&self[5].maxBlur;
  *&retstr->fgMinNRings = *&self[5].simulatedAperture;
  *&retstr->fgHitThreshold = v3;
  *&retstr->fgBlurWeightSmoothstepEnd = *&self[5].lumaNoiseAmplitude;
  v4 = *&self[4].fgMinNRings;
  *&retstr->xhlrbIterations = *&self[4].ohlbIntensityGain;
  *&retstr->xhlrbMaxIntensityT1 = v4;
  v5 = *&self[4].fgBlurWeightSmoothstepEnd;
  *&retstr->xhlrbWeightGain = *&self[4].fgHitThreshold;
  *&retstr->ohlbIntensityGain = v5;
  v6 = *&self[4].xhlrbIterations;
  *&retstr->lumaNoiseAmplitude = *&self[4].ringAmplitude;
  *&retstr->nRings = v6;
  v7 = *&self[4].xhlrbWeightGain;
  *&retstr->relativeWeightThreshold = *&self[4].xhlrbMaxIntensityT1;
  *&retstr->ringAmplitude = v7;
  v8 = *&self[4].relativeWeightThreshold;
  *&retstr->simulatedAperture = *&self[4].nRings;
  *&retstr->maxBlur = v8;
  return self;
}

- ($56A7D0D9115FBA927525223D43EC1313)mattingConfig
{
  v3 = *&self[24].var4;
  *&retstr->var0 = *&self[24].var0;
  *&retstr->var4 = v3;
  *&retstr->var8 = *&self[24].var8;
  return self;
}

- (FigSDOFRenderingTuningParametersSet)initWithTuningDictionary:(id)dictionary suffix:(id)suffix
{
  dictionaryCopy = dictionary;
  suffixCopy = suffix;
  v15 = objc_msgSend_init(self, v10, v11, v12);
  if (!v15)
  {
    sub_295EADD2C();
    v34 = 0;
    v42 = 0;
    v16 = 0;
    v24 = 0;
    goto LABEL_25;
  }

  if (suffixCopy)
  {
    v16 = objc_msgSend_stringByAppendingString_(@"_", v13, suffixCopy, v14);
  }

  else
  {
    v16 = &stru_2A1D124E8;
  }

  self = MEMORY[0x29EDBA070];
  v17 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v13, @"Version", v14);
  objc_msgSend_intValue(v17, v18, v19, v20);
  CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
  v24 = objc_msgSend_numberWithInt_(self, v22, CFPreferenceNumberWithDefault, v23);

  if (!v24)
  {
    sub_295EADD2C();
    v34 = 0;
LABEL_30:
    v42 = 0;
    goto LABEL_25;
  }

  *(v15 + 1200) = objc_msgSend_intValue(v24, v25, v26, v27);
  objc_msgSend_stringByAppendingString_(@"DisparityRefinement", v28, v16, v29);
  objc_claimAutoreleasedReturnValue();
  v30 = sub_295EADCD4();
  v34 = objc_msgSend_objectForKeyedSubscript_(v30, v31, v32, v33);

  if (!v34)
  {
    sub_295EADD2C();
    goto LABEL_30;
  }

  v35 = sub_295EADD40();
  objc_msgSend_stringWithFormat_(v35, v36, @"SLMv%@%@", v37);
  objc_claimAutoreleasedReturnValue();
  v38 = sub_295EADCD4();
  v42 = objc_msgSend_objectForKeyedSubscript_(v38, v39, v40, v41);

  v97 = v34;
  if (!v42)
  {
    self = 0;
    v96 = 0;
    v4 = 0;
    v5 = 0;
    v34 = 0;
    goto LABEL_25;
  }

  objc_msgSend_stringByAppendingString_(@"NoiseEstimation", v43, v16, v44);
  objc_claimAutoreleasedReturnValue();
  v45 = sub_295EADCD4();
  v49 = objc_msgSend_objectForKeyedSubscript_(v45, v46, v47, v48);
  v50 = *(v15 + 648);
  *(v15 + 648) = v49;

  v96 = v42;
  if (!*(v15 + 648))
  {
    self = 0;
    v4 = 0;
LABEL_34:
    v5 = 0;
    goto LABEL_35;
  }

  v51 = sub_295EADD40();
  objc_msgSend_stringWithFormat_(v51, v52, @"BlurMapSmoothingV%@%@", v53);
  objc_claimAutoreleasedReturnValue();
  v54 = sub_295EADCD4();
  v4 = objc_msgSend_objectForKeyedSubscript_(v54, v55, v56, v57);

  if (!v4)
  {
    self = 0;
    goto LABEL_34;
  }

  v58 = sub_295EADD40();
  objc_msgSend_stringWithFormat_(v58, v59, @"RenderingV%@%@", v60);
  objc_claimAutoreleasedReturnValue();
  v61 = sub_295EADCD4();
  v5 = objc_msgSend_objectForKeyedSubscript_(v61, v62, v63, v64);

  if (!v5 || !objc_msgSend_readDisparityRefinementConfig_(v15, v65, v34, v66) || !objc_msgSend_readSLMConfig_(v15, v67, v42, v68) || !objc_msgSend_readBlurMapSmoothingConfig_(v15, v69, v4, v70) || !objc_msgSend_readRenderingConfig_(v15, v71, v5, v72))
  {
    self = 0;
LABEL_35:
    v34 = 0;
    v42 = 0;
    goto LABEL_25;
  }

  v73 = sub_295EADD40();
  objc_msgSend_stringWithFormat_(v73, v74, @"HairNetV%@%@", v75);
  objc_claimAutoreleasedReturnValue();
  v76 = sub_295EADCD4();
  v42 = objc_msgSend_objectForKeyedSubscript_(v76, v77, v78, v79);

  if (v42)
  {
    objc_msgSend_readHairNetConfig_(v15, v80, v42, v81);
  }

  if (*(v15 + 248) != 0xFFFF || *(v15 + 1200) < 6)
  {
    v34 = 0;
LABEL_24:
    self = v15;
    goto LABEL_25;
  }

  v82 = sub_295EADD40();
  objc_msgSend_stringWithFormat_(v82, v83, @"MattingV%@%@", v84);
  objc_claimAutoreleasedReturnValue();
  v85 = sub_295EADCD4();
  v34 = objc_msgSend_objectForKeyedSubscript_(v85, v86, v87, v88);

  if (!v34)
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x29EDBA0F8], v89, @"MattingV%@", v90, v24);
    objc_claimAutoreleasedReturnValue();
    v91 = sub_295EADCD4();
    v34 = objc_msgSend_objectForKeyedSubscript_(v91, v92, v93, v94);

    if (!v34)
    {
      self = 0;
      goto LABEL_25;
    }
  }

  if (objc_msgSend_readMattingConfig_(v15, v89, v34, v90))
  {
    goto LABEL_24;
  }

  self = 0;
LABEL_25:

  return self;
}

@end