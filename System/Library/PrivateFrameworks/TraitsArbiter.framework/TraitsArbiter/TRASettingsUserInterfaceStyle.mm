@interface TRASettingsUserInterfaceStyle
- (BOOL)isEqualToUserInterfaceStyleSettings:(id)settings;
- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleInputs:(id)inputs;
- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleSettings:(id)settings;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TRASettingsUserInterfaceStyle

- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleInputs:(id)inputs
{
  inputsCopy = inputs;
  v9.receiver = self;
  v9.super_class = TRASettingsUserInterfaceStyle;
  v6 = [(TRASettingsUserInterfaceStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInterfaceStyleInputs, inputs);
  }

  return v7;
}

- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleSettings:(id)settings
{
  userInterfaceStyleInputs = [settings userInterfaceStyleInputs];
  v5 = [(TRASettingsUserInterfaceStyle *)self initWithUserInterfaceStyleInputs:userInterfaceStyleInputs];

  return v5;
}

- (BOOL)isEqualToUserInterfaceStyleSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRASettingsUserInterfaceStyle isEqualToUserInterfaceStyleSettings:];
    }

    if (self == settingsCopy)
    {
      v7 = 1;
    }

    else
    {
      userInterfaceStyleInputs = self->_userInterfaceStyleInputs;
      userInterfaceStyleInputs = [(TRASettingsUserInterfaceStyle *)settingsCopy userInterfaceStyleInputs];
      v7 = [(TRAArbitrationUserInterfaceStyleInputs *)userInterfaceStyleInputs isEqual:userInterfaceStyleInputs];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TRAMutableSettingsUserInterfaceStyle allocWithZone:zone];

  return [(TRASettingsUserInterfaceStyle *)v4 initWithUserInterfaceStyleSettings:self];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  userInterfaceStyleInputs = [(TRASettingsUserInterfaceStyle *)self userInterfaceStyleInputs];
  v4 = [v2 stringWithFormat:@"userInterfaceStyle: %li", objc_msgSend(userInterfaceStyleInputs, "userInterfaceStyle")];

  return v4;
}

- (void)isEqualToUserInterfaceStyleSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"userInterfaceStyleSettings == nil || [userInterfaceStyleSettings isKindOfClass:[TRASettingsUserInterfaceStyle class]]" object:? file:? lineNumber:? description:?];
}

@end