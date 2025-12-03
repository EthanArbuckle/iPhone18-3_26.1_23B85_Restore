@interface VUIDebugViewDefaults
- (VUIDebugViewDefaults)initWithTitle:(id)title subtitle:(id)subtitle domain:(id)domain defaultName:(id)name BOOLType:(BOOL)type;
- (void)setDefaultIntegerValue:(unint64_t)value;
- (void)toggleDefaultBoolValue;
@end

@implementation VUIDebugViewDefaults

- (VUIDebugViewDefaults)initWithTitle:(id)title subtitle:(id)subtitle domain:(id)domain defaultName:(id)name BOOLType:(BOOL)type
{
  typeCopy = type;
  titleCopy = title;
  subtitleCopy = subtitle;
  domainCopy = domain;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = VUIDebugViewDefaults;
  v17 = [(VUIDebugViewDefaults *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_title, title);
    objc_storeStrong(&v18->_subtitle, subtitle);
    objc_storeStrong(&v18->_domain, domain);
    objc_storeStrong(&v18->_defaultName, name);
    v18->_integerValueType = !typeCopy;
    if (!typeCopy)
    {
      v18->_defaultIntegerValue = CFPreferencesGetAppIntegerValue(nameCopy, domainCopy, 0);
    }

    else
    {
      v18->_defaultBoolValue = CFPreferencesGetAppBooleanValue(nameCopy, domainCopy, 0) != 0;
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

- (void)setDefaultIntegerValue:(unint64_t)value
{
  self->_defaultIntegerValue = value;
  CFPreferencesSetAppValue(self->_defaultName, [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?], self->_domain);
  domain = self->_domain;

  CFPreferencesAppSynchronize(domain);
}

@end