@interface PSThirdPartyApp
- (LSApplicationProxy)proxy;
- (PSThirdPartyApp)initWithApplicationProxy:(id)a3;
- (PSThirdPartyApp)initWithApplicationRecord:(id)a3;
- (id)description;
- (id)localizedName;
@end

@implementation PSThirdPartyApp

- (PSThirdPartyApp)initWithApplicationProxy:(id)a3
{
  v4 = [a3 correspondingApplicationRecord];
  v5 = [(PSThirdPartyApp *)self initWithApplicationRecord:v4];

  return v5;
}

- (PSThirdPartyApp)initWithApplicationRecord:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PSThirdPartyApp;
  v6 = [(PSThirdPartyApp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, a3);
  }

  return v7;
}

- (LSApplicationProxy)proxy
{
  v3 = [(LSApplicationRecord *)self->_record bundleIdentifier];
  NSLog(&cfstr_OverrideWithRe.isa, v3);

  record = self->_record;

  return [(LSApplicationRecord *)record compatibilityObject];
}

- (id)localizedName
{
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    v4 = [(LSApplicationRecord *)self->_record localizedName];
    if (![v4 length])
    {
      v5 = [(LSApplicationRecord *)self->_record localizedName];

      v4 = v5;
    }

    v6 = self->_localizedName;
    self->_localizedName = v4;

    localizedName = self->_localizedName;
  }

  return localizedName;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    localizedName = @"(not loaded)";
  }

  return [v3 stringWithFormat:@"<%@: %p name: '%@'>", v4, self, localizedName];
}

@end