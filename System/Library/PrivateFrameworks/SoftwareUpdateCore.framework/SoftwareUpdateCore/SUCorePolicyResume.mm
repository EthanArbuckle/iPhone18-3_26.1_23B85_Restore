@interface SUCorePolicyResume
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyResume)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyResume

- (void)backToDefaultsWithSkipPhaseSet:(BOOL)set
{
  baseResumeOptions = self->_baseResumeOptions;
  self->_specifiedFields = 0;
  self->_baseResumeOptions = 0;
  self->_skipPhase = set;

  additionalOptions = self->_additionalOptions;
  self->_additionalOptions = 0;
}

- (SUCorePolicyResume)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyResume;
  v5 = [(SUCorePolicyResume *)&v9 init];
  if (v5)
  {
    v5->_specifiedFields = [coderCopy decodeInt64ForKey:@"SpecifiedFields"];
    v5->_skipPhase = [coderCopy decodeBoolForKey:@"SkipPhase"];
    baseResumeOptions = v5->_baseResumeOptions;
    v5->_baseResumeOptions = 0;

    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[SUCorePolicyResume specifiedFields](self forKey:{"specifiedFields"), @"SpecifiedFields"}];
  [coderCopy encodeBool:-[SUCorePolicyResume skipPhase](self forKey:{"skipPhase"), @"SkipPhase"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setSkipPhase:{-[SUCorePolicyResume skipPhase](self, "skipPhase")}];
  baseResumeOptions = [(SUCorePolicyResume *)self baseResumeOptions];
  v7 = [baseResumeOptions copyWithZone:zone];
  [v5 setBaseResumeOptions:v7];

  additionalOptions = [(SUCorePolicyResume *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  [v5 setSpecifiedFields:{-[SUCorePolicyResume specifiedFields](self, "specifiedFields")}];
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
      skipPhase = [(SUCorePolicyResume *)v5 skipPhase];
      if (skipPhase == [(SUCorePolicyResume *)self skipPhase])
      {
        specifiedFields = [(SUCorePolicyResume *)v5 specifiedFields];
        v7 = specifiedFields == [(SUCorePolicyResume *)self specifiedFields];
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
  specifiedFields = [(SUCorePolicyResume *)self specifiedFields];
  if ([(SUCorePolicyResume *)self skipPhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  baseResumeOptions = [(SUCorePolicyResume *)self baseResumeOptions];
  v7 = baseResumeOptions;
  if (baseResumeOptions)
  {
    v8 = baseResumeOptions;
  }

  else
  {
    v8 = @"none";
  }

  additionalOptions = [(SUCorePolicyResume *)self additionalOptions];
  v10 = additionalOptions;
  if (additionalOptions)
  {
    v11 = additionalOptions;
  }

  else
  {
    v11 = @"none";
  }

  v12 = [v3 stringWithFormat:@"SUCorePolicyResume(specifiedFields:0x%llX|skipPhase:%@|baseResumeOptions:%@|additionalOptions:%@)", specifiedFields, v5, v8, v11];

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

  baseResumeOptions = [(SUCorePolicyResume *)self baseResumeOptions];
  if (baseResumeOptions)
  {
    v7 = @"|withBaseResumeOptions";
  }

  else
  {
    v7 = @"|noBaseResumeOptions";
  }

  v8 = [(__CFString *)v4 stringByAppendingString:v7];

  additionalOptions = [(SUCorePolicyResume *)self additionalOptions];
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