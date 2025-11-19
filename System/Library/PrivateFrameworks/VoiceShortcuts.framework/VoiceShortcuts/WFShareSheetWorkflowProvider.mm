@interface WFShareSheetWorkflowProvider
- (WFShareSheetWorkflowProvider)initWithDatabaseProvider:(id)a3;
- (id)generateSingleUseTokenForWorkflowIdentifier:(id)a3;
- (id)shareSheetWorkflowsForExtensionMatchingDictionaries:(id)a3 hostBundleIdentifier:(id)a4 error:(id *)a5;
@end

@implementation WFShareSheetWorkflowProvider

- (id)generateSingleUseTokenForWorkflowIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflowProvider.m" lineNumber:78 description:{@"Invalid parameter not satisfying: %@", @"workflowIdentifier"}];
  }

  v6 = [MEMORY[0x277CCAD78] UUID];
  v7 = [v6 UUIDString];

  v8 = [MEMORY[0x277CBEBD0] systemShortcutsUserDefaults];
  [v8 setWorkflowIdentifier:v5 forToken:v7];

  return v7;
}

- (id)shareSheetWorkflowsForExtensionMatchingDictionaries:(id)a3 hostBundleIdentifier:(id)a4 error:(id *)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v41 = [MEMORY[0x277CCA890] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflowProvider.m" lineNumber:36 description:{@"Invalid parameter not satisfying: %@", @"extensionMatchingDictionaries"}];
  }

  v11 = VCOSTransactionWithName(@"shareSheetWorkflowReferencesForExtensionMatchingDictionaries");
  v12 = [MEMORY[0x277CFC308] sharedRegistry];
  v13 = [v12 contentItemClassesForShareSheetWithExtensionMatchingDictionaries:v9 hostBundleIdentifier:v10];

  v51 = v13;
  if ([v13 count])
  {
    v14 = [(WFShareSheetWorkflowProvider *)self databaseProvider];
    v56 = 0;
    v15 = [v14 databaseWithError:&v56];
    v16 = v56;

    v47 = v15;
    if (v15)
    {
      v43 = v16;
      v44 = v11;
      v45 = v10;
      v46 = v9;
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
            v25 = [v24 inputClasses];
            v26 = [v25 if_compactMap:&__block_literal_global_4124];

            v27 = objc_alloc(MEMORY[0x277CBEB98]);
            v28 = MEMORY[0x277D7CA60];
            v29 = [v24 workflowTypes];
            v30 = [v28 effectiveInputClassesFromInputClasses:v26 workflowTypes:v29];
            v31 = [v27 initWithArray:v30];

            if ([v51 intersectsSet:v31])
            {
              v32 = objc_alloc(MEMORY[0x277D7A0D0]);
              v33 = [v23 identifier];
              v34 = [v23 name];
              v35 = [v23 icon];
              v36 = [v32 initWithIdentifier:v33 name:v34 glyphCharacter:{objc_msgSend(v35, "glyphCharacter")}];

              v20 = v47;
              [v48 addObject:v36];
            }
          }

          v19 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
        }

        while (v19);
      }

      v10 = v45;
      v9 = v46;
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

      if (a5)
      {
        v38 = v16;
        *a5 = v16;
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

- (WFShareSheetWorkflowProvider)initWithDatabaseProvider:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"WFShareSheetWorkflowProvider.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"databaseProvider"}];

    if (!self)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (self)
  {
LABEL_3:
    objc_storeStrong(&self->_databaseProvider, a3);
    v7 = self;
  }

LABEL_4:

  return self;
}

@end