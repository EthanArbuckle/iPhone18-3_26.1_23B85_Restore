@interface SBHWidgetIntroductionSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHWidgetIntroductionSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = SBHWidgetIntroductionSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(SBHWidgetIntroductionSettings *)self setShowWidgetIntroConvenienceControl:1];
  [(SBHWidgetIntroductionSettings *)self setEditButtonAsUndo:0];
  [(SBHWidgetIntroductionSettings *)self setSimpleBottomSnaking:1];
  [(SBHWidgetIntroductionSettings *)self setBumpLeastUsedApps:1];
  [(SBHWidgetIntroductionSettings *)self setShowXLTVWidget:0];
}

+ (id)settingsControllerModule
{
  v23[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Widget Introduction" valueKeyPath:@"showWidgetIntroConvenienceControl"];
  v23[0] = v2;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Edit Button As Undo" valueKeyPath:@"editButtonAsUndo"];
  v23[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

  v5 = [MEMORY[0x1E69C6638] sectionWithRows:v4 title:@"Widget Introduction"];
  v6 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Simple Bottom Snaking" valueKeyPath:@"simpleBottomSnaking"];
  v22[0] = v6;
  v7 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Bump Least Used Apps" valueKeyPath:@"bumpLeastUsedApps"];
  v22[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];

  v9 = [MEMORY[0x1E69C6638] sectionWithRows:v8 title:@"Icon Overflow"];
  v10 = MEMORY[0x1E695DF70];
  v21[0] = v5;
  v21[1] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v12 = [v10 arrayWithArray:v11];

  v13 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Extra Large TV Widget" valueKeyPath:@"showXLTVWidget"];
  v20 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

  v15 = [MEMORY[0x1E69C6638] sectionWithRows:v14 title:@"TV Widget"];
  v16 = [MEMORY[0x1E69DC938] currentDevice];
  v17 = [v16 userInterfaceIdiom];

  if ((v17 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    [v12 addObject:v15];
  }

  v18 = [MEMORY[0x1E69C6638] moduleWithTitle:@"Widget Introduction" contents:v12];

  return v18;
}

@end