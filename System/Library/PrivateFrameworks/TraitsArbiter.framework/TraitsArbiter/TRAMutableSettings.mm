@interface TRAMutableSettings
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAmbientPresentationSettings:(id)a3;
- (void)setOrientationSettings:(id)a3;
- (void)setUserInterfaceStyleSettings:(id)a3;
- (void)setZOrderLevelSettings:(id)a3;
@end

@implementation TRAMutableSettings

- (void)setZOrderLevelSettings:(id)a3
{
  v4 = [a3 copy];
  zOrderLevelSettings = self->super._zOrderLevelSettings;
  self->super._zOrderLevelSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setOrientationSettings:(id)a3
{
  v4 = [a3 copy];
  orientationSettings = self->super._orientationSettings;
  self->super._orientationSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setAmbientPresentationSettings:(id)a3
{
  v4 = [a3 copy];
  ambientPresentationSettings = self->super._ambientPresentationSettings;
  self->super._ambientPresentationSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (void)setUserInterfaceStyleSettings:(id)a3
{
  v4 = [a3 copy];
  userInterfaceStyleSettings = self->super._userInterfaceStyleSettings;
  self->super._userInterfaceStyleSettings = v4;

  MEMORY[0x2821F96F8]();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TRASettings allocWithZone:a3];

  return [(TRASettings *)v4 initWithSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithSettings:self];
}

@end