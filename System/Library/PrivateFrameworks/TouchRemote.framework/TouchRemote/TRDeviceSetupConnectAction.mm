@interface TRDeviceSetupConnectAction
- (NSString)deviceName;
- (NSString)networkPassword;
- (NSString)networkSSID;
- (TRDeviceSetupConnectAction)init;
- (TRDeviceSetupConnectAction)initWithDeviceName:(id)name networkSSID:(id)d networkPassword:(id)password;
@end

@implementation TRDeviceSetupConnectAction

- (TRDeviceSetupConnectAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupConnectAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"connect" parameters:0];
}

- (TRDeviceSetupConnectAction)initWithDeviceName:(id)name networkSSID:(id)d networkPassword:(id)password
{
  nameCopy = name;
  dCopy = d;
  passwordCopy = password;
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v12 = v11;
  if (nameCopy)
  {
    [v11 setObject:nameCopy forKeyedSubscript:@"d"];
  }

  if (dCopy)
  {
    [v12 setObject:dCopy forKeyedSubscript:@"ns"];
  }

  if (passwordCopy)
  {
    [v12 setObject:passwordCopy forKeyedSubscript:@"np"];
  }

  v15.receiver = self;
  v15.super_class = TRDeviceSetupConnectAction;
  v13 = [(TRDeviceSetupAction *)&v15 _initWithActionType:@"connect" parameters:v12];

  return v13;
}

- (NSString)deviceName
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"d"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)networkSSID
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ns"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)networkPassword
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"np"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

@end