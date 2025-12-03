@interface SUIAnimationKitPrototypeSettings
+ (id)settingsControllerModule;
- (SUIAShockwavePrototypeSettings)shockwaveSettings;
- (SUIAStingPrototypeSettings)stingSettings;
- (void)setDefaultValues;
- (void)setScanwaveSettings:(id)settings;
- (void)setShockwaveSettings:(id)settings;
- (void)setStingSettings:(id)settings;
@end

@implementation SUIAnimationKitPrototypeSettings

- (SUIAShockwavePrototypeSettings)shockwaveSettings
{
  v3 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_shockwaveSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setShockwaveSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_shockwaveSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (SUIAStingPrototypeSettings)stingSettings
{
  v3 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_stingSettings;
  swift_beginAccess();
  return *(&self->super.super.isa + v3);
}

- (void)setStingSettings:(id)settings
{
  v5 = OBJC_IVAR___SUIAnimationKitPrototypeSettings_stingSettings;
  swift_beginAccess();
  v6 = *(&self->super.super.isa + v5);
  *(&self->super.super.isa + v5) = settings;
  settingsCopy = settings;
}

- (void)setScanwaveSettings:(id)settings
{
  v4 = *(&self->super.super.isa + OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings);
  *(&self->super.super.isa + OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings) = settings;
  settingsCopy = settings;
}

- (void)setDefaultValues
{
  v5.receiver = self;
  v5.super_class = SUIAnimationKitPrototypeSettings;
  selfCopy = self;
  [(PTSettings *)&v5 setDefaultValues];
  v3 = [(SUIAnimationKitPrototypeSettings *)selfCopy shockwaveSettings:v5.receiver];
  [(SUIAShockwavePrototypeSettings *)v3 setDefaultValues];

  stingSettings = [(SUIAnimationKitPrototypeSettings *)selfCopy stingSettings];
  [(SUIAStingPrototypeSettings *)stingSettings setDefaultValues];

  [*(&selfCopy->super.super.isa + OBJC_IVAR___SUIAnimationKitPrototypeSettings_scanwaveSettings) setDefaultValues];
}

+ (id)settingsControllerModule
{
  _sSo32SUIAnimationKitPrototypeSettingsC017SystemUIAnimationB0E24settingsControllerModuleSo8PTModuleCSgyFZ_0();

  return v2;
}

@end