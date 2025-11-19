@interface SUCorePolicyApply
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyApply)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyApply

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3
{
  additionalOptions = self->_additionalOptions;
  self->_specifiedFields = 0;
  self->_additionalOptions = 0;
  self->_skipPhase = a3;

  baseApplyOptions = self->_baseApplyOptions;
  self->_baseApplyOptions = 0;
}

- (SUCorePolicyApply)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyApply;
  v5 = [(SUCorePolicyApply *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [v4 decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    baseApplyOptions = v5->_baseApplyOptions;
    v5->_baseApplyOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicyApply specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicyApply skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicyApply skipPhase](self, "skipPhase")}];
  v6 = [(SUCorePolicyApply *)self baseApplyOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setBaseApplyOptions:v7];

  v8 = [(SUCorePolicyApply *)self additionalOptions];
  v9 = [v8 copyWithZone:a3];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyApply specifiedFields](self, "specifiedFields")}];
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
      v6 = [(SUCorePolicyApply *)v5 skipPhase];
      if (v6 == [(SUCorePolicyApply *)self skipPhase])
      {
        v8 = [(SUCorePolicyApply *)v5 specifiedFields];
        v7 = v8 == [(SUCorePolicyApply *)self specifiedFields];
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
  v4 = [(SUCorePolicyApply *)self specifiedFields];
  if ([(SUCorePolicyApply *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(SUCorePolicyApply *)self baseApplyOptions];
  if (v6)
  {
    v7 = [(SUCorePolicyApply *)self baseApplyOptions];
  }

  else
  {
    v7 = @"none";
  }

  v8 = [(SUCorePolicyApply *)self additionalOptions];
  if (v8)
  {
    v9 = [(SUCorePolicyApply *)self additionalOptions];
    v10 = [v3 stringWithFormat:@"SUCorePolicyApply(specifiedFields:0x%llX|skipPhase:%@|baseApplyOptions:%@|additionalOptions:%@)", v4, v5, v7, v9];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"SUCorePolicyApply(specifiedFields:0x%llX|skipPhase:%@|baseApplyOptions:%@|additionalOptions:%@)", v4, v5, v7, @"none"];
  }

  if (v6)
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

  v6 = [(SUCorePolicyApply *)self baseApplyOptions];
  if (v6)
  {
    v7 = @"|withBaseApplyOptions";
  }

  else
  {
    v7 = @"|noBaseApplyOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  v9 = [(SUCorePolicyApply *)self additionalOptions];
  if (v9)
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