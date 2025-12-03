@interface WFShareSheetWorkflowProvider
- (WFShareSheetWorkflowProvider)initWithDatabaseProvider:(id)provider;
- (id)generateSingleUseTokenForWorkflowIdentifier:(id)identifier;
- (id)shareSheetWorkflowsForExtensionMatchingDictionaries:(id)dictionaries hostBundleIdentifier:(id)identifier error:(id *)error;
@end

@implementation WFShareSheetWorkflowProvider

- (id)generateSingleUseTokenForWorkflowIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflowProvider.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"workflowIdentifier"}];
  }

  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];

  systemShortcutsUserDefaults = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  [systemShortcutsUserDefaults setWorkflowIdentifier:identifierCopy forToken:uUIDString];

  return uUIDString;
}

- (id)shareSheetWorkflowsForExtensionMatchingDictionaries:(id)dictionaries hostBundleIdentifier:(id)identifier error:(id *)error
{
  v62 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  identifierCopy = identifier;
  if (!dictionariesCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflowProvider.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"extensionMatchingDictionaries"}];
  }

  v11 = VCOSTransactionWithName(@"shareSheetWorkflowReferencesForExtensionMatchingDictionaries");
  mEMORY[0x277CFC308] = [MEMORY[0x277CFC308] sharedRegistry];
  v13 = [mEMORY[0x277CFC308] contentItemClassesForShareSheetWithExtensionMatchingDictionaries:dictionariesCopy hostBundleIdentifier:identifierCopy];

  v51 = v13;
  if ([v13 count])
  {
    databaseProvider = [(WFShareSheetWorkflowProvider *)self databaseProvider];
    v56 = 0;
    v15 = [databaseProvider databaseWithError:&v56];
    v16 = v56;

    v47 = v15;
    if (v15)
    {
      v43 = v16;
      v44 = v11;
      v45 = identifierCopy;
      v46 = dictionariesCopy;
      v17 = [v15 sortedVisibleWorkflowsWithType:*MEMORY[0x277D7A898]];
      v50 = [MEMORY[0x277CBEB98] setWithObjects:{@"inputClasses", @"workflowTypes", 0}];
      v48 = objc_opt_new();
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v42 = v17;
      obj = [v17 descriptors];
      v18 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = v15;
        v21 = *v53;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v53 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v52 + 1) + 8 * i);
            v24 = [v20 recordWithDescriptor:v23 properties:v50 error:0];
            inputClasses = [v24 inputClasses];
            v26 = [inputClasses if_compactMap:&__block_literal_global_4124];

            v27 = objc_alloc(MEMORY[0x277CBEB98]);
            v28 = MEMORY[0x277D7CA60];
            workflowTypes = [v24 workflowTypes];
            v30 = [v28 effectiveInputClassesFromInputClasses:v26 workflowTypes:workflowTypes];
            v31 = [v27 initWithArray:v30];

            if ([v51 intersectsSet:v31])
            {
              v32 = objc_alloc(MEMORY[0x277D7A0D0]);
              identifier = [v23 identifier];
              name = [v23 name];
              icon = [v23 icon];
              v36 = [v32 initWithIdentifier:identifier name:name glyphCharacter:{objc_msgSend(icon, "glyphCharacter")}];

              v20 = v47;
              [v48 addObject:v36];
            }
          }

          v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v19);
      }

      identifierCopy = v45;
      dictionariesCopy = v46;
      v16 = v43;
      v11 = v44;
    }

    else
    {
      v37 = getWFGeneralLogObject();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v59 = "[WFShareSheetWorkflowProvider shareSheetWorkflowsForExtensionMatchingDictionaries:hostBundleIdentifier:error:]";
        v60 = 2114;
        v61 = v16;
        _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_DEFAULT, "%s Database is not available, returning empty array of share sheet workflow references, error = %{public}@", buf, 0x16u);
      }

      if (error)
      {
        v38 = v16;
        *error = v16;
      }

      v48 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v48 = MEMORY[0x277CBEBF8];
  }

  v39 = *MEMORY[0x277D85DE8];

  return v48;
}

- (WFShareSheetWorkflowProvider)initWithDatabaseProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflowProvider.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    objc_storeStrong(&self->_databaseProvider, provider);
    selfCopy = self;
  }

LABEL_4:

  return self;
}

@end