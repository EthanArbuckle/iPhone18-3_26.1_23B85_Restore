@interface SUCorePolicyRollback
- (BOOL)isEqual:(id)equal;
- (SUCorePolicyRollback)init;
- (SUCorePolicyRollback)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUCorePolicyRollback

- (SUCorePolicyRollback)init
{
  v7.receiver = self;
  v7.super_class = SUCorePolicyRollback;
  v2 = [(SUCorePolicyRollback *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2[8] = 0;
    *(v2 + 9) = 16843009;
    v2[13] = 0;
    v4 = *(v2 + 2);
    *(v2 + 2) = 0;

    baseRollbackOptions = v3->_baseRollbackOptions;
    v3->_baseRollbackOptions = 0;
  }

  return v3;
}

- (SUCorePolicyRollback)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUCorePolicyRollback;
  v5 = [(SUCorePolicyRollback *)&v9 init];
  if (v5)
  {
    v5->_performPhase = [coderCopy decodeBoolForKey:@"PerformPhase"];
    v5->_performRollbackPreparePhase = [coderCopy decodeBoolForKey:@"PerformPreparePhase"];
    v5->_performRollbackSuspendPhase = [coderCopy decodeBoolForKey:@"PerformSuspendPhase"];
    v5->_performRollbackResumePhase = [coderCopy decodeBoolForKey:@"PerformResumePhase"];
    v5->_performRollbackApplyPhase = [coderCopy decodeBoolForKey:@"PerformApplyPhase"];
    v5->_skipCancelPreviousUpdate = [coderCopy decodeBoolForKey:@"SkipCancelPreviousUpdate"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    baseRollbackOptions = v5->_baseRollbackOptions;
    v5->_baseRollbackOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUCorePolicyRollback performPhase](self forKey:{"performPhase"), @"PerformPhase"}];
  [coderCopy encodeBool:-[SUCorePolicyRollback performRollbackPreparePhase](self forKey:{"performRollbackPreparePhase"), @"PerformPreparePhase"}];
  [coderCopy encodeBool:-[SUCorePolicyRollback performRollbackSuspendPhase](self forKey:{"performRollbackSuspendPhase"), @"PerformSuspendPhase"}];
  [coderCopy encodeBool:-[SUCorePolicyRollback performRollbackResumePhase](self forKey:{"performRollbackResumePhase"), @"PerformResumePhase"}];
  [coderCopy encodeBool:-[SUCorePolicyRollback performRollbackApplyPhase](self forKey:{"performRollbackApplyPhase"), @"PerformApplyPhase"}];
  [coderCopy encodeBool:-[SUCorePolicyRollback skipCancelPreviousUpdate](self forKey:{"skipCancelPreviousUpdate"), @"SkipCancelPreviousUpdate"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setPerformPhase:{-[SUCorePolicyRollback performPhase](self, "performPhase")}];
  [v5 setPerformRollbackPreparePhase:{-[SUCorePolicyRollback performRollbackPreparePhase](self, "performRollbackPreparePhase")}];
  [v5 setPerformRollbackSuspendPhase:{-[SUCorePolicyRollback performRollbackSuspendPhase](self, "performRollbackSuspendPhase")}];
  [v5 setPerformRollbackResumePhase:{-[SUCorePolicyRollback performRollbackResumePhase](self, "performRollbackResumePhase")}];
  [v5 setPerformRollbackApplyPhase:{-[SUCorePolicyRollback performRollbackApplyPhase](self, "performRollbackApplyPhase")}];
  [v5 setSkipCancelPreviousUpdate:{-[SUCorePolicyRollback skipCancelPreviousUpdate](self, "skipCancelPreviousUpdate")}];
  baseRollbackOptions = [(SUCorePolicyRollback *)self baseRollbackOptions];
  v7 = [baseRollbackOptions copyWithZone:zone];
  [v5 setBaseRollbackOptions:v7];

  additionalOptions = [(SUCorePolicyRollback *)self additionalOptions];
  v9 = [additionalOptions copyWithZone:zone];
  [v5 setAdditionalOptions:v9];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      performPhase = [(SUCorePolicyRollback *)v5 performPhase];
      if (performPhase == [(SUCorePolicyRollback *)self performPhase]&& (v7 = [(SUCorePolicyRollback *)v5 performRollbackPreparePhase], v7 == [(SUCorePolicyRollback *)self performRollbackPreparePhase]) && (v8 = [(SUCorePolicyRollback *)v5 performRollbackSuspendPhase], v8 == [(SUCorePolicyRollback *)self performRollbackSuspendPhase]) && (v9 = [(SUCorePolicyRollback *)v5 performRollbackResumePhase], v9 == [(SUCorePolicyRollback *)self performRollbackResumePhase]) && (v10 = [(SUCorePolicyRollback *)v5 performRollbackApplyPhase], v10 == [(SUCorePolicyRollback *)self performRollbackApplyPhase]))
      {
        skipCancelPreviousUpdate = [(SUCorePolicyRollback *)v5 skipCancelPreviousUpdate];
        v11 = skipCancelPreviousUpdate ^ [(SUCorePolicyRollback *)self skipCancelPreviousUpdate]^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (id)description
{
  v16 = MEMORY[0x277CCACA8];
  v3 = @"NO";
  if ([(SUCorePolicyRollback *)self performPhase])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v15 = v4;
  if ([(SUCorePolicyRollback *)self performRollbackPreparePhase])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  if ([(SUCorePolicyRollback *)self performRollbackSuspendPhase])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(SUCorePolicyRollback *)self performRollbackResumePhase])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if ([(SUCorePolicyRollback *)self performRollbackApplyPhase])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if ([(SUCorePolicyRollback *)self skipCancelPreviousUpdate])
  {
    v3 = @"YES";
  }

  baseRollbackOptions = [(SUCorePolicyRollback *)self baseRollbackOptions];
  baseRollbackOptions2 = @"none";
  if (baseRollbackOptions)
  {
    baseRollbackOptions2 = [(SUCorePolicyRollback *)self baseRollbackOptions];
  }

  additionalOptions = [(SUCorePolicyRollback *)self additionalOptions];
  if (additionalOptions)
  {
    additionalOptions2 = [(SUCorePolicyRollback *)self additionalOptions];
    v13 = [v16 stringWithFormat:@"SUCorePolicyRollback(performPhase:%@|performRollbackPreparePhase:%@|performRollbackSuspendPhase:%@|performRollbackResumePhase:%@|performRollbackApplyPhase:%@|skipCancelPreviousUpdate:%@|baseRollbackOptions:%@|additionalOptions:%@)", v15, v5, v6, v7, v8, v3, baseRollbackOptions2, additionalOptions2];
  }

  else
  {
    v13 = [v16 stringWithFormat:@"SUCorePolicyRollback(performPhase:%@|performRollbackPreparePhase:%@|performRollbackSuspendPhase:%@|performRollbackResumePhase:%@|performRollbackApplyPhase:%@|skipCancelPreviousUpdate:%@|baseRollbackOptions:%@|additionalOptions:%@)", v15, v5, v6, v7, v8, v3, baseRollbackOptions2, @"none"];
  }

  if (baseRollbackOptions)
  {
  }

  return v13;
}

- (id)summary
{
  if ([(SUCorePolicyRollback *)self performPhase])
  {
    v3 = [&stru_28469CC48 stringByAppendingString:@"|performPhase"];
  }

  else
  {
    v3 = &stru_28469CC48;
  }

  if ([(SUCorePolicyRollback *)self performRollbackPreparePhase])
  {
    v4 = [(__CFString *)v3 stringByAppendingString:@"|performRollbackPreparePhase"];

    v3 = v4;
  }

  if ([(SUCorePolicyRollback *)self performRollbackSuspendPhase])
  {
    v5 = [(__CFString *)v3 stringByAppendingString:@"|performRollbackSuspendPhase"];

    v3 = v5;
  }

  if ([(SUCorePolicyRollback *)self performRollbackResumePhase])
  {
    v6 = [(__CFString *)v3 stringByAppendingString:@"|performRollbackResumePhase"];

    v3 = v6;
  }

  if ([(SUCorePolicyRollback *)self performRollbackApplyPhase])
  {
    v7 = [(__CFString *)v3 stringByAppendingString:@"|performRollbackApplyPhase"];

    v3 = v7;
  }

  if ([(SUCorePolicyRollback *)self skipCancelPreviousUpdate])
  {
    v8 = [(__CFString *)v3 stringByAppendingString:@"|skipCancelPreviousUpdate"];

    v3 = v8;
  }

  baseRollbackOptions = [(SUCorePolicyRollback *)self baseRollbackOptions];
  if (baseRollbackOptions)
  {
    v10 = @"|withBaseRollbackOptions";
  }

  else
  {
    v10 = @"|noBaseRollbackOptions";
  }

  v11 = [(__CFString *)v3 stringByAppendingString:v10];

  additionalOptions = [(SUCorePolicyRollback *)self additionalOptions];
  if (additionalOptions)
  {
    v13 = @"|withAdditionalOptions";
  }

  else
  {
    v13 = @"|noAdditionalOptions";
  }

  v14 = [v11 stringByAppendingString:v13];

  if (([v14 isEqualToString:&stru_28469CC48] & 1) == 0)
  {
    v15 = [v14 stringByAppendingString:@"|"];

    v14 = v15;
  }

  return v14;
}

@end