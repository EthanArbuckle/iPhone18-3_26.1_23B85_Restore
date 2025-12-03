@interface TRAMutableSettingsUserInterfaceStyle
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setUserInterfaceStyleInputs:(id)inputs;
@end

@implementation TRAMutableSettingsUserInterfaceStyle

- (void)setUserInterfaceStyleInputs:(id)inputs
{
  inputsCopy = inputs;
  userInterfaceStyleInputs = self->super._userInterfaceStyleInputs;
  p_userInterfaceStyleInputs = &self->super._userInterfaceStyleInputs;
  if (userInterfaceStyleInputs != inputsCopy)
  {
    v8 = inputsCopy;
    objc_storeStrong(p_userInterfaceStyleInputs, inputs);
    inputsCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TRASettingsUserInterfaceStyle allocWithZone:zone];

  return [(TRASettingsUserInterfaceStyle *)v4 initWithUserInterfaceStyleSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];

  return [v4 initWithUserInterfaceStyleSettings:self];
}

@end