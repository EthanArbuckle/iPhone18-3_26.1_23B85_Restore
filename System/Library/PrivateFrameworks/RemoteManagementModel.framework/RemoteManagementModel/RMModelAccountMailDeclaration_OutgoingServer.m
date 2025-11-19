@interface RMModelAccountMailDeclaration_OutgoingServer
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithHostName:(id)a3 authenticationMethod:(id)a4;
+ (id)buildWithHostName:(id)a3 port:(id)a4 authenticationMethod:(id)a5 authenticationCredentialsAssetReference:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithHostName:(id)a3 port:(id)a4 authenticationMethod:(id)a5 authenticationCredentialsAssetReference:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  [v13 setPayloadHostName:v12];

  [v13 setPayloadPort:v11];
  [v13 setPayloadAuthenticationMethod:v10];

  [v13 setPayloadAuthenticationCredentialsAssetReference:v9];

  return v13;
}

+ (id)buildRequiredOnlyWithHostName:(id)a3 authenticationMethod:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadHostName:v6];

  [v7 setPayloadAuthenticationMethod:v5];

  return v7;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAccountMailDeclaration_OutgoingServer allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"HostName" forKeyPath:@"payloadHostName" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadIntegerFromDictionary:v7 usingKey:@"Port" forKeyPath:@"payloadPort" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"AuthenticationMethod" forKeyPath:@"payloadAuthenticationMethod" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"AuthenticationCredentialsAssetReference" forKeyPath:@"payloadAuthenticationCredentialsAssetReference" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadHostName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"HostName" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadPort];
  [(RMModelPayloadBase *)self serializeIntegerIntoDictionary:v4 usingKey:@"Port" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadAuthenticationMethod];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationMethod" value:v7 isRequired:1 defaultValue:0];

  v8 = [(RMModelAccountMailDeclaration_OutgoingServer *)self payloadAuthenticationCredentialsAssetReference];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"AuthenticationCredentialsAssetReference" value:v8 isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelAccountMailDeclaration_OutgoingServer;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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