@interface SUIAnimationKitPrototypeSettings
+ (id)settingsControllerModule;
- (SUIAShockwavePrototypeSettings)shockwaveSettings;
- (SUIAStingPrototypeSettings)stingSettings;
- (void)setDefaultValues;
- (void)setScanwaveSettings:(id)a3;
- (void)setShockwaveSettings:(id)a3;
- (void)setStingSettings:(id)a3;
@end

@implementation SUIAnimationKitPrototypeSettings

- (SUIAShockwavePrototypeSettings)shockwaveSettings
{
  v3 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_shockwaveSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setShockwaveSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_shockwaveSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (SUIAStingPrototypeSettings)stingSettings
{
  v3 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_stingSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setStingSettings:(id)a3
{
  v5 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_stingSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = a3;
  v7 = a3;
}

- (void)setScanwaveSettings:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings);
  *(&self->super.super.isa + OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings) = a3;
  v3 = a3;
}

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SUIAnimationKitPrototypeSettings;
  v2 = self;
  [(PTSettings *)&v5 setDefaultValues];
  v3 = [(SUIAnimationKitPrototypeSettings *)v2 shockwaveSettings:v5.receiver];
  [(SUIAShockwavePrototypeSettings *)v3 setDefaultValues];

  v4 = [(SUIAnimationKitPrototypeSettings *)v2 stingSettings];
  [(SUIAStingPrototypeSettings *)v4 setDefaultValues];

  [*(&v2->super.super.isa + OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings) setDefaultValues];
}

+ (id)settingsControllerModule
{
  _sSo32SUIAnimationKitPrototypeSettingsC017SystemUIAnimationB0E24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end