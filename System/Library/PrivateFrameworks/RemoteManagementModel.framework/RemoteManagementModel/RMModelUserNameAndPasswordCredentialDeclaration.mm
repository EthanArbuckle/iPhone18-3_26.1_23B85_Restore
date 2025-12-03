@interface RMModelUserNameAndPasswordCredentialDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithUserName:(id)name;
+ (id)buildWithUserName:(id)name password:(id)password;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelUserNameAndPasswordCredentialDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"UserName";
  v7[1] = @"Password";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithUserName:(id)name password:(id)password
{
  passwordCopy = password;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setPayloadUserName:nameCopy];

  [v7 setPayloadPassword:passwordCopy];

  return v7;
}

+ (id)buildRequiredOnlyWithUserName:(id)name
{
  nameCopy = name;
  v4 = objc_opt_new();
  [v4 setPayloadUserName:nameCopy];

  return v4;
}

- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error
{
  dictionaryCopy = dictionary;
  v8 = MEMORY[0x277CBEB58];
  allKeys = [dictionaryCopy allKeys];
  v10 = [v8 setWithArray:allKeys];

  v11 = +[RMModelUserNameAndPasswordCredentialDeclaration allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  if ([(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"UserName" forKeyPath:@"payloadUserName" isRequired:1 defaultValue:0 error:error])
  {
    v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"Password" forKeyPath:@"payloadPassword" isRequired:0 defaultValue:0 error:error];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadUserName = [(RMModelUserNameAndPasswordCredentialDeclaration *)self payloadUserName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"UserName" value:payloadUserName isRequired:1 defaultValue:0];

  payloadPassword = [(RMModelUserNameAndPasswordCredentialDeclaration *)self payloadPassword];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"Password" value:payloadPassword isRequired:0 defaultValue:0];

  v7 = [v4 copy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = RMModelUserNameAndPasswordCredentialDeclaration;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadUserName copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadPassword copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end