@interface PIAdjustmentConstants
- (NSArray)allAdjustmentTypes;
- (NSArray)nonVisualAdjustmentTypes;
- (PIAdjustmentConstants)init;
@end

@implementation PIAdjustmentConstants

- (NSArray)nonVisualAdjustmentTypes
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = *&self->_PITrimAdjustmentKey;
  PIMuteAdjustmentKey = self->_PIMuteAdjustmentKey;
  v6 = *&self->_PILivePhotoKeyFrameAdjustmentKey;
  PICinematicAudioAdjustmentKey = self->_PICinematicAudioAdjustmentKey;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v4 count:6];

  return v2;
}

- (NSArray)allAdjustmentTypes
{
  v49 = *MEMORY[0x1E69E9840];
  PISmartBWAdjustmentKey = self->_PISmartBWAdjustmentKey;
  PIWhiteBalanceAdjustmentKey = self->_PIWhiteBalanceAdjustmentKey;
  PIVignetteAdjustmentKey = self->_PIVignetteAdjustmentKey;
  PISharpenAdjustmentKey = self->_PISharpenAdjustmentKey;
  PIRetouchAdjustmentKey = self->_PIRetouchAdjustmentKey;
  v25 = PIVignetteAdjustmentKey;
  PINoiseReductionAdjustmentKey = self->_PINoiseReductionAdjustmentKey;
  PIDefinitionAdjustmentKey = self->_PIDefinitionAdjustmentKey;
  v26 = PISharpenAdjustmentKey;
  v27 = PINoiseReductionAdjustmentKey;
  PICurvesAdjustmentKey = self->_PICurvesAdjustmentKey;
  PILevelsAdjustmentKey = self->_PILevelsAdjustmentKey;
  v28 = PIDefinitionAdjustmentKey;
  v29 = PICurvesAdjustmentKey;
  v30 = PILevelsAdjustmentKey;
  PIEffect3DAdjustmentKey = self->_PIEffect3DAdjustmentKey;
  PIAutoLoopAdjustmentKey = self->_PIAutoLoopAdjustmentKey;
  PIVideoPosterFrameAdjustmentKey = self->_PIVideoPosterFrameAdjustmentKey;
  v36 = PIAutoLoopAdjustmentKey;
  PIMuteAdjustmentKey = self->_PIMuteAdjustmentKey;
  PIHighResFusionAdjustmentKey = self->_PIHighResFusionAdjustmentKey;
  v38 = PIMuteAdjustmentKey;
  PIPortraitAdjustmentKey = self->_PIPortraitAdjustmentKey;
  PIDepthAdjustmentKey = self->_PIDepthAdjustmentKey;
  v40 = PIPortraitAdjustmentKey;
  PIRawAdjustmentKey = self->_PIRawAdjustmentKey;
  PIOrientationAdjustmentKey = self->_PIOrientationAdjustmentKey;
  v42 = PIRawAdjustmentKey;
  PISemanticEnhanceAdjustmentKey = self->_PISemanticEnhanceAdjustmentKey;
  PIPortraitVideoAdjustmentKey = self->_PIPortraitVideoAdjustmentKey;
  PICinematicAudioAdjustmentKey = self->_PICinematicAudioAdjustmentKey;
  PIRawNoiseReductionAdjustmentKey = self->_PIRawNoiseReductionAdjustmentKey;
  v44 = PIPortraitVideoAdjustmentKey;
  PIVideoStabilizeAdjustmentKey = self->_PIVideoStabilizeAdjustmentKey;
  v46 = PISemanticEnhanceAdjustmentKey;
  v19 = *&self->_PISmartToneAdjustmentKey;
  v21 = *&self->_PIGrainAdjustmentKey;
  v23 = *&self->_PIRedEyeAdjustmentKey;
  v31 = *&self->_PISelectiveColorAdjustmentKey;
  v15 = *&self->_PISlomoAdjustmentKey;
  v33 = *&self->_PICropAdjustmentKey;
  v34 = v15;
  PISemanticStyleAdjustmentKey = self->_PISemanticStyleAdjustmentKey;
  v47 = PICinematicAudioAdjustmentKey;
  v48 = PISemanticStyleAdjustmentKey;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:36];

  return v17;
}

- (PIAdjustmentConstants)init
{
  v6.receiver = self;
  v6.super_class = PIAdjustmentConstants;
  v2 = [(PIAdjustmentConstants *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_PISmartToneAdjustmentKey, @"smartTone");
    objc_storeStrong(&v3->_PISmartColorAdjustmentKey, @"smartColor");
    objc_storeStrong(&v3->_PISmartBWAdjustmentKey, @"smartBlackAndWhite");
    objc_storeStrong(&v3->_PIGrainAdjustmentKey, @"grain");
    objc_storeStrong(&v3->_PIAutoEnhanceAdjustmentKey, @"autoEnhance");
    objc_storeStrong(&v3->_PIWhiteBalanceAdjustmentKey, @"whiteBalance");
    objc_storeStrong(&v3->_PIRedEyeAdjustmentKey, @"redEye");
    objc_storeStrong(&v3->_PIApertureRedEyeAdjustmentKey, @"apertureRedEye");
    objc_storeStrong(&v3->_PIRetouchAdjustmentKey, @"retouch");
    objc_storeStrong(&v3->_PIInpaintAdjustmentKey, @"inpaint");
    objc_storeStrong(&v3->_PIVignetteAdjustmentKey, @"vignette");
    objc_storeStrong(&v3->_PISharpenAdjustmentKey, @"sharpen");
    objc_storeStrong(&v3->_PINoiseReductionAdjustmentKey, @"noiseReduction");
    objc_storeStrong(&v3->_PIDefinitionAdjustmentKey, @"definition");
    objc_storeStrong(&v3->_PICurvesAdjustmentKey, @"curves");
    objc_storeStrong(&v3->_PILevelsAdjustmentKey, @"levels");
    objc_storeStrong(&v3->_PISelectiveColorAdjustmentKey, @"selectiveColor");
    objc_storeStrong(&v3->_PIEffectAdjustmentKey, @"effect");
    objc_storeStrong(&v3->_PIEffect3DAdjustmentKey, @"effect3D");
    objc_storeStrong(&v3->_PICropAdjustmentKey, @"cropStraighten");
    objc_storeStrong(&v3->_PITrimAdjustmentKey, @"trim");
    objc_storeStrong(&v3->_PISlomoAdjustmentKey, @"slomo");
    objc_storeStrong(&v3->_PILivePhotoKeyFrameAdjustmentKey, @"livePhotoKeyFrame");
    objc_storeStrong(&v3->_PIVideoPosterFrameAdjustmentKey, @"videoPosterFrame");
    objc_storeStrong(&v3->_PIAutoLoopAdjustmentKey, @"autoLoop");
    objc_storeStrong(&v3->_PIHighResFusionAdjustmentKey, @"highResFusion");
    objc_storeStrong(&v3->_PIMuteAdjustmentKey, @"mute");
    objc_storeStrong(&v3->_PIDepthAdjustmentKey, @"depthEffect");
    objc_storeStrong(&v3->_PIPortraitAdjustmentKey, @"portraitEffect");
    objc_storeStrong(&v3->_PIOrientationAdjustmentKey, @"orientation");
    objc_storeStrong(&v3->_PIRawAdjustmentKey, @"raw");
    objc_storeStrong(&v3->_PIRawNoiseReductionAdjustmentKey, @"rawNoiseReduction");
    objc_storeStrong(&v3->_PISourceAdjustmentKey, @"source");
    objc_storeStrong(&v3->_PIPortraitVideoAdjustmentKey, @"portraitVideo");
    objc_storeStrong(&v3->_PIVideoStabilizeAdjustmentKey, @"videoStabilize");
    objc_storeStrong(&v3->_PIVideoCrossfadeLoopAdjustmentKey, @"videoCrossfadeLoop");
    objc_storeStrong(&v3->_PISemanticEnhanceAdjustmentKey, @"semanticEnhance");
    objc_storeStrong(&v3->_PICinematicAudioAdjustmentKey, @"cinematicAudio");
    objc_storeStrong(&v3->_PISemanticStyleAdjustmentKey, @"semanticStyle");
    v4 = v3;
  }

  return v3;
}

@end