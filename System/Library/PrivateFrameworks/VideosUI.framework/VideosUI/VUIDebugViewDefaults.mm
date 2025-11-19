@interface VUIDebugViewDefaults
- (VUIDebugViewDefaults)initWithTitle:(id)a3 subtitle:(id)a4 domain:(id)a5 defaultName:(id)a6 BOOLType:(BOOL)a7;
- (void)setDefaultIntegerValue:(unint64_t)a3;
- (void)toggleDefaultBoolValue;
@end

@implementation VUIDebugViewDefaults

- (VUIDebugViewDefaults)initWithTitle:(id)a3 subtitle:(id)a4 domain:(id)a5 defaultName:(id)a6 BOOLType:(BOOL)a7
{
  v7 = a7;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = VUIDebugViewDefaults;
  v17 = [(VUIDebugViewDefaults *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, a3);
    objc_storeStrong(&v18->_subtitle, a4);
    objc_storeStrong(&v18->_domain, a5);
    objc_storeStrong(&v18->_defaultName, a6);
    v18->_integerValueType = !v7;
    if (!v7)
    {
      v18->_defaultIntegerValue = CFPreferencesGetAppIntegerValue(v16, v15, 0);
    }

    else
    {
      v18->_defaultBoolValue = CFPreferencesGetAppBooleanValue(v16, v15, 0) != 0;
    }
  }

  return v18;
}

- (void)toggleDefaultBoolValue
{
  defaultBoolValue = self->_defaultBoolValue;
  v4 = MEMORY[0x1E695E4D0];
  v5 = MEMORY[0x1E695E4C0];
  self->_defaultBoolValue = !defaultBoolValue;
  if (defaultBoolValue)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  CFPreferencesSetAppValue(self->_defaultName, *v6, self->_domain);
  domain = self->_domain;

  CFPreferencesAppSynchronize(domain);
}

- (void)setDefaultIntegerValue:(unint64_t)a3
{
  self->_defaultIntegerValue = a3;
  CFPreferencesSetAppValue(self->_defaultName, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?], self->_domain);
  domain = self->_domain;

  CFPreferencesAppSynchronize(domain);
}

@end