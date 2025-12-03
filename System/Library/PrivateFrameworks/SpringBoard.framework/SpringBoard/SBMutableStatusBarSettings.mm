@interface SBMutableStatusBarSettings
- (SBMutableStatusBarSettings)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)applySettings:(id)settings;
- (void)setHiddenParts:(unint64_t)parts;
- (void)setStyle:(int64_t)style;
@end

@implementation SBMutableStatusBarSettings

- (SBMutableStatusBarSettings)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v4 = [(SBStatusBarSettings *)self _initWithBSSettings:v3];

  return v4;
}

- (void)setStyle:(int64_t)style
{
  settings = self->super._settings;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [(BSMutableSettings *)settings setObject:v4 forSetting:2];
}

- (void)setHiddenParts:(unint64_t)parts
{
  settings = self->super._settings;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:parts];
  [(BSMutableSettings *)settings setObject:v4 forSetting:3];
}

- (void)applySettings:(id)settings
{
  settings = self->super._settings;
  _BSSettings = [settings _BSSettings];
  [(BSMutableSettings *)settings applySettings:_BSSettings];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SBStatusBarSettings alloc];
  settings = self->super._settings;

  return [(SBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

@end