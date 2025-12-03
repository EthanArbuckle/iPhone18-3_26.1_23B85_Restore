@interface TRASettingsZOrderLevel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToZOrderLevelSettings:(id)settings;
- (TRASettingsZOrderLevel)initWithZOrderLevel:(double)level;
- (TRASettingsZOrderLevel)initWithZOrderLevelSettings:(id)settings;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation TRASettingsZOrderLevel

- (TRASettingsZOrderLevel)initWithZOrderLevel:(double)level
{
  v5.receiver = self;
  v5.super_class = TRASettingsZOrderLevel;
  result = [(TRASettingsZOrderLevel *)&v5 init];
  if (result)
  {
    result->_zOrderLevel = level;
  }

  return result;
}

- (TRASettingsZOrderLevel)initWithZOrderLevelSettings:(id)settings
{
  [settings zOrderLevel];

  return [(TRASettingsZOrderLevel *)self initWithZOrderLevel:?];
}

- (BOOL)isEqualToZOrderLevelSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRASettingsZOrderLevel isEqualToZOrderLevelSettings:];
    }

    if (self == settingsCopy)
    {
      v6 = 1;
    }

    else
    {
      zOrderLevel = self->_zOrderLevel;
      [(TRASettingsZOrderLevel *)settingsCopy zOrderLevel];
      v6 = BSFloatEqualToFloat();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TRAMutableSettingsZOrderLevel allocWithZone:zone];

  return [(TRASettingsZOrderLevel *)v4 initWithZOrderLevelSettings:self];
}

- (id)description
{
  zOrderLevel = self->_zOrderLevel;
  if (zOrderLevel == 1.79769313e308)
  {
    v4 = @"z-order: max";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"z-order: %.1f", *&zOrderLevel];
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsZOrderLevel *)self isEqualToZOrderLevelSettings:equalCopy];
  }

  return v5;
}

- (void)isEqualToZOrderLevelSettings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"zOrderLevelSettings == nil || [zOrderLevelSettings isKindOfClass:[TRASettingsZOrderLevel class]]" object:? file:? lineNumber:? description:?];
}

@end