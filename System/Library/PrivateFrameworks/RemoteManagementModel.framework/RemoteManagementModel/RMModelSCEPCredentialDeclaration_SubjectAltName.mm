@interface RMModelSCEPCredentialDeclaration_SubjectAltName
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithRfc822Name:(id)name dnsName:(id)dnsName uniformResourceIdentifier:(id)identifier ntPrincipalName:(id)principalName;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelSCEPCredentialDeclaration_SubjectAltName

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"rfc822Name";
  v7[1] = @"dNSName";
  v7[2] = @"uniformResourceIdentifier";
  v7[3] = @"ntPrincipalName";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithRfc822Name:(id)name dnsName:(id)dnsName uniformResourceIdentifier:(id)identifier ntPrincipalName:(id)principalName
{
  principalNameCopy = principalName;
  identifierCopy = identifier;
  dnsNameCopy = dnsName;
  nameCopy = name;
  v13 = objc_opt_new();
  [v13 setPayloadRfc822Name:nameCopy];

  [v13 setPayloadDNSName:dnsNameCopy];
  [v13 setPayloadUniformResourceIdentifier:identifierCopy];

  [v13 setPayloadNtPrincipalName:principalNameCopy];

  return v13;
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

  v11 = +[RMModelSCEPCredentialDeclaration_SubjectAltName allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"rfc822Name" forKeyPath:@"payloadRfc822Name" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"dNSName" forKeyPath:@"payloadDNSName" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"uniformResourceIdentifier" forKeyPath:@"payloadUniformResourceIdentifier" isRequired:0 defaultValue:0 error:error]&& [(RMModelPayloadBase *)self loadStringFromDictionary:dictionaryCopy usingKey:@"ntPrincipalName" forKeyPath:@"payloadNtPrincipalName" isRequired:0 defaultValue:0 error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadRfc822Name = [(RMModelSCEPCredentialDeclaration_SubjectAltName *)self payloadRfc822Name];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"rfc822Name" value:payloadRfc822Name isRequired:0 defaultValue:0];

  payloadDNSName = [(RMModelSCEPCredentialDeclaration_SubjectAltName *)self payloadDNSName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"dNSName" value:payloadDNSName isRequired:0 defaultValue:0];

  payloadUniformResourceIdentifier = [(RMModelSCEPCredentialDeclaration_SubjectAltName *)self payloadUniformResourceIdentifier];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"uniformResourceIdentifier" value:payloadUniformResourceIdentifier isRequired:0 defaultValue:0];

  payloadNtPrincipalName = [(RMModelSCEPCredentialDeclaration_SubjectAltName *)self payloadNtPrincipalName];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v4 usingKey:@"ntPrincipalName" value:payloadNtPrincipalName isRequired:0 defaultValue:0];

  v9 = [v4 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelSCEPCredentialDeclaration_SubjectAltName;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSString *)self->_payloadRfc822Name copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadDNSName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSString *)self->_payloadUniformResourceIdentifier copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadNtPrincipalName copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end