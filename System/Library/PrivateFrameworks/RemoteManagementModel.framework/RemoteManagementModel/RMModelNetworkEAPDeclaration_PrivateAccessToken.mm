@interface RMModelNetworkEAPDeclaration_PrivateAccessToken
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithIssuerName:(id)name tokenKey:(id)key;
+ (id)buildWithType:(id)type issuerName:(id)name redemptionContext:(id)context tokenKey:(id)key;
- (id)copyWithZone:(_NSZone *)zone;
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

+ (id)buildWithType:(id)type issuerName:(id)name redemptionContext:(id)context tokenKey:(id)key
{
  keyCopy = key;
  contextCopy = context;
  nameCopy = name;
  typeCopy = type;
  v13 = objc_opt_new();
  v14 = v13;
  if (typeCopy)
  {
    v15 = typeCopy;
  }

  else
  {
    v15 = &unk_28746B690;
  }

  [v13 setPayloadType:v15];

  [v14 setPayloadIssuerName:nameCopy];
  [v14 setPayloadRedemptionContext:contextCopy];

  [v14 setPayloadTokenKey:keyCopy];

  return v14;
}

+ (id)buildRequiredOnlyWithIssuerName:(id)name tokenKey:(id)key
{
  keyCopy = key;
  nameCopy = name;
  v7 = objc_opt_new();
  [v7 setPayloadIssuerName:nameCopy];

  [v7 setPayloadTokenKey:keyCopy];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = RMModelNetworkEAPDeclaration_PrivateAccessToken;
  v4 = [(RMModelPayloadBase *)&v14 copyWithZone:zone];
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