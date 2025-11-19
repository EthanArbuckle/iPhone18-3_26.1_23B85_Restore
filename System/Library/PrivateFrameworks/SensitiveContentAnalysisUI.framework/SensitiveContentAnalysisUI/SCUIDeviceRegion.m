@interface SCUIDeviceRegion
- (SCUIDeviceRegion)initWithIdentifier:(id)a3 displayName:(id)a4;
@end

@implementation SCUIDeviceRegion

- (SCUIDeviceRegion)initWithIdentifier:(id)a3 displayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SCUIDeviceRegion;
  v8 = [(SCUIDeviceRegion *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    displayName = v8->_displayName;
    v8->_displayName = v11;
  }

  return v8;
}

@end