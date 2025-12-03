@interface SFSSLServerTrustPolicy
- (NSString)serverName;
- (SFSSLServerTrustPolicy)initWithCoder:(id)coder;
- (SFSSLServerTrustPolicy)initWithServerName:(id)name;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setServerName:(id)name;
@end

@implementation SFSSLServerTrustPolicy

- (SFSSLServerTrustPolicy)initWithServerName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = SFSSLServerTrustPolicy;
  v5 = [(SFSSLServerTrustPolicy *)&v10 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    sslServerTrustPolicyInternal = v5->_sslServerTrustPolicyInternal;
    v8 = sslServerTrustPolicyInternal[1];
    sslServerTrustPolicyInternal[1] = v6;
  }

  return v5;
}

- (SFSSLServerTrustPolicy)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SFSSLServerTrustPolicy;
  return [(SFSSLServerTrustPolicy *)&v4 init];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = SFSSLServerTrustPolicy;
  v4 = [(SFTrustPolicy *)&v6 copyWithZone:zone];
  [v4 setServerName:*(self->_sslServerTrustPolicyInternal + 1)];
  return v4;
}

- (NSString)serverName
{
  v2 = [*(self->_sslServerTrustPolicyInternal + 1) copy];

  return v2;
}

- (void)setServerName:(id)name
{
  v4 = [name copy];
  sslServerTrustPolicyInternal = self->_sslServerTrustPolicyInternal;
  v6 = sslServerTrustPolicyInternal[1];
  sslServerTrustPolicyInternal[1] = v4;

  MEMORY[0x2821F96F8]();
}

@end