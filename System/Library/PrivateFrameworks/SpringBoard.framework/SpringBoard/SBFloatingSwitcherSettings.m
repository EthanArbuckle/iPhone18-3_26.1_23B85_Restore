@interface SBFloatingSwitcherSettings
+ (id)settingsControllerModule;
- (id)archiveValueForKey:(id)a3;
- (void)setDefaultValues;
@end

@implementation SBFloatingSwitcherSettings

- (void)setDefaultValues
{
  [(SBFloatingSwitcherSettings *)self setShowFloats:1];
  [(SBFloatingSwitcherSettings *)self setSwitcherCardScale:0.82];
  [(SBFloatingSwitcherSettings *)self setCardSpacing:-24.0];
  [(SBFloatingSwitcherSettings *)self setDimmingAlpha:0.15];
  [(SBFloatingSwitcherSettings *)self setLeadingEdgeRubberbandingRange:100.0];
  [(SBFloatingSwitcherSettings *)self setPerCardAdditionalScaleCoefficient:0.0625];
  [(SBFloatingSwitcherSettings *)self setScaleCurveExponent:1.4];
  [(SBFloatingSwitcherSettings *)self setOpacityMinimumDistanceThreshold:10.0];
  [(SBFloatingSwitcherSettings *)self setOpacityFadeDistance:10.0];
  [(SBFloatingSwitcherSettings *)self setDarkeningMinimumDistanceThreshold:0.0];
  [(SBFloatingSwitcherSettings *)self setDarkeningFadeDistance:150.0];
  [(SBFloatingSwitcherSettings *)self setMaximumDarkening:0.15];
  [(SBFloatingSwitcherSettings *)self setTitleAndIconOpacityMinimumDistanceThreshold:40.0];
  [(SBFloatingSwitcherSettings *)self setTitleAndIconOpacityFadeDistance:40.0];
  [(SBFloatingSwitcherSettings *)self setTitleOpacityMinimumDistanceThreshold:80.0];
  [(SBFloatingSwitcherSettings *)self setTitleOpacityFadeDistance:80.0];
  [(SBFloatingSwitcherSettings *)self setOvershootPullbackDelayOffscreen:0.17];
  [(SBFloatingSwitcherSettings *)self setOvershootPullbackDelayOnscreen:0.12];
  [(SBFloatingSwitcherSettings *)self setRightEdgePeekDelay:0.3];
  [(SBFloatingSwitcherSettings *)self setRightEdgePeekTimeout:1.7];
  v3 = [(SBFloatingSwitcherSettings *)self tongueContainerPositionAnimationSettings];
  [v3 setDefaultCriticallyDampedValues];

  v4 = [(SBFloatingSwitcherSettings *)self tongueContainerPositionAnimationSettings];
  [v4 setResponse:0.25];

  v5 = [(SBFloatingSwitcherSettings *)self tongueContainerPositionAnimationSettings];
  v30 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v5 setFrameRateRange:1114113 highFrameRateReason:{*&v30.minimum, *&v30.maximum, *&v30.preferred}];

  v6 = [(SBFloatingSwitcherSettings *)self tongueContainerTransformAnimationSettings];
  [v6 setDefaultValues];

  v7 = [(SBFloatingSwitcherSettings *)self tongueContainerTransformAnimationSettings];
  [v7 setDampingRatio:0.7];

  v8 = [(SBFloatingSwitcherSettings *)self tongueContainerTransformAnimationSettings];
  [v8 setResponse:0.725];

  v9 = [(SBFloatingSwitcherSettings *)self tongueContainerTransformAnimationSettings];
  v31 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v9 setFrameRateRange:1114113 highFrameRateReason:{*&v31.minimum, *&v31.maximum, *&v31.preferred}];

  v10 = [(SBFloatingSwitcherSettings *)self tongueCollapsedToExpandedAnimationSettings];
  [v10 setDefaultValues];

  v11 = [(SBFloatingSwitcherSettings *)self tongueCollapsedToExpandedAnimationSettings];
  [v11 setDampingRatio:1.0];

  v12 = [(SBFloatingSwitcherSettings *)self tongueCollapsedToExpandedAnimationSettings];
  [v12 setResponse:0.6];

  v13 = [(SBFloatingSwitcherSettings *)self tongueCollapsedToExpandedAnimationSettings];
  v32 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v13 setFrameRateRange:1114113 highFrameRateReason:{*&v32.minimum, *&v32.maximum, *&v32.preferred}];

  v14 = [(SBFloatingSwitcherSettings *)self tongueExpandedToCollapsedAnimationSettings];
  [v14 setDefaultValues];

  v15 = [(SBFloatingSwitcherSettings *)self tongueExpandedToCollapsedAnimationSettings];
  [v15 setDampingRatio:0.88];

  v16 = [(SBFloatingSwitcherSettings *)self tongueExpandedToCollapsedAnimationSettings];
  [v16 setResponse:0.45];

  v17 = [(SBFloatingSwitcherSettings *)self tongueExpandedToCollapsedAnimationSettings];
  v33 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  [v17 setFrameRateRange:1114113 highFrameRateReason:{*&v33.minimum, *&v33.maximum, *&v33.preferred}];

  v18 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v18 setDefaultValues];

  SBLayoutDefaultSideLayoutElementWidth();
  v20 = v19;
  SBLayoutDefaultSideLayoutElementWidth();
  v22 = v21;
  v23 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v23 setMinWidth:round(v20 * 0.3574)];

  v24 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v24 setMaxWidth:round(v22 * 0.3574)];

  v25 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v25 setHeight:4.5];

  v26 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v26 setEdgeSpacing:7.0];

  v27 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v27 setCornerRadius:3.0];

  v28 = [(SBFloatingSwitcherSettings *)self homeAffordanceSettings];
  [v28 setCornerMask:1];
}

+ (id)settingsControllerModule
{
  v35[4] = *MEMORY[0x277D85DE8];
  v28 = [MEMORY[0x277D432A8] rowWithTitle:@"Sliders/Floats" valueKeyPath:@"showFloats"];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"showFloats == YES"];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"showFloats == NO"];
  v4 = [MEMORY[0x277CBEB18] arrayWithObject:v28];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __54__SBFloatingSwitcherSettings_settingsControllerModule__block_invoke;
  v29[3] = &unk_2783AD320;
  v30 = v2;
  v31 = v3;
  v32 = v4;
  v5 = v4;
  v27 = v3;
  v26 = v2;
  v6 = MEMORY[0x223D6F7F0](v29);
  (v6)[2](v6, @"switcherCardScale", 0.1, 1.2);
  (v6)[2](v6, @"cardSpacing", -200.0, 200.0);
  (v6)[2](v6, @"dimmingAlpha", 0.0, 1.0);
  (v6)[2](v6, @"leadingEdgeRubberbandingRange", -1000.0, 1000.0);
  (v6)[2](v6, @"perCardAdditionalScaleCoefficient", 0.0, 1.0);
  (v6)[2](v6, @"scaleCurveExponent", 0.1, 10.0);
  (v6)[2](v6, @"opacityMinimumDistanceThreshold", -1000.0, 1000.0);
  (v6)[2](v6, @"opacityFadeDistance", -1000.0, 1000.0);
  (v6)[2](v6, @"darkeningMinimumDistanceThreshold", -1000.0, 1000.0);
  (v6)[2](v6, @"darkeningFadeDistance", -1000.0, 1000.0);
  (v6)[2](v6, @"maximumDarkening", 0.0, 1.0);
  (v6)[2](v6, @"titleAndIconOpacityMinimumDistanceThreshold", -1000.0, 1000.0);
  (v6)[2](v6, @"titleAndIconOpacityFadeDistance", -1000.0, 1000.0);
  (v6)[2](v6, @"titleOpacityMinimumDistanceThreshold", -1000.0, 1000.0);
  (v6)[2](v6, @"titleOpacityFadeDistance", -1000.0, 1000.0);
  (v6)[2](v6, @"overshootPullbackDelayOffscreen", 0.0, 1.0);
  (v6)[2](v6, @"overshootPullbackDelayOnscreen", 0.0, 1.0);
  (v6)[2](v6, @"rightEdgePeekDelay", 0.0, 8.0);
  (v6)[2](v6, @"rightEdgePeekTimeout", 0.0, 8.0);
  v7 = [MEMORY[0x277D431D8] rowWithTitle:@"Home Affordance" childSettingsKeyPath:@"homeAffordanceSettings"];
  [v5 addObject:v7];

  v8 = [MEMORY[0x277D43210] sectionWithRows:v5 title:@"Settings"];
  v9 = MEMORY[0x277D43210];
  v10 = [MEMORY[0x277D431D8] rowWithTitle:@"Tongue Container Left/Right Position Animation Settings" childSettingsKeyPath:@"tongueContainerPositionAnimationSettings"];
  v35[0] = v10;
  v11 = [MEMORY[0x277D431D8] rowWithTitle:@"Tongue Container Left/Right Transform Animation Settings" childSettingsKeyPath:@"tongueContainerTransformAnimationSettings"];
  v35[1] = v11;
  v12 = [MEMORY[0x277D431D8] rowWithTitle:@"Tongue Collapsed → Expanded Animation Settings" childSettingsKeyPath:@"tongueCollapsedToExpandedAnimationSettings"];
  v35[2] = v12;
  v13 = [MEMORY[0x277D431D8] rowWithTitle:@"Tongue Expanded → Collapsed Animation Settings" childSettingsKeyPath:@"tongueExpandedToCollapsedAnimationSettings"];
  v35[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:4];
  v15 = [v9 sectionWithRows:v14 title:@"Tongue"];

  v16 = MEMORY[0x277D431B0];
  v17 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v18 = [v16 rowWithTitle:@"Restore Defaults" action:v17];

  v19 = MEMORY[0x277D43210];
  v34 = v18;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
  v21 = [v19 sectionWithRows:v20];

  v22 = MEMORY[0x277D43210];
  v33[0] = v8;
  v33[1] = v15;
  v33[2] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v24 = [v22 moduleWithTitle:@"Floating Switcher" contents:v23];

  return v24;
}

void __54__SBFloatingSwitcherSettings_settingsControllerModule__block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  v8 = [v7 stringByReplacingOccurrencesOfString:@"([a-z])([A-Z])" withString:@"$1 $2" options:1024 range:{0, objc_msgSend(v7, "length")}];
  v15 = [v8 capitalizedString];

  v9 = [MEMORY[0x277D431E8] rowWithTitle:v15 valueKeyPath:v7];
  v10 = [v9 between:a3 and:a4];
  v11 = [v10 condition:*(a1 + 32)];

  v12 = [MEMORY[0x277D43290] rowWithTitle:v15 valueKeyPath:v7];

  v13 = [v12 minValue:a3 maxValue:a4];
  v14 = [v13 condition:*(a1 + 40)];

  [*(a1 + 48) addObject:v11];
  [*(a1 + 48) addObject:v14];
}

- (id)archiveValueForKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"showFloats"])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = SBFloatingSwitcherSettings;
    v5 = [(PTSettings *)&v7 archiveValueForKey:v4];
  }

  return v5;
}

@end