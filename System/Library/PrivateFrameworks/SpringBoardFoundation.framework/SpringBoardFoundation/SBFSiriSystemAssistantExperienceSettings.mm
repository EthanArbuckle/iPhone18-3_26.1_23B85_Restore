@interface SBFSiriSystemAssistantExperienceSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBFSiriSystemAssistantExperienceSettings

- (void)setDefaultValues
{
  v16.receiver = self;
  v16.super_class = SBFSiriSystemAssistantExperienceSettings;
  [(PTSettings *)&v16 setDefaultValues];
  [(SBFSiriSystemAssistantExperienceSettings *)self setTypeToSiriLightInterfaceDimmingAlpha:0.2];
  [(SBFSiriSystemAssistantExperienceSettings *)self setTypeToSiriDarkInterfaceDimmingAlpha:0.3];
  v3 = [(SBFSiriSystemAssistantExperienceSettings *)self typeToSiriDimmingAnimationSettings];
  [v3 setDefaultValues];

  [(SBFSiriSystemAssistantExperienceSettings *)self setTypeToSiriPushInScale:0.86];
  v4 = [(SBFSiriSystemAssistantExperienceSettings *)self typeToSiriPushInAnimationSettings];
  [v4 setDefaultValues];

  v5 = [(SBFSiriSystemAssistantExperienceSettings *)self typeToSiriPushInAnimationSettings];
  [v5 setDampingRatio:0.76];

  v6 = [(SBFSiriSystemAssistantExperienceSettings *)self typeToSiriPushInAnimationSettings];
  [v6 setResponse:0.55];

  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowInnerLightRadius:3.0];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowOuterLightRadius:8.0];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowHighlightThickness:1.0];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowHighlightWhiteness:0.75];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowHighlightAlpha:1.0];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowHighlightRadius:2.0];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowReverseAnimationDelay:0.5625];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordanceGlowEffectiveAnimationDuration:2.0625];
  v7 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordanceGlowAnimationSettings];
  [v7 setDefaultValues];

  v8 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordanceGlowAnimationSettings];
  [v8 setDampingRatio:1.0];

  v9 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordanceGlowAnimationSettings];
  [v9 setResponse:3.0];

  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordancePulseXScale:0.943];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordancePulseYScale:1.0];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordancePulseReverseAnimationDelay:0.125];
  [(SBFSiriSystemAssistantExperienceSettings *)self setHomeAffordancePulseEffectiveAnimationDuration:1.0];
  v10 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordancePulseAnimationSettings];
  [v10 setDefaultValues];

  v11 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordancePulseAnimationSettings];
  [v11 setDampingRatio:0.3];

  v12 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordancePulseAnimationSettings];
  [v12 setResponse:0.4];

  v13 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordanceHintCancellationAnimationSettings];
  [v13 setDefaultValues];

  v14 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordanceHintCancellationAnimationSettings];
  [v14 setDampingRatio:1.0];

  v15 = [(SBFSiriSystemAssistantExperienceSettings *)self homeAffordanceHintCancellationAnimationSettings];
  [v15 setResponse:0.5];
}

+ (id)settingsControllerModule
{
  v113[6] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6630];
  v67 = MEMORY[0x1E69C6630];
  v106 = [MEMORY[0x1E69C6620] rowWithTitle:@"Dimming Alpha (Light Interface)" valueKeyPath:@"typeToSiriLightInterfaceDimmingAlpha"];
  v105 = [v106 between:0.0 and:1.0];
  v104 = [v105 precision:2];
  v112[0] = v104;
  v103 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"typeToSiriLightInterfaceDimmingAlpha"];
  v102 = [v103 minValue:0.0 maxValue:1.0];
  v112[1] = v102;
  v101 = [MEMORY[0x1E69C6620] rowWithTitle:@"Dimming Alpha (Dark Interface)" valueKeyPath:@"typeToSiriDarkInterfaceDimmingAlpha"];
  v100 = [v101 between:0.0 and:1.0];
  v99 = [v100 precision:2];
  v112[2] = v99;
  v98 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"typeToSiriDarkInterfaceDimmingAlpha"];
  v97 = [v98 minValue:0.0 maxValue:1.0];
  v112[3] = v97;
  v96 = [MEMORY[0x1E69C6608] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"typeToSiriDimmingAnimationSettings"];
  v112[4] = v96;
  v95 = [MEMORY[0x1E695DEC8] arrayWithObjects:v112 count:5];
  v94 = [v2 sectionWithRows:v95 title:@"Type to Siri Dimming"];
  v113[0] = v94;
  v3 = MEMORY[0x1E69C6630];
  v93 = [MEMORY[0x1E69C6620] rowWithTitle:@"Scale (iPhone)" valueKeyPath:@"typeToSiriPushInScale"];
  v92 = [v93 between:0.0 and:1.0];
  v91 = [v92 precision:2];
  v111[0] = v91;
  v90 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"typeToSiriPushInScale"];
  v89 = [v90 minValue:0.0 maxValue:1.0];
  v111[1] = v89;
  v88 = [MEMORY[0x1E69C6608] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"typeToSiriPushInAnimationSettings"];
  v111[2] = v88;
  v87 = [MEMORY[0x1E695DEC8] arrayWithObjects:v111 count:3];
  v86 = [v3 sectionWithRows:v87 title:@"Type-to-Siri Push-In"];
  v113[1] = v86;
  v4 = MEMORY[0x1E69C6630];
  v85 = [MEMORY[0x1E69C6620] rowWithTitle:@"Inner Light Radius" valueKeyPath:@"homeAffordanceGlowInnerLightRadius"];
  v84 = [v85 between:0.0 and:10.0];
  v83 = [v84 precision:2];
  v110[0] = v83;
  v82 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowInnerLightRadius"];
  v81 = [v82 minValue:0.0 maxValue:1.0];
  v110[1] = v81;
  v80 = [MEMORY[0x1E69C6620] rowWithTitle:@"Outer Light Radius" valueKeyPath:@"homeAffordanceGlowOuterLightRadius"];
  v79 = [v80 between:0.0 and:10.0];
  v78 = [v79 precision:2];
  v110[2] = v78;
  v77 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowOuterLightRadius"];
  v76 = [v77 minValue:0.0 maxValue:10.0];
  v110[3] = v76;
  v75 = [MEMORY[0x1E69C6620] rowWithTitle:@"Highlight Thickness" valueKeyPath:@"homeAffordanceGlowHighlightThickness"];
  v74 = [v75 between:0.0 and:10.0];
  v73 = [v74 precision:2];
  v110[4] = v73;
  v72 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowHighlightThickness"];
  v71 = [v72 minValue:0.0 maxValue:10.0];
  v110[5] = v71;
  v70 = [MEMORY[0x1E69C6620] rowWithTitle:@"Highlight Whiteness" valueKeyPath:@"homeAffordanceGlowHighlightWhiteness"];
  v69 = [v70 between:0.0 and:1.0];
  v66 = [v69 precision:2];
  v110[6] = v66;
  v65 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowHighlightWhiteness"];
  v64 = [v65 minValue:0.0 maxValue:1.0];
  v110[7] = v64;
  v63 = [MEMORY[0x1E69C6620] rowWithTitle:@"Highlight Alpha" valueKeyPath:@"homeAffordanceGlowHighlightAlpha"];
  v62 = [v63 between:0.0 and:1.0];
  v61 = [v62 precision:2];
  v110[8] = v61;
  v60 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowHighlightAlpha"];
  v59 = [v60 minValue:0.0 maxValue:1.0];
  v110[9] = v59;
  v58 = [MEMORY[0x1E69C6620] rowWithTitle:@"Highlight Radius" valueKeyPath:@"homeAffordanceGlowHighlightRadius"];
  v57 = [v58 between:0.0 and:10.0];
  v56 = [v57 precision:2];
  v110[10] = v56;
  v55 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowHighlightRadius"];
  v54 = [v55 minValue:0.0 maxValue:10.0];
  v110[11] = v54;
  v53 = [MEMORY[0x1E69C6620] rowWithTitle:@"Reverse Animation Delay" valueKeyPath:@"homeAffordanceGlowReverseAnimationDelay"];
  v52 = [v53 between:0.0 and:1.0];
  v51 = [v52 precision:4];
  v110[12] = v51;
  v50 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowReverseAnimationDelay"];
  v49 = [v50 minValue:0.0 maxValue:1.0];
  v110[13] = v49;
  v48 = [MEMORY[0x1E69C6620] rowWithTitle:@"Effective Animation Duration" valueKeyPath:@"homeAffordanceGlowEffectiveAnimationDuration"];
  v47 = [v48 between:0.0 and:5.0];
  v46 = [v47 precision:4];
  v110[14] = v46;
  v45 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordanceGlowEffectiveAnimationDuration"];
  v44 = [v45 minValue:0.0 maxValue:5.0];
  v110[15] = v44;
  v43 = [MEMORY[0x1E69C6608] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"homeAffordanceGlowAnimationSettings"];
  v110[16] = v43;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v110 count:17];
  v41 = [v4 sectionWithRows:v42 title:@"Home Affordance Hint Glow"];
  v113[2] = v41;
  v22 = MEMORY[0x1E69C6630];
  v40 = [MEMORY[0x1E69C6620] rowWithTitle:@"X Scale" valueKeyPath:@"homeAffordancePulseXScale"];
  v39 = [v40 between:0.0 and:1.0];
  v38 = [v39 precision:2];
  v109[0] = v38;
  v37 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordancePulseXScale"];
  v36 = [v37 minValue:0.0 maxValue:1.0];
  v109[1] = v36;
  v35 = [MEMORY[0x1E69C6620] rowWithTitle:@"Y Scale" valueKeyPath:@"homeAffordancePulseYScale"];
  v34 = [v35 between:0.0 and:1.0];
  v33 = [v34 precision:2];
  v109[2] = v33;
  v32 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordancePulseYScale"];
  v31 = [v32 minValue:0.0 maxValue:1.0];
  v109[3] = v31;
  v30 = [MEMORY[0x1E69C6620] rowWithTitle:@"Reverse Animation Delay" valueKeyPath:@"homeAffordancePulseReverseAnimationDelay"];
  v29 = [v30 between:0.0 and:1.0];
  v28 = [v29 precision:4];
  v109[4] = v28;
  v27 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordancePulseReverseAnimationDelay"];
  v26 = [v27 minValue:0.0 maxValue:1.0];
  v109[5] = v26;
  v25 = [MEMORY[0x1E69C6620] rowWithTitle:@"Effective Animation Duration" valueKeyPath:@"homeAffordancePulseEffectiveAnimationDuration"];
  v24 = [v25 between:0.0 and:2.0];
  v23 = [v24 precision:4];
  v109[6] = v23;
  v21 = [MEMORY[0x1E69C6698] rowWithTitle:&stru_1F3D19FF0 valueKeyPath:@"homeAffordancePulseEffectiveAnimationDuration"];
  v20 = [v21 minValue:0.0 maxValue:2.0];
  v109[7] = v20;
  v19 = [MEMORY[0x1E69C6608] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"homeAffordancePulseAnimationSettings"];
  v109[8] = v19;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v109 count:9];
  v6 = [v22 sectionWithRows:v5 title:@"Home Affordance Hint Pulse"];
  v113[3] = v6;
  v7 = MEMORY[0x1E69C6630];
  v8 = [MEMORY[0x1E69C6608] rowWithTitle:@"Animation Settings" childSettingsKeyPath:@"homeAffordanceHintCancellationAnimationSettings"];
  v108 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:1];
  v10 = [v7 sectionWithRows:v9 title:@"Home Affordance Hint Cancellation"];
  v113[4] = v10;
  v11 = MEMORY[0x1E69C6630];
  v12 = MEMORY[0x1E69C65E0];
  v13 = [MEMORY[0x1E69C6648] actionWithSettingsKeyPath:0];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];
  v107 = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v16 = [v11 sectionWithRows:v15];
  v113[5] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:6];
  v68 = [v67 moduleWithTitle:0 contents:v17];

  return v68;
}

@end