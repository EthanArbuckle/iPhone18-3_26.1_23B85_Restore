@interface SFSSLServerTrustPolicy
- (NSString)serverName;
- (SFSSLServerTrustPolicy)initWithCoder:(id)a3;
- (SFSSLServerTrustPolicy)initWithServerName:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setServerName:(id)a3;
@end

@implementation SFSSLServerTrustPolicy

- (SFSSLServerTrustPolicy)initWithServerName:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = SFSSLServerTrustPolicy;
  v5 = [(SFSSLServerTrustPolicy *)&v10 init];
  if (v5)
  {
    v6 = [v4 copy];
    sslServerTrustPolicyInternal = v5->_sslServerTrustPolicyInternal;
    v8 = sslServerTrustPolicyInternal[1];
    sslServerTrustPolicyInternal[1] = v6;
  }

  return v5;
}

- (SFSSLServerTrustPolicy)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = SFSSLServerTrustPolicy;
  return [(SFSSLServerTrustPolicy *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = SFSSLServerTrustPolicy;
  v4 = [(SFTrustPolicy *)&v6 copyWithZone:a3];
  [v4 setServerName:*(self->_sslServerTrustPolicyInternal + 1)];
  return v4;
}

- (NSString)serverName
{
  v2 = [*(self->_sslServerTrustPolicyInternal + 1) copy];

  return v2;
}

- (void)setServerName:(id)a3
{
  v4 = [a3 copy];
  sslServerTrustPolicyInternal = self->_sslServerTrustPolicyInternal;
  v6 = sslServerTrustPolicyInternal[1];
  sslServerTrustPolicyInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end