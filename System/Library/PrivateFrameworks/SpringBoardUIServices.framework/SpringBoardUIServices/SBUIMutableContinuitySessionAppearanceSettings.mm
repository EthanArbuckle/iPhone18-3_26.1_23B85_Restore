@interface SBUIMutableContinuitySessionAppearanceSettings
- (void)setUserInterfaceStyle:(int64_t)style;
@end

@implementation SBUIMutableContinuitySessionAppearanceSettings

- (void)setUserInterfaceStyle:(int64_t)style
{
  mutableSettings = self->super._mutableSettings;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  [(BSMutableSettings *)mutableSettings setObject:v4 forSetting:1];
}

@end