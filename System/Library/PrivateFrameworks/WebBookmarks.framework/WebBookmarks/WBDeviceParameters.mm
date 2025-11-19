@interface WBDeviceParameters
+ (id)localDeviceWithTitle:(id)a3 creationDeviceIdentifier:(id)a4 deviceIdentifier:(id)a5;
+ (id)remoteDeviceWithTitle:(id)a3 deviceIdentifier:(id)a4;
@end

@implementation WBDeviceParameters

+ (id)remoteDeviceWithTitle:(id)a3 deviceIdentifier:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(WBDeviceParameters);
  [(WBDeviceParameters *)v7 setRemoteDevice:1];
  [(WBDeviceParameters *)v7 setTitle:v6];

  [(WBDeviceParameters *)v7 setDeviceIdentifier:v5];

  return v7;
}

+ (id)localDeviceWithTitle:(id)a3 creationDeviceIdentifier:(id)a4 deviceIdentifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_alloc_init(WBDeviceParameters);
  [(WBDeviceParameters *)v10 setTitle:v9];

  [(WBDeviceParameters *)v10 setDeviceIdentifier:v7];
  [(WBDeviceParameters *)v10 setCreationDeviceIdentifier:v8];

  return v10;
}

@end