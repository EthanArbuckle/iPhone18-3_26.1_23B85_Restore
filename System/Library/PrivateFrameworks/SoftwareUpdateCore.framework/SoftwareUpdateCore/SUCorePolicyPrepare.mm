@interface SUCorePolicyPrepare
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyPrepare)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyPrepare

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  self->_specifiedFields = 0;
  self->_skipPhase = set;
  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;

  basePrepareOptions = self->_basePrepareOptions;
  self->_basePrepareOptions = 0;
}

- (SUCorePolicyPrepare)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPrepare;
  v5 = [(SUCorePolicyPrepare *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    basePrepareOptions = v5->_basePrepareOptions;
    v5->_basePrepareOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicyPrepare specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicyPrepare skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicyPrepare skipPhase](self, "skipPhase")}];
  basePrepareOptions = [(SUCorePolicyPrepare *)self basePrepareOptions];
  v7 = [basePrepareOptions copyWithZone:zone];
  [v5 setBasePrepareOptions:v7];

  additionalOptions = [(SUCorePolicyPrepare *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyPrepare specifiedFields](self, "specifiedFields")}];
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
      skipPhase = [(SUCorePolicyPrepare *)v5 skipPhase];
      if (skipPhase == [(SUCorePolicyPrepare *)self skipPhase])
      {
        specifiedFields = [(SUCorePolicyPrepare *)v5 specifiedFields];
        v7 = specifiedFields == [(SUCorePolicyPrepare *)self specifiedFields];
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
  specifiedFields = [(SUCorePolicyPrepare *)self specifiedFields];
  if ([(SUCorePolicyPrepare *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  basePrepareOptions = [(SUCorePolicyPrepare *)self basePrepareOptions];
  if (basePrepareOptions)
  {
    basePrepareOptions2 = [(SUCorePolicyPrepare *)self basePrepareOptions];
  }

  else
  {
    basePrepareOptions2 = @"none";
  }

  additionalOptions = [(SUCorePolicyPrepare *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyPrepare *)self additionalOptions];
    v10 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|basePrepareOptions:%@|additionalOptions:%@)", specifiedFields, v5, basePrepareOptions2, additionalOptions2];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|basePrepareOptions:%@|additionalOptions:%@)", specifiedFields, v5, basePrepareOptions2, @"none"];
  }

  if (basePrepareOptions)
  {
  }

  return v10;
}

- (id)summary
{
  if ([(SUCorePolicyPrepare *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyPrepare specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyPrepare *)self skipPhase])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|skipPhase"];

    v4 = v5;
  }

  basePrepareOptions = [(SUCorePolicyPrepare *)self basePrepareOptions];
  if (basePrepareOptions)
  {
    v7 = @"|withBasePrepareOptions";
  }

  else
  {
    v7 = @"|noBasePrepareOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  additionalOptions = [(SUCorePolicyPrepare *)self additionalOptions];
  if (additionalOptions)
  {
    v10 = @"|withAdditionalOptions";
  }

  else
  {
    v10 = @"|noAdditionalOptions";
  }

  v11 = [v8 stringByAppendingString:v10];

  if (([v11 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v12 = [v11 stringByAppendingString:@"|"];

    v11 = v12;
  }

  return v11;
}

@end