@interface SUCorePolicyPreflightFDRRecovery
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyPreflightFDRRecovery)init;
- (SUCorePolicyPreflightFDRRecovery)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyPreflightFDRRecovery

- (SUCorePolicyPreflightFDRRecovery)init
{
  v7.receiver = self;
  v7.super_class = SUCorePolicyPreflightFDRRecovery;
  v2 = [(SUCorePolicyPreflightFDRRecovery *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_performPhase = 0;
    additionalOptions = v2->_additionalOptions;
    v2->_additionalOptions = 0;

    basePreflightOptions = v3->_basePreflightOptions;
    v3->_basePreflightOptions = 0;
  }

  return v3;
}

- (SUCorePolicyPreflightFDRRecovery)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPreflightFDRRecovery;
  v5 = [(SUCorePolicyPreflightFDRRecovery *)&v9 init];
  if (v5)
  {
    v5->_performPhase = [v4 decodeBoolForKey:@"PerformPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    basePreflightOptions = v5->_basePreflightOptions;
    v5->_basePreflightOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SUCorePolicyPreflightFDRRecovery performPhase](self forKey:{"performPhase"), @"PerformPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setPerformPhase:{-[SUCorePolicyPreflightFDRRecovery performPhase](self, "performPhase")}];
  v6 = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setBasePreflightOptions:v7];

  v8 = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
  v9 = [v8 copyWithZone:a3];
  [v5 setAdditionalOptions:v9];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(SUCorePolicyPreflightFDRRecovery *)v4 performPhase];
      v6 = v5 ^ [(SUCorePolicyPreflightFDRRecovery *)self performPhase]^ 1;
    }

    else
    {
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  if ([(SUCorePolicyPreflightFDRRecovery *)self performPhase])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v5 = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  if (v5)
  {
    v6 = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  }

  else
  {
    v6 = @"none";
  }

  v7 = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
  if (v7)
  {
    v8 = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
    v9 = [v3 stringWithFormat:@"SUCorePolicyPreflightFDRRecovery(performPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v4, v6, v8];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"SUCorePolicyPreflightFDRRecovery(performPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v4, v6, @"none"];
  }

  if (v5)
  {
  }

  return v9;
}

- (id)summary
{
  if ([(SUCorePolicyPreflightFDRRecovery *)self performPhase])
  {
    v3 = [&stru_28469CC48 stringByAppendingString:@"|performPhase"];
  }

  else
  {
    v3 = &stru_28469CC48;
  }

  v4 = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  if (v4)
  {
    v5 = @"|withBasePreflightOptions";
  }

  else
  {
    v5 = @"|noBasePreflightOptions";
  }

  v6 = [(__CFString *)v3 stringByAppendingString:v5];

  v7 = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
  if (v7)
  {
    v8 = @"|withAdditionalOptions";
  }

  else
  {
    v8 = @"|noAdditionalOptions";
  }

  v9 = [v6 stringByAppendingString:v8];

  if (([v9 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v10 = [v9 stringByAppendingString:@"|"];

    v9 = v10;
  }

  return v9;
}

@end