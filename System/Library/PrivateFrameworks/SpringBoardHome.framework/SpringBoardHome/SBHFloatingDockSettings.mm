@interface SBHFloatingDockSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation SBHFloatingDockSettings

- (void)setDefaultValues
{
  [(SBHFloatingDockSettings *)self setNumberOfIconsToAddOrRemove:10];
  v3 = *MEMORY[0x1E699A3B0];

  [(SBHFloatingDockSettings *)self setConnectedClientBundleIdentifier:v3];
}

+ (id)settingsControllerModule
{
  v31[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    v4 = [MEMORY[0x1E69C65F8] rowWithTitle:@"Connected Client" valueKeyPath:@"connectedClientBundleIdentifier"];
    v31[0] = @"Files";
    v31[1] = @"Automation Test";
    v31[2] = @"AnhsApp";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:3];
    [v4 setPossibleTitles:v5];

    v30[0] = @"Files";
    v30[1] = @"Automation";
    v30[2] = @"AnhsApp";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    [v4 setPossibleShortTitles:v6];

    v29[0] = *MEMORY[0x1E699A3B0];
    v29[1] = @"com.apple.internal.suiuntool";
    v29[2] = @"com.apple.AnhsApp";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
    [v4 setPossibleValues:v7];

    v8 = MEMORY[0x1E69C6638];
    v28 = v4;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v28 count:1];
    v24 = [v8 sectionWithRows:v9 title:@"Connected client for file stack icon"];

    v23 = [MEMORY[0x1E69C6618] rowWithTitle:@"Number of icons to add or remove" valueKeyPath:@"numberOfIconsToAddOrRemove"];
    v10 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Add icons into the floating dock. Make sure you have at least 1 icon in the left section of the floating dock." outletKeyPath:@"addIconsToFloatingDockOutlet"];
    v11 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Remove icons from the floating dock" outletKeyPath:@"removeIconsFromFloatingDockOutlet"];
    v12 = [MEMORY[0x1E69C65E8] rowWithTitle:@"Add icons into the floating dock until max capacity" outletKeyPath:@"addMaxNumberOfIconsAllowedToDockOutlet"];
    v13 = MEMORY[0x1E69C6638];
    v27[0] = v23;
    v27[1] = v10;
    v27[2] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    v15 = [v13 sectionWithRows:v14 title:@"Add or Remove a user-specified number of icons from Floating Dock"];

    v16 = MEMORY[0x1E69C6638];
    v26 = v12;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v18 = [v16 sectionWithRows:v17 title:@"Fill the left section of the floating dock to its max capacity"];

    v19 = MEMORY[0x1E69C6638];
    v25[0] = v24;
    v25[1] = v15;
    v25[2] = v18;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:3];
    v21 = [v19 moduleWithTitle:@"Floating Dock" contents:v20];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

@end