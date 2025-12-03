@interface WPStorageAccessUserAgentStringQuirk
- (WPStorageAccessUserAgentStringQuirk)initWithDomain:(id)domain withUserAgentString:(id)string;
- (id)description;
@end

@implementation WPStorageAccessUserAgentStringQuirk

- (WPStorageAccessUserAgentStringQuirk)initWithDomain:(id)domain withUserAgentString:(id)string
{
  domainCopy = domain;
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = WPStorageAccessUserAgentStringQuirk;
  v9 = [(WPStorageAccessUserAgentStringQuirk *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_domain, domain);
    objc_storeStrong(&v10->_userAgentString, string);
    v11 = v10;
  }

  return v10;
}

- (id)description
{
  if ([(NSString *)self->_domain length])
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %@", self->_domain, self->_userAgentString];
  }

  else
  {
    [(NSString *)self->_userAgentString description];
  }
  v3 = ;

  return v3;
}

@end