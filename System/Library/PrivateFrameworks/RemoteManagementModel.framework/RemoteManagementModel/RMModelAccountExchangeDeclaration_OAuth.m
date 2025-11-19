@interface RMModelAccountExchangeDeclaration_OAuth
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)a3;
+ (id)buildWithEnabled:(id)a3 signInURL:(id)a4 tokenRequestURL:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMModelAccountExchangeDeclaration_OAuth

+ (NSSet)allowedPayloadKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Enabled";
  v7[1] = @"SignInURL";
  v7[2] = @"TokenRequestURL";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithEnabled:(id)a3 signInURL:(id)a4 tokenRequestURL:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setPayloadEnabled:v9];

  [v10 setPayloadSignInURL:v8];
  [v10 setPayloadTokenRequestURL:v7];

  return v10;
}

+ (id)buildRequiredOnlyWithEnabled:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setPayloadEnabled:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelAccountExchangeDeclaration_OAuth allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:1 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"SignInURL" forKeyPath:@"payloadSignInURL" isRequired:0 defaultValue:0 error:a5]&& [(RMModelPayloadBase *)self loadStringFromDictionary:v7 usingKey:@"TokenRequestURL" forKeyPath:@"payloadTokenRequestURL" isRequired:0 defaultValue:0 error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelAccountExchangeDeclaration_OAuth *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:v5 isRequired:1 defaultValue:0];

  v6 = [(RMModelAccountExchangeDeclaration_OAuth *)self payloadSignInURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"SignInURL" value:v6 isRequired:0 defaultValue:0];

  v7 = [(RMModelAccountExchangeDeclaration_OAuth *)self payloadTokenRequestURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"TokenRequestURL" value:v7 isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMModelAccountExchangeDeclaration_OAuth;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadEnabled copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadSignInURL copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadTokenRequestURL copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end