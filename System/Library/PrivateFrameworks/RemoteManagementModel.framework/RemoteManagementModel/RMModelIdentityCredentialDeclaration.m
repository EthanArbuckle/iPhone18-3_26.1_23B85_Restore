@interface RMModelIdentityCredentialDeclaration
+ (NSSet)allowedPayloadKeys;
+ (id)buildRequiredOnlyWithPassword:(id)a3 identity:(id)a4;
+ (id)buildWithPassword:(id)a3 identity:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation RMModelIdentityCredentialDeclaration

+ (NSSet)allowedPayloadKeys
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"Password";
  v7[1] = @"Identity";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)buildWithPassword:(id)a3 identity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadPassword:v6];

  [v7 setPayloadIdentity:v5];

  return v7;
}

+ (id)buildRequiredOnlyWithPassword:(id)a3 identity:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setPayloadPassword:v6];

  [v7 setPayloadIdentity:v5];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = RMModelIdentityCredentialDeclaration;
  v4 = [(RMModelPayloadBase *)&v10 copyWithZone:a3];
  v5 = [(NSString *)self->_payloadPassword copy];
  v6 = v4[2];
  v4[2] = v5;

  v7 = [(NSData *)self->_payloadIdentity copy];
  v8 = v4[3];
  v4[3] = v7;

  return v4;
}

@end