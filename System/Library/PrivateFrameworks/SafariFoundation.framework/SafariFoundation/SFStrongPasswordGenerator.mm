@interface SFStrongPasswordGenerator
- (SFStrongPasswordGenerator)init;
- (id)generatedPasswordForAppWithAssociatedDomains:(id)domains passwordRules:(id)rules confirmPasswordRules:(id)passwordRules;
@end

@implementation SFStrongPasswordGenerator

- (SFStrongPasswordGenerator)init
{
  v13.receiver = self;
  v13.super_class = SFStrongPasswordGenerator;
  v2 = [(SFStrongPasswordGenerator *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277D499D8]);
    safari_safariCoreBundle = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
    v5 = [safari_safariCoreBundle URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    safari_autoFillQuirksDownloadDirectoryURL = [defaultManager safari_autoFillQuirksDownloadDirectoryURL];
    v8 = [v3 initWithBuiltInQuirksURL:v5 downloadsDirectoryURL:safari_autoFillQuirksDownloadDirectoryURL resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:&stru_2875FD420 updateInterval:0.0];

    [v8 setShouldAttemptToDownloadConfiguration:0];
    [v8 beginLoadingQuirksFromDisk];
    passwordGenerationManager = [v8 passwordGenerationManager];
    passwordGenerationManager = v2->_passwordGenerationManager;
    v2->_passwordGenerationManager = passwordGenerationManager;

    v11 = v2;
  }

  return v2;
}

- (id)generatedPasswordForAppWithAssociatedDomains:(id)domains passwordRules:(id)rules confirmPasswordRules:(id)passwordRules
{
  v34 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  rulesCopy = rules;
  passwordRulesCopy = passwordRules;
  v11 = [rulesCopy length];
  v12 = [passwordRulesCopy length];
  if (v11 | v12)
  {
    v13 = v12;
    if (v11)
    {
      v11 = [MEMORY[0x277D49AB0] parsePasswordRules:rulesCopy error:0];
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = [MEMORY[0x277D49AB0] parsePasswordRules:passwordRulesCopy error:0];
    v13 = v14;
    if (v11 && v14)
    {
      v15 = [MEMORY[0x277D49AB0] mergePasswordRuleSet:v11 withPasswordRuleSet:v14];
    }

    else
    {
      if (!v14)
      {
LABEL_26:
        v26 = [MEMORY[0x277D49A90] requirementsForPasswordRuleSet:v11 respectingMinLength:0 maxLength:0];
        v24 = [(WBSPasswordGenerationManager *)self->_passwordGenerationManager generatedPasswordMatchingRequirements:v26];

        goto LABEL_27;
      }

      v15 = v14;
      v13 = v15;
    }

    v25 = v15;

    v11 = v25;
    goto LABEL_26;
  }

  if (![domainsCopy count])
  {
    v24 = [(WBSPasswordGenerationManager *)self->_passwordGenerationManager generatedPasswordMatchingRequirements:MEMORY[0x277CBEC10]];
    goto LABEL_28;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = domainsCopy;
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [(WBSPasswordGenerationManager *)self->_passwordGenerationManager defaultRequirementsForDomain:*(*(&v29 + 1) + 8 * i), v29];
        if (v21)
        {
          v22 = v21;
          goto LABEL_19;
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v22 = 0;
LABEL_19:

  v23 = MEMORY[0x277CBEC10];
  if (v22)
  {
    v23 = v22;
  }

  v11 = v23;

  v24 = [(WBSPasswordGenerationManager *)self->_passwordGenerationManager generatedPasswordMatchingRequirements:v11];
LABEL_27:

LABEL_28:
  v27 = *MEMORY[0x277D85DE8];

  return v24;
}

@end