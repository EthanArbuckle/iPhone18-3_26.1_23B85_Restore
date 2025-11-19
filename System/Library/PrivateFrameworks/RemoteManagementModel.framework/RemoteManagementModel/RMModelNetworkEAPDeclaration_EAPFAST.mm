@interface RMModelNetworkEAPDeclaration_EAPFAST
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnly;
+ (id)buildWithUsePrivateAccessToken:(id)a3 usePAC:(id)a4 provisionPAC:(id)a5 provisionPACAnonymously:(id)a6;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
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

+ (id)buildWithUsePrivateAccessToken:(id)a3 usePAC:(id)a4 provisionPAC:(id)a5 provisionPACAnonymously:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = v13;
  v15 = MEMORY[0x277CBEC28];
  if (v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = MEMORY[0x277CBEC28];
  }

  [v13 setPayloadUsePrivateAccessToken:v16];

  if (v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v15;
  }

  [v14 setPayloadUsePAC:v17];

  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v18 = v15;
  }

  [v14 setPayloadProvisionPAC:v18];

  if (v9)
  {
    v19 = v9;
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

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v7 = a3;
  v8 = MEMORY[0x277CBEB58];
  v9 = [v7 allKeys];
  v10 = [v8 setWithArray:v9];

  v11 = +[RMModelNetworkEAPDeclaration_EAPFAST allowedPayloadKeys];
  [v10 minusSet:v11];

  v12 = [v10 copy];
  [(RMModelPayloadBase *)self setUnknownPayloadKeys:v12];

  v13 = [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"UsePrivateAccessToken" forKeyPath:@"payloadUsePrivateAccessToken" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"UsePAC" forKeyPath:@"payloadUsePAC" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"ProvisionPAC" forKeyPath:@"payloadProvisionPAC" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5]&& [(RMModelPayloadBase *)self loadBooleanFromDictionary:v7 usingKey:@"ProvisionPACAnonymously" forKeyPath:@"payloadProvisionPACAnonymously" isRequired:0 defaultValue:MEMORY[0x277CBEC28] error:a5];
  return v13;
}

- (id)serializeWithType:(signed __int16)a3
{
  v4 = objc_opt_new();
  v5 = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadUsePrivateAccessToken];
  v6 = MEMORY[0x277CBEC28];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UsePrivateAccessToken" value:v5 isRequired:0 defaultValue:MEMORY[0x277CBEC28]];

  v7 = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadUsePAC];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"UsePAC" value:v7 isRequired:0 defaultValue:v6];

  v8 = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadProvisionPAC];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"ProvisionPAC" value:v8 isRequired:0 defaultValue:v6];

  v9 = [(RMModelNetworkEAPDeclaration_EAPFAST *)self payloadProvisionPACAnonymously];
  [(RMModelPayloadBase *)self serializeBooleanIntoDictionary:v4 usingKey:@"ProvisionPACAnonymously" value:v9 isRequired:0 defaultValue:v6];

  v10 = [v4 copy];

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_EAPFAST;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
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