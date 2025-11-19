@interface SBHomeGestureExclusionTrapezoidSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHomeGestureExclusionTrapezoidSettings

- (void)setDefaultValues
{
  v7.receiver = self;
  v7.super_class = SBHomeGestureExclusionTrapezoidSettings;
  [(PTSettings *)&v7 setDefaultValues];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setShowExclusionTrapezoidDebugView:0];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  [(SBHomeGestureExclusionTrapezoidSettings *)self setLandscapeTrapezoidEnabled:(v4 & 0xFFFFFFFFFFFFFFFBLL) != 1];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setAllowHorizontalSwipesOutsideLandscapeTrapezoid:0];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setLandscapeTrapezoidHeight:18.5];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setLandscapeTrapezoidBaseHeight:7.5];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setLandscapeTrapezoidAdjacentXDistanceFromEdge:236.0];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setLandscapeTrapezoidOpposingXDistanceFromEdge:236.0];
  v5 = [MEMORY[0x277D75418] currentDevice];
  v6 = [v5 userInterfaceIdiom];

  [(SBHomeGestureExclusionTrapezoidSettings *)self setPortraitTrapezoidEnabled:(v6 & 0xFFFFFFFFFFFFFFFBLL) != 1];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setPortraitTrapezoidEnabledOnlyForKeyboards:1];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setAllowHorizontalSwipesOutsidePortraitTrapezoid:1];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setPortraitTrapezoidHeight:24.5];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setPortraitTrapezoidBaseHeight:7.5];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setPortraitTrapezoidAdjacentXDistanceFromEdge:60.0];
  [(SBHomeGestureExclusionTrapezoidSettings *)self setPortraitTrapezoidOpposingXDistanceFromEdge:60.0];
}

+ (id)settingsControllerModule
{
  v58[6] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAC30] predicateWithFormat:@"landscapeTrapezoidEnabled == YES"];
  v50 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Trapezoid" valueKeyPath:@"landscapeTrapezoidEnabled"];
  v58[0] = v50;
  v48 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow Horizontal Swipes Outside Trapezoid" valueKeyPath:@"allowHorizontalSwipesOutsideLandscapeTrapezoid"];
  v58[1] = v48;
  v46 = [MEMORY[0x277D431E8] rowWithTitle:@"Trapezoid Height" valueKeyPath:@"landscapeTrapezoidHeight"];
  v44 = [v46 between:0.1 and:20.0];
  v42 = [v44 condition:v2];
  v58[2] = v42;
  v3 = [MEMORY[0x277D431E8] rowWithTitle:@"Base Height" valueKeyPath:@"landscapeTrapezoidBaseHeight"];
  v4 = [v3 between:0.0 and:100.0];
  v5 = [v4 condition:v2];
  v58[3] = v5;
  v6 = [MEMORY[0x277D431E8] rowWithTitle:@"Adjacent Base X Distance From Edge" valueKeyPath:@"landscapeTrapezoidAdjacentXDistanceFromEdge"];
  v7 = [v6 between:0.0 and:500.0];
  v53 = v2;
  v8 = [v7 condition:v2];
  v58[4] = v8;
  v9 = [MEMORY[0x277D431E8] rowWithTitle:@"Opposing Base X Distance From Edge" valueKeyPath:@"landscapeTrapezoidOpposingXDistanceFromEdge"];
  v10 = [v9 between:0.0 and:500.0];
  v11 = [v10 condition:v2];
  v58[5] = v11;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:6];

  v51 = [MEMORY[0x277D43210] sectionWithRows:v52 title:@"Landscape Trapezoid"];
  v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"portraitTrapezoidEnabled == YES"];
  v47 = [MEMORY[0x277D432A8] rowWithTitle:@"Enable Trapezoid" valueKeyPath:@"portraitTrapezoidEnabled"];
  v57[0] = v47;
  v45 = [MEMORY[0x277D432A8] rowWithTitle:@"Allow Horizontal Swipes Outside Trapezoid" valueKeyPath:@"allowHorizontalSwipesOutsidePortraitTrapezoid"];
  v57[1] = v45;
  v43 = [MEMORY[0x277D432A8] rowWithTitle:@"Only for Keyboards" valueKeyPath:@"portraitTrapezoidEnabledOnlyForKeyboards"];
  v57[2] = v43;
  v41 = [MEMORY[0x277D431E8] rowWithTitle:@"Trapezoid Height" valueKeyPath:@"portraitTrapezoidHeight"];
  v40 = [v41 between:0.1 and:20.0];
  v39 = [v40 condition:v12];
  v57[3] = v39;
  v13 = [MEMORY[0x277D431E8] rowWithTitle:@"Base Height" valueKeyPath:@"portraitTrapezoidBaseHeight"];
  v14 = [v13 between:0.0 and:100.0];
  v15 = [v14 condition:v12];
  v57[4] = v15;
  v16 = [MEMORY[0x277D431E8] rowWithTitle:@"Adjacent Base X Distance From Edge" valueKeyPath:@"portraitTrapezoidAdjacentXDistanceFromEdge"];
  v17 = [v16 between:0.0 and:500.0];
  v49 = v12;
  v18 = [v17 condition:v12];
  v57[5] = v18;
  v19 = [MEMORY[0x277D431E8] rowWithTitle:@"Opposing Base X Distance From Edge" valueKeyPath:@"portraitTrapezoidOpposingXDistanceFromEdge"];
  v20 = [v19 between:0.0 and:500.0];
  v21 = [v20 condition:v12];
  v57[6] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v57 count:7];

  v23 = v22;
  v24 = [MEMORY[0x277D43210] sectionWithRows:v22 title:@"Portrait Trapezoid"];
  v25 = [MEMORY[0x277D432A8] rowWithTitle:@"Visualize Trapezoids" valueKeyPath:@"showExclusionTrapezoidDebugView"];
  v26 = MEMORY[0x277D43210];
  v56 = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v56 count:1];
  v28 = [v26 sectionWithRows:v27];

  v29 = MEMORY[0x277D431B0];
  v30 = [MEMORY[0x277D43240] actionWithSettingsKeyPath:0];
  v31 = [v29 rowWithTitle:@"Restore Defaults" action:v30];

  v32 = MEMORY[0x277D43210];
  v55 = v31;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v34 = [v32 sectionWithRows:v33];

  v35 = MEMORY[0x277D43210];
  v54[0] = v51;
  v54[1] = v24;
  v54[2] = v28;
  v54[3] = v34;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:4];
  v37 = [v35 moduleWithTitle:0 contents:v36];

  return v37;
}

@end