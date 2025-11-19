@interface _UIScreenEdgePanRecognizerDwellSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIScreenEdgePanRecognizerDwellSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIScreenEdgePanRecognizerDwellSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIScreenEdgePanRecognizerDwellSettings *)self setLongPressPermittedHorizontalMovement:25.0];
  [(_UIScreenEdgePanRecognizerDwellSettings *)self setLongPressPermittedVerticalMovement:25.0];
  [(_UIScreenEdgePanRecognizerDwellSettings *)self setLongPressTipPermittedHorizontalMovement:25.0];
  [(_UIScreenEdgePanRecognizerDwellSettings *)self setLongPressTipPermittedVerticalMovement:10.0];
  [(_UIScreenEdgePanRecognizerDwellSettings *)self setLongPressRequiredDuration:0.266];
}

+ (id)settingsControllerModule
{
  v38[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C66A0] rowWithTitle:@"Required Press Duration" valueKeyPath:@"longPressRequiredDuration"];
  v3 = [v2 minValue:0.0 maxValue:0.5];
  v38[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];

  v32 = [MEMORY[0x1E69C6638] sectionWithRows:v4];
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Permitted Horizontal Movement" valueKeyPath:@"longPressTipPermittedHorizontalMovement"];
  v6 = [v5 precision:0];
  v37[0] = v6;
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Permitted Vertical Movement" valueKeyPath:@"longPressTipPermittedVerticalMovement"];
  v8 = [v7 precision:0];
  v37[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];

  v31 = [MEMORY[0x1E69C6638] sectionWithRows:v9 title:@"Tip Touch"];
  v10 = [MEMORY[0x1E69C6618] rowWithTitle:@"Permitted Horizontal Movement" valueKeyPath:@"longPressFlatPermittedHorizontalMovement"];
  v11 = [v10 precision:0];
  v36[0] = v11;
  v12 = [MEMORY[0x1E69C6618] rowWithTitle:@"Permitted Vertical Movement" valueKeyPath:@"longPressFlatPermittedVerticalMovement"];
  v13 = [v12 precision:0];
  v36[1] = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:2];

  v15 = [MEMORY[0x1E69C6638] sectionWithRows:v14 title:@"Flat Touch"];
  v16 = [MEMORY[0x1E69C6618] rowWithTitle:@"Permitted Horizontal Movement" valueKeyPath:@"longPressPermittedHorizontalMovement"];
  v17 = [v16 precision:0];
  v35[0] = v17;
  v18 = [MEMORY[0x1E69C6618] rowWithTitle:@"Permitted Vertical Movement" valueKeyPath:@"longPressPermittedVerticalMovement"];
  v19 = [v18 precision:0];
  v35[1] = v19;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];

  v21 = [MEMORY[0x1E69C6638] sectionWithRows:v20 title:@"Other Touch"];
  v22 = MEMORY[0x1E69C65E8];
  v23 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v24 = [v22 rowWithTitle:@"Restore Defaults" action:v23];
  v34 = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v34 count:1];

  v26 = [MEMORY[0x1E69C6638] sectionWithRows:v25];
  v27 = MEMORY[0x1E69C6638];
  v33[0] = v32;
  v33[1] = v31;
  v33[2] = v15;
  v33[3] = v21;
  v33[4] = v26;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:5];
  v29 = [v27 moduleWithTitle:@"Edge Swipe" contents:v28];

  return v29;
}

@end