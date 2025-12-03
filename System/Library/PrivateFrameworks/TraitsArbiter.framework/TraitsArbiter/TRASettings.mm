@interface TRASettings
- (TRASettings)initWithSettings:(id)settings;
- (TRASettings)initWithZOrderLevelSettings:(id)settings orientationSettings:(id)orientationSettings ambientPresentationSettings:(id)presentationSettings userInterfaceStyleSettings:(id)styleSettings;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRASettings

- (TRASettings)initWithZOrderLevelSettings:(id)settings orientationSettings:(id)orientationSettings ambientPresentationSettings:(id)presentationSettings userInterfaceStyleSettings:(id)styleSettings
{
  settingsCopy = settings;
  orientationSettingsCopy = orientationSettings;
  presentationSettingsCopy = presentationSettings;
  styleSettingsCopy = styleSettings;
  v24.receiver = self;
  v24.super_class = TRASettings;
  v14 = [(TRASettings *)&v24 init];
  if (v14)
  {
    v15 = [settingsCopy copy];
    zOrderLevelSettings = v14->_zOrderLevelSettings;
    v14->_zOrderLevelSettings = v15;

    v17 = [orientationSettingsCopy copy];
    orientationSettings = v14->_orientationSettings;
    v14->_orientationSettings = v17;

    v19 = [presentationSettingsCopy copy];
    ambientPresentationSettings = v14->_ambientPresentationSettings;
    v14->_ambientPresentationSettings = v19;

    v21 = [styleSettingsCopy copy];
    userInterfaceStyleSettings = v14->_userInterfaceStyleSettings;
    v14->_userInterfaceStyleSettings = v21;
  }

  return v14;
}

- (TRASettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  zOrderLevelSettings = [settingsCopy zOrderLevelSettings];
  orientationSettings = [settingsCopy orientationSettings];
  ambientPresentationSettings = [settingsCopy ambientPresentationSettings];
  userInterfaceStyleSettings = [settingsCopy userInterfaceStyleSettings];

  v9 = [(TRASettings *)self initWithZOrderLevelSettings:zOrderLevelSettings orientationSettings:orientationSettings ambientPresentationSettings:ambientPresentationSettings userInterfaceStyleSettings:userInterfaceStyleSettings];
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TRAMutableSettings allocWithZone:zone];

  return [(TRASettings *)v4 initWithSettings:self];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRASettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_zOrderLevelSettings withName:0 skipIfNil:1];
  v5 = [v3 appendObject:self->_orientationSettings withName:0 skipIfNil:1];
  v6 = [v3 appendObject:self->_ambientPresentationSettings withName:0 skipIfNil:1];
  v7 = [v3 appendObject:self->_userInterfaceStyleSettings withName:0 skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRASettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end