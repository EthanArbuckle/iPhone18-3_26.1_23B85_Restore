@interface SUCorePolicyResume
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyResume)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUCorePolicyResume

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)a3
{
  baseResumeOptions = self->_baseResumeOptions;
  self->_specifiedFields = 0;
  self->_baseResumeOptions = 0;
  self->_skipPhase = a3;

  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
}

- (SUCorePolicyResume)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyResume;
  v5 = [(SUCorePolicyResume *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [v4 decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [v4 decodeBoolForKey:@"SkipPhase"];
    baseResumeOptions = v5->_baseResumeOptions;
    v5->_baseResumeOptions = 0;

    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt64:-[SUCorePolicyResume specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [v4 encodeBool:-[SUCorePolicyResume skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicyResume skipPhase](self, "skipPhase")}];
  v6 = [(SUCorePolicyResume *)self baseResumeOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setBaseResumeOptions:v7];

  v8 = [(SUCorePolicyResume *)self additionalOptions];
  v9 = [v8 copyWithZone:a3];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyResume specifiedFields](self, "specifiedFields")}];
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
      v6 = [(SUCorePolicyResume *)v5 skipPhase];
      if (v6 == [(SUCorePolicyResume *)self skipPhase])
      {
        v8 = [(SUCorePolicyResume *)v5 specifiedFields];
        v7 = v8 == [(SUCorePolicyResume *)self specifiedFields];
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
  v4 = [(SUCorePolicyResume *)self specifiedFields];
  if ([(SUCorePolicyResume *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = [(SUCorePolicyResume *)self baseResumeOptions];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = @"none";
  }

  v9 = [(SUCorePolicyResume *)self additionalOptions];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"none";
  }

  v12 = [v3 stringWithFormat:@"SUCorePolicyResume(specifiedFields:0x%llX|skipPhase:%@|baseResumeOptions:%@|additionalOptions:%@)", v4, v5, v8, v11];

  return v12;
}

- (id)summary
{
  if ([(SUCorePolicyResume *)self specifiedFields])
  {
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|fields=%llX", -[SUCorePolicyResume specifiedFields](self, "specifiedFields")];
    v4 = [&stru_28469CC48 stringByAppendingString:v3];
  }

  else
  {
    v4 = &stru_28469CC48;
  }

  if ([(SUCorePolicyResume *)self skipPhase])
  {
    v5 = [(__CFString *)v4 stringByAppendingString:@"|skipPhase"];

    v4 = v5;
  }

  v6 = [(SUCorePolicyResume *)self baseResumeOptions];
  if (v6)
  {
    v7 = @"|withBaseResumeOptions";
  }

  else
  {
    v7 = @"|noBaseResumeOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  v9 = [(SUCorePolicyResume *)self additionalOptions];
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