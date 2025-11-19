@interface RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithCode:(id)a3;
+ (id)buildWithCode:(id)a3 name:(id)a4 description:(id)a5 action:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Code";
  v7[1] = @"Name";
  v7[2] = @"Description";
  v7[3] = @"Action";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCode:(id)a3 name:(id)a4 description:(id)a5 action:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadCode:v12];

  [v13 setPayloadName:v11];
  [v13 setPayloadDescription:v10];

  if (v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = @"Default";
  }

  [v13 setPayloadAction:v14];

  return v13;
}

+ (id)buildRequiredOnlyWithCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadCode:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"Code" forKeyPath:@"payloadCode" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Name" forKeyPath:@"payloadName" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Description" forKeyPath:@"payloadDescription" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Action" forKeyPath:@"payloadAction" isRequired:0 defaultValue:@"Default" error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadCode];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Code" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Name" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Description" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadAction];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Action" value:v8 isRequired:0 defaultValue:@"Default"];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadCode copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadDescription copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadAction copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end