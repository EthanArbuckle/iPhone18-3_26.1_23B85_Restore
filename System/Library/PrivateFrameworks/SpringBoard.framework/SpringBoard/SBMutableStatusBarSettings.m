@interface SBMutableStatusBarSettings
- (SBMutableStatusBarSettings)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)applySettings:(id)a3;
- (void)setHiddenParts:(unint64_t)a3;
- (void)setStyle:(int64_t)a3;
@end

@implementation SBMutableStatusBarSettings

- (SBMutableStatusBarSettings)init
{
  v3 = objc_alloc_init(MEMORY[0x277CF0C80]);
  v4 = [(SBStatusBarSettings *)self _initWithBSSettings:v3];

  return v4;
}

- (void)setStyle:(int64_t)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:2];
}

- (void)setHiddenParts:(unint64_t)a3
{
  settings = self->super._settings;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  [(BSMutableSettings *)settings setObject:v4 forSetting:3];
}

- (void)applySettings:(id)a3
{
  settings = self->super._settings;
  v4 = [a3 _BSSettings];
  [(BSMutableSettings *)settings applySettings:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SBStatusBarSettings alloc];
  settings = self->super._settings;

  return [(SBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

@end