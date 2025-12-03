@interface PXKeyboardSettings
+ (PXKeyboardSettings)sharedInstance;
+ (id)_makeAnimationStyleChoiceRowWithTitle:(id)title valueKeyPath:(id)path;
+ (id)_makeLocalFocusAnimationSection;
+ (id)settingsControllerModule;
- (void)setDefaultValues;
@end

@implementation PXKeyboardSettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXKeyboardSettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXKeyboardSettings *)self setYearsFocusAnimationStyle:0];
  [(PXKeyboardSettings *)self setYearsFocusPadding:20.0];
  [(PXKeyboardSettings *)self setMonthsFocusAnimationStyle:0];
  [(PXKeyboardSettings *)self setMonthsFocusPadding:20.0];
  [(PXKeyboardSettings *)self setDaysFocusAnimationStyle:0];
  [(PXKeyboardSettings *)self setDaysFocusPadding:20.0];
  [(PXKeyboardSettings *)self setDetailsViewOverlayAlpha:0.3];
}

+ (id)_makeAnimationStyleChoiceRowWithTitle:(id)title valueKeyPath:(id)path
{
  v4 = [MEMORY[0x1E69C6668] rowWithTitle:title valueKeyPath:path];
  v5 = [v4 possibleValues:&unk_1F1910F30 titles:&unk_1F1910F48];

  return v4;
}

+ (id)_makeLocalFocusAnimationSection
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([&unk_1F1910ED0 count])
  {
    v4 = 0;
    do
    {
      v5 = [&unk_1F1910F00 objectAtIndexedSubscript:v4];
      v6 = [&unk_1F1910F18 objectAtIndexedSubscript:v4];
      v7 = [self _makeAnimationStyleChoiceRowWithTitle:v5 valueKeyPath:v6];
      [v3 addObject:v7];

      v8 = MEMORY[0x1E69C66A0];
      v9 = [&unk_1F1910ED0 objectAtIndexedSubscript:v4];
      v10 = [&unk_1F1910EE8 objectAtIndexedSubscript:v4];
      v11 = [v8 rowWithTitle:v9 valueKeyPath:v10];
      v12 = [v11 minValue:2.0 maxValue:30.0];
      v13 = [v12 px_increment:2.0];
      [v3 addObject:v13];

      ++v4;
    }

    while (v4 < [&unk_1F1910ED0 count]);
  }

  v14 = MEMORY[0x1E69C66A0];
  v15 = NSStringFromSelector(sel_detailsViewOverlayAlpha);
  v16 = [v14 rowWithTitle:@"Details Overlay Alpha" valueKeyPath:v15];
  [v3 addObject:v16];

  v17 = [MEMORY[0x1E69C6638] sectionWithRows:v3 title:@"Local Settings"];

  return v17;
}

+ (id)settingsControllerModule
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69C6638];
  _makeLocalFocusAnimationSection = [self _makeLocalFocusAnimationSection];
  v8[0] = _makeLocalFocusAnimationSection;
  px_restoreDefaultsSection = [MEMORY[0x1E69C6638] px_restoreDefaultsSection];
  v8[1] = px_restoreDefaultsSection;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 moduleWithTitle:@"Keyboard" contents:v5];

  return v6;
}

+ (PXKeyboardSettings)sharedInstance
{
  if (sharedInstance_onceToken_249650 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_249650, &__block_literal_global_249651);
  }

  v3 = sharedInstance_sharedInstance_249652;

  return v3;
}

void __36__PXKeyboardSettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 keyboardSettings];
  v1 = sharedInstance_sharedInstance_249652;
  sharedInstance_sharedInstance_249652 = v0;
}

@end