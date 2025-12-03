@interface PSThirdPartyApp
- (LSApplicationProxy)proxy;
- (PSThirdPartyApp)initWithApplicationProxy:(id)proxy;
- (PSThirdPartyApp)initWithApplicationRecord:(id)record;
- (id)description;
- (id)localizedName;
@end

@implementation PSThirdPartyApp

- (PSThirdPartyApp)initWithApplicationProxy:(id)proxy
{
  correspondingApplicationRecord = [proxy correspondingApplicationRecord];
  v5 = [(PSThirdPartyApp *)self initWithApplicationRecord:correspondingApplicationRecord];

  return v5;
}

- (PSThirdPartyApp)initWithApplicationRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = PSThirdPartyApp;
  v6 = [(PSThirdPartyApp *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_record, record);
  }

  return v7;
}

- (LSApplicationProxy)proxy
{
  bundleIdentifier = [(LSApplicationRecord *)self->_record bundleIdentifier];
  NSLog(&cfstr_OverrideWithRe.isa, bundleIdentifier);

  record = self->_record;

  return [(LSApplicationRecord *)record compatibilityObject];
}

- (id)localizedName
{
  localizedName = self->_localizedName;
  if (!localizedName)
  {
    localizedName = [(LSApplicationRecord *)self->_record localizedName];
    if (![localizedName length])
    {
      localizedName2 = [(LSApplicationRecord *)self->_record localizedName];

      localizedName = localizedName2;
    }

    v6 = self->_localizedName;
    self->_localizedName = localizedName;

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