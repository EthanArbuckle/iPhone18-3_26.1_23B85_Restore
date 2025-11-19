@interface RMModelNetworkWiFiDeclaration_Proxy
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithType:(id)a3 server:(id)a4 serverPort:(id)a5 proxyAuthenticationCredentialsAssetReference:(id)a6 PACURL:(id)a7 pacFallbackAllowed:(id)a8;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithType:(id)a3 server:(id)a4 serverPort:(id)a5 proxyAuthenticationCredentialsAssetReference:(id)a6 PACURL:(id)a7 pacFallbackAllowed:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_new();
  v20 = v19;
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = @"None";
  }

  [v19 setPayloadType:v21];

  [v20 setPayloadServer:v17];
  [v20 setPayloadServerPort:v16];

  [v20 setPayloadProxyAuthenticationCredentialsAssetReference:v15];
  [v20 setPayloadPACURL:v14];

  if (v13)
  {
    v22 = v13;
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

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelNetworkWiFiDeclaration_Proxy allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Type" forKeyPath:@"payloadType" isRequired:0 defaultValue:@"None" error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"Server" forKeyPath:@"payloadServer" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"ServerPort" forKeyPath:@"payloadServerPort" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ProxyAuthenticationCredentialsAssetReference" forKeyPath:@"payloadProxyAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"PACURL" forKeyPath:@"payloadPACURL" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"PACFallbackAllowed" forKeyPath:@"payloadPACFallbackAllowed" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Type" value:v5 isRequired:0 defaultValue:@"None"];

  v6 = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadServer];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Server" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadServerPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"ServerPort" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadProxyAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ProxyAuthenticationCredentialsAssetReference" value:v8 isRequired:0 defaultValue:0];

  v9 = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadPACURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"PACURL" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelNetworkWiFiDeclaration_Proxy *)self payloadPACFallbackAllowed];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"PACFallbackAllowed" value:v10 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = RMModelNetworkWiFiDeclaration_Proxy;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:a3];
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