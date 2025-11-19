@interface SBKPushValueRequest
+ (id)propertyListBodyWithTransaction:(id)a3;
+ (id)requestForTransaction:(id)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation SBKPushValueRequest

+ (id)requestForTransaction:(id)a3
{
  v4 = a3;
  v5 = [v4 requestURL];
  v6 = [a1 requestWithRequestURL:v5];

  [v6 setMethod:1];
  v7 = [a1 propertyListBodyWithTransaction:v4];
  [v6 setBodyDataWithPropertyList:v7];

  [v6 setTransaction:v4];
  [v6 setIncludeDeviceGUID:1];

  return v6;
}

+ (id)propertyListBodyWithTransaction:(id)a3
{
  v16[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v15[0] = @"domain";
  v4 = [v3 domain];
  v16[0] = v4;
  v15[1] = @"key";
  v5 = [v3 requestItemPayloadPair];
  v6 = [v5 kvsKey];
  v16[1] = v6;
  v15[2] = @"value";
  v7 = [v3 requestItemPayloadPair];
  v8 = [v7 kvsPayload];
  v16[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v10 = [v9 mutableCopy];

  v11 = [v3 requestItemVersionAnchor];

  if (v11)
  {
    v12 = [v3 requestItemVersionAnchor];
    [v10 setObject:v12 forKeyedSubscript:@"base-version"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = a3;
  v5 = [(SBKRequest *)self transaction];
  v6 = [SBKPushValueResponse responseWithResponse:v4 transaction:v5];

  return v6;
}

@end