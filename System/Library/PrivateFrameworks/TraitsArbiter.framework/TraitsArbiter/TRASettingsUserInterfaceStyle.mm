@interface TRASettingsUserInterfaceStyle
- (BOOL)isEqualToUserInterfaceStyleSettings:(id)a3;
- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleInputs:(id)a3;
- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleSettings:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TRASettingsUserInterfaceStyle

- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleInputs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRASettingsUserInterfaceStyle;
  v6 = [(TRASettingsUserInterfaceStyle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userInterfaceStyleInputs, a3);
  }

  return v7;
}

- (TRASettingsUserInterfaceStyle)initWithUserInterfaceStyleSettings:(id)a3
{
  v4 = [a3 userInterfaceStyleInputs];
  v5 = [(TRASettingsUserInterfaceStyle *)self initWithUserInterfaceStyleInputs:v4];

  return v5;
}

- (BOOL)isEqualToUserInterfaceStyleSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRASettingsUserInterfaceStyle isEqualToUserInterfaceStyleSettings:];
    }

    if (self == v4)
    {
      v7 = 1;
    }

    else
    {
      userInterfaceStyleInputs = self->_userInterfaceStyleInputs;
      v6 = [(TRASettingsUserInterfaceStyle *)v4 userInterfaceStyleInputs];
      v7 = [(TRAArbitrationUserInterfaceStyleInputs *)userInterfaceStyleInputs isEqual:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TRAMutableSettingsUserInterfaceStyle allocWithZone:a3];

  return [(TRASettingsUserInterfaceStyle *)v4 initWithUserInterfaceStyleSettings:self];
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TRASettingsUserInterfaceStyle *)self userInterfaceStyleInputs];
  v4 = [v2 stringWithFormat:@"userInterfaceStyle: %li", objc_msgSend(v3, "userInterfaceStyle")];

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