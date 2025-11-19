@interface PGMobilePIPSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PGMobilePIPSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PGMobilePIPSettings;
  [(PTSettings *)&v3 setDefaultValues];
  self->_shadowOffsetX = 0.0;
  self->_shadowOffsetY = 15.0;
  self->_shadowOpacity = 0.5;
  self->_shadowRadius = 75.0;
  self->_shadowContinuousCornerRadius = 20.0;
}

+ (id)settingsControllerModule
{
  v37[5] = *MEMORY[0x1E69E9840];
  v28 = MEMORY[0x1E69C6638];
  v2 = MEMORY[0x1E69C66A0];
  v34 = NSStringFromSelector(sel_shadowOpacity);
  v33 = [v2 rowWithTitle:@"Opacity" valueKeyPath:v34];
  v32 = [v33 minValue:0.0 maxValue:1.0];
  v37[0] = v32;
  v3 = MEMORY[0x1E69C66A0];
  v31 = NSStringFromSelector(sel_shadowRadius);
  v30 = [v3 rowWithTitle:@"Radius" valueKeyPath:v31];
  v27 = [v30 minValue:0.0 maxValue:100.0];
  v37[1] = v27;
  v4 = MEMORY[0x1E69C66A0];
  v5 = NSStringFromSelector(sel_shadowOffsetX);
  v6 = [v4 rowWithTitle:@"Offset X" valueKeyPath:v5];
  v7 = [v6 minValue:-30.0 maxValue:30.0];
  v37[2] = v7;
  v8 = MEMORY[0x1E69C66A0];
  v9 = NSStringFromSelector(sel_shadowOffsetY);
  v10 = [v8 rowWithTitle:@"Offset Y" valueKeyPath:v9];
  v11 = [v10 minValue:-30.0 maxValue:30.0];
  v37[3] = v11;
  v12 = MEMORY[0x1E69C66A0];
  v13 = NSStringFromSelector(sel_shadowContinuousCornerRadius);
  v14 = [v12 rowWithTitle:@"Continuous Corner Radius" valueKeyPath:v13];
  v15 = [v14 minValue:0.0 maxValue:50.0];
  v37[4] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:5];
  v29 = [v28 sectionWithRows:v16 title:@"PiP Shadow Settings"];

  v17 = MEMORY[0x1E69C65E8];
  v18 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v19 = [v17 rowWithTitle:@"Restore Defaults" action:v18];

  v20 = MEMORY[0x1E69C6638];
  v36 = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  v22 = [v20 sectionWithRows:v21];

  v23 = MEMORY[0x1E69C6638];
  v35[0] = v29;
  v35[1] = v22;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
  v25 = [v23 moduleWithTitle:@"PIP" contents:v24];

  return v25;
}

@end