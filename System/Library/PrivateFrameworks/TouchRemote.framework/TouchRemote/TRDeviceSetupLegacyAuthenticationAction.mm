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
  propertyListRepresentation = [(TRDeviceSetupAction *)&v11 propertyListRepresentation];
  v4 = [propertyListRepresentation mutableCopy];

  [v4 setObject:@"auth" forKeyedSubscript:@"a"];
  v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  deviceGUID = [(TRDeviceSetupLegacyAuthenticationAction *)self deviceGUID];
  [v5 setObject:deviceGUID forKeyedSubscript:@"g"];

  userAgent = [(TRDeviceSetupLegacyAuthenticationAction *)self userAgent];
  [v5 setObject:userAgent forKeyedSubscript:@"ua"];

  deviceName = [(TRDeviceSetupLegacyAuthenticationAction *)self deviceName];
  [v5 setObject:deviceName forKeyedSubscript:@"d"];

  [v4 setObject:v5 forKeyedSubscript:@"p"];
  v9 = [v4 copy];

  return v9;
}

- (NSString)deviceGUID
{
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"g"];

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
  parameters = [(TRDeviceSetupAction *)self parameters];
  v3 = [parameters objectForKeyedSubscript:@"ua"];

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

@end