@interface _UIBeamPointerSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIBeamPointerSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIBeamPointerSettings;
  [(_UIFreeformPointerSettings *)&v3 setDefaultValues];
  [(_UIFreeformPointerSettings *)self setSlipFactorX:1.0];
  [(_UIFreeformPointerSettings *)self setSlipFactorY:1.0];
  [(_UIBeamPointerSettings *)self setMinLength:24.0];
  [(_UIBeamPointerSettings *)self setMaxLength:100.0];
  [(_UIBeamPointerSettings *)self setMaxSnapLength:100.0];
  [(_UIBeamPointerSettings *)self setWidth:3.0];
}

+ (id)settingsControllerModule
{
  v39[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slip X" valueKeyPath:@"slipFactorX"];
  v4 = [v3 between:0.0 and:1.0];
  v5 = [v4 precision:3];
  v39[0] = v5;
  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Slip Y" valueKeyPath:@"slipFactorY"];
  v7 = [v6 between:0.0 and:1.0];
  v8 = [v7 precision:3];
  v39[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v35 = [v2 sectionWithRows:v9 title:@"Pointer Motion"];

  v30 = MEMORY[0x1E69C6638];
  v34 = [MEMORY[0x1E69C6618] rowWithTitle:@"Min Length" valueKeyPath:@"minLength"];
  v33 = [v34 between:0.0 and:100.0];
  v32 = [v33 precision:1];
  v38[0] = v32;
  v10 = [MEMORY[0x1E69C6618] rowWithTitle:@"Max Length" valueKeyPath:@"maxLength"];
  v11 = [v10 between:0.0 and:10000.0];
  v12 = [v11 precision:1];
  v38[1] = v12;
  v13 = [MEMORY[0x1E69C6618] rowWithTitle:@"Max Snap Length" valueKeyPath:@"maxSnapLength"];
  v14 = [v13 between:0.0 and:10000.0];
  v15 = [v14 precision:1];
  v38[2] = v15;
  v16 = [MEMORY[0x1E69C6618] rowWithTitle:@"Width" valueKeyPath:@"width"];
  v17 = [v16 between:0.0 and:100.0];
  v18 = [v17 precision:1];
  v38[3] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:4];
  v31 = [v30 sectionWithRows:v19 title:@"Beam Attributes"];

  v20 = MEMORY[0x1E69C65E8];
  v21 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v22 = [v20 rowWithTitle:@"Restore Defaults" action:v21];

  v23 = MEMORY[0x1E69C6638];
  v37 = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v25 = [v23 sectionWithRows:v24];

  v26 = MEMORY[0x1E69C6638];
  v36[0] = v35;
  v36[1] = v31;
  v36[2] = v25;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:3];
  v28 = [v26 moduleWithTitle:0 contents:v27];

  return v28;
}

@end