@interface RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithCode:(id)code;
+ (id)buildWithCode:(id)code name:(id)name description:(id)description action:(id)action;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithCode:(id)code name:(id)name description:(id)description action:(id)action
{
  actionCopy = action;
  descriptionCopy = description;
  nameCopy = name;
  codeCopy = code;
  v13 = objc_opt_new();
  [v13 setPayloadCode:codeCopy];

  [v13 setPayloadName:nameCopy];
  [v13 setPayloadDescription:descriptionCopy];

  if (actionCopy)
  {
    v14 = actionCopy;
  }

  else
  {
    v14 = @"Default";
  }

  [v13 setPayloadAction:v14];

  return v13;
}

+ (id)buildRequiredOnlyWithCode:(id)code
{
  codeCopy = code;
  v4 = objc_opt_new();
  [v4 setPayloadCode:codeCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Code" forKeyPath:@"payloadCode" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Name" forKeyPath:@"payloadName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Description" forKeyPath:@"payloadDescription" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Action" forKeyPath:@"payloadAction" isRequired:0 defaultValue:@"Default" error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadCode = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadCode];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Code" value:payloadCode isRequired:1 defaultValue:0];

  payloadName = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Name" value:payloadName isRequired:0 defaultValue:0];

  payloadDescription = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Description" value:payloadDescription isRequired:0 defaultValue:0];

  payloadAction = [(RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction *)self payloadAction];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Action" value:payloadAction isRequired:0 defaultValue:@"Default"];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_EAPSIMAKANotificationAction;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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