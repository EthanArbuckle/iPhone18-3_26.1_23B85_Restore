@interface _UIScreenEdgePanRecognizerEdgeSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIScreenEdgePanRecognizerEdgeSettings

- (void)setDefaultValues
{
  v9.receiver = self;
  v9.super_class = _UIScreenEdgePanRecognizerEdgeSettings;
  [(PTSettings *)&v9 setDefaultValues];
  [(_UIScreenEdgePanRecognizerEdgeSettings *)self setHysteresis:15.0];
  v3 = 13.0;
  if (!_UIDeviceNativeUserInterfaceIdiom() && MGGetBoolAnswer())
  {
    v4 = [objc_opt_self() mainScreen];
    [v4 _referenceBounds];
    v6 = v5;

    v7 = MGGetBoolAnswer();
    v8 = 0.09;
    if (v7)
    {
      v8 = 0.1;
    }

    v3 = v6 * v8;
  }

  [(_UIScreenEdgePanRecognizerEdgeSettings *)self setEdgeRegionSize:v3];
  [(_UIScreenEdgePanRecognizerEdgeSettings *)self setBottomEdgeRegionSize:11.0];
  [(_UIScreenEdgePanRecognizerEdgeSettings *)self setEdgeAngleWindow:2.70526034];
  [(_UIScreenEdgePanRecognizerEdgeSettings *)self setEdgeAngleWindowDecayTime:0.5];
  [(_UIScreenEdgePanRecognizerEdgeSettings *)self setMaximumSwipeDuration:0.25];
}

+ (id)settingsControllerModule
{
  v25[5] = *MEMORY[0x1E69E9840];
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Hysteresis" valueKeyPath:@"hysteresis"];
  v2 = [v22 precision:0];
  v25[0] = v2;
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Edge Window Size" valueKeyPath:@"edgeRegionSize"];
  v4 = [v3 precision:0];
  v25[1] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Bottom Edge Window Size" valueKeyPath:@"bottomEdgeRegionSize"];
  v6 = [v5 precision:0];
  v25[2] = v6;
  v7 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Angle Window" valueKeyPath:@"edgeAngleWindowDegreees"];
  v8 = [v7 minValue:0.0 maxValue:180.0];
  v25[3] = v8;
  v9 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Angle Decay Time" valueKeyPath:@"edgeAngleWindowDecayTime"];
  v10 = [v9 minValue:0.0 maxValue:2.0];
  v25[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:5];

  v12 = [MEMORY[0x1E69C6638] sectionWithRows:v11];
  v13 = MEMORY[0x1E69C65E8];
  v14 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];
  v24 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];

  v17 = [MEMORY[0x1E69C6638] sectionWithRows:v16];
  v18 = MEMORY[0x1E69C6638];
  v23[0] = v12;
  v23[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v20 = [v18 moduleWithTitle:@"Edge Swipe" contents:v19];

  return v20;
}

@end