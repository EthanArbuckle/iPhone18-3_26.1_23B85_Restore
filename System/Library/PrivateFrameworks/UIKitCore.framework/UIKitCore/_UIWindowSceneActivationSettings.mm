@interface _UIWindowSceneActivationSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIWindowSceneActivationSettings

- (void)setDefaultValues
{
  v13.receiver = self;
  v13.super_class = _UIWindowSceneActivationSettings;
  [(PTSettings *)&v13 setDefaultValues];
  [(_UIWindowSceneActivationSettings *)self setPinchActivationScaleThreshold:1.5];
  [(_UIWindowSceneActivationSettings *)self setPinchEndingProjectionDuration:0.15];
  [(_UIWindowSceneActivationSettings *)self setPinchPlatterMaxShadowIntensity:0.5];
  [(_UIWindowSceneActivationSettings *)self setPinchEndPlatterVelocityMultiplier:5.0];
  pinchInteractiveScale = [(_UIWindowSceneActivationSettings *)self pinchInteractiveScale];
  [pinchInteractiveScale setDampingRatio:0.85];

  pinchInteractiveScale2 = [(_UIWindowSceneActivationSettings *)self pinchInteractiveScale];
  [pinchInteractiveScale2 setResponse:0.25];

  pinchSettle = [(_UIWindowSceneActivationSettings *)self pinchSettle];
  [pinchSettle setDampingRatio:0.85];

  pinchSettle2 = [(_UIWindowSceneActivationSettings *)self pinchSettle];
  [pinchSettle2 setResponse:0.45];

  pinchShadow = [(_UIWindowSceneActivationSettings *)self pinchShadow];
  [pinchShadow setDampingRatio:1.0];

  pinchShadow2 = [(_UIWindowSceneActivationSettings *)self pinchShadow];
  [pinchShadow2 setResponse:0.4];

  morph = [(_UIWindowSceneActivationSettings *)self morph];
  [morph setDampingRatio:1.1];

  morph2 = [(_UIWindowSceneActivationSettings *)self morph];
  [morph2 setResponse:0.336];

  morphMenuDismissal = [(_UIWindowSceneActivationSettings *)self morphMenuDismissal];
  [morphMenuDismissal setDampingRatio:1.0];

  morphMenuDismissal2 = [(_UIWindowSceneActivationSettings *)self morphMenuDismissal];
  [morphMenuDismissal2 setResponse:0.1];
}

+ (id)settingsControllerModule
{
  v31[9] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v28 = [MEMORY[0x1E69C6618] rowWithTitle:@"Activation Scale Threshold" valueKeyPath:@"pinchActivationScaleThreshold"];
  v27 = [v28 between:0.0 and:5.0];
  v26 = [v27 precision:2];
  v31[0] = v26;
  v25 = [MEMORY[0x1E69C6618] rowWithTitle:@"End Projection Duration" valueKeyPath:@"pinchEndingProjectionDuration"];
  v24 = [v25 between:0.0 and:1.0];
  v23 = [v24 precision:2];
  v31[1] = v23;
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Platter Shadow Intensity" valueKeyPath:@"pinchPlatterMaxShadowIntensity"];
  v21 = [v22 between:0.0 and:1.0];
  v20 = [v21 precision:2];
  v31[2] = v20;
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Ending Animation Platter Position Velocity Multiplier" valueKeyPath:@"pinchEndPlatterVelocityMultiplier"];
  v4 = [v3 between:0.0 and:100.0];
  v5 = [v4 precision:2];
  v31[3] = v5;
  v6 = [MEMORY[0x1E69C6610] rowWithTitle:@"Interactive Scale Animation" childSettingsKeyPath:@"pinchInteractiveScale"];
  v31[4] = v6;
  v7 = [MEMORY[0x1E69C6610] rowWithTitle:@"Scale Settle Animation" childSettingsKeyPath:@"pinchSettle"];
  v31[5] = v7;
  v8 = [MEMORY[0x1E69C6610] rowWithTitle:@"Shadow Animation" childSettingsKeyPath:@"pinchShadow"];
  v31[6] = v8;
  v9 = [MEMORY[0x1E69C6610] rowWithTitle:@"Center Window Morph Animation" childSettingsKeyPath:@"morph"];
  v31[7] = v9;
  v10 = [MEMORY[0x1E69C6610] rowWithTitle:@"Morph Menu Dismissal Animation" childSettingsKeyPath:@"morphMenuDismissal"];
  v31[8] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:9];
  v12 = [v2 sectionWithRows:v11 title:@"In-App Pinch Interaction"];

  v13 = MEMORY[0x1E69C6638];
  v30[0] = v12;
  restoreDefaultSettingsButton = [MEMORY[0x1E69C65E8] restoreDefaultSettingsButton];
  v29 = restoreDefaultSettingsButton;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  v16 = [v13 sectionWithRows:v15];
  v30[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v18 = [v13 moduleWithTitle:0 contents:v17];

  return v18;
}

@end