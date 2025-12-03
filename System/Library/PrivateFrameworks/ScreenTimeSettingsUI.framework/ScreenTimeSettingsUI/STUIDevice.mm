@interface STUIDevice
- (STUIDevice)initWithName:(id)name identifier:(id)identifier coreDuetIdentifier:(id)duetIdentifier platform:(signed __int16)platform hasDeviceActivity:(BOOL)activity isLocalDevice:(BOOL)device lastFamilyCheckinDate:(id)date;
@end

@implementation STUIDevice

- (STUIDevice)initWithName:(id)name identifier:(id)identifier coreDuetIdentifier:(id)duetIdentifier platform:(signed __int16)platform hasDeviceActivity:(BOOL)activity isLocalDevice:(BOOL)device lastFamilyCheckinDate:(id)date
{
  nameCopy = name;
  identifierCopy = identifier;
  duetIdentifierCopy = duetIdentifier;
  dateCopy = date;
  v27.receiver = self;
  v27.super_class = STUIDevice;
  v19 = [(STUIDevice *)&v27 init];
  if (v19)
  {
    v20 = [nameCopy copy];
    name = v19->_name;
    v19->_name = v20;

    v22 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v22;

    v24 = [duetIdentifierCopy copy];
    coreDuetIdentifier = v19->_coreDuetIdentifier;
    v19->_coreDuetIdentifier = v24;

    v19->_platform = platform;
    objc_storeStrong(&v19->_lastFamilyCheckinDate, date);
    v19->_hasDeviceActivity = activity;
    v19->_isLocalDevice = device;
  }

  return v19;
}

@end