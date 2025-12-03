@interface RMModelNetworkWiFiDeclaration_Proxy
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithType:(id)type server:(id)server serverPort:(id)port proxyAuthenticationCredentialsAssetReference:(id)reference PACURL:(id)l pacFallbackAllowed:(id)allowed;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkWiFiDeclaration_Proxy

+ (NSSet)allowedPayloadKeys
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Type";
  v7[1] = @"Server";
  v7[2] = @"ServerPort";
  v7[3] = @"ProxyAuthenticationCredentialsAssetReference";
  v7[4] = @"PACURL";
  v7[5] = @"PACFallbackAllowed";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithType:(id)type server:(id)server serverPort:(id)port proxyAuthenticationCredentialsAssetReference:(id)reference PACURL:(id)l pacFallbackAllowed:(id)allowed
{
  allowedCopy = allowed;
  lCopy = l;
  referenceCopy = reference;
  portCopy = port;
  serverCopy = server;
  typeCopy = type;
  v19 = objc_opt_new();
  v20 = v19;
  if (typeCopy)
  {
    v21 = typeCopy;
  }

  else
  {
    v21 = @"None";
  }

  [v19 setPayloadType:v21];

  [v20 setPayloadServer:serverCopy];
  [v20 setPayloadServerPort:portCopy];

  [v20 setPayloadProxyAuthenticationCredentialsAssetReference:referenceCopy];
  [v20 setPayloadPACURL:lCopy];

  if (allowedCopy)
  {
    v22 = allowedCopy;
  }

  else
  {
    v22 = MEMORY[0x277CBEC28];
  }

  [v20 setPayloadPACFallbackAllowed:v22];

  return v20;
}

+ (id)buildRequiredOnly
{
  v2 = objc_opt_new();

  return v2;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelNetworkWiFiDeclaration_Proxy allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Type" forKeyPath:@"payloadType" isRequired:0 defaultValue:@"None" error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Server" forKeyPath:@"payloadServer" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:dictionaryCopy usingKey:@"ServerPort" forKeyPath:@"payloadServerPort" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ProxyAuthenticationCredentialsAssetReference" forKeyPath:@"payloadProxyAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"PACURL" forKeyPath:@"payloadPACURL" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"PACFallbackAllowed" forKeyPath:@"payloadPACFallbackAllowed" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadType = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Type" value:payloadType isRequired:0 defaultValue:@"None"];

  payloadServer = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadServer];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Server" value:payloadServer isRequired:0 defaultValue:0];

  payloadServerPort = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadServerPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"ServerPort" value:payloadServerPort isRequired:0 defaultValue:0];

  payloadProxyAuthenticationCredentialsAssetReference = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadProxyAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ProxyAuthenticationCredentialsAssetReference" value:payloadProxyAuthenticationCredentialsAssetReference isRequired:0 defaultValue:0];

  payloadPACURL = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadPACURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PACURL" value:payloadPACURL isRequired:0 defaultValue:0];

  payloadPACFallbackAllowed = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadPACFallbackAllowed];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PACFallbackAllowed" value:payloadPACFallbackAllowed isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18.receiver = self;
  v18.super_class = RMModelNetworkWiFiDeclaration_Proxy;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadServer copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadServerPort copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadProxyAuthenticationCredentialsAssetReference copy];
  v12 = v4[5];
  v4[5] = v11;

  v13 = [(NSString *)self->_payloadPACURL copy];
  v14 = v4[6];
  v4[6] = v13;

  v15 = [(NSNumber *)self->_payloadPACFallbackAllowed copy];
  v16 = v4[7];
  v4[7] = v15;

  return v4;
}

@end