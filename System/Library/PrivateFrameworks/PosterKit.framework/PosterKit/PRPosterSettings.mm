@interface PRPosterSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PRPosterSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PRPosterSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PRPosterSettings *)self setWakeDuration:1.2];
  [(PRPosterSettings *)self setWakeMass:1.0];
  [(PRPosterSettings *)self setWakeStiffness:61.69];
  [(PRPosterSettings *)self setWakeDamping:15.71];
  [(PRPosterSettings *)self setLinearWakeDuration:1.2];
}

+ (id)settingsControllerModule
{
  v26[4] = *MEMORY[0x1E69E9840];
  v22 = [MEMORY[0x1E69C6618] rowWithTitle:@"Duration" valueKeyPath:@"wakeDuration"];
  v21 = [MEMORY[0x1E69C6618] rowWithTitle:@"Mass" valueKeyPath:@"wakeMass"];
  v20 = [MEMORY[0x1E69C6618] rowWithTitle:@"Stiffness" valueKeyPath:@"wakeStiffness"];
  v2 = [MEMORY[0x1E69C6618] rowWithTitle:@"Damping" valueKeyPath:@"wakeDamping"];
  v3 = MEMORY[0x1E69C6638];
  v26[0] = v22;
  v26[1] = v21;
  v26[2] = v20;
  v26[3] = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:4];
  v5 = [v3 sectionWithRows:v4 title:@"Wallpaper Wake Animation"];

  v6 = [MEMORY[0x1E69C6618] rowWithTitle:@"Duration" valueKeyPath:@"linearWakeDuration"];
  v7 = MEMORY[0x1E69C6638];
  v25 = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v9 = [v7 sectionWithRows:v8 title:@"Wallpaper Linear Wake Animation"];

  v10 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v12 = [v10 rowWithTitle:@"Restore Defaults" action:action];

  v13 = MEMORY[0x1E69C6638];
  v24 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  v15 = [v13 sectionWithRows:v14 title:@"Restore Defaults"];

  v16 = MEMORY[0x1E69C6638];
  v23[0] = v5;
  v23[1] = v9;
  v23[2] = v15;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:3];
  v18 = [v16 moduleWithTitle:@"Wake Animation" contents:v17];

  return v18;
}

@end