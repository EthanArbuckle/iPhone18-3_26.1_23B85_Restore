@interface WFConfiguredSystemActionMigrator
- (BOOL)completedSystemAppMigration;
- (BOOL)hasSystemActionForBundleIdentifier:(id)identifier;
- (BOOL)isConfiguredSystemActionValid:(id)valid;
- (WFConfiguredSystemActionMigrator)initWithDatabaseProvider:(id)provider actionProvider:(id)actionProvider;
- (id)updatedConfiguredSystemActionFrom:(id)from;
- (void)updateActionsIfNeeded;
- (void)updateConfiguredSystemActionOfType:(id)type;
@end

@implementation WFConfiguredSystemActionMigrator

- (BOOL)completedSystemAppMigration
{
  v15 = *MEMORY[0x277D85DE8];
  SystemAppMigrationStatus = MobileInstallationGetSystemAppMigrationStatus();
  v3 = 0;
  v4 = getWFStaccatoLogObject();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (SystemAppMigrationStatus)
  {
    if (v5)
    {
      *buf = 136315394;
      v12 = "[WFConfiguredSystemActionMigrator completedSystemAppMigration]";
      v13 = 1024;
      LODWORD(v14) = 0;
      v6 = "%s System App Migration Finished: %d";
      v7 = v4;
      v8 = 18;
LABEL_6:
      _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else if (v5)
  {
    *buf = 136315394;
    v12 = "[WFConfiguredSystemActionMigrator completedSystemAppMigration]";
    v13 = 2112;
    v14 = v3;
    v6 = "%s Fetching System App Migration Status failed with error %@";
    v7 = v4;
    v8 = 22;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
  return 0;
}

- (id)updatedConfiguredSystemActionFrom:(id)from
{
  v24 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    databaseProvider = [(WFConfiguredSystemActionMigrator *)self databaseProvider];
    v19 = 0;
    v6 = [databaseProvider databaseWithError:&v19];
    v7 = v19;

    if (v6)
    {
      v8 = fromCopy;
      if (v8)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      v12 = v9;

      workflowIdentifier = [v12 workflowIdentifier];
      v14 = [v6 referenceForWorkflowID:workflowIdentifier];

      if (v14)
      {
        v15 = objc_alloc(MEMORY[0x277D79E78]);
        shortcutsMetadata = [v8 shortcutsMetadata];
        v10 = [v15 initWithWorkflow:v14 shortcutsMetadata:shortcutsMetadata];
      }

      else
      {
        v10 = objc_alloc_init(MEMORY[0x277D79E70]);
      }
    }

    else
    {
      v11 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[WFConfiguredSystemActionMigrator updatedConfiguredSystemActionFrom:]";
        v22 = 2112;
        v23 = v7;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Failed to fetch current workflow state due to: %@", buf, 0x16u);
      }

      v10 = fromCopy;
    }
  }

  else
  {
    v10 = objc_alloc_init(MEMORY[0x277D79E70]);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)isConfiguredSystemActionValid:(id)valid
{
  v21 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![(WFConfiguredSystemActionMigrator *)self completedSystemAppMigration])
    {
      v11 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[WFConfiguredSystemActionMigrator isConfiguredSystemActionValid:]";
        v19 = 2112;
        v20 = validCopy;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Can't determine validity of action right now, will try again later: %@", &v17, 0x16u);
      }

      v10 = 1;
      goto LABEL_23;
    }

    v5 = objc_alloc(MEMORY[0x277CC1E70]);
    associatedBundleIdentifier = [validCopy associatedBundleIdentifier];
    v7 = [v5 initWithBundleIdentifier:associatedBundleIdentifier allowPlaceholder:1 error:0];

    if (!v7)
    {
      v11 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[WFConfiguredSystemActionMigrator isConfiguredSystemActionValid:]";
        v19 = 2112;
        v20 = validCopy;
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, "%s Current action for system action %@ needs updating due to source app being uninstalled.", &v17, 0x16u);
      }

      v10 = 0;
      goto LABEL_23;
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = validCopy;
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = v9;

    v12 = [(WFConfiguredSystemActionMigrator *)self updatedConfiguredSystemActionFrom:v11];
    v13 = [v11 isEqual:v12];
    v10 = v13 ^ 1;
    if ((v13 & 1) == 0)
    {
      v14 = getWFStaccatoLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[WFConfiguredSystemActionMigrator isConfiguredSystemActionValid:]";
        v19 = 2112;
        v20 = v8;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s Current action for system action %@ needs updating due to backing workflow changing.", &v17, 0x16u);
      }
    }

LABEL_23:
    goto LABEL_24;
  }

  v10 = 1;
LABEL_24:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)updateConfiguredSystemActionOfType:(id)type
{
  v21 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  actionProvider = [(WFConfiguredSystemActionMigrator *)self actionProvider];
  v6 = [actionProvider configuredSystemActionForActionType:typeCopy];

  v7 = getWFStaccatoLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315650;
    v16 = "[WFConfiguredSystemActionMigrator updateConfiguredSystemActionOfType:]";
    v17 = 2112;
    v18 = typeCopy;
    v19 = 2112;
    v20 = v6;
    _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Checking whether current action for system action type: %@ needs updating: %@", &v15, 0x20u);
  }

  if (v6 && ![(WFConfiguredSystemActionMigrator *)self isConfiguredSystemActionValid:v6])
  {
    v9 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[WFConfiguredSystemActionMigrator updateConfiguredSystemActionOfType:]";
      v17 = 2112;
      v18 = typeCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s Current action for system action type: %@ needs updating: %@", &v15, 0x20u);
    }

    v8 = [(WFConfiguredSystemActionMigrator *)self updatedConfiguredSystemActionFrom:v6];
    v10 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[WFConfiguredSystemActionMigrator updateConfiguredSystemActionOfType:]";
      v17 = 2112;
      v18 = typeCopy;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s Updated action for system action type: %@ is: %@", &v15, 0x20u);
    }

    actionProvider2 = [(WFConfiguredSystemActionMigrator *)self actionProvider];
    v12 = [actionProvider2 saveUpdatedAction:v8 forActionType:typeCopy];

    v13 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[WFConfiguredSystemActionMigrator updateConfiguredSystemActionOfType:]";
      v17 = 2112;
      v18 = typeCopy;
      v19 = 1024;
      LODWORD(v20) = v12;
      _os_log_impl(&dword_23103C000, v13, OS_LOG_TYPE_DEFAULT, "%s Completed updating system action type: %@, success: %i", &v15, 0x1Cu);
    }
  }

  else
  {
    v8 = getWFStaccatoLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 136315650;
      v16 = "[WFConfiguredSystemActionMigrator updateConfiguredSystemActionOfType:]";
      v17 = 2112;
      v18 = typeCopy;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_DEFAULT, "%s Current action for system action type: %@ does not need updating: %@", &v15, 0x20u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)hasSystemActionForBundleIdentifier:(id)identifier
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  actionProvider = [(WFConfiguredSystemActionMigrator *)self actionProvider];
  availableActionTypes = [actionProvider availableActionTypes];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = availableActionTypes;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        actionProvider2 = [(WFConfiguredSystemActionMigrator *)self actionProvider];
        v14 = [actionProvider2 configuredSystemActionForActionType:v12];

        associatedBundleIdentifier = [v14 associatedBundleIdentifier];
        v16 = [associatedBundleIdentifier isEqualToString:identifierCopy];

        if (v16)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)updateActionsIfNeeded
{
  v16 = *MEMORY[0x277D85DE8];
  actionProvider = [(WFConfiguredSystemActionMigrator *)self actionProvider];
  availableActionTypes = [actionProvider availableActionTypes];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = availableActionTypes;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(WFConfiguredSystemActionMigrator *)self updateConfiguredSystemActionOfType:*(*(&v11 + 1) + 8 * v9++), v11];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (WFConfiguredSystemActionMigrator)initWithDatabaseProvider:(id)provider actionProvider:(id)actionProvider
{
  providerCopy = provider;
  actionProviderCopy = actionProvider;
  v13.receiver = self;
  v13.super_class = WFConfiguredSystemActionMigrator;
  v9 = [(WFConfiguredSystemActionMigrator *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_databaseProvider, provider);
    objc_storeStrong(&v10->_actionProvider, actionProvider);
    v11 = v10;
  }

  return v10;
}

@end