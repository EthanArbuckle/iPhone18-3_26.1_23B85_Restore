@interface TRDeviceSetupLegacyAuthenticationAction
- (NSString)deviceGUID;
- (NSString)userAgent;
- (id)deviceName;
- (id)propertyListRepresentation;
@end

@implementation TRDeviceSetupLegacyAuthenticationAction

- (id)propertyListRepresentation
{
  v11.receiver = self;
  v11.super_class = TRDeviceSetupLegacyAuthenticationAction;
  v3 = [(TRDeviceSetupAction *)&v11 propertyListRepresentation];
  v4 = [v3 mutableCopy];

  [v4 setObject:@"auth" forKeyedSubscript:@"a"];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v6 = [(TRDeviceSetupLegacyAuthenticationAction *)self deviceGUID];
  [v5 setObject:v6 forKeyedSubscript:@"g"];

  v7 = [(TRDeviceSetupLegacyAuthenticationAction *)self userAgent];
  [v5 setObject:v7 forKeyedSubscript:@"ua"];

  v8 = [(TRDeviceSetupLegacyAuthenticationAction *)self deviceName];
  [v5 setObject:v8 forKeyedSubscript:@"d"];

  [v4 setObject:v5 forKeyedSubscript:@"p"];
  v9 = [v4 copy];

  return v9;
}

- (NSString)deviceGUID
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"g"];

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

- (NSString)userAgent
{
  v2 = [(TRDeviceSetupAction *)self parameters];
  v3 = [v2 objectForKeyedSubscript:@"ua"];

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

- (id)deviceName
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

@end