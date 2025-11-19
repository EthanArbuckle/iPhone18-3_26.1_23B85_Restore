@interface SFPrivacyProxyNetwork
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation SFPrivacyProxyNetwork

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [InterfaceUtils stringForInterfaceType:self->_type];
  v5 = [PrivacyProxyStateRelay networkStatusString:self->_status];
  v6 = [v3 initWithFormat:@"<PrivacyProxyNetwork: %@, %@>", v4, v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[SFPrivacyProxyNetwork allocWithZone:?]];
  [(SFPrivacyProxyNetwork *)v4 setType:[(SFPrivacyProxyNetwork *)self type]];
  [(SFPrivacyProxyNetwork *)v4 setStatus:[(SFPrivacyProxyNetwork *)self status]];
  return v4;
}

@end