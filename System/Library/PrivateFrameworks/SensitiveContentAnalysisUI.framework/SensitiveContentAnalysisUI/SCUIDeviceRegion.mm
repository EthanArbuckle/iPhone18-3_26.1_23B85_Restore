@interface SCUIDeviceRegion
- (SCUIDeviceRegion)initWithIdentifier:(id)identifier displayName:(id)name;
@end

@implementation SCUIDeviceRegion

- (SCUIDeviceRegion)initWithIdentifier:(id)identifier displayName:(id)name
{
  identifierCopy = identifier;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = SCUIDeviceRegion;
  v8 = [(SCUIDeviceRegion *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [nameCopy copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;
  }

  return v8;
}

@end