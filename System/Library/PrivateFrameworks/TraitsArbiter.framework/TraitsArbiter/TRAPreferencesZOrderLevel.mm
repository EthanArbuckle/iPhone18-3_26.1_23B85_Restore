@interface TRAPreferencesZOrderLevel
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToZOrderLevelPreferences:(id)preferences;
- (TRAPreferencesZOrderLevel)initWithPreferredZOrderLevel:(double)level;
- (TRAPreferencesZOrderLevel)initWithZOrderLevelPreferences:(id)preferences;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation TRAPreferencesZOrderLevel

- (TRAPreferencesZOrderLevel)initWithPreferredZOrderLevel:(double)level
{
  v5.receiver = self;
  v5.super_class = TRAPreferencesZOrderLevel;
  result = [(TRAPreferencesZOrderLevel *)&v5 init];
  if (result)
  {
    result->_preferredZOrderLevel = level;
  }

  return result;
}

- (TRAPreferencesZOrderLevel)initWithZOrderLevelPreferences:(id)preferences
{
  [preferences preferredZOrderLevel];

  return [(TRAPreferencesZOrderLevel *)self initWithPreferredZOrderLevel:?];
}

- (BOOL)isEqualToZOrderLevelPreferences:(id)preferences
{
  preferencesCopy = preferences;
  if (preferencesCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(TRAPreferencesZOrderLevel *)a2 isEqualToZOrderLevelPreferences:?];
    }

    if (self == preferencesCopy)
    {
      v7 = 1;
    }

    else
    {
      preferredZOrderLevel = self->_preferredZOrderLevel;
      [(TRAPreferencesZOrderLevel *)preferencesCopy preferredZOrderLevel];
      v7 = BSFloatEqualToFloat();
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
  v4 = [TRAMutablePreferencesZOrderLevel allocWithZone:zone];

  return [(TRAPreferencesZOrderLevel *)v4 initWithZOrderLevelPreferences:self];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRAPreferencesZOrderLevel *)self isEqualToZOrderLevelPreferences:equalCopy];
  }

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(TRAPreferencesZOrderLevel *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
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

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(TRAPreferencesZOrderLevel *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)isEqualToZOrderLevelPreferences:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"TRAPreferences.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"preferences == nil || [preferences isKindOfClass:[TRAPreferencesZOrderLevel class]]"}];
}

@end