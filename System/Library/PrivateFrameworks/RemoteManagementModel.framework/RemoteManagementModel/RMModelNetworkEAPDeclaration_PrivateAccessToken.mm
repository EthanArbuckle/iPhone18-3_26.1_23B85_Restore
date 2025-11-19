@interface RMModelNetworkEAPDeclaration_PrivateAccessToken
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIssuerName:(id)a3 tokenKey:(id)a4;
+ (id)buildWithType:(id)a3 issuerName:(id)a4 redemptionContext:(id)a5 tokenKey:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMModelNetworkEAPDeclaration_PrivateAccessToken

+ (NSSet)allowedPayloadKeys
{
  v7[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Type";
  v7[1] = @"IssuerName";
  v7[2] = @"RedemptionContext";
  v7[3] = @"TokenKey";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:4];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithType:(id)a3 issuerName:(id)a4 redemptionContext:(id)a5 tokenKey:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = objc_opt_new();
  v14 = v13;
  if (v12)
  {
    v15 = v12;
  }

  else
  {
    v15 = &unk_28746B690;
  }

  [v13 setPayloadType:v15];

  [v14 setPayloadIssuerName:v11];
  [v14 setPayloadRedemptionContext:v10];

  [v14 setPayloadTokenKey:v9];

  return v14;
}

+ (id)buildRequiredOnlyWithIssuerName:(id)a3 tokenKey:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadIssuerName:v6];

  [v7 setPayloadTokenKey:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_PrivateAccessToken;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:a3];
  v5 = [(NSNumber *)self->_payloadType copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSString *)self->_payloadIssuerName copy];
  v8 = v4[3];
  v4[3] = v7;

  v9 = [(NSData *)self->_payloadRedemptionContext copy];
  v10 = v4[4];
  v4[4] = v9;

  v11 = [(NSString *)self->_payloadTokenKey copy];
  v12 = v4[5];
  v4[5] = v11;

  return v4;
}

@end