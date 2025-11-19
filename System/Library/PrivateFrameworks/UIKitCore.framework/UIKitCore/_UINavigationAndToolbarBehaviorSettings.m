@interface _UINavigationAndToolbarBehaviorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UINavigationAndToolbarBehaviorSettings

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UINavigationAndToolbarBehaviorSettings;
  [(PTSettings *)&v5 setDefaultValues];
  [(_UINavigationAndToolbarBehaviorSettings *)self setEnableLiftOnSelected:1];
  [(_UINavigationAndToolbarBehaviorSettings *)self setEnableClippingBehavior:0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setTitleControlPadding:12.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonMinimumWidth:51.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonMinimumHeight:37.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonHorizontalOffset:0.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonVerticalOffset:0.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonMinimumDistanceFromEdge:4.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonCornerRadius:8.0];
  v3 = _UISolariumEnabled();
  v4 = 10.0;
  if (!v3)
  {
    v4 = 12.0;
  }

  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonHorizontalPadding:v4];
  [(_UINavigationAndToolbarBehaviorSettings *)self setButtonVerticalPadding:4.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setBackButtonLeadingPadding:7.0];
  [(_UINavigationAndToolbarBehaviorSettings *)self setBackButtonTrailingPadding:8.0];
}

+ (id)settingsControllerModule
{
  v37[11] = *MEMORY[0x1E69E9840];
  v27 = MEMORY[0x1E69C6638];
  v34 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Lift Effect for Selected Buttons" valueKeyPath:@"enableLiftOnSelected"];
  v37[0] = v34;
  v33 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Prevent Highlights from touching edges (this will become automatic)" valueKeyPath:@"enableClippingBehavior"];
  v37[1] = v33;
  v32 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Width" valueKeyPath:@"buttonMinimumWidth"];
  v31 = [v32 between:30.0 and:80.0];
  v37[2] = v31;
  v30 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Height" valueKeyPath:@"buttonMinimumHeight"];
  v29 = [v30 between:30.0 and:50.0];
  v37[3] = v29;
  v26 = [MEMORY[0x1E69C6618] rowWithTitle:@"Horizontal Offset" valueKeyPath:@"buttonHorizontalOffset"];
  v25 = [v26 between:-5.0 and:5.0];
  v37[4] = v25;
  v24 = [MEMORY[0x1E69C6618] rowWithTitle:@"Vertical Offset" valueKeyPath:@"buttonVerticalOffset"];
  v23 = [v24 between:-5.0 and:5.0];
  v37[5] = v23;
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Edge Distance" valueKeyPath:@"buttonMinimumDistanceFromEdge"];
  v2 = [v22 between:4.0 and:20.0];
  v37[6] = v2;
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Corner Radius" valueKeyPath:@"buttonCornerRadius"];
  v4 = [v3 between:4.0 and:20.0];
  v37[7] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Padding" valueKeyPath:@"buttonPadding"];
  v6 = [v5 between:4.0 and:20.0];
  v37[8] = v6;
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Back Button Leading Padding" valueKeyPath:@"backButtonLeadingPadding"];
  v8 = [v7 between:4.0 and:20.0];
  v37[9] = v8;
  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Back Button Trailing Padding" valueKeyPath:@"backButtonTrailingPadding"];
  v10 = [v9 between:4.0 and:20.0];
  v37[10] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:11];
  v28 = [v27 sectionWithRows:v11 title:@"Navigation & Toolbar Button Highlight"];

  v12 = MEMORY[0x1E69C65E8];
  v13 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v14 = [v12 rowWithTitle:@"Restore Defaults" action:v13];

  v15 = MEMORY[0x1E69C6638];
  v36 = v14;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v17 = [v15 sectionWithRows:v16];

  v18 = MEMORY[0x1E69C6638];
  v35[0] = v28;
  v35[1] = v17;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v20 = [v18 moduleWithTitle:0 contents:v19];

  return v20;
}

@end