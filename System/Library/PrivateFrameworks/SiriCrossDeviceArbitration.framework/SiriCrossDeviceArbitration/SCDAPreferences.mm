@interface SCDAPreferences
- (SCDAPreferences)initWithDeviceInstanceContext:(id)context preferences:(id)preferences;
- (unsigned)deviceGroup;
@end

@implementation SCDAPreferences

- (unsigned)deviceGroup
{
  myriadDeviceGroup = [(SCDAAssistantPreferences *)self->_pref myriadDeviceGroup];
  intValue = [myriadDeviceGroup intValue];

  return intValue;
}

- (SCDAPreferences)initWithDeviceInstanceContext:(id)context preferences:(id)preferences
{
  contextCopy = context;
  preferencesCopy = preferences;
  v14.receiver = self;
  v14.super_class = SCDAPreferences;
  v9 = [(SCDAPreferences *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instanceContext, context);
    if (preferencesCopy)
    {
      v11 = preferencesCopy;
    }

    else
    {
      v11 = [[SCDAAssistantPreferences alloc] initWithInstanceContext:v10->_instanceContext];
    }

    pref = v10->_pref;
    v10->_pref = v11;
  }

  return v10;
}

@end