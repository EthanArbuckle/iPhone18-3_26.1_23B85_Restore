@interface _UIButtonSettings
+ (id)settingsControllerModule;
- (_UIButtonSettings)initWithDefaultValues;
- (void)setDefaultValues;
- (void)settings:(id)settings changedValueForKey:(id)key;
@end

@implementation _UIButtonSettings

- (_UIButtonSettings)initWithDefaultValues
{
  v5.receiver = self;
  v5.super_class = _UIButtonSettings;
  initWithDefaultValues = [(PTSettings *)&v5 initWithDefaultValues];
  v3 = initWithDefaultValues;
  if (initWithDefaultValues)
  {
    [(PTSettings *)initWithDefaultValues addKeyObserver:initWithDefaultValues];
  }

  return v3;
}

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = _UIButtonSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(_UIButtonSettings *)self setHighlightMode:0];
  [(_UIButtonSettings *)self setHighlightSubclasses:1];
  [(_UIButtonSettings *)self setHighlightIgnoresBars:1];
  [(_UIButtonSettings *)self setHighlightBelow:0];
  [(_UIButtonSettings *)self setHighlightAlternateColor:0];
}

- (void)settings:(id)settings changedValueForKey:(id)key
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [UIWindow allWindowsIncludingInternalWindows:1 onlyVisibleWindows:1, 0];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        _recursivelyLayoutUIButtons(*(*(&v9 + 1) + 8 * v8++));
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

+ (id)settingsControllerModule
{
  v21[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  v18 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Highlight UIButtons" valueKeyPath:@"highlightMode"];
  v20[0] = v18;
  v17 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Include Subclasses" valueKeyPath:@"highlightSubclasses"];
  v20[1] = v17;
  v16 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Ignore Bar Buttons" valueKeyPath:@"highlightIgnoresBars"];
  v20[2] = v16;
  v3 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Show Solid Highlight Below" valueKeyPath:@"highlightBelow"];
  v20[3] = v3;
  v4 = [MEMORY[0x1E69C66A8] rowWithTitle:@"Use Alternate Color" valueKeyPath:@"highlightAlternateColor"];
  v20[4] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
  v6 = [v2 sectionWithRows:v5 title:@"Usage"];
  v21[0] = v6;
  v7 = MEMORY[0x1E69C6638];
  v8 = MEMORY[0x1E69C65E8];
  v9 = [MEMORY[0x1E69C6640] actionWithSettingsKeyPath:0];
  v10 = [v8 rowWithTitle:@"Restore Defaults" action:v9];
  v19 = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
  v12 = [v7 sectionWithRows:v11];
  v21[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v14 = [v2 moduleWithTitle:0 contents:v13];

  return v14;
}

@end