@interface WBDeviceParameters
+ (id)localDeviceWithTitle:(id)title creationDeviceIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier;
+ (id)remoteDeviceWithTitle:(id)title deviceIdentifier:(id)identifier;
@end

@implementation WBDeviceParameters

+ (id)remoteDeviceWithTitle:(id)title deviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  titleCopy = title;
  v7 = objc_alloc_init(WBDeviceParameters);
  [(WBDeviceParameters *)v7 setRemoteDevice:1];
  [(WBDeviceParameters *)v7 setTitle:titleCopy];

  [(WBDeviceParameters *)v7 setDeviceIdentifier:identifierCopy];

  return v7;
}

+ (id)localDeviceWithTitle:(id)title creationDeviceIdentifier:(id)identifier deviceIdentifier:(id)deviceIdentifier
{
  deviceIdentifierCopy = deviceIdentifier;
  identifierCopy = identifier;
  titleCopy = title;
  v10 = objc_alloc_init(WBDeviceParameters);
  [(WBDeviceParameters *)v10 setTitle:titleCopy];

  [(WBDeviceParameters *)v10 setDeviceIdentifier:deviceIdentifierCopy];
  [(WBDeviceParameters *)v10 setCreationDeviceIdentifier:identifierCopy];

  return v10;
}

@end