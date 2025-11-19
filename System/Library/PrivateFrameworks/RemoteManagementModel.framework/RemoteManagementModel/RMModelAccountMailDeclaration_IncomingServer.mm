@interface RMModelAccountMailDeclaration_IncomingServer
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithServerType:(id)a3 hostName:(id)a4 authenticationMethod:(id)a5;
+ (id)buildWithServerType:(id)a3 hostName:(id)a4 port:(id)a5 authenticationMethod:(id)a6 authenticationCredentialsAssetReference:(id)a7 imapPathPrefix:(id)a8;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithServerType:(id)a3 hostName:(id)a4 port:(id)a5 authenticationMethod:(id)a6 authenticationCredentialsAssetReference:(id)a7 imapPathPrefix:(id)a8
{
  v13 = a8;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = objc_opt_new();
  [v19 setPayloadServerType:v18];

  [v19 setPayloadHostName:v17];
  [v19 setPayloadPort:v16];

  [v19 setPayloadAuthenticationMethod:v15];
  [v19 setPayloadAuthenticationCredentialsAssetReference:v14];

  [v19 setPayloadIMAPPathPrefix:v13];

  return v19;
}

+ (id)buildRequiredOnlyWithServerType:(id)a3 hostName:(id)a4 authenticationMethod:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setPayloadServerType:v9];

  [v10 setPayloadHostName:v8];
  [v10 setPayloadAuthenticationMethod:v7];

  return v10;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAccountMailDeclaration_IncomingServer allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"ServerType" forKeyPath:@"payloadServerType" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"AuthenticationMethod" forKeyPath:@"payloadAuthenticationMethod" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"IMAPPathPrefix" forKeyPath:@"payloadIMAPPathPrefix" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadServerType];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ServerType" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HostName" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Port" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadAuthenticationMethod];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationMethod" value:v8 isRequired:1 defaultValue:0];

  v9 = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationCredentialsAssetReference" value:v9 isRequired:0 defaultValue:0];

  v10 = [(RMModelAccountMailDeclaration_IncomingServer *)self payloadIMAPPathPrefix];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"IMAPPathPrefix" value:v10 isRequired:0 defaultValue:0];

  v11 = [v4 copy];

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v18.receiver = self;
  v18.super_class = RMModelAccountMailDeclaration_IncomingServer;
  v4 = [(RMModelPayloadBase *)&v18 copyWithZone:a3];
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