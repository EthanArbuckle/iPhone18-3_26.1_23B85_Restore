@interface SUCorePolicyRollback
- (BOOL)isEqual:(id)a3;
- (SUCorePolicyRollback)init;
- (SUCorePolicyRollback)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
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

- (SUCorePolicyRollback)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUCorePolicyRollback;
  v5 = [(SUCorePolicyRollback *)&v9 init];
  if (v5)
  {
    v5->_performPhase = [v4 decodeBoolForKey:@"PerformPhase"];
    v5->_performRollbackPreparePhase = [v4 decodeBoolForKey:@"PerformPreparePhase"];
    v5->_performRollbackSuspendPhase = [v4 decodeBoolForKey:@"PerformSuspendPhase"];
    v5->_performRollbackResumePhase = [v4 decodeBoolForKey:@"PerformResumePhase"];
    v5->_performRollbackApplyPhase = [v4 decodeBoolForKey:@"PerformApplyPhase"];
    v5->_skipCancelPreviousUpdate = [v4 decodeBoolForKey:@"SkipCancelPreviousUpdate"];
    additionalOptions = v5->_additionalOptions;
    v5->_additionalOptions = 0;

    baseRollbackOptions = v5->_baseRollbackOptions;
    v5->_baseRollbackOptions = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:-[SUCorePolicyRollback performPhase](self forKey:{"performPhase"), @"PerformPhase"}];
  [v4 encodeBool:-[SUCorePolicyRollback performRollbackPreparePhase](self forKey:{"performRollbackPreparePhase"), @"PerformPreparePhase"}];
  [v4 encodeBool:-[SUCorePolicyRollback performRollbackSuspendPhase](self forKey:{"performRollbackSuspendPhase"), @"PerformSuspendPhase"}];
  [v4 encodeBool:-[SUCorePolicyRollback performRollbackResumePhase](self forKey:{"performRollbackResumePhase"), @"PerformResumePhase"}];
  [v4 encodeBool:-[SUCorePolicyRollback performRollbackApplyPhase](self forKey:{"performRollbackApplyPhase"), @"PerformApplyPhase"}];
  [v4 encodeBool:-[SUCorePolicyRollback skipCancelPreviousUpdate](self forKey:{"skipCancelPreviousUpdate"), @"SkipCancelPreviousUpdate"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setPerformPhase:{-[SUCorePolicyRollback performPhase](self, "performPhase")}];
  [v5 setPerformRollbackPreparePhase:{-[SUCorePolicyRollback performRollbackPreparePhase](self, "performRollbackPreparePhase")}];
  [v5 setPerformRollbackSuspendPhase:{-[SUCorePolicyRollback performRollbackSuspendPhase](self, "performRollbackSuspendPhase")}];
  [v5 setPerformRollbackResumePhase:{-[SUCorePolicyRollback performRollbackResumePhase](self, "performRollbackResumePhase")}];
  [v5 setPerformRollbackApplyPhase:{-[SUCorePolicyRollback performRollbackApplyPhase](self, "performRollbackApplyPhase")}];
  [v5 setSkipCancelPreviousUpdate:{-[SUCorePolicyRollback skipCancelPreviousUpdate](self, "skipCancelPreviousUpdate")}];
  v6 = [(SUCorePolicyRollback *)self baseRollbackOptions];
  v7 = [v6 copyWithZone:a3];
  [v5 setBaseRollbackOptions:v7];

  v8 = [(SUCorePolicyRollback *)self additionalOptions];
  v9 = [v8 copyWithZone:a3];
  [v5 setAdditionalOptions:v9];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCorePolicyRollback *)v5 performPhase];
      if (v6 == [(SUCorePolicyRollback *)self performPhase]&& (v7 = [(SUCorePolicyRollback *)v5 performRollbackPreparePhase], v7 == [(SUCorePolicyRollback *)self performRollbackPreparePhase]) && (v8 = [(SUCorePolicyRollback *)v5 performRollbackSuspendPhase], v8 == [(SUCorePolicyRollback *)self performRollbackSuspendPhase]) && (v9 = [(SUCorePolicyRollback *)v5 performRollbackResumePhase], v9 == [(SUCorePolicyRollback *)self performRollbackResumePhase]) && (v10 = [(SUCorePolicyRollback *)v5 performRollbackApplyPhase], v10 == [(SUCorePolicyRollback *)self performRollbackApplyPhase]))
      {
        v13 = [(SUCorePolicyRollback *)v5 skipCancelPreviousUpdate];
        v11 = v13 ^ [(SUCorePolicyRollback *)self skipCancelPreviousUpdate]^ 1;
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

  v9 = [(SUCorePolicyRollback *)self baseRollbackOptions];
  v10 = @"none";
  if (v9)
  {
    v10 = [(SUCorePolicyRollback *)self baseRollbackOptions];
  }

  v11 = [(SUCorePolicyRollback *)self additionalOptions];
  if (v11)
  {
    v12 = [(SUCorePolicyRollback *)self additionalOptions];
    v13 = [v16 stringWithFormat:@"SUCorePolicyRollback(performPhase:%@|performRollbackPreparePhase:%@|performRollbackSuspendPhase:%@|performRollbackResumePhase:%@|performRollbackApplyPhase:%@|skipCancelPreviousUpdate:%@|baseRollbackOptions:%@|additionalOptions:%@)", v15, v5, v6, v7, v8, v3, v10, v12];
  }

  else
  {
    v13 = [v16 stringWithFormat:@"SUCorePolicyRollback(performPhase:%@|performRollbackPreparePhase:%@|performRollbackSuspendPhase:%@|performRollbackResumePhase:%@|performRollbackApplyPhase:%@|skipCancelPreviousUpdate:%@|baseRollbackOptions:%@|additionalOptions:%@)", v15, v5, v6, v7, v8, v3, v10, @"none"];
  }

  if (v9)
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

  v9 = [(SUCorePolicyRollback *)self baseRollbackOptions];
  if (v9)
  {
    v10 = @"|withBaseRollbackOptions";
  }

  else
  {
    v10 = @"|noBaseRollbackOptions";
  }

  v11 = [(__CFString *)v3 stringByAppendingString:v10];

  v12 = [(SUCorePolicyRollback *)self additionalOptions];
  if (v12)
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