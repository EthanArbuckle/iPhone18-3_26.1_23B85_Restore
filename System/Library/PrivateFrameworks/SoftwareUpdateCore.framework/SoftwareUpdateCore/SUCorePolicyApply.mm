@interface SUCorePolicyApply
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyApply)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyApply

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  self->_skipPhase = set;

  baseApplyOptions = self->_baseApplyOptions;
  self->_baseApplyOptions = 0;
}

- (SUCorePolicyApply)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyApply;
  v5 = [(SUCorePolicyApply *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    baseApplyOptions = v5->_baseApplyOptions;
    v5->_baseApplyOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicyApply specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicyApply skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicyApply skipPhase](self, "skipPhase")}];
  baseApplyOptions = [(SUCorePolicyApply *)self baseApplyOptions];
  v7 = [baseApplyOptions copyWithZone:zone];
  [v5 setBaseApplyOptions:v7];

  additionalOptions = [(SUCorePolicyApply *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyApply specifiedFields](self, "specifiedFields")}];
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
      skipPhase = [(SUCorePolicyApply *)v5 skipPhase];
      if (skipPhase == [(SUCorePolicyApply *)self skipPhase])
      {
        specifiedFields = [(SUCorePolicyApply *)v5 specifiedFields];
        v7 = specifiedFields == [(SUCorePolicyApply *)self specifiedFields];
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
  specifiedFields = [(SUCorePolicyApply *)self specifiedFields];
  if ([(SUCorePolicyApply *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  baseApplyOptions = [(SUCorePolicyApply *)self baseApplyOptions];
  if (baseApplyOptions)
  {
    baseApplyOptions2 = [(SUCorePolicyApply *)self baseApplyOptions];
  }

  else
  {
    baseApplyOptions2 = @"none";
  }

  additionalOptions = [(SUCorePolicyApply *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyApply *)self additionalOptions];
    v10 = [v3 stringWithFormat:@"SUCorePolicyApply(specifiedFields:0x%llX|skipPhase:%@|baseApplyOptions:%@|additionalOptions:%@)", specifiedFields, v5, baseApplyOptions2, additionalOptions2];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"SUCorePolicyApply(specifiedFields:0x%llX|skipPhase:%@|baseApplyOptions:%@|additionalOptions:%@)", specifiedFields, v5, baseApplyOptions2, @"none"];
  }

  if (baseApplyOptions)
  {
  }

  return v10;
}

- (id)summary
{
  if ([(SUCorePolicyApply *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyApply specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyApply *)self skipPhase])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|skipPhase"];

    v4 = v5;
  }

  baseApplyOptions = [(SUCorePolicyApply *)self baseApplyOptions];
  if (baseApplyOptions)
  {
    v7 = @"|withBaseApplyOptions";
  }

  else
  {
    v7 = @"|noBaseApplyOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  additionalOptions = [(SUCorePolicyApply *)self additionalOptions];
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