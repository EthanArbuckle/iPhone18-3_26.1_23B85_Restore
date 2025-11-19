@interface _UISceneLiveResizePrototypeSettings
+ (id)settingsControllerModule;
- (_UISceneLiveResizePrototypeSettings)initWithDefaultValues;
- (unint64_t)_effectiveThrottlingMode;
- (void)setDefaultValues;
@end

@implementation _UISceneLiveResizePrototypeSettings

- (_UISceneLiveResizePrototypeSettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UISceneLiveResizePrototypeSettings;
  v2 = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = v2;
  if (v2)
  {
    [(_UISceneLiveResizePrototypeSettings *)v2 setDefaultValues];
  }

  return v3;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UISceneLiveResizePrototypeSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UISceneLiveResizePrototypeSettings *)self setSnapshottingEnabled:0];
  [(_UISceneLiveResizePrototypeSettings *)self setStretchingEnabled:1];
  [(_UISceneLiveResizePrototypeSettings *)self setTransparentTearingEnabled:0];
  [(_UISceneLiveResizePrototypeSettings *)self setAnimationMode:&unk_1EFE320B0];
  [(_UISceneLiveResizePrototypeSettings *)self setThrottlingMode:&unk_1EFE320C8];
  [(_UISceneLiveResizePrototypeSettings *)self setAnimationFenceEnabled:1];
}

+ (id)settingsControllerModule
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C66A8];
  v3 = NSStringFromSelector(sel_snapshottingEnabled);
  v28 = [v2 rowWithTitle:@"Snapshotting" valueKeyPath:v3];

  v4 = MEMORY[0x1E69C66A8];
  v5 = NSStringFromSelector(sel_stretchingEnabled);
  v27 = [v4 rowWithTitle:@"Stretching" valueKeyPath:v5];

  v6 = MEMORY[0x1E69C66A8];
  v7 = NSStringFromSelector(sel_transparentTearingEnabled);
  v8 = [v6 rowWithTitle:@"Transparent Tearing" valueKeyPath:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.stretchingEnabled == NO"];
  [v8 setCondition:v9];

  v10 = MEMORY[0x1E69C65F8];
  v11 = NSStringFromSelector(sel_animationMode);
  v12 = [v10 rowWithTitle:@"Animate Layout" valueKeyPath:v11];

  v13 = MEMORY[0x1E69C66A8];
  v14 = NSStringFromSelector(sel_animationFenceEnabled);
  v15 = [v13 rowWithTitle:@"Animation Fence" valueKeyPath:v14];

  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.snapshottingEnabled == NO"];
  [v12 setCondition:v16];
  [v12 setPossibleTitles:&unk_1EFE2D000];
  [v12 setPossibleShortTitles:&unk_1EFE2D018];
  [v12 setPossibleValues:&unk_1EFE2D030];
  v17 = MEMORY[0x1E69C65F8];
  v18 = NSStringFromSelector(sel_throttlingMode);
  v19 = [v17 rowWithTitle:@"Throttling" valueKeyPath:v18];

  [v19 setCondition:v16];
  [v19 setPossibleTitles:&unk_1EFE2D048];
  [v19 setPossibleShortTitles:&unk_1EFE2D060];
  [v19 setPossibleValues:&unk_1EFE2D078];
  v20 = MEMORY[0x1E69C6638];
  v29[0] = v27;
  v29[1] = v8;
  v21 = v8;
  v29[2] = v28;
  v29[3] = v12;
  v29[4] = v19;
  v29[5] = v15;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  v23 = [v20 sectionWithRows:v22];
  v30[0] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  v25 = [v20 moduleWithTitle:0 contents:v24];

  return v25;
}

- (unint64_t)_effectiveThrottlingMode
{
  if ([(_UISceneLiveResizePrototypeSettings *)self snapshottingEnabled])
  {
    return 2;
  }

  v4 = [(_UISceneLiveResizePrototypeSettings *)self throttlingMode];
  v5 = [v4 unsignedIntegerValue];

  return v5;
}

@end