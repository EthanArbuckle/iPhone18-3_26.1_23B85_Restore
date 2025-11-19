@interface RMProtocolCommandRequest_StatusReason
+ (NSSet)allowedRequestKeys;
+ (id)buildRequiredOnlyWithCode:(id)a3;
+ (id)buildWithCode:(id)a3 description:(id)a4 details:(id)a5;
- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)serializeWithType:(signed __int16)a3;
@end

@implementation RMProtocolCommandRequest_StatusReason

+ (NSSet)allowedRequestKeys
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Code";
  v7[1] = @"Description";
  v7[2] = @"Details";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithCode:(id)a3 description:(id)a4 details:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = objc_opt_new();
  [v10 setRequestCode:v9];

  [v10 setRequestDescription:v8];
  [v10 setRequestDetails:v7];

  return v10;
}

+ (id)buildRequiredOnlyWithCode:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  [v4 setRequestCode:v3];

  return v4;
}

- (BOOL)loadFromDictionary:(id)a3 serializationType:(signed __int16)a4 error:(id *)a5
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = MEMORY[0x277CBEB58];
  v10 = [v8 allKeys];
  v11 = [v9 setWithArray:v10];

  v12 = +[RMProtocolCommandRequest_StatusReason allowedRequestKeys];
  [v11 minusSet:v12];

  if ([v11 count])
  {
    if (a5)
    {
      v13 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unexpected payload keys: %@", v11];
      v20[0] = v14;
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      *a5 = [v13 errorWithDomain:@"error" code:1 userInfo:v15];

LABEL_7:
      LOBYTE(a5) = 0;
    }
  }

  else
  {
    if (![(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Code" forKeyPath:@"requestCode" isRequired:1 defaultValue:0 error:a5]|| ![(RMModelPayloadBase *)self loadStringFromDictionary:v8 usingKey:@"Description" forKeyPath:@"requestDescription" isRequired:0 defaultValue:0 error:a5])
    {
      goto LABEL_7;
    }

    LOWORD(v18) = a4;
    LOBYTE(a5) = [(RMModelPayloadBase *)self loadDictionaryFromDictionary:v8 usingKey:@"Details" forKeyPath:@"requestDetails" classType:objc_opt_class() isRequired:0 defaultValue:0 serializationType:v18 error:a5];
  }

  v16 = *MEMORY[0x277D85DE8];
  return a5;
}

- (id)serializeWithType:(signed __int16)a3
{
  v5 = objc_opt_new();
  v6 = [(RMProtocolCommandRequest_StatusReason *)self requestCode];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Code" value:v6 isRequired:1 defaultValue:0];

  v7 = [(RMProtocolCommandRequest_StatusReason *)self requestDescription];
  [(RMModelPayloadBase *)self serializeStringIntoDictionary:v5 usingKey:@"Description" value:v7 isRequired:0 defaultValue:0];

  v8 = [(RMProtocolCommandRequest_StatusReason *)self requestDetails];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __59__RMProtocolCommandRequest_StatusReason_serializeWithType___block_invoke;
  v11[3] = &__block_descriptor_34_e42___NSDictionary_16__0__RMModelPayloadBase_8l;
  v12 = a3;
  [(RMModelPayloadBase *)self serializeDictionaryIntoDictionary:v5 usingKey:@"Details" value:v8 dictSerializer:v11 isRequired:0 defaultValue:0];

  v9 = [v5 copy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = RMProtocolCommandRequest_StatusReason;
  v4 = [(RMModelPayloadBase *)&v12 copyWithZone:a3];
  v5 = [(NSString *)self->_requestCode copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_requestDescription copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(RMModelAnyPayload *)self->_requestDetails copy];
  v10 = v4[4];
  v4[4] = v9;

  return v4;
}

@end