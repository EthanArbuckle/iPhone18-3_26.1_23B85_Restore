@interface SBHPeopleWidgetPersonDetailInteractionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHPeopleWidgetPersonDetailInteractionSettings

- (void)setDefaultValues
{
  v3 = [MEMORY[0x1E69DC938] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setUsesCardStyle:1];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardWidth:375.0];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardHeightPortrait:700.0];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardHeightLandscape:660.0];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardCornerRadius:22.0];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardStyleHomeScreenScale:0.96];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardStyleHomeScreenAlpha:0.9];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardStyleDarkeningTintAlpha:0.32];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFullScreenHomeScreenScale:0.96];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFullScreenHomeScreenAlpha:0.4];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFullScreenDarkeningTintAlpha:0.32];
    v5 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v5 setDefaultValues];

    v6 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v6 setDampingRatio:1.1];

    v7 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v7 setResponse:0.25];

    v8 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v8 setRetargetImpulse:0.016];

    v9 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v9 setDefaultValues];

    v10 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v10 setDampingRatio:1.1];

    v11 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v11 setResponse:0.18];

    v12 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v12 setRetargetImpulse:0.016];
    v13 = 0.06;
  }

  else
  {
    v14 = [MEMORY[0x1E69DCEB0] mainScreen];
    [v14 scale];

    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setUsesCardStyle:0];
    UIRoundToScale();
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardWidth:?];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardHeightPortrait:480.0];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardHeightLandscape:480.0];
    UIRoundToScale();
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardCornerRadius:?];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardStyleHomeScreenScale:0.94];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardStyleHomeScreenAlpha:0.4];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setCardStyleDarkeningTintAlpha:0.2];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFullScreenHomeScreenScale:0.9];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFullScreenHomeScreenAlpha:0.4];
    [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFullScreenDarkeningTintAlpha:0.6];
    v15 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v15 setDefaultValues];

    v16 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v16 setDampingRatio:0.9];

    v17 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self zoomAnimationSettings];
    [v17 setResponse:0.5];

    v18 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v18 setDefaultValues];

    v19 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v19 setDampingRatio:1.0];

    v12 = [(SBHPeopleWidgetPersonDetailInteractionSettings *)self fadeOutAnimationSettings];
    [v12 setResponse:0.2];
    v13 = 0.1;
  }

  [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setPercentMargin:v13];
  [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFractionBetweenSourceAndContainerX:0.0];

  [(SBHPeopleWidgetPersonDetailInteractionSettings *)self setFractionBetweenSourceAndContainerY:0.5];
}

+ (id)settingsControllerModule
{
  v59[16] = *MEMORY[0x1E69E9840];
  v42 = MEMORY[0x1E69C6638];
  v56 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Card Style" valueKeyPath:@"usesCardStyle"];
  v59[0] = v56;
  v55 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Width" valueKeyPath:@"cardWidth"];
  v54 = [v55 between:1.0 and:3000.0];
  v53 = [v54 precision:0];
  v59[1] = v53;
  v52 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Height (Portrait)" valueKeyPath:@"cardHeightPortrait"];
  v51 = [v52 between:1.0 and:3000.0];
  v50 = [v51 precision:0];
  v59[2] = v50;
  v49 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Height (Landscape)" valueKeyPath:@"cardHeightLandscape"];
  v48 = [v49 between:1.0 and:3000.0];
  v47 = [v48 precision:0];
  v59[3] = v47;
  v46 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Corner Radius" valueKeyPath:@"cardCornerRadius"];
  v45 = [v46 between:1.0 and:100.0];
  v44 = [v45 precision:0];
  v59[4] = v44;
  v41 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Home Screen Scale" valueKeyPath:@"cardStyleHomeScreenScale"];
  v40 = [v41 between:0.0 and:1.0];
  v39 = [v40 precision:2];
  v59[5] = v39;
  v38 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Home Screen Alpha" valueKeyPath:@"cardStyleHomeScreenAlpha"];
  v37 = [v38 between:0.0 and:1.0];
  v36 = [v37 precision:2];
  v59[6] = v36;
  v35 = [MEMORY[0x1E69C6618] rowWithTitle:@"Card Darkening Tint Alpha" valueKeyPath:@"cardStyleDarkeningTintAlpha"];
  v34 = [v35 between:0.0 and:1.0];
  v33 = [v34 precision:2];
  v59[7] = v33;
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Home Screen Scale" valueKeyPath:@"fullScreenHomeScreenScale"];
  v31 = [v32 between:0.0 and:1.0];
  v30 = [v31 precision:2];
  v59[8] = v30;
  v29 = [MEMORY[0x1E69C6618] rowWithTitle:@"Home Screen Alpha" valueKeyPath:@"fullScreenHomeScreenAlpha"];
  v28 = [v29 between:0.0 and:1.0];
  v27 = [v28 precision:2];
  v59[9] = v27;
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Darkening Tint Alpha" valueKeyPath:@"fullScreenDarkeningTintAlpha"];
  v25 = [v26 between:0.0 and:1.0];
  v24 = [v25 precision:2];
  v59[10] = v24;
  v23 = [MEMORY[0x1E69C6610] rowWithTitle:@"Zoom Animation Settings" childSettingsKeyPath:@"zoomAnimationSettings"];
  v59[11] = v23;
  v22 = [MEMORY[0x1E69C6610] rowWithTitle:@"Fade Out Animation Settings" childSettingsKeyPath:@"fadeOutAnimationSettings"];
  v59[12] = v22;
  v2 = [MEMORY[0x1E69C6618] rowWithTitle:@"Margin Percentage" valueKeyPath:@"percentMargin"];
  v3 = [v2 between:0.0 and:1.0];
  v4 = [v3 precision:2];
  v59[13] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Center Fraction X" valueKeyPath:@"fractionBetweenSourceAndContainerX"];
  v6 = [v5 between:0.0 and:1.0];
  v7 = [v6 precision:2];
  v59[14] = v7;
  v8 = [MEMORY[0x1E69C6618] rowWithTitle:@"Center Fraction Y" valueKeyPath:@"fractionBetweenSourceAndContainerY"];
  v9 = [v8 between:0.0 and:1.0];
  v10 = [v9 precision:2];
  v59[15] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:16];
  v43 = [v42 sectionWithRows:v11];

  v12 = MEMORY[0x1E69C65E8];
  v13 = [MEMORY[0x1E69C6640] action];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];

  v15 = MEMORY[0x1E69C6638];
  v58 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  v17 = [v15 sectionWithRows:v16];

  v18 = MEMORY[0x1E69C6638];
  v57[0] = v43;
  v57[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
  v20 = [v18 moduleWithTitle:@"Person Detail Interaction" contents:v19];

  return v20;
}

@end