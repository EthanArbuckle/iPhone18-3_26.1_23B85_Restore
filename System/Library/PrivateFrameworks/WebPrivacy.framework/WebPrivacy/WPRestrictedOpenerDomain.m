@interface WPRestrictedOpenerDomain
- (WPRestrictedOpenerDomain)initWithDomain:(id)a3 openerType:(int64_t)a4;
- (id)description;
@end

@implementation WPRestrictedOpenerDomain

- (WPRestrictedOpenerDomain)initWithDomain:(id)a3 openerType:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = WPRestrictedOpenerDomain;
  v8 = [(WPRestrictedOpenerDomain *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_domain, a3);
    v9->_openerType = a4;
  }

  return v9;
}

- (id)description
{
  openerType = self->_openerType;
  v3 = "unknown";
  if (openerType == 2)
  {
    v3 = "postMessageAndClose";
  }

  if (openerType == 1)
  {
    v4 = "noOpener";
  }

  else
  {
    v4 = v3;
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@ - %s", self->_domain, v4];
}

@end