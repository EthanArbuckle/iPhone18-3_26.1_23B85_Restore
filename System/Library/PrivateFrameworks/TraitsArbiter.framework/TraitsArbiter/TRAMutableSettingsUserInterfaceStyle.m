@interface TRAMutableSettingsUserInterfaceStyle
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setUserInterfaceStyleInputs:(id)a3;
@end

@implementation TRAMutableSettingsUserInterfaceStyle

- (void)setUserInterfaceStyleInputs:(id)a3
{
  v5 = a3;
  userInterfaceStyleInputs = self->super._userInterfaceStyleInputs;
  p_userInterfaceStyleInputs = &self->super._userInterfaceStyleInputs;
  if (userInterfaceStyleInputs != v5)
  {
    v8 = v5;
    objc_storeStrong(p_userInterfaceStyleInputs, a3);
    v5 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TRASettingsUserInterfaceStyle allocWithZone:a3];

  return [(TRASettingsUserInterfaceStyle *)v4 initWithUserInterfaceStyleSettings:self];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];

  return [v4 initWithUserInterfaceStyleSettings:self];
}

@end