@interface TRDeviceSetupConnectAction
- (NSString)deviceName;
- (NSString)networkPassword;
- (NSString)networkSSID;
- (TRDeviceSetupConnectAction)init;
- (TRDeviceSetupConnectAction)initWithDeviceName:(id)a3 networkSSID:(id)a4 networkPassword:(id)a5;
@end

@implementation TRDeviceSetupConnectAction

- (TRDeviceSetupConnectAction)init
{
  v3.receiver = self;
  v3.super_class = TRDeviceSetupConnectAction;
  return [(TRDeviceSetupAction *)&v3 _initWithActionType:@"connect" parameters:0];
}

- (TRDeviceSetupConnectAction)initWithDeviceName:(id)a3 networkSSID:(id)a4 networkPassword:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v12 = v11;
  if (v8)
  {
    [v11 setObject:v8 forKeyedSubscript:@"d"];
  }

  if (v9)
  {
    [v12 setObject:v9 forKeyedSubscript:@"ns"];
  }

  if (v10)
  {
    [v12 setObject:v10 forKeyedSubscript:@"np"];
  }

  v15.receiver = self;
  v15.super_class = TRDeviceSetupConnectAction;
  v13 = [(TRDeviceSetupAction *)&v15 _initWithActionType:@"connect" parameters:v12];

  return v13;
}

- (NSString)deviceName
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"d"];

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
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"ns"];

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
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"np"];

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