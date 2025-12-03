@interface SUCorePolicyPreflightWakeup
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyPreflightWakeup)init;
- (SUCorePolicyPreflightWakeup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyPreflightWakeup

- (SUCorePolicyPreflightWakeup)init
{
  v7.receiver = self;
  v7.super_class = SUCorePolicyPreflightWakeup;
  v2 = [(SUCorePolicyPreflightWakeup *)&v7 init];
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

- (SUCorePolicyPreflightWakeup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPreflightWakeup;
  v5 = [(SUCorePolicyPreflightWakeup *)&v9 init];
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
  [coderCopy encodeBool:-[SUCorePolicyPreflightWakeup performPhase](self forKey:{"performPhase"), @"PerformPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setPerformPhase:{-[SUCorePolicyPreflightWakeup performPhase](self, "performPhase")}];
  basePreflightOptions = [(SUCorePolicyPreflightWakeup *)self basePreflightOptions];
  v7 = [basePreflightOptions copyWithZone:zone];
  [v5 setBasePreflightOptions:v7];

  additionalOptions = [(SUCorePolicyPreflightWakeup *)self additionalOptions];
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
      performPhase = [(SUCorePolicyPreflightWakeup *)equalCopy performPhase];
      v6 = performPhase ^ [(SUCorePolicyPreflightWakeup *)self performPhase]^ 1;
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
  if ([(SUCorePolicyPreflightWakeup *)self performPhase])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  basePreflightOptions = [(SUCorePolicyPreflightWakeup *)self basePreflightOptions];
  if (basePreflightOptions)
  {
    basePreflightOptions2 = [(SUCorePolicyPreflightWakeup *)self basePreflightOptions];
  }

  else
  {
    basePreflightOptions2 = @"none";
  }

  additionalOptions = [(SUCorePolicyPreflightWakeup *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyPreflightWakeup *)self additionalOptions];
    v9 = [v3 stringWithFormat:@"SUCorePolicyPreflightWakeup(performPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v4, basePreflightOptions2, additionalOptions2];
  }

  else
  {
    v9 = [v3 stringWithFormat:@"SUCorePolicyPreflightWakeup(performPhase:%@|basePreflightOptions:%@|additionalOptions:%@)", v4, basePreflightOptions2, @"none"];
  }

  if (basePreflightOptions)
  {
  }

  return v9;
}

- (id)summary
{
  if ([(SUCorePolicyPreflightWakeup *)self performPhase])
  {
    v3 = [&stru_28469CC48 stringByAppendingString:@"|performPhase"];
  }

  else
  {
    v3 = &stru_28469CC48;
  }

  basePreflightOptions = [(SUCorePolicyPreflightWakeup *)self basePreflightOptions];
  if (basePreflightOptions)
  {
    v5 = @"|withBasePreflightOptions";
  }

  else
  {
    v5 = @"|noBasePreflightOptions";
  }

  v6 = [(__CFString *)v3 stringByAppendingString:v5];

  additionalOptions = [(SUCorePolicyPreflightWakeup *)self additionalOptions];
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