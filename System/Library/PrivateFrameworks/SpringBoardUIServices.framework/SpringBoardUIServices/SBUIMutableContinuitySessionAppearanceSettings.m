@interface SBUIMutableContinuitySessionAppearanceSettings
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation SBUIMutableContinuitySessionAppearanceSettings

- (void)setUserInterfaceStyle:(int64_t)a3
{
  mutableSettings = self->super._mutableSettings;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(BSMutableSettings *)mutableSettings setObject:v4 forSetting:1];
}

@end