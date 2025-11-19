@interface SCDAPreferences
- (SCDAPreferences)initWithDeviceInstanceContext:(id)a3 preferences:(id)a4;
- (unsigned)deviceGroup;
@end

@implementation SCDAPreferences

- (unsigned)deviceGroup
{
  v2 = [(SCDAAssistantPreferences *)self->_pref myriadDeviceGroup];
  v3 = [v2 intValue];

  return v3;
}

- (SCDAPreferences)initWithDeviceInstanceContext:(id)a3 preferences:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = SCDAPreferences;
  v9 = [(SCDAPreferences *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_instanceContext, a3);
    if (v8)
    {
      v11 = v8;
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