@interface SUCorePolicyPrepare
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyPrepare)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyPrepare

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3
{
  self->_specifiedFields = 0;
  self->_skipPhase = a3;
  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;

  basePrepareOptions = self->_basePrepareOptions;
  self->_basePrepareOptions = 0;
}

- (SUCorePolicyPrepare)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyPrepare;
  v5 = [(SUCorePolicyPrepare *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [v4 decodeBoolForKey:@"SkipPhase"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    basePrepareOptions = v5->_basePrepareOptions;
    v5->_basePrepareOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicyPrepare specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicyPrepare skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicyPrepare skipPhase](self, "skipPhase")}];
  v6 = [(SUCorePolicyPrepare *)self basePrepareOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setBasePrepareOptions:v7];

  v8 = [(SUCorePolicyPrepare *)self additionalOptions];
  v9 = [v8 copyWithZone:a3];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyPrepare specifiedFields](self, "specifiedFields")}];
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
      v6 = [(SUCorePolicyPrepare *)v5 skipPhase];
      if (v6 == [(SUCorePolicyPrepare *)self skipPhase])
      {
        v8 = [(SUCorePolicyPrepare *)v5 specifiedFields];
        v7 = v8 == [(SUCorePolicyPrepare *)self specifiedFields];
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
  v4 = [(SUCorePolicyPrepare *)self specifiedFields];
  if ([(SUCorePolicyPrepare *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(SUCorePolicyPrepare *)self basePrepareOptions];
  if (v6)
  {
    v7 = [(SUCorePolicyPrepare *)self basePrepareOptions];
  }

  else
  {
    v7 = @"none";
  }

  v8 = [(SUCorePolicyPrepare *)self additionalOptions];
  if (v8)
  {
    v9 = [(SUCorePolicyPrepare *)self additionalOptions];
    v10 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|basePrepareOptions:%@|additionalOptions:%@)", v4, v5, v7, v9];
  }

  else
  {
    v10 = [v3 stringWithFormat:@"SUCorePolicySuspend(specifiedFields:0x%llX|skipPhase:%@|basePrepareOptions:%@|additionalOptions:%@)", v4, v5, v7, @"none"];
  }

  if (v6)
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

  v6 = [(SUCorePolicyPrepare *)self basePrepareOptions];
  if (v6)
  {
    v7 = @"|withBasePrepareOptions";
  }

  else
  {
    v7 = @"|noBasePrepareOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  v9 = [(SUCorePolicyPrepare *)self additionalOptions];
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