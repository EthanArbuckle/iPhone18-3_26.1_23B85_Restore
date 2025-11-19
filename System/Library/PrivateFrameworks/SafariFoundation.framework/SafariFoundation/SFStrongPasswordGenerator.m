@interface SFStrongPasswordGenerator
- (SFStrongPasswordGenerator)init;
- (id)generatedPasswordForAppWithAssociatedDomains:(id)a3 passwordRules:(id)a4 confirmPasswordRules:(id)a5;
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
    v4 = [MEMORY[0x277CCA8D8] safari_safariCoreBundle];
    v5 = [v4 URLForResource:@"WBSAutoFillQuirks" withExtension:@"plist"];
    v6 = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [v6 safari_autoFillQuirksDownloadDirectoryURL];
    v8 = [v3 initWithBuiltInQuirksURL:v5 downloadsDirectoryURL:v7 resourceName:@"AutoFillQuirks" resourceVersion:@"1" updateDateDefaultsKey:&stru_2875FD420 updateInterval:0.0];

    [v8 setShouldAttemptToDownloadConfiguration:0];
    [v8 beginLoadingQuirksFromDisk];
    v9 = [v8 passwordGenerationManager];
    passwordGenerationManager = v2->_passwordGenerationManager;
    v2->_passwordGenerationManager = v9;

    v11 = v2;
  }

  return v2;
}

- (id)generatedPasswordForAppWithAssociatedDomains:(id)a3 passwordRules:(id)a4 confirmPasswordRules:(id)a5
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 length];
  v12 = [v10 length];
  if (v11 | v12)
  {
    v13 = v12;
    if (v11)
    {
      v11 = [MEMORY[0x277D49AB0] parsePasswordRules:v9 error:0];
    }

    if (!v13)
    {
      goto LABEL_26;
    }

    v14 = [MEMORY[0x277D49AB0] parsePasswordRules:v10 error:0];
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

  if (![v8 count])
  {
    v24 = [(WBSPasswordGenerationManager *)self->_passwordGenerationManager generatedPasswordMatchingRequirements:MEMORY[0x277CBEC10]];
    goto LABEL_28;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = v8;
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