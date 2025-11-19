@interface SXLayoutPolicyManager
- (BOOL)shouldPerformLayoutWithLayoutOptionsDiff:(unint64_t)a3;
- (SXLayoutPolicyManager)initWithDocumentProvider:(id)a3 hintsConfigurationOptionProvider:(id)a4;
@end

@implementation SXLayoutPolicyManager

- (SXLayoutPolicyManager)initWithDocumentProvider:(id)a3 hintsConfigurationOptionProvider:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SXLayoutPolicyManager;
  v9 = [(SXLayoutPolicyManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, a3);
    objc_storeStrong(&v10->_hintsConfigurationOptionProvider, a4);
  }

  return v10;
}

- (BOOL)shouldPerformLayoutWithLayoutOptionsDiff:(unint64_t)a3
{
  v3 = a3;
  if (a3)
  {
    if (a3 == 0x3FFFF || (a3 & 0x87) != 0 || (-[SXHintsConfigurationOptionProvider hints](self->_hintsConfigurationOptionProvider, "hints"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 ignoreConditionHints], v5, (v6 & 1) != 0))
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    v8 = [(SXLayoutPolicyManager *)self documentProvider];
    v9 = [v8 document];
    v10 = [v9 hints];
    v11 = [v10 conditions];

    if ((v3 & 0x100) == 0)
    {
      v12 = (v3 & 8) != 0 && [v11 subscriptionStatus] != 0;
      v13 = (v3 & 0x10) != 0 && [v11 subscriptionStatus] != 0;
      if (!v12 && !v13 && ((v3 & 0x200) == 0 || ![v11 horizontalSizeClass]) && ((v3 & 0x400) == 0 || !objc_msgSend(v11, "verticalSizeClass")) && ((v3 & 0x40) == 0 || !objc_msgSend(v11, "testing")) && ((v3 & 0x20) == 0 || !objc_msgSend(v11, "viewLocation")) && ((v3 & 0x800) == 0 || !objc_msgSend(v11, "newsletter")) && ((v3 & 0x2000) == 0 || !objc_msgSend(v11, "subscriptionActivationEligibility")))
      {
        if ((v3 & 0x10000) != 0)
        {
          if (!([v11 offerIdentifier] | v3 & 0x4000))
          {
LABEL_29:
            LOBYTE(v3) = (v3 & 0x20000) != 0 && [v11 following] != 0;
            goto LABEL_33;
          }
        }

        else if ((v3 & 0x4000) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    LOBYTE(v3) = 1;
LABEL_33:
  }

  return v3;
}

@end