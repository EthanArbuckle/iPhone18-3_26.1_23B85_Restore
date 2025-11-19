@interface _UISearchBarBehaviorSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UISearchBarBehaviorSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UISearchBarBehaviorSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UISearchBarBehaviorSettings *)self setButtonMinimumHeight:36.0];
  [(_UISearchBarBehaviorSettings *)self setButtonTightPadding:8.0];
  [(_UISearchBarBehaviorSettings *)self setButtonGenerousPadding:12.0];
}

+ (id)settingsControllerModule
{
  v26[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v23 = [MEMORY[0x1E69C6618] rowWithTitle:@"Minimum Height" valueKeyPath:@"buttonMinimumHeight"];
  v3 = [v23 between:30.0 and:50.0];
  v26[0] = v3;
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use generous padding values (this will become automatic)" valueKeyPath:@"useGenerousPadding"];
  v26[1] = v4;
  v5 = [MEMORY[0x1E69C6618] rowWithTitle:@"Tight Padding" valueKeyPath:@"buttonTightPadding"];
  v6 = [v5 between:4.0 and:20.0];
  v26[2] = v6;
  v7 = [MEMORY[0x1E69C6618] rowWithTitle:@"Generous Padding" valueKeyPath:@"buttonGenerousPadding"];
  v8 = [v7 between:4.0 and:20.0];
  v26[3] = v8;
  v9 = [MEMORY[0x1E69C6618] rowWithTitle:@"Corner Radius" valueKeyPath:@"buttonCornerRadius"];
  v10 = [v9 between:4.0 and:20.0];
  v26[4] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  v12 = [v2 sectionWithRows:v11 title:@"Search Button Highlight"];

  v13 = MEMORY[0x1E69C65E8];
  v14 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v15 = [v13 rowWithTitle:@"Restore Defaults" action:v14];

  v16 = MEMORY[0x1E69C6638];
  v25 = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v18 = [v16 sectionWithRows:v17];

  v19 = MEMORY[0x1E69C6638];
  v24[0] = v12;
  v24[1] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  v21 = [v19 moduleWithTitle:0 contents:v20];

  return v21;
}

@end