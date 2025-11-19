@interface TRASettings
- (TRASettings)initWithSettings:(id)a3;
- (TRASettings)initWithZOrderLevelSettings:(id)a3 orientationSettings:(id)a4 ambientPresentationSettings:(id)a5 userInterfaceStyleSettings:(id)a6;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRASettings

- (TRASettings)initWithZOrderLevelSettings:(id)a3 orientationSettings:(id)a4 ambientPresentationSettings:(id)a5 userInterfaceStyleSettings:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v24.receiver = self;
  v24.super_class = TRASettings;
  v14 = [(TRASettings *)&v24 init];
  if (v14)
  {
    v15 = [v10 copy];
    zOrderLevelSettings = v14->_zOrderLevelSettings;
    v14->_zOrderLevelSettings = v15;

    v17 = [v11 copy];
    orientationSettings = v14->_orientationSettings;
    v14->_orientationSettings = v17;

    v19 = [v12 copy];
    ambientPresentationSettings = v14->_ambientPresentationSettings;
    v14->_ambientPresentationSettings = v19;

    v21 = [v13 copy];
    userInterfaceStyleSettings = v14->_userInterfaceStyleSettings;
    v14->_userInterfaceStyleSettings = v21;
  }

  return v14;
}

- (TRASettings)initWithSettings:(id)a3
{
  v4 = a3;
  v5 = [v4 zOrderLevelSettings];
  v6 = [v4 orientationSettings];
  v7 = [v4 ambientPresentationSettings];
  v8 = [v4 userInterfaceStyleSettings];

  v9 = [(TRASettings *)self initWithZOrderLevelSettings:v5 orientationSettings:v6 ambientPresentationSettings:v7 userInterfaceStyleSettings:v8];
  return v9;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TRAMutableSettings allocWithZone:a3];

  return [(TRASettings *)v4 initWithSettings:self];
}

- (id)succinctDescription
{
  v2 = [(TRASettings *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
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

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRASettings *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end