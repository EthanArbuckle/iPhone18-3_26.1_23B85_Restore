@interface RMModelAccountMailDeclaration_OutgoingServer
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithHostName:(id)name authenticationMethod:(id)method;
+ (id)buildWithHostName:(id)name port:(id)port authenticationMethod:(id)method authenticationCredentialsAssetReference:(id)reference;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAccountMailDeclaration_OutgoingServer

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"HostName";
  v7[1] = @"Port";
  v7[2] = @"AuthenticationMethod";
  v7[3] = @"AuthenticationCredentialsAssetReference";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithHostName:(id)name port:(id)port authenticationMethod:(id)method authenticationCredentialsAssetReference:(id)reference
{
  referenceCopy = reference;
  methodCopy = method;
  portCopy = port;
  nameCopy = name;
  v13 = objc_opt_new();
  [v13 setPayloadHostName:nameCopy];

  [v13 setPayloadPort:portCopy];
  [v13 setPayloadAuthenticationMethod:methodCopy];

  [v13 setPayloadAuthenticationCredentialsAssetReference:referenceCopy];

  return v13;
}

+ (id)buildRequiredOnlyWithHostName:(id)name authenticationMethod:(id)method
{
  methodCopy = method;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setPayloadHostName:nameCopy];

  [v7 setPayloadAuthenticationMethod:methodCopy];

  return v7;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAccountMailDeclaration_OutgoingServer allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationMethod" forKeyPath:@"payloadAuthenticationMethod" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadHostName = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HostName" value:payloadHostName isRequired:1 defaultValue:0];

  payloadPort = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Port" value:payloadPort isRequired:0 defaultValue:0];

  payloadAuthenticationMethod = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadAuthenticationMethod];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationMethod" value:payloadAuthenticationMethod isRequired:1 defaultValue:0];

  payloadAuthenticationCredentialsAssetReference = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationCredentialsAssetReference" value:payloadAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelAccountMailDeclaration_OutgoingServer;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadHostName copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadPort copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadAuthenticationMethod copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end