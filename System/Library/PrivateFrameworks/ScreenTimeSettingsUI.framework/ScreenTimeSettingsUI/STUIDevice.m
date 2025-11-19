@interface STUIDevice
- (STUIDevice)initWithName:(id)a3 identifier:(id)a4 coreDuetIdentifier:(id)a5 platform:(signed __int16)a6 hasDeviceActivity:(BOOL)a7 isLocalDevice:(BOOL)a8 lastFamilyCheckinDate:(id)a9;
@end

@implementation STUIDevice

- (STUIDevice)initWithName:(id)a3 identifier:(id)a4 coreDuetIdentifier:(id)a5 platform:(signed __int16)a6 hasDeviceActivity:(BOOL)a7 isLocalDevice:(BOOL)a8 lastFamilyCheckinDate:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a9;
  v27.receiver = self;
  v27.super_class = STUIDevice;
  v19 = [(STUIDevice *)&v27 init];
  if (v19)
  {
    v20 = [v15 copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [v16 copy];
    identifier = v19->_identifier;
    v19->_identifier = v22;

    v24 = [v17 copy];
    coreDuetIdentifier = v19->_coreDuetIdentifier;
    v19->_coreDuetIdentifier = v24;

    v19->_platform = a6;
    objc_storeStrong(&v19->_lastFamilyCheckinDate, a9);
    v19->_hasDeviceActivity = a7;
    v19->_isLocalDevice = a8;
  }

  return v19;
}

@end