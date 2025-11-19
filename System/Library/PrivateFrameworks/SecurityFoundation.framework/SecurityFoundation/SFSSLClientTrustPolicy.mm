@interface SFSSLClientTrustPolicy
- (NSString)clientName;
- (SFSSLClientTrustPolicy)initWithClientName:(id)a3;
- (SFSSLClientTrustPolicy)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setClientName:(id)a3;
@end

@implementation SFSSLClientTrustPolicy

- (SFSSLClientTrustPolicy)initWithClientName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFSSLClientTrustPolicy;
  v5 = [(SFSSLClientTrustPolicy *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    sslClientTrustPolicyInternal = v5->_sslClientTrustPolicyInternal;
    v8 = sslClientTrustPolicyInternal[1];
    sslClientTrustPolicyInternal[1] = v6;
  }

  return v5;
}

- (SFSSLClientTrustPolicy)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFSSLClientTrustPolicy;
  return [(SFSSLClientTrustPolicy *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SFSSLClientTrustPolicy;
  v4 = [(SFTrustPolicy *)&v6 copyWithZone:a3];
  [v4 setClientName:*(self->_sslClientTrustPolicyInternal + 1)];
  return v4;
}

- (NSString)clientName
{
  v2 = [*(self->_sslClientTrustPolicyInternal + 1) copy];

  return v2;
}

- (void)setClientName:(id)a3
{
  v4 = [a3 copy];
  sslClientTrustPolicyInternal = self->_sslClientTrustPolicyInternal;
  v6 = sslClientTrustPolicyInternal[1];
  sslClientTrustPolicyInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end