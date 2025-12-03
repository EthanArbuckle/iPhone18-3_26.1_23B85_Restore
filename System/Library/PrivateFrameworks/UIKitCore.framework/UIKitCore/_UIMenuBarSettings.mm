@interface _UIMenuBarSettings
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation _UIMenuBarSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIMenuBarSettings;
  [(PTSettings *)&v3 setDefaultValues];
  *(&self->super.__isObservingChildren + 1) = 0;
  *(&self->super.__isObservingChildren + 2) = 0;
}

+ (id)settingsControllerModule
{
  v18[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Enable Prototype Menu Bar" valueKeyPath:@"prototypeMenuBarEnabled"];
  v17[0] = v3;
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Prototype Menu Bar Button" valueKeyPath:@"showPrototypeMenuBarButtonEnabled"];
  v17[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v6 = [v2 sectionWithRows:v5 title:@"Prototype Menu Bar"];
  v18[0] = v6;
  v7 = MEMORY[0x1E69C6638];
  v8 = MEMORY[0x1E69C65E8];
  action = [MEMORY[0x1E69C6640] action];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:action];
  v16 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  v12 = [v7 sectionWithRows:v11];
  v18[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14 = [v2 moduleWithTitle:@"Menu Bar" contents:v13];

  return v14;
}

@end