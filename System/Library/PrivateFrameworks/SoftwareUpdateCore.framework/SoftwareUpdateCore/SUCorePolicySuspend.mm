@interface SUCorePolicySuspend
- (BOOL)isEqual:(id)a3;
- (SUCorePolicySuspend)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicySuspend

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  self->_skipPhase = a3;
  MEMORY[0x2821F96F8]();
}

- (SUCorePolicySuspend)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SUCorePolicySuspend;
  v5 = [(SUCorePolicySuspend *)&v8 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [v4 decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicySuspend specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicySuspend skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicySuspend skipPhase](self, "skipPhase")}];
  v6 = [(SUCorePolicySuspend *)self additionalOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setAdditionalOptions:v7];

  [v5 setSpecifiedFields:{-[SUCorePolicySuspend specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicySuspend *)v5 skipPhase];
      if (v6 == [(SUCorePolicySuspend *)self skipPhase])
      {
        v8 = [(SUCorePolicySuspend *)v5 specifiedFields];
        v7 = v8 == [(SUCorePolicySuspend *)self specifiedFields];
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SUCorePolicySuspend *)self specifiedFields];
  if ([(SUCorePolicySuspend *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(SUCorePolicySuspend *)self additionalOptions];
  if (v6)
  {
    v7 = [(SUCorePolicySuspend *)self additionalOptions];
    v8 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|additionalOptions:%@)", v4, v5, v7];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|additionalOptions:%@)", v4, v5, @"none"];
  }

  return v8;
}

- (id)summary
{
  if ([(SUCorePolicySuspend *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicySuspend specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicySuspend *)self skipPhase])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|skipPhase"];

    v4 = v5;
  }

  v6 = [(SUCorePolicySuspend *)self additionalOptions];
  if (v6)
  {
    v7 = @"|withAdditionalOptions";
  }

  else
  {
    v7 = @"|noAdditionalOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  if (([v8 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v9 = [v8 stringByAppendingString:@"|"];

    v8 = v9;
  }

  return v8;
}

@end