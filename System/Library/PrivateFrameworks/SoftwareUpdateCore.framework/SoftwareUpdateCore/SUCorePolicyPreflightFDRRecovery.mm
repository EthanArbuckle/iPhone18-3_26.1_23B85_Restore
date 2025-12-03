@interface SUCorePolicyPreflightFDRRecovery
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyPreflightFDRRecovery)init;
- (SUCorePolicyPreflightFDRRecovery)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
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

- (SUCorePolicyPreflightFDRRecovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPreflightFDRRecovery;
  v5 = [(SUCorePolicyPreflightFDRRecovery *)&v9 init];
  if (v5)
  {
    v5->_performPhase = [coderCopy decodeBoolForKey:@"PerformPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    basePreflightOptions = v5->_basePreflightOptions;
    v5->_basePreflightOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUCorePolicyPreflightFDRRecovery performPhase](self forKey:{"performPhase"), @"PerformPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setPerformPhase:{-[SUCorePolicyPreflightFDRRecovery performPhase](self, "performPhase")}];
  basePreflightOptions = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  v7 = [basePreflightOptions copyWithZone:zone];
  [v5 setBasePreflightOptions:v7];

  additionalOptions = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      performPhase = [(SUCorePolicyPreflightFDRRecovery *)equalCopy performPhase];
      v6 = performPhase ^ [(SUCorePolicyPreflightFDRRecovery *)self performPhase]^ 1;
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

  basePreflightOptions = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  if (basePreflightOptions)
  {
    basePreflightOptions2 = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  }

  else
  {
    basePreflightOptions2 = @"none";
  }

  additionalOptions = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
    v9 = [v3 stringWithFormat:@"SUCorePolicyPreflightFDRRecovery(performPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v4, basePreflightOptions2, additionalOptions2];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"SUCorePolicyPreflightFDRRecovery(performPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v4, basePreflightOptions2, @"none"];
  }

  if (basePreflightOptions)
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

  basePreflightOptions = [(SUCorePolicyPreflightFDRRecovery *)self basePreflightOptions];
  if (basePreflightOptions)
  {
    v5 = @"|withBasePreflightOptions";
  }

  else
  {
    v5 = @"|noBasePreflightOptions";
  }

  v6 = [(__CFString *)v3 stringByAppendingString:v5];

  additionalOptions = [(SUCorePolicyPreflightFDRRecovery *)self additionalOptions];
  if (additionalOptions)
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