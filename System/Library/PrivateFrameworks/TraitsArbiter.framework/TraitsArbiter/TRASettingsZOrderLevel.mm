@interface TRASettingsZOrderLevel
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToZOrderLevelSettings:(id)a3;
- (TRASettingsZOrderLevel)initWithZOrderLevel:(double)a3;
- (TRASettingsZOrderLevel)initWithZOrderLevelSettings:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation TRASettingsZOrderLevel

- (TRASettingsZOrderLevel)initWithZOrderLevel:(double)a3
{
  v5.receiver = self;
  v5.super_class = TRASettingsZOrderLevel;
  result = [(TRASettingsZOrderLevel *)&v5 init];
  if (result)
  {
    result->_zOrderLevel = a3;
  }

  return result;
}

- (TRASettingsZOrderLevel)initWithZOrderLevelSettings:(id)a3
{
  [a3 zOrderLevel];

  return [(TRASettingsZOrderLevel *)self initWithZOrderLevel:?];
}

- (BOOL)isEqualToZOrderLevelSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [TRASettingsZOrderLevel isEqualToZOrderLevelSettings:];
    }

    if (self == v4)
    {
      v6 = 1;
    }

    else
    {
      zOrderLevel = self->_zOrderLevel;
      [(TRASettingsZOrderLevel *)v4 zOrderLevel];
      v6 = BSFloatEqualToFloat();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TRAMutableSettingsZOrderLevel allocWithZone:a3];

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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRASettingsZOrderLevel *)self isEqualToZOrderLevelSettings:v4];
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