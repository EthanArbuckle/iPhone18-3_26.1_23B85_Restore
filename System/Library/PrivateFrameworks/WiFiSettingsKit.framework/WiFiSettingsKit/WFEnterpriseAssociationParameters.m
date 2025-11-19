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

  v7 = [(WFEnterpriseAssociationParameters *)self username];
  if (v7)
  {
    v8 = @"<redacted>";
  }

  else
  {
    v8 = @"nil";
  }

  [v6 appendFormat:@" username: %@", v8];

  v9 = [(WFEnterpriseAssociationParameters *)self password];
  if (v9)
  {
    v10 = @"<redacted>";
  }

  else
  {
    v10 = @"nil";
  }

  [v6 appendFormat:@" password: %@", v10];

  v11 = [(WFEnterpriseAssociationParameters *)self certificateChain];
  if (v11)
  {
    v12 = @"<redacted>";
  }

  else
  {
    v12 = @"nil";
  }

  [v6 appendFormat:@" certificateChain: %@", v12];

  v13 = [(WFEnterpriseAssociationParameters *)self eapTypes];
  [v6 appendFormat:@" eapTypes: %@", v13];

  [v6 appendString:@">"];

  return v6;
}

@end