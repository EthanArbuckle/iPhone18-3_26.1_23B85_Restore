@interface SBCaptureButtonSettings
+ (id)settingsControllerModule;
- (void)_configureSettings:(id)settings withDamping:(double)damping mass:(double)mass stiffness:(double)stiffness;
- (void)setDefaultValues;
@end

@implementation SBCaptureButtonSettings

- (void)setDefaultValues
{
  v72.receiver = self;
  v72.super_class = SBCaptureButtonSettings;
  [(PTSettings *)&v72 setDefaultValues];
  [(SBCaptureButtonSettings *)self setLaunchAfterButtonUpGracePeriod:0.65];
  [(SBCaptureButtonSettings *)self setIgnoreFaceDownAfterDuration:1.0];
  [(SBCaptureButtonSettings *)self setDirectLaunchAfterUnsuppressGracePeriod:2.0];
  [(SBCaptureButtonSettings *)self setLongPressVisionIntelligenceDelay:0.65];
  [(SBCaptureButtonSettings *)self setPreludeDropletRadius:8.33333333];
  [(SBCaptureButtonSettings *)self setPreludeCornerRadius:33.3333333];
  [(SBCaptureButtonSettings *)self setPreludeScreenEdgeInset:13.3333333];
  preludePresentationTranslationSettings = [(SBCaptureButtonSettings *)self preludePresentationTranslationSettings];
  [preludePresentationTranslationSettings setDefaultValues];

  preludePresentationTranslationSettings2 = [(SBCaptureButtonSettings *)self preludePresentationTranslationSettings];
  [preludePresentationTranslationSettings2 setBehaviorType:1];

  preludePresentationTranslationSettings3 = [(SBCaptureButtonSettings *)self preludePresentationTranslationSettings];
  [preludePresentationTranslationSettings3 setResponse:0.484];

  preludePresentationTranslationSettings4 = [(SBCaptureButtonSettings *)self preludePresentationTranslationSettings];
  [preludePresentationTranslationSettings4 setDampingRatio:0.845];

  preludePresentationTranslationSettings5 = [(SBCaptureButtonSettings *)self preludePresentationTranslationSettings];
  [preludePresentationTranslationSettings5 setName:@"Droplet Presentation"];

  preludePresentationTranslationSettings6 = [(SBCaptureButtonSettings *)self preludePresentationTranslationSettings];
  v73 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [preludePresentationTranslationSettings6 setFrameRateRange:1114147 highFrameRateReason:{*&v73.minimum, *&v73.maximum, *&v73.preferred}];

  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineScreenBlendMode:0];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineRimIsSoft:0];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineAlpha:1.0];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineLargeBlurRadius:1.0];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineLargeAmount:0.5];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineLargeStart:0.32];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineLargeEnd:0.465];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineSmallWidth:0.0];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineFadeLength:50.0];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineFadeStart:0.28];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineFadeEnd:0.8];
  [(SBCaptureButtonSettings *)self setVisionIntelligenceKeylineEDRGain:4.5];
  visionIntelligenceBehaviorSettings = [(SBCaptureButtonSettings *)self visionIntelligenceBehaviorSettings];
  [visionIntelligenceBehaviorSettings setDefaultValues];

  visionIntelligenceBehaviorSettings2 = [(SBCaptureButtonSettings *)self visionIntelligenceBehaviorSettings];
  [visionIntelligenceBehaviorSettings2 setBehaviorType:1];

  visionIntelligenceBehaviorSettings3 = [(SBCaptureButtonSettings *)self visionIntelligenceBehaviorSettings];
  [visionIntelligenceBehaviorSettings3 setResponse:0.531];

  visionIntelligenceBehaviorSettings4 = [(SBCaptureButtonSettings *)self visionIntelligenceBehaviorSettings];
  [visionIntelligenceBehaviorSettings4 setDampingRatio:1.0];

  visionIntelligenceBehaviorSettings5 = [(SBCaptureButtonSettings *)self visionIntelligenceBehaviorSettings];
  [visionIntelligenceBehaviorSettings5 setName:@"Droplet Settings"];

  visionIntelligenceBehaviorSettings6 = [(SBCaptureButtonSettings *)self visionIntelligenceBehaviorSettings];
  v74 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [visionIntelligenceBehaviorSettings6 setFrameRateRange:1114113 highFrameRateReason:{*&v74.minimum, *&v74.maximum, *&v74.preferred}];

  visionIntelligenceHintBehaviorSettings = [(SBCaptureButtonSettings *)self visionIntelligenceHintBehaviorSettings];
  [visionIntelligenceHintBehaviorSettings setDefaultValues];

  visionIntelligenceHintBehaviorSettings2 = [(SBCaptureButtonSettings *)self visionIntelligenceHintBehaviorSettings];
  [visionIntelligenceHintBehaviorSettings2 setBehaviorType:1];

  visionIntelligenceHintBehaviorSettings3 = [(SBCaptureButtonSettings *)self visionIntelligenceHintBehaviorSettings];
  [visionIntelligenceHintBehaviorSettings3 setResponse:0.224];

  visionIntelligenceHintBehaviorSettings4 = [(SBCaptureButtonSettings *)self visionIntelligenceHintBehaviorSettings];
  [visionIntelligenceHintBehaviorSettings4 setDampingRatio:3.2];

  visionIntelligenceHintBehaviorSettings5 = [(SBCaptureButtonSettings *)self visionIntelligenceHintBehaviorSettings];
  [visionIntelligenceHintBehaviorSettings5 setName:@"Droplet Hint Settings"];

  visionIntelligenceHintBehaviorSettings6 = [(SBCaptureButtonSettings *)self visionIntelligenceHintBehaviorSettings];
  v75 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [visionIntelligenceHintBehaviorSettings6 setFrameRateRange:1114113 highFrameRateReason:{*&v75.minimum, *&v75.maximum, *&v75.preferred}];

  [(SBCaptureButtonSettings *)self setEnableZoomUpBlur:1];
  [(SBCaptureButtonSettings *)self setZoomUpDropletRadius:0.0];
  [(SBCaptureButtonSettings *)self setDisableDropletEffectDelay:0.1];
  [(SBCaptureButtonSettings *)self setZoomUpYAndScaleDelay:0.024];
  zoomUpPositionXSettings = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  [zoomUpPositionXSettings setDefaultValues];

  zoomUpPositionXSettings2 = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  [zoomUpPositionXSettings2 setBehaviorType:1];

  zoomUpPositionXSettings3 = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  [zoomUpPositionXSettings3 setResponse:0.412];

  zoomUpPositionXSettings4 = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  [zoomUpPositionXSettings4 setDampingRatio:0.816];

  zoomUpPositionXSettings5 = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  [zoomUpPositionXSettings5 setRetargetImpulse:0.016];

  zoomUpPositionXSettings6 = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  [zoomUpPositionXSettings6 setName:@"Droplet Zoom Up Position X"];

  zoomUpPositionXSettings7 = [(SBCaptureButtonSettings *)self zoomUpPositionXSettings];
  v76 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpPositionXSettings7 setFrameRateRange:1114113 highFrameRateReason:{*&v76.minimum, *&v76.maximum, *&v76.preferred}];

  zoomUpPositionYSettings = [(SBCaptureButtonSettings *)self zoomUpPositionYSettings];
  [zoomUpPositionYSettings setDefaultValues];

  zoomUpPositionYSettings2 = [(SBCaptureButtonSettings *)self zoomUpPositionYSettings];
  [zoomUpPositionYSettings2 setBehaviorType:1];

  zoomUpPositionYSettings3 = [(SBCaptureButtonSettings *)self zoomUpPositionYSettings];
  [zoomUpPositionYSettings3 setResponse:0.412];

  zoomUpPositionYSettings4 = [(SBCaptureButtonSettings *)self zoomUpPositionYSettings];
  [zoomUpPositionYSettings4 setDampingRatio:1.1];

  zoomUpPositionYSettings5 = [(SBCaptureButtonSettings *)self zoomUpPositionYSettings];
  [zoomUpPositionYSettings5 setName:@"Droplet Zoom Up Position Y"];

  zoomUpPositionYSettings6 = [(SBCaptureButtonSettings *)self zoomUpPositionYSettings];
  v77 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpPositionYSettings6 setFrameRateRange:1114113 highFrameRateReason:{*&v77.minimum, *&v77.maximum, *&v77.preferred}];

  zoomUpScaleSettings = [(SBCaptureButtonSettings *)self zoomUpScaleSettings];
  [zoomUpScaleSettings setDefaultValues];

  zoomUpScaleSettings2 = [(SBCaptureButtonSettings *)self zoomUpScaleSettings];
  [zoomUpScaleSettings2 setBehaviorType:1];

  zoomUpScaleSettings3 = [(SBCaptureButtonSettings *)self zoomUpScaleSettings];
  [zoomUpScaleSettings3 setResponse:0.424];

  zoomUpScaleSettings4 = [(SBCaptureButtonSettings *)self zoomUpScaleSettings];
  [zoomUpScaleSettings4 setDampingRatio:1.1];

  zoomUpScaleSettings5 = [(SBCaptureButtonSettings *)self zoomUpScaleSettings];
  [zoomUpScaleSettings5 setName:@"Droplet Zoom Up Scale"];

  zoomUpScaleSettings6 = [(SBCaptureButtonSettings *)self zoomUpScaleSettings];
  v78 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpScaleSettings6 setFrameRateRange:1114113 highFrameRateReason:{*&v78.minimum, *&v78.maximum, *&v78.preferred}];

  zoomUpCornerRadiusSettings = [(SBCaptureButtonSettings *)self zoomUpCornerRadiusSettings];
  [zoomUpCornerRadiusSettings setDefaultValues];

  zoomUpCornerRadiusSettings2 = [(SBCaptureButtonSettings *)self zoomUpCornerRadiusSettings];
  [zoomUpCornerRadiusSettings2 setBehaviorType:1];

  zoomUpCornerRadiusSettings3 = [(SBCaptureButtonSettings *)self zoomUpCornerRadiusSettings];
  [(SBCaptureButtonSettings *)self _configureSettings:zoomUpCornerRadiusSettings3 withDamping:36.0328 mass:1.0 stiffness:324.591];

  zoomUpCornerRadiusSettings4 = [(SBCaptureButtonSettings *)self zoomUpCornerRadiusSettings];
  [zoomUpCornerRadiusSettings4 setName:@"Droplet Zoom Up Corner Radius"];

  zoomUpCornerRadiusSettings5 = [(SBCaptureButtonSettings *)self zoomUpCornerRadiusSettings];
  v79 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpCornerRadiusSettings5 setFrameRateRange:1114113 highFrameRateReason:{*&v79.minimum, *&v79.maximum, *&v79.preferred}];

  zoomUpDropletRadiusAnimationSettings = [(SBCaptureButtonSettings *)self zoomUpDropletRadiusAnimationSettings];
  [zoomUpDropletRadiusAnimationSettings setDefaultValues];

  zoomUpDropletRadiusAnimationSettings2 = [(SBCaptureButtonSettings *)self zoomUpDropletRadiusAnimationSettings];
  [zoomUpDropletRadiusAnimationSettings2 setBehaviorType:1];

  zoomUpDropletRadiusAnimationSettings3 = [(SBCaptureButtonSettings *)self zoomUpDropletRadiusAnimationSettings];
  [(SBCaptureButtonSettings *)self _configureSettings:zoomUpDropletRadiusAnimationSettings3 withDamping:50.0 mass:2.0 stiffness:300.0];

  zoomUpDropletRadiusAnimationSettings4 = [(SBCaptureButtonSettings *)self zoomUpDropletRadiusAnimationSettings];
  [zoomUpDropletRadiusAnimationSettings4 setName:@"Droplet Zoom Up Droplet Radius"];

  zoomUpDropletRadiusAnimationSettings5 = [(SBCaptureButtonSettings *)self zoomUpDropletRadiusAnimationSettings];
  v80 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpDropletRadiusAnimationSettings5 setFrameRateRange:1114113 highFrameRateReason:{*&v80.minimum, *&v80.maximum, *&v80.preferred}];

  zoomUpBackgroundDimAnimationSettings = [(SBCaptureButtonSettings *)self zoomUpBackgroundDimAnimationSettings];
  [zoomUpBackgroundDimAnimationSettings setDefaultValues];

  zoomUpBackgroundDimAnimationSettings2 = [(SBCaptureButtonSettings *)self zoomUpBackgroundDimAnimationSettings];
  [zoomUpBackgroundDimAnimationSettings2 setBehaviorType:1];

  zoomUpBackgroundDimAnimationSettings3 = [(SBCaptureButtonSettings *)self zoomUpBackgroundDimAnimationSettings];
  [zoomUpBackgroundDimAnimationSettings3 setResponse:0.28];

  zoomUpBackgroundDimAnimationSettings4 = [(SBCaptureButtonSettings *)self zoomUpBackgroundDimAnimationSettings];
  [zoomUpBackgroundDimAnimationSettings4 setDampingRatio:1.0];

  zoomUpBackgroundDimAnimationSettings5 = [(SBCaptureButtonSettings *)self zoomUpBackgroundDimAnimationSettings];
  [zoomUpBackgroundDimAnimationSettings5 setName:@"Droplet Zoom Up Background Dim"];

  zoomUpBackgroundDimAnimationSettings6 = [(SBCaptureButtonSettings *)self zoomUpBackgroundDimAnimationSettings];
  v81 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpBackgroundDimAnimationSettings6 setFrameRateRange:1114113 highFrameRateReason:{*&v81.minimum, *&v81.maximum, *&v81.preferred}];

  zoomUpDisableDropletEffectFiltersSettings = [(SBCaptureButtonSettings *)self zoomUpDisableDropletEffectFiltersSettings];
  [zoomUpDisableDropletEffectFiltersSettings setDefaultValues];

  zoomUpDisableDropletEffectFiltersSettings2 = [(SBCaptureButtonSettings *)self zoomUpDisableDropletEffectFiltersSettings];
  [zoomUpDisableDropletEffectFiltersSettings2 setBehaviorType:1];

  zoomUpDisableDropletEffectFiltersSettings3 = [(SBCaptureButtonSettings *)self zoomUpDisableDropletEffectFiltersSettings];
  [zoomUpDisableDropletEffectFiltersSettings3 setResponse:0.128];

  zoomUpDisableDropletEffectFiltersSettings4 = [(SBCaptureButtonSettings *)self zoomUpDisableDropletEffectFiltersSettings];
  [zoomUpDisableDropletEffectFiltersSettings4 setDampingRatio:1.0];

  zoomUpDisableDropletEffectFiltersSettings5 = [(SBCaptureButtonSettings *)self zoomUpDisableDropletEffectFiltersSettings];
  [zoomUpDisableDropletEffectFiltersSettings5 setName:@"Droplet Zoom Up Disable Dropletting"];

  zoomUpDisableDropletEffectFiltersSettings6 = [(SBCaptureButtonSettings *)self zoomUpDisableDropletEffectFiltersSettings];
  v82 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [zoomUpDisableDropletEffectFiltersSettings6 setFrameRateRange:1114113 highFrameRateReason:{*&v82.minimum, *&v82.maximum, *&v82.preferred}];

  [(SBCaptureButtonSettings *)self setDosidoTargetScale:0.5];
  dosidoLayoutAndPositionSettings = [(SBCaptureButtonSettings *)self dosidoLayoutAndPositionSettings];
  [dosidoLayoutAndPositionSettings setDefaultValues];

  dosidoLayoutAndPositionSettings2 = [(SBCaptureButtonSettings *)self dosidoLayoutAndPositionSettings];
  [dosidoLayoutAndPositionSettings2 setBehaviorType:1];

  dosidoLayoutAndPositionSettings3 = [(SBCaptureButtonSettings *)self dosidoLayoutAndPositionSettings];
  [(SBCaptureButtonSettings *)self _configureSettings:dosidoLayoutAndPositionSettings3 withDamping:50.0 mass:2.0 stiffness:300.0];

  dosidoLayoutAndPositionSettings4 = [(SBCaptureButtonSettings *)self dosidoLayoutAndPositionSettings];
  [dosidoLayoutAndPositionSettings4 setName:@"Droplet Do-si-do Layout and Position"];

  dosidoLayoutAndPositionSettings5 = [(SBCaptureButtonSettings *)self dosidoLayoutAndPositionSettings];
  v83 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dosidoLayoutAndPositionSettings5 setFrameRateRange:1114113 highFrameRateReason:{*&v83.minimum, *&v83.maximum, *&v83.preferred}];

  dosidoScaleSettings = [(SBCaptureButtonSettings *)self dosidoScaleSettings];
  [dosidoScaleSettings setDefaultValues];

  dosidoScaleSettings2 = [(SBCaptureButtonSettings *)self dosidoScaleSettings];
  [dosidoScaleSettings2 setBehaviorType:1];

  dosidoScaleSettings3 = [(SBCaptureButtonSettings *)self dosidoScaleSettings];
  [(SBCaptureButtonSettings *)self _configureSettings:dosidoScaleSettings3 withDamping:50.0 mass:2.0 stiffness:300.0];

  dosidoScaleSettings4 = [(SBCaptureButtonSettings *)self dosidoScaleSettings];
  [dosidoScaleSettings4 setName:@"Droplet Do-si-do Scale"];

  dosidoScaleSettings5 = [(SBCaptureButtonSettings *)self dosidoScaleSettings];
  v84 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [dosidoScaleSettings5 setFrameRateRange:1114113 highFrameRateReason:{*&v84.minimum, *&v84.maximum, *&v84.preferred}];

  [(SBCaptureButtonSettings *)self setZoomUpBlurStartProgress:0.0];
  [(SBCaptureButtonSettings *)self setZoomUpBackgroundDimStartProgress:0.85];
  [(SBCaptureButtonSettings *)self setDosidoUsesHomeScreenBlur:1];
  [(SBCaptureButtonSettings *)self setEnablesStationaryDetectionForUnlocked:1];
  [(SBCaptureButtonSettings *)self setAccidentalPreventionStationaryThreshold:0.1];
  [(SBCaptureButtonSettings *)self setAccidentalPreventionPickUpBuffer:0.2];
  [(SBCaptureButtonSettings *)self setCoachingUIDismissalInterval:3.0];
  [(SBCaptureButtonSettings *)self setStationaryDetectionDebounceInterval:4.0];
}

- (void)_configureSettings:(id)settings withDamping:(double)damping mass:(double)mass stiffness:(double)stiffness
{
  settingsCopy = settings;
  convertDampingMassAndStiffnessToDampingRatioAndResponse();
  [settingsCopy setDampingRatio:0.0];
  [settingsCopy setResponse:0.0];
}

+ (id)settingsControllerModule
{
  v182[4] = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v2 = MEMORY[0x277D43210];
  v168 = [MEMORY[0x277D431E8] rowWithTitle:@"Grace period (sec) after release" valueKeyPath:@"launchAfterButtonUpGracePeriod"];
  v162 = [v168 between:0.0 and:5.0];
  v157 = [v162 precision:3];
  v182[0] = v157;
  v153 = [MEMORY[0x277D431E8] rowWithTitle:@"Time to honor face down (sec)" valueKeyPath:@"ignoreFaceDownAfterDuration"];
  v3 = [v153 between:0.0 and:5.0];
  v4 = [v3 precision:3];
  v182[1] = v4;
  v5 = [MEMORY[0x277D431E8] rowWithTitle:@"Directly Launch after Unsuppress (sec)" valueKeyPath:@"directLaunchAfterUnsuppressGracePeriod"];
  v6 = [v5 between:0.0 and:10.0];
  v7 = [v6 precision:2];
  v182[2] = v7;
  v8 = [MEMORY[0x277D431E8] rowWithTitle:@"Long Press Delay" valueKeyPath:@"longPressVisionIntelligenceDelay"];
  v9 = [v8 between:0.0 and:10.0];
  v10 = [v9 precision:2];
  v182[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:4];
  v12 = [v2 sectionWithRows:v11 title:@"Launch Behavior (VO leniency)"];
  [array addObject:v12];

  v13 = MEMORY[0x277D43210];
  v169 = [MEMORY[0x277D431E8] rowWithTitle:@"Prelude Droplet Radius" valueKeyPath:@"preludeDropletRadius"];
  v163 = [v169 between:0.0 and:100.0];
  v14 = [v163 precision:2];
  v181[0] = v14;
  v15 = [MEMORY[0x277D431E8] rowWithTitle:@"Prelude Corner Radius" valueKeyPath:@"preludeCornerRadius"];
  v16 = [v15 between:0.0 and:200.0];
  v17 = [v16 precision:2];
  v181[1] = v17;
  v18 = [MEMORY[0x277D431E8] rowWithTitle:@"Prelude Droplet Screen Edge Inset" valueKeyPath:@"preludeScreenEdgeInset"];
  v19 = [v18 between:0.0 and:200.0];
  v20 = [v19 precision:2];
  v181[2] = v20;
  v21 = [MEMORY[0x277D431D8] rowWithTitle:@"Prelude Presentation Animation" childSettingsKeyPath:@"preludePresentationTranslationSettings"];
  v181[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:4];
  v23 = [v13 sectionWithRows:v22 title:@"Launch Prelude (initial droplet)"];
  [array addObject:v23];

  v24 = MEMORY[0x277D43210];
  v170 = [MEMORY[0x277D432A8] rowWithTitle:@"Composites with Screen Blend Mode" valueKeyPath:@"visionIntelligenceKeylineScreenBlendMode"];
  v180[0] = v170;
  v164 = [MEMORY[0x277D432A8] rowWithTitle:@"Rim Is Soft" valueKeyPath:@"visionIntelligenceKeylineRimIsSoft"];
  v180[1] = v164;
  v158 = [MEMORY[0x277D431E8] rowWithTitle:@"Alpha" valueKeyPath:@"visionIntelligenceKeylineAlpha"];
  v154 = [v158 between:0.0 and:1.0];
  v150 = [v154 precision:3];
  v180[2] = v150;
  v147 = [MEMORY[0x277D431E8] rowWithTitle:@"Blur Radius" valueKeyPath:@"visionIntelligenceKeylineLargeBlurRadius"];
  v144 = [v147 between:0.0 and:100.0];
  v141 = [v144 precision:2];
  v180[3] = v141;
  v138 = [MEMORY[0x277D431E8] rowWithTitle:@"Large AST Amount" valueKeyPath:@"visionIntelligenceKeylineLargeAmount"];
  v135 = [v138 between:0.0 and:1.0];
  v132 = [v135 precision:3];
  v180[4] = v132;
  v129 = [MEMORY[0x277D431E8] rowWithTitle:@"Large AST Start" valueKeyPath:@"visionIntelligenceKeylineLargeStart"];
  v126 = [v129 between:0.0 and:1.0];
  v123 = [v126 precision:3];
  v180[5] = v123;
  v120 = [MEMORY[0x277D431E8] rowWithTitle:@"Large AST End" valueKeyPath:@"visionIntelligenceKeylineLargeEnd"];
  v117 = [v120 between:0.0 and:1.0];
  v115 = [v117 precision:3];
  v180[6] = v115;
  v113 = [MEMORY[0x277D431E8] rowWithTitle:@"Small Width" valueKeyPath:@"visionIntelligenceKeylineSmallWidth"];
  v111 = [v113 between:0.0 and:100.0];
  v109 = [v111 precision:2];
  v180[7] = v109;
  v107 = [MEMORY[0x277D431E8] rowWithTitle:@"Fade Length" valueKeyPath:@"visionIntelligenceKeylineFadeLength"];
  v105 = [v107 between:0.0 and:200.0];
  v103 = [v105 precision:2];
  v180[8] = v103;
  v101 = [MEMORY[0x277D431E8] rowWithTitle:@"Fade Start" valueKeyPath:@"visionIntelligenceKeylineFadeStart"];
  v100 = [v101 between:0.0 and:1.0];
  v99 = [v100 precision:3];
  v180[9] = v99;
  v25 = [MEMORY[0x277D431E8] rowWithTitle:@"Fade End" valueKeyPath:@"visionIntelligenceKeylineFadeEnd"];
  v26 = [v25 between:0.0 and:1.0];
  v27 = [v26 precision:3];
  v180[10] = v27;
  v28 = [MEMORY[0x277D431E8] rowWithTitle:@"Dropet EDR Gain" valueKeyPath:@"visionIntelligenceKeylineEDRGain"];
  v29 = [v28 between:0.0 and:50.0];
  v30 = [v29 precision:2];
  v180[11] = v30;
  v31 = [MEMORY[0x277D431D8] rowWithTitle:@"Style Settings" valueKeyPath:@"visionIntelligenceBehaviorSettings"];
  v180[12] = v31;
  v32 = [MEMORY[0x277D431D8] rowWithTitle:@"Style Hint Settings" valueKeyPath:@"visionIntelligenceHintBehaviorSettings"];
  v180[13] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v180 count:14];
  v34 = [v24 sectionWithRows:v33 title:@"Vision Intelligence Droplet Keyline"];
  [array addObject:v34];

  v35 = MEMORY[0x277D43210];
  v171 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Up Y & Scale Delay" valueKeyPath:@"zoomUpYAndScaleDelay"];
  v165 = [v171 between:0.0 and:1.0];
  v159 = [v165 precision:3];
  v179[0] = v159;
  v155 = [MEMORY[0x277D431E8] rowWithTitle:@"Zoom Up Droplet Radius" valueKeyPath:@"zoomUpDropletRadius"];
  v151 = [v155 between:0.0 and:100.0];
  v148 = [v151 precision:2];
  v179[1] = v148;
  v145 = [MEMORY[0x277D431E8] rowWithTitle:@"Disable Droplet Delay" valueKeyPath:@"disableDropletEffectDelay"];
  v142 = [v145 between:0.0 and:1.0];
  v139 = [v142 precision:2];
  v179[2] = v139;
  v136 = [MEMORY[0x277D431D8] rowWithTitle:@"Position X" childSettingsKeyPath:@"zoomUpPositionXSettings"];
  v179[3] = v136;
  v133 = [MEMORY[0x277D431D8] rowWithTitle:@"Position Y" childSettingsKeyPath:@"zoomUpPositionYSettings"];
  v179[4] = v133;
  v130 = [MEMORY[0x277D431D8] rowWithTitle:@"Scale" childSettingsKeyPath:@"zoomUpScaleSettings"];
  v179[5] = v130;
  v127 = [MEMORY[0x277D431D8] rowWithTitle:@"Corner Radius" childSettingsKeyPath:@"zoomUpCornerRadiusSettings"];
  v179[6] = v127;
  v124 = [MEMORY[0x277D431D8] rowWithTitle:@"Droplet Radius" childSettingsKeyPath:@"zoomUpDropletRadiusAnimationSettings"];
  v179[7] = v124;
  v121 = [MEMORY[0x277D431D8] rowWithTitle:@"Background Dim" childSettingsKeyPath:@"zoomUpBackgroundDimAnimationSettings"];
  v179[8] = v121;
  v118 = [MEMORY[0x277D431D8] rowWithTitle:@"Disable Dropletting Filters" childSettingsKeyPath:@"zoomUpDisableDropletEffectFiltersSettings"];
  v179[9] = v118;
  v36 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Zoom Up Blur" valueKeyPath:@"enableZoomUpBlur"];
  v179[10] = v36;
  v37 = [MEMORY[0x277D431E8] rowWithTitle:@"Start Blur Progress" valueKeyPath:@"zoomUpBlurStartProgress"];
  v38 = [v37 between:0.0 and:1.0];
  v39 = [v38 precision:2];
  v40 = [v39 conditionFormat:@"enableZoomUpBlur != 0"];
  v179[11] = v40;
  v41 = [MEMORY[0x277D431E8] rowWithTitle:@"Start Background Dim Progress" valueKeyPath:@"zoomUpBackgroundDimStartProgress"];
  v42 = [v41 between:0.0 and:1.0];
  v43 = [v42 precision:2];
  v179[12] = v43;
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v179 count:13];
  v45 = [v35 sectionWithRows:v44 title:@"Launch Zoom Up"];
  [array addObject:v45];

  v46 = MEMORY[0x277D43210];
  v47 = [MEMORY[0x277D431E8] rowWithTitle:@"Do-si-do target scale" valueKeyPath:@"dosidoTargetScale"];
  v48 = [v47 between:0.0 and:1.0];
  v49 = [v48 precision:2];
  v178[0] = v49;
  v50 = [MEMORY[0x277D431D8] rowWithTitle:@"Do-si-do Translation Animation" childSettingsKeyPath:@"dosidoLayoutAndPositionSettings"];
  v178[1] = v50;
  v51 = [MEMORY[0x277D431D8] rowWithTitle:@"Do-si-do Scale Animation" childSettingsKeyPath:@"dosidoScaleSettings"];
  v178[2] = v51;
  v52 = [MEMORY[0x277D432A8] rowWithTitle:@"Do-si-do Uses Home Screen Blur" valueKeyPath:@"dosidoUsesHomeScreenBlur"];
  v178[3] = v52;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:4];
  v54 = [v46 sectionWithRows:v53 title:@"Launch Do-si-do"];
  [array addObject:v54];

  v55 = MEMORY[0x277D43210];
  v172 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable when UI Unlocked" valueKeyPath:@"enablesStationaryDetectionForUnlocked"];
  v177[0] = v172;
  v166 = [MEMORY[0x277D431E8] rowWithTitle:@"Stationary threshold (seconds)" valueKeyPath:@"accidentalPreventionStationaryThreshold"];
  v160 = [v166 between:0.0 and:60.0];
  v56 = [v160 precision:2];
  v177[1] = v56;
  v57 = [MEMORY[0x277D431E8] rowWithTitle:@"Pick up buffer (seconds)" valueKeyPath:@"accidentalPreventionPickUpBuffer"];
  v58 = [v57 between:0.0 and:4.0];
  v59 = [v58 precision:2];
  v177[2] = v59;
  v60 = [MEMORY[0x277D431E8] rowWithTitle:@"Stationary detection debounce (sec)" valueKeyPath:@"stationaryDetectionDebounceInterval"];
  v61 = [v60 between:0.0 and:60.0];
  v62 = [v61 precision:2];
  v177[3] = v62;
  v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:4];
  v64 = [v55 sectionWithRows:v63 title:@"Device Stationary Detection"];
  [array addObject:v64];

  v65 = MEMORY[0x277D43210];
  v66 = MEMORY[0x277D431E8];
  v67 = NSStringFromSelector(sel_coachingUIDismissalInterval);
  v68 = [v66 rowWithTitle:@"Coaching UI Dismissal Interval" valueKeyPath:v67];
  v69 = [v68 between:0.0 and:10.0];
  v70 = [v69 precision:2];
  v176 = v70;
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:&v176 count:1];
  v72 = [v65 sectionWithRows:v71 title:@"Coaching UI"];
  [array addObject:v72];

  v131 = MEMORY[0x277D43210];
  v73 = MEMORY[0x277D431B0];
  v173 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v167 = [v73 rowWithTitle:@"Restore Defaults" action:v173];
  v175[0] = v167;
  v74 = MEMORY[0x277D431B0];
  v161 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v156 = [v74 rowWithTitle:@"Restore Defaults" action:v161];
  v175[1] = v156;
  v75 = MEMORY[0x277D431B0];
  v152 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v149 = [v75 rowWithTitle:@"Restore Defaults" action:v152];
  v175[2] = v149;
  v76 = MEMORY[0x277D431B0];
  v146 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v143 = [v76 rowWithTitle:@"Restore Defaults" action:v146];
  v175[3] = v143;
  v77 = MEMORY[0x277D431B0];
  v140 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v137 = [v77 rowWithTitle:@"Restore Defaults" action:v140];
  v175[4] = v137;
  v78 = MEMORY[0x277D431B0];
  v134 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v128 = [v78 rowWithTitle:@"Restore Defaults" action:v134];
  v175[5] = v128;
  v79 = MEMORY[0x277D431B0];
  v125 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v122 = [v79 rowWithTitle:@"Restore Defaults" action:v125];
  v175[6] = v122;
  v80 = MEMORY[0x277D431B0];
  v119 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v116 = [v80 rowWithTitle:@"Restore Defaults" action:v119];
  v175[7] = v116;
  v81 = MEMORY[0x277D431B0];
  v114 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v112 = [v81 rowWithTitle:@"Restore Defaults" action:v114];
  v175[8] = v112;
  v82 = MEMORY[0x277D431B0];
  v110 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v108 = [v82 rowWithTitle:@"Restore Defaults" action:v110];
  v175[9] = v108;
  v83 = MEMORY[0x277D431B0];
  v106 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v104 = [v83 rowWithTitle:@"Restore Defaults" action:v106];
  v175[10] = v104;
  v84 = MEMORY[0x277D431B0];
  v102 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v85 = [v84 rowWithTitle:@"Restore Defaults" action:v102];
  v175[11] = v85;
  v86 = MEMORY[0x277D431B0];
  v87 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v88 = [v86 rowWithTitle:@"Restore Defaults" action:v87];
  v175[12] = v88;
  v89 = MEMORY[0x277D431B0];
  v90 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v91 = [v89 rowWithTitle:@"Restore Defaults" action:v90];
  v175[13] = v91;
  v92 = MEMORY[0x277D431B0];
  v93 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v94 = [v92 rowWithTitle:@"Restore Defaults" action:v93];
  v175[14] = v94;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v175 count:15];
  v96 = [v131 sectionWithRows:v95 title:@"Reset"];
  [array addObject:v96];

  v97 = [MEMORY[0x277D43210] moduleWithTitle:@"Camera Capture Button" contents:array];

  return v97;
}

@end