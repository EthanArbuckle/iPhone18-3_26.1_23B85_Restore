@interface SXLayoutPolicyManager
- (BOOL)shouldPerformLayoutWithLayoutOptionsDiff:(unint64_t)diff;
- (SXLayoutPolicyManager)initWithDocumentProvider:(id)provider hintsConfigurationOptionProvider:(id)optionProvider;
@end

@implementation SXLayoutPolicyManager

- (SXLayoutPolicyManager)initWithDocumentProvider:(id)provider hintsConfigurationOptionProvider:(id)optionProvider
{
  providerCopy = provider;
  optionProviderCopy = optionProvider;
  v12.receiver = self;
  v12.super_class = SXLayoutPolicyManager;
  v9 = [(SXLayoutPolicyManager *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_documentProvider, provider);
    objc_storeStrong(&v10->_hintsConfigurationOptionProvider, optionProvider);
  }

  return v10;
}

- (BOOL)shouldPerformLayoutWithLayoutOptionsDiff:(unint64_t)diff
{
  diffCopy = diff;
  if (diff)
  {
    if (diff == 0x3FFFF || (diff & 0x87) != 0 || (-[SXHintsConfigurationOptionProvider hints](self->_hintsConfigurationOptionProvider, "hints"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 ignoreConditionHints], v5, (v6 & 1) != 0))
    {
      LOBYTE(diffCopy) = 1;
      return diffCopy;
    }

    documentProvider = [(SXLayoutPolicyManager *)self documentProvider];
    document = [documentProvider document];
    hints = [document hints];
    conditions = [hints conditions];

    if ((diffCopy & 0x100) == 0)
    {
      v12 = (diffCopy & 8) != 0 && [conditions subscriptionStatus] != 0;
      v13 = (diffCopy & 0x10) != 0 && [conditions subscriptionStatus] != 0;
      if (!v12 && !v13 && ((diffCopy & 0x200) == 0 || ![conditions horizontalSizeClass]) && ((diffCopy & 0x400) == 0 || !objc_msgSend(conditions, "verticalSizeClass")) && ((diffCopy & 0x40) == 0 || !objc_msgSend(conditions, "testing")) && ((diffCopy & 0x20) == 0 || !objc_msgSend(conditions, "viewLocation")) && ((diffCopy & 0x800) == 0 || !objc_msgSend(conditions, "newsletter")) && ((diffCopy & 0x2000) == 0 || !objc_msgSend(conditions, "subscriptionActivationEligibility")))
      {
        if ((diffCopy & 0x10000) != 0)
        {
          if (!([conditions offerIdentifier] | diffCopy & 0x4000))
          {
LABEL_29:
            LOBYTE(diffCopy) = (diffCopy & 0x20000) != 0 && [conditions following] != 0;
            goto LABEL_33;
          }
        }

        else if ((diffCopy & 0x4000) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    LOBYTE(diffCopy) = 1;
LABEL_33:
  }

  return diffCopy;
}

@end