@interface TRAMutableSettings
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAmbientPresentationSettings:(id)settings;
- (void)setOrientationSettings:(id)settings;
- (void)setUserInterfaceStyleSettings:(id)settings;
- (void)setZOrderLevelSettings:(id)settings;
@end

@implementation TRAMutableSettings

- (void)setZOrderLevelSettings:(id)settings
{
  v4 = [settings copy];
  zOrderLevelSettings = self->super._zOrderLevelSettings;
  self->super._zOrderLevelSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setOrientationSettings:(id)settings
{
  v4 = [settings copy];
  orientationSettings = self->super._orientationSettings;
  self->super._orientationSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAmbientPresentationSettings:(id)settings
{
  v4 = [settings copy];
  ambientPresentationSettings = self->super._ambientPresentationSettings;
  self->super._ambientPresentationSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUserInterfaceStyleSettings:(id)settings
{
  v4 = [settings copy];
  userInterfaceStyleSettings = self->super._userInterfaceStyleSettings;
  self->super._userInterfaceStyleSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRASettings allocWithZone:zone];

  return [(TRASettings *)v4 initWithSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithSettings:self];
}

@end