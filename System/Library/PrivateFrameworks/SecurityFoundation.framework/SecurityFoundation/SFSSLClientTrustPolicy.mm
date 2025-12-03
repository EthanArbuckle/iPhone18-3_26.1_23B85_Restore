@interface SFSSLClientTrustPolicy
- (NSString)clientName;
- (SFSSLClientTrustPolicy)initWithClientName:(id)name;
- (SFSSLClientTrustPolicy)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setClientName:(id)name;
@end

@implementation SFSSLClientTrustPolicy

- (SFSSLClientTrustPolicy)initWithClientName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SFSSLClientTrustPolicy;
  v5 = [(SFSSLClientTrustPolicy *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    sslClientTrustPolicyInternal = v5->_sslClientTrustPolicyInternal;
    v8 = sslClientTrustPolicyInternal[1];
    sslClientTrustPolicyInternal[1] = v6;
  }

  return v5;
}

- (SFSSLClientTrustPolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFSSLClientTrustPolicy;
  return [(SFSSLClientTrustPolicy *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFSSLClientTrustPolicy;
  v4 = [(SFTrustPolicy *)&v6 copyWithZone:zone];
  [v4 setClientName:*(self->_sslClientTrustPolicyInternal + 1)];
  return v4;
}

- (NSString)clientName
{
  v2 = [*(self->_sslClientTrustPolicyInternal + 1) copy];

  return v2;
}

- (void)setClientName:(id)name
{
  v4 = [name copy];
  sslClientTrustPolicyInternal = self->_sslClientTrustPolicyInternal;
  v6 = sslClientTrustPolicyInternal[1];
  sslClientTrustPolicyInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end