@interface SBKPullValueRequest
+ (id)propertyListBodyWithTransaction:(id)a3;
+ (id)requestForTransaction:(id)a3;
- (id)canonicalResponseForResponse:(id)a3;
@end

@implementation SBKPullValueRequest

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
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 clientItemVersionAnchor];
  v5 = v4;
  v6 = @"0";
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v13[0] = @"domain";
  v8 = [v3 domain];
  v14[0] = v8;
  v14[1] = v7;
  v13[1] = @"since-version";
  v13[2] = @"key";
  v9 = [v3 requestedKey];

  v14[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)canonicalResponseForResponse:(id)a3
{
  v4 = a3;
  v5 = [(SBKRequest *)self transaction];
  v6 = [SBKPullValueResponse responseWithResponse:v4 transaction:v5];

  return v6;
}

@end