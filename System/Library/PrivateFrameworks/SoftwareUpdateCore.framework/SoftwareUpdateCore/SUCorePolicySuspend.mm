@interface SUCorePolicySuspend
- (BOOL)isEqual:(id)equal;
- (SUCorePolicySuspend)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicySuspend

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  self->_skipPhase = set;
  MEMORY[0x2821F96F8]();
}

- (SUCorePolicySuspend)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SUCorePolicySuspend;
  v5 = [(SUCorePolicySuspend *)&v8 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicySuspend specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicySuspend skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicySuspend skipPhase](self, "skipPhase")}];
  additionalOptions = [(SUCorePolicySuspend *)self additionalOptions];
  v7 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v7];

  [v5 setSpecifiedFields:{-[SUCorePolicySuspend specifiedFields](self, "specifiedFields")}];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      skipPhase = [(SUCorePolicySuspend *)v5 skipPhase];
      if (skipPhase == [(SUCorePolicySuspend *)self skipPhase])
      {
        specifiedFields = [(SUCorePolicySuspend *)v5 specifiedFields];
        v7 = specifiedFields == [(SUCorePolicySuspend *)self specifiedFields];
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
  specifiedFields = [(SUCorePolicySuspend *)self specifiedFields];
  if ([(SUCorePolicySuspend *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  additionalOptions = [(SUCorePolicySuspend *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicySuspend *)self additionalOptions];
    v8 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|additionalOptions:%@)", specifiedFields, v5, additionalOptions2];
  }

  else
  {
    v8 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|additionalOptions:%@)", specifiedFields, v5, @"none"];
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

  additionalOptions = [(SUCorePolicySuspend *)self additionalOptions];
  if (additionalOptions)
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