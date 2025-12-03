@interface RMModelAccountMailDeclaration_IncomingServer
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithServerType:(id)type hostName:(id)name authenticationMethod:(id)method;
+ (id)buildWithServerType:(id)type hostName:(id)name port:(id)port authenticationMethod:(id)method authenticationCredentialsAssetReference:(id)reference imapPathPrefix:(id)prefix;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelAccountMailDeclaration_IncomingServer

+ (NSSet)allowedPayloadKeys
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"ServerType";
  v7[1] = @"HostName";
  v7[2] = @"Port";
  v7[3] = @"AuthenticationMethod";
  v7[4] = @"AuthenticationCredentialsAssetReference";
  v7[5] = @"IMAPPathPrefix";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithServerType:(id)type hostName:(id)name port:(id)port authenticationMethod:(id)method authenticationCredentialsAssetReference:(id)reference imapPathPrefix:(id)prefix
{
  prefixCopy = prefix;
  referenceCopy = reference;
  methodCopy = method;
  portCopy = port;
  nameCopy = name;
  typeCopy = type;
  v19 = objc_opt_new();
  [v19 setPayloadServerType:typeCopy];

  [v19 setPayloadHostName:nameCopy];
  [v19 setPayloadPort:portCopy];

  [v19 setPayloadAuthenticationMethod:methodCopy];
  [v19 setPayloadAuthenticationCredentialsAssetReference:referenceCopy];

  [v19 setPayloadIMAPPathPrefix:prefixCopy];

  return v19;
}

+ (id)buildRequiredOnlyWithServerType:(id)type hostName:(id)name authenticationMethod:(id)method
{
  methodCopy = method;
  nameCopy = name;
  typeCopy = type;
  v10 = objc_opt_new();
  [v10 setPayloadServerType:typeCopy];

  [v10 setPayloadHostName:nameCopy];
  [v10 setPayloadAuthenticationMethod:methodCopy];

  return v10;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAccountMailDeclaration_IncomingServer allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ServerType" forKeyPath:@"payloadServerType" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationMethod" forKeyPath:@"payloadAuthenticationMethod" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"IMAPPathPrefix" forKeyPath:@"payloadIMAPPathPrefix" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadServerType = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadServerType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ServerType" value:payloadServerType isRequired:1 defaultValue:0];

  payloadHostName = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HostName" value:payloadHostName isRequired:1 defaultValue:0];

  payloadPort = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Port" value:payloadPort isRequired:0 defaultValue:0];

  payloadAuthenticationMethod = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadAuthenticationMethod];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationMethod" value:payloadAuthenticationMethod isRequired:1 defaultValue:0];

  payloadAuthenticationCredentialsAssetReference = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationCredentialsAssetReference" value:payloadAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  payloadIMAPPathPrefix = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadIMAPPathPrefix];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IMAPPathPrefix" value:payloadIMAPPathPrefix isRequired:0 defaultValue:0];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RMModelAccountMailDeclaration_IncomingServer;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadServerType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadHostName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadPort copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadAuthenticationMethod copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_payloadAuthenticationCredentialsAssetReference copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSString *)self->_payloadIMAPPathPrefix copy];
  v16 = v4[7];
  v4[7] = v15;

  return v4;
}

@end