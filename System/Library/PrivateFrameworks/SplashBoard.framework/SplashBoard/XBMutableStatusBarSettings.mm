@interface XBMutableStatusBarSettings
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBackgroundActivityEnabled:(BOOL)enabled;
- (void)setHidden:(BOOL)hidden;
- (void)setStyle:(int64_t)style;
@end

@implementation XBMutableStatusBarSettings

- (void)setHidden:(BOOL)hidden
{
  settings = self->super._settings;
  v4 = BSSettingFlagForBool();

  [(BSMutableSettings *)settings setFlag:v4 forSetting:1];
}

- (void)setStyle:(int64_t)style
{
  settings = self->super._settings;
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:style];
  [(BSMutableSettings *)settings setObject:v4 forSetting:2];
}

- (void)setBackgroundActivityEnabled:(BOOL)enabled
{
  settings = self->super._settings;
  v4 = BSSettingFlagForBool();

  [(BSMutableSettings *)settings setFlag:v4 forSetting:3];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [XBStatusBarSettings alloc];
  settings = self->super._settings;

  return [(XBStatusBarSettings *)v4 _initWithBSSettings:settings];
}

@end