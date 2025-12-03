@interface RMModelAccountExchangeDeclaration_OAuth
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithEnabled:(id)enabled;
+ (id)buildWithEnabled:(id)enabled signInURL:(id)l tokenRequestURL:(id)rL;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
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

+ (id)buildWithEnabled:(id)enabled signInURL:(id)l tokenRequestURL:(id)rL
{
  rLCopy = rL;
  lCopy = l;
  enabledCopy = enabled;
  v10 = objc_opt_new();
  [v10 setPayloadEnabled:enabledCopy];

  [v10 setPayloadSignInURL:lCopy];
  [v10 setPayloadTokenRequestURL:rLCopy];

  return v10;
}

+ (id)buildRequiredOnlyWithEnabled:(id)enabled
{
  enabledCopy = enabled;
  v4 = objc_opt_new();
  [v4 setPayloadEnabled:enabledCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelAccountExchangeDeclaration_OAuth allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"Enabled" forKeyPath:@"payloadEnabled" isRequired:1 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"SignInURL" forKeyPath:@"payloadSignInURL" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"TokenRequestURL" forKeyPath:@"payloadTokenRequestURL" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadEnabled = [(RMModelAccountExchangeDeclaration_OAuth *)self payloadEnabled];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"Enabled" value:payloadEnabled isRequired:1 defaultValue:0];

  payloadSignInURL = [(RMModelAccountExchangeDeclaration_OAuth *)self payloadSignInURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"SignInURL" value:payloadSignInURL isRequired:0 defaultValue:0];

  payloadTokenRequestURL = [(RMModelAccountExchangeDeclaration_OAuth *)self payloadTokenRequestURL];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"TokenRequestURL" value:payloadTokenRequestURL isRequired:0 defaultValue:0];

  v8 = [v4 copy];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = RMModelAccountExchangeDeclaration_OAuth;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:zone];
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