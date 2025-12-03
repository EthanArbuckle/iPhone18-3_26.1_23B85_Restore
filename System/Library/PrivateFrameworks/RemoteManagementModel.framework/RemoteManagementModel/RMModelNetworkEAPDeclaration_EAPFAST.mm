@interface RMModelNetworkEAPDeclaration_EAPFAST
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithUsePrivateAccessToken:(id)token usePAC:(id)c provisionPAC:(id)aC provisionPACAnonymously:(id)anonymously;
- (BOOL)loadFromDictionary:(id)dictionary serializationType:(signed __int16)type error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)serializeWithType:(signed __int16)type;
@end

@implementation RMModelNetworkEAPDeclaration_EAPFAST

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"UsePrivateAccessToken";
  v7[1] = @"UsePAC";
  v7[2] = @"ProvisionPAC";
  v7[3] = @"ProvisionPACAnonymously";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithUsePrivateAccessToken:(id)token usePAC:(id)c provisionPAC:(id)aC provisionPACAnonymously:(id)anonymously
{
  anonymouslyCopy = anonymously;
  aCCopy = aC;
  cCopy = c;
  tokenCopy = token;
  v13 = objc_opt_new();
  v14 = v13;
  v15 = MEMORY[0x277CBEC28];
  if (tokenCopy)
  {
    v16 = tokenCopy;
  }

  else
  {
    v16 = MEMORY[0x277CBEC28];
  }

  [v13 setPayloadUsePrivateAccessToken:v16];

  if (cCopy)
  {
    v17 = cCopy;
  }

  else
  {
    v17 = v15;
  }

  [v14 setPayloadUsePAC:v17];

  if (aCCopy)
  {
    v18 = aCCopy;
  }

  else
  {
    v18 = v15;
  }

  [v14 setPayloadProvisionPAC:v18];

  if (anonymouslyCopy)
  {
    v19 = anonymouslyCopy;
  }

  else
  {
    v19 = v15;
  }

  [v14 setPayloadProvisionPACAnonymously:v19];

  return v14;
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

  v11 = +[RMModelNetworkEAPDeclaration_EAPFAST allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"UsePrivateAccessToken" forKeyPath:@"payloadUsePrivateAccessToken" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"UsePAC" forKeyPath:@"payloadUsePAC" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"ProvisionPAC" forKeyPath:@"payloadProvisionPAC" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:dictionaryCopy usingKey:@"ProvisionPACAnonymously" forKeyPath:@"payloadProvisionPACAnonymously" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:error];
  return v13;
}

- (id)serializeWithType:(signed __int16)type
{
  v4 = objc_opt_new();
  payloadUsePrivateAccessToken = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadUsePrivateAccessToken];
  v6 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UsePrivateAccessToken" value:payloadUsePrivateAccessToken isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  payloadUsePAC = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadUsePAC];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UsePAC" value:payloadUsePAC isRequired:0 defaultValue:v6];

  payloadProvisionPAC = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadProvisionPAC];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"ProvisionPAC" value:payloadProvisionPAC isRequired:0 defaultValue:v6];

  payloadProvisionPACAnonymously = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadProvisionPACAnonymously];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"ProvisionPACAnonymously" value:payloadProvisionPACAnonymously isRequired:0 defaultValue:v6];

  v10 = [v4 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_EAPFAST;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
  v5 = [(NSNumber *)self->_payloadUsePrivateAccessToken copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSNumber *)self->_payloadUsePAC copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSNumber *)self->_payloadProvisionPAC copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSNumber *)self->_payloadProvisionPACAnonymously copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end