@interface TRAPreferencesZOrderLevel
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToZOrderLevelPreferences:(id)a3;
- (TRAPreferencesZOrderLevel)initWithPreferredZOrderLevel:(double)a3;
- (TRAPreferencesZOrderLevel)initWithZOrderLevelPreferences:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAPreferencesZOrderLevel

- (TRAPreferencesZOrderLevel)initWithPreferredZOrderLevel:(double)a3
{
  v5.receiver = self;
  v5.super_class = TRAPreferencesZOrderLevel;
  result = [(TRAPreferencesZOrderLevel *)&v5 init];
  if (result)
  {
    result->_preferredZOrderLevel = a3;
  }

  return result;
}

- (TRAPreferencesZOrderLevel)initWithZOrderLevelPreferences:(id)a3
{
  [a3 preferredZOrderLevel];

  return [(TRAPreferencesZOrderLevel *)self initWithPreferredZOrderLevel:?];
}

- (BOOL)isEqualToZOrderLevelPreferences:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(TRAPreferencesZOrderLevel *)a2 isEqualToZOrderLevelPreferences:?];
    }

    if (self == v5)
    {
      v7 = 1;
    }

    else
    {
      preferredZOrderLevel = self->_preferredZOrderLevel;
      [(TRAPreferencesZOrderLevel *)v5 preferredZOrderLevel];
      v7 = BSFloatEqualToFloat();
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
  v4 = [TRAMutablePreferencesZOrderLevel allocWithZone:a3];

  return [(TRAPreferencesZOrderLevel *)v4 initWithZOrderLevelPreferences:self];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAPreferencesZOrderLevel *)self isEqualToZOrderLevelPreferences:v4];
  }

  return v5;
}

- (id)succinctDescription
{
  v2 = [(TRAPreferencesZOrderLevel *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_preferredZOrderLevel == 1.79769313e308)
  {
    [v3 appendString:@"max" withName:@"preferred"];
  }

  else
  {
    v5 = [v3 appendFloat:@"preferred" withName:1 decimalPrecision:?];
  }

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(TRAPreferencesZOrderLevel *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)isEqualToZOrderLevelPreferences:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAPreferences.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"preferences == nil || [preferences isKindOfClass:[TRAPreferencesZOrderLevel class]]"}];
}

@end