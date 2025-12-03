@interface WFEnterpriseAssociationParameters
- (id)description;
@end

@implementation WFEnterpriseAssociationParameters

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p", v5, self];

  username = [(WFEnterpriseAssociationParameters *)self username];
  if (username)
  {
    v8 = @"<redacted>";
  }

  else
  {
    v8 = @"nil";
  }

  [v6 appendFormat:@" username: %@", v8];

  password = [(WFEnterpriseAssociationParameters *)self password];
  if (password)
  {
    v10 = @"<redacted>";
  }

  else
  {
    v10 = @"nil";
  }

  [v6 appendFormat:@" password: %@", v10];

  certificateChain = [(WFEnterpriseAssociationParameters *)self certificateChain];
  if (certificateChain)
  {
    v12 = @"<redacted>";
  }

  else
  {
    v12 = @"nil";
  }

  [v6 appendFormat:@" certificateChain: %@", v12];

  eapTypes = [(WFEnterpriseAssociationParameters *)self eapTypes];
  [v6 appendFormat:@" eapTypes: %@", eapTypes];

  [v6 appendString:@">"];

  return v6;
}

@end