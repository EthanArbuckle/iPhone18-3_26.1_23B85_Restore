@interface REMDatabaseMigrationContext
- (BOOL)_cleanLocalDatabases:(id *)a3;
- (BOOL)ensureAccountsExist:(id *)a3;
- (BOOL)ensureAccountsExist:(id)a3 error:(id *)a4;
- (BOOL)ensureAccountsExistWithMigrationAccountInfos:(id)a3 error:(id *)a4;
- (BOOL)isDatabaseMigrated;
- (BOOL)shouldDeleteMigratedData;
- (REMDatabaseMigrationContext)init;
- (REMDatabaseMigrationContext)initWithSandboxDatabaseEnabled:(BOOL)a3;
- (id)_migrationAccountInfosFromDEPRECATEDInfoDictionaryList:(id)a3;
- (id)remStore;
- (void)_diagnosticReportWithStage:(unint64_t)a3 failureIdentifier:(id)a4 error:(id)a5;
- (void)_postMigrationLocalAccountCleanup;
- (void)dealloc;
- (void)destroySandboxContainerIfNecessary;
- (void)reportMigrationDidFinishWithSuccess:(BOOL)a3;
- (void)reportMigrationErrorWithIdentifier:(id)a3 atStage:(unint64_t)a4 error:(id)a5 objectLocator:(id)a6;
- (void)reportMigrationWillBegin;
@end

@implementation REMDatabaseMigrationContext

- (REMDatabaseMigrationContext)init
{
  v3 = +[REMUserDefaults daemonUserDefaults];
  v4 = [v3 databaseMigrationTestModeEnabled];

  return [(REMDatabaseMigrationContext *)self initWithSandboxDatabaseEnabled:v4];
}

- (REMDatabaseMigrationContext)initWithSandboxDatabaseEnabled:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = REMDatabaseMigrationContext;
  v4 = [(REMDatabaseMigrationContext *)&v13 init];
  if (v4)
  {
    v5 = !v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  v12 = 0;
  v6 = [REMStore createIsolatedStoreContainerWithError:&v12];
  v7 = v12;
  containerToken = v4->_containerToken;
  v4->_containerToken = v6;

  if (v4->_containerToken)
  {

LABEL_7:
    v9 = v4;
    goto LABEL_8;
  }

  v11 = +[REMLogStore write];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    [REMDatabaseMigrationContext initWithSandboxDatabaseEnabled:];
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)shouldDeleteMigratedData
{
  v2 = [(REMDatabaseMigrationContext *)self containerToken];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)isDatabaseMigrated
{
  v2 = [(REMDatabaseMigrationContext *)self containerToken];

  if (v2)
  {
    v3 = +[REMSystemUtilities systemBuildVersion];
    v4 = +[REMUserDefaults daemonUserDefaults];
    v5 = [v4 lastDatabaseMigrationSystemBuildVersion];
    v6 = [v3 isEqual:v5];
  }

  else
  {
    v3 = +[REMUserDefaults daemonUserDefaults];
    v6 = [v3 isDatabaseMigrated];
  }

  return v6;
}

- (id)remStore
{
  v3 = [(REMDatabaseMigrationContext *)self cachedStore];
  if (!v3)
  {
    v4 = [(REMDatabaseMigrationContext *)self containerToken];
    if (v4)
    {
      v5 = [REMStore alloc];
      v6 = [(REMDatabaseMigrationContext *)self containerToken];
      v3 = [(REMStore *)v5 initWithStoreContainerToken:v6];
    }

    else
    {
      v3 = objc_alloc_init(REMStore);
    }

    [(REMStore *)v3 setMode:1];
    [(REMDatabaseMigrationContext *)self setCachedStore:v3];
  }

  v7 = v3;

  return v7;
}

- (void)destroySandboxContainerIfNecessary
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to destroy isolated store container for database migration {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  [(REMDatabaseMigrationContext *)self destroySandboxContainerIfNecessary];
  v3.receiver = self;
  v3.super_class = REMDatabaseMigrationContext;
  [(REMDatabaseMigrationContext *)&v3 dealloc];
}

- (void)reportMigrationWillBegin
{
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "Database Migration will begin", v5, 2u);
  }

  AnalyticsSendEvent();
  v4 = [MEMORY[0x1E695DF00] date];
  [(REMDatabaseMigrationContext *)self setMigrationStartDate:v4];
}

- (void)reportMigrationErrorWithIdentifier:(id)a3 atStage:(unint64_t)a4 error:(id)a5 objectLocator:(id)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v11 = +[REMLogStore OVERSIZED];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v15 = NSStringFromMigrationStage(a4);
    v16 = [v10 userInfo];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x1E696A278]];
    *buf = 138544130;
    v21 = v9;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v10;
    v26 = 2112;
    v27 = v17;
    _os_log_error_impl(&dword_19A0DB000, v11, OS_LOG_TYPE_ERROR, "Migration Error {identifier: %{public}@, stage: %{public}@, error: %{public}@, error.debugDescription: %@}", buf, 0x2Au);
  }

  v19 = v10;
  v18 = v9;
  v12 = v10;
  v13 = v9;
  AnalyticsSendEventLazy();
  [(REMDatabaseMigrationContext *)self setLastReportedErrorIdentifier:v13];
  [(REMDatabaseMigrationContext *)self setLastReportedError:v12];
  [(REMDatabaseMigrationContext *)self setLastReportedErrorStage:a4];

  v14 = *MEMORY[0x1E69E9840];
}

id __94__REMDatabaseMigrationContext_reportMigrationErrorWithIdentifier_atStage_error_objectLocator___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"identifier"];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 setObject:v3 forKeyedSubscript:@"stage"];

  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = [v4 domain];
    [v2 setObject:v5 forKeyedSubscript:@"errorDomain"];

    v6 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 40), "code")}];
    [v2 setObject:v6 forKeyedSubscript:@"errorCode"];
  }

  return v2;
}

- (void)_postMigrationLocalAccountCleanup
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "_postMigrationLocalAccountCleanup: No local account is found for post local migration cleanup. This is unexpected {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)reportMigrationDidFinishWithSuccess:(BOOL)a3
{
  v3 = a3;
  v25 = *MEMORY[0x1E69E9840];
  v5 = [(REMDatabaseMigrationContext *)self migrationStartDate];
  [v5 timeIntervalSinceNow];
  v7 = v6;

  v8 = +[REMLogStore write];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v22 = v3;
    v23 = 2048;
    v24 = v7;
    _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_DEFAULT, "Database Migration did finish {success: %d, duration: %.2f}", buf, 0x12u);
  }

  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __67__REMDatabaseMigrationContext_reportMigrationDidFinishWithSuccess___block_invoke;
  v18 = &__block_descriptor_41_e19___NSDictionary_8__0l;
  LOBYTE(v20) = v3;
  v19 = v7;
  AnalyticsSendEventLazy();
  if (!v3)
  {
    v9 = [(REMDatabaseMigrationContext *)self lastReportedErrorStage:v15];
    v10 = [(REMDatabaseMigrationContext *)self lastReportedErrorIdentifier];
    v11 = [(REMDatabaseMigrationContext *)self lastReportedError];
    [(REMDatabaseMigrationContext *)self _diagnosticReportWithStage:v9 failureIdentifier:v10 error:v11];
  }

  [(REMDatabaseMigrationContext *)self setIsDatabaseMigrated:1, v15, v16, v17, v18, v19, v20];
  [(REMDatabaseMigrationContext *)self setShouldDataAccessStopSyncingReminders:1];
  v12 = +[REMUserDefaults daemonUserDefaults];
  v13 = +[REMSystemUtilities systemBuildVersion];
  [v12 setLastDatabaseMigrationSystemBuildVersion:v13];

  [(REMDatabaseMigrationContext *)self _postMigrationLocalAccountCleanup];
  v14 = *MEMORY[0x1E69E9840];
}

id __67__REMDatabaseMigrationContext_reportMigrationDidFinishWithSuccess___block_invoke(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"success";
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v7[1] = @"duration";
  v8[0] = v2;
  v3 = [MEMORY[0x1E696AD98] numberWithDouble:fabs(*(a1 + 32))];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (void)_diagnosticReportWithStage:(unint64_t)a3 failureIdentifier:(id)a4 error:(id)a5
{
  v20[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = MEMORY[0x1E69D4F80];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  v11 = NSStringFromMigrationStage(a3);
  v12 = [MEMORY[0x1E696AE30] processInfo];
  v13 = [v12 processName];
  v14 = [v10 signatureWithDomain:@"ReminderKit" type:@"EventKitMigration" subType:v11 subtypeContext:v9 detectedProcess:v13 triggerThresholdValues:0];

  if (v7)
  {
    v19[0] = @"errorDomain";
    v15 = [v7 domain];
    v19[1] = @"errorCode";
    v20[0] = v15;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v7, "code")}];
    v20[1] = v16;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];
  }

  else
  {
    v17 = 0;
  }

  [v10 snapshotWithSignature:v14 duration:v17 event:0 payload:&__block_literal_global_18 reply:0.0];

  v18 = *MEMORY[0x1E69E9840];
}

void __82__REMDatabaseMigrationContext__diagnosticReportWithStage_failureIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_19A0DB000, v3, OS_LOG_TYPE_DEFAULT, "AutoBugCapture did reply {response: %@}", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)ensureAccountsExistWithMigrationAccountInfos:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if ([(REMDatabaseMigrationContext *)self hasPerformedEnsureAccountsExist])
  {
    v7 = 1;
    goto LABEL_48;
  }

  if ([(REMDatabaseMigrationContext *)self isDatabaseMigrated])
  {
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "ensureAccountsExist: There is no need to clean local database before we ensure accounts exist for local migration.";
LABEL_8:
      _os_log_impl(&dword_19A0DB000, v8, OS_LOG_TYPE_INFO, v9, buf, 2u);
    }
  }

  else
  {
    [(REMDatabaseMigrationContext *)self _cleanLocalDatabases:a4];
    v8 = +[REMLogStore write];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v9 = "ensureAccountsExist: Finished calling [_cleanLocalDatabases]";
      goto LABEL_8;
    }
  }

  [(REMDatabaseMigrationContext *)self setHasPerformedEnsureAccountsExist:1];
  if ([v6 count])
  {
    v42 = a4;
    v10 = [(REMDatabaseMigrationContext *)self remStore];
    v43 = v6;
    v44 = [[REMSaveRequest alloc] initWithStore:v10];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v11 = v6;
    v12 = [v11 countByEnumeratingWithState:&v50 objects:v63 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v51;
      v45 = v11;
      v46 = v10;
      do
      {
        v15 = 0;
        v47 = v13;
        do
        {
          if (*v51 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v50 + 1) + 8 * v15);
          v17 = [v16 type];
          v18 = +[REMLogStore write];
          v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
          if (v17 == 1)
          {
            if (v19)
            {
              v20 = [v16 identifier];
              v21 = [v16 name];
              *buf = 138543618;
              v58 = v20;
              v59 = 2112;
              v60 = v21;
              _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "ensureAccountsExist: Local account is ignored {accountID: %{public}@, name: %@}", buf, 0x16u);
            }
          }

          else
          {
            if (v19)
            {
              v22 = [v16 identifier];
              v23 = [v16 name];
              v24 = [v16 type];
              *buf = 138543874;
              v58 = v22;
              v59 = 2112;
              v60 = v23;
              v61 = 2048;
              v62 = v24;
              _os_log_impl(&dword_19A0DB000, v18, OS_LOG_TYPE_INFO, "ensureAccountsExist: About to add account per request {accountID: %{public}@, name: %@, type: %ld}", buf, 0x20u);
            }

            v25 = [v16 identifier];
            v49 = 0;
            v26 = [v10 fetchAccountWithExternalIdentifier:v25 error:&v49];
            v18 = v49;

            if (v26)
            {
              v27 = v10;
              v28 = +[REMLogStore write];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:v56 error:v16];
              }
            }

            else
            {
              v28 = [v16 name];
              v29 = objc_alloc(MEMORY[0x1E696AFB0]);
              v30 = [v16 identifier];
              v31 = [v29 initWithUUIDString:v30];

              if (v31)
              {
                v32 = [REMAccount objectIDWithUUID:v31];
                v33 = -[REMSaveRequest __addAccountWithType:name:accountObjectID:](v44, "__addAccountWithType:name:accountObjectID:", [v16 type], v28, v32);
                if ([v16 isCloudKit])
                {
                  v34 = +[REMLogStore write];
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:v54 error:v16];
                  }
                }

                else
                {
                  v34 = [v16 identifier];
                  [v33 setExternalIdentifier:v34];
                }
              }

              else
              {
                v32 = +[REMLogStore write];
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:v55 error:v16];
                }
              }

              v27 = v46;

              v11 = v45;
            }

            v10 = v27;
            v13 = v47;
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v50 objects:v63 count:16];
      }

      while (v13);
    }

    v35 = +[REMLogStore write];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v35, OS_LOG_TYPE_INFO, "ensureAccountsExist: About to save pending changes to our database", buf, 2u);
    }

    v48 = 0;
    [(REMSaveRequest *)v44 saveSynchronouslyWithError:&v48];
    v36 = v48;
    v37 = v36;
    v7 = v36 == 0;
    if (v36)
    {
      if (v42)
      {
        v38 = v36;
        *v42 = v37;
      }

      v39 = +[REMLogStore write];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [REMDatabaseMigrationContext ensureAccountsExistWithMigrationAccountInfos:error:];
      }
    }

    v6 = v43;
  }

  else
  {
    v10 = +[REMLogStore write];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v10, OS_LOG_TYPE_DEFAULT, "ensureAccountsExist: There's no input account info. There's nothing we need to do.", buf, 2u);
    }

    v7 = 1;
  }

LABEL_48:
  v40 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)ensureAccountsExist:(id)a3 error:(id *)a4
{
  v6 = [(REMDatabaseMigrationContext *)self _migrationAccountInfosFromDEPRECATEDInfoDictionaryList:a3];
  LOBYTE(a4) = [(REMDatabaseMigrationContext *)self ensureAccountsExistWithMigrationAccountInfos:v6 error:a4];

  return a4;
}

- (BOOL)ensureAccountsExist:(id *)a3
{
  v3 = +[REMLogStore write];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    [REMDatabaseMigrationContext ensureAccountsExist:v3];
  }

  return 0;
}

- (id)_migrationAccountInfosFromDEPRECATEDInfoDictionaryList:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v25 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v27 = 1;
    do
    {
      v7 = 0;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        v9 = objc_opt_class();
        v10 = [v8 objectForKey:@"identifier"];
        v11 = REMDynamicCast(v9, v10);

        v12 = objc_opt_class();
        v13 = [v8 objectForKey:@"name"];
        v14 = REMDynamicCast(v12, v13);

        v15 = objc_opt_class();
        v16 = [v8 objectForKey:@"type"];
        v17 = REMDynamicCast(v15, v16);

        if (!v11)
        {
          v18 = +[REMLogStore write];
          if (!os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
          *buf = 138543618;
          v33 = v19;
          v34 = 2112;
          v35 = v8;
          p_super = &v18->super;
          v21 = "ensureAccountsExist: Given account info #(%{public}@) does not contain an identifier: %@";
          goto LABEL_15;
        }

        if (v17)
        {
          v18 = -[REMDatabaseMigrationAccountInfo initWithAccountType:identifier:name:]([REMDatabaseMigrationAccountInfo alloc], "initWithAccountType:identifier:name:", [v17 unsignedIntegerValue], v11, v14);
          [v25 addObject:v18];
          ++v27;
          goto LABEL_12;
        }

        v18 = +[REMLogStore write];
        if (os_log_type_enabled(&v18->super, OS_LOG_TYPE_ERROR))
        {
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
          *buf = 138543618;
          v33 = v19;
          v34 = 2112;
          v35 = v8;
          p_super = &v18->super;
          v21 = "ensureAccountsExist: Given account info #(%{public}@) does not contain an account type: %@";
LABEL_15:
          _os_log_error_impl(&dword_19A0DB000, p_super, OS_LOG_TYPE_ERROR, v21, buf, 0x16u);
        }

LABEL_12:

        ++v7;
      }

      while (v5 != v7);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      v5 = v22;
    }

    while (v22);
  }

  v23 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)_cleanLocalDatabases:(id *)a3
{
  v73 = *MEMORY[0x1E69E9840];
  v4 = [(REMDatabaseMigrationContext *)self remStore];
  v63 = 0;
  v5 = [v4 fetchAccountsIncludingInactive:1 error:&v63];
  v6 = v63;
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = v6;
      *a3 = v7;
    }

    v52 = +[REMLogStore write];
    if (os_log_type_enabled(&v52->super, OS_LOG_TYPE_ERROR))
    {
      [REMDatabaseMigrationContext _cleanLocalDatabases:];
    }

    v9 = 0;
    goto LABEL_47;
  }

  v52 = [[REMSaveRequest alloc] initWithStore:v4];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v5;
  v10 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
  v9 = v10 == 0;
  if (!v10)
  {
    v39 = 0;
    goto LABEL_45;
  }

  v43 = a3;
  v44 = v10 == 0;
  v45 = v5;
  v46 = v4;
  v11 = 0;
  v7 = 0;
  v12 = *v60;
  v13 = 0x1E7506000uLL;
  v14 = obj;
  v15 = v10;
  v47 = *v60;
  do
  {
    v16 = 0;
    v49 = v15;
    do
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(v14);
      }

      v51 = v16;
      v17 = *(*(&v59 + 1) + 8 * v16);
      v18 = [v17 accountTypeHost];
      v19 = v18;
      if (([v18 isCalDav] & 1) != 0 || objc_msgSend(v18, "isExchange"))
      {
        v20 = [*(v13 + 3368) write];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v33 = [v17 name];
          v34 = [v17 objectID];
          v35 = [v17 externalIdentifier];
          *buf = 138412802;
          v67 = v33;
          v68 = 2114;
          v69 = v34;
          v70 = 2114;
          v71 = v35;
          _os_log_error_impl(&dword_19A0DB000, v20, OS_LOG_TYPE_ERROR, "REMDatabaseMigrationContext found existing CalDAV account locally before migration, deleting store: {name: %@, id: %{public}@, externalIdentifier: %{public}@}", buf, 0x20u);

          v18 = v19;
          v15 = v49;
        }

        v21 = [(REMSaveRequest *)v52 updateAccount:v17];
        [v21 removeFromStore];
        v11 = 1;
LABEL_17:

        goto LABEL_18;
      }

      if ([v18 isLocal])
      {
        v22 = [*(v13 + 3368) write];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          [(REMDatabaseMigrationContext *)v65 _cleanLocalDatabases:v17];
        }

        v58 = v7;
        v23 = [v17 fetchListsWithError:&v58];
        v50 = v58;

        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v21 = v23;
        v24 = [v21 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v55;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v55 != v26)
              {
                objc_enumerationMutation(v21);
              }

              v28 = *(*(&v54 + 1) + 8 * i);
              v29 = [v28 objectID];
              v30 = +[REMList localAccountDefaultListID];
              v31 = [v29 isEqual:v30];

              if ((v31 & 1) == 0)
              {
                v32 = [(REMSaveRequest *)v52 updateList:v28];
                [v32 removeFromParent];

                v11 = 1;
              }
            }

            v18 = v19;
            v25 = [v21 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v25);
        }

        v15 = v49;
        v7 = v50;
        v13 = 0x1E7506000;
        v12 = v47;
        v14 = obj;
        goto LABEL_17;
      }

LABEL_18:

      v16 = v51 + 1;
    }

    while (v51 + 1 != v15);
    v36 = [v14 countByEnumeratingWithState:&v59 objects:v72 count:16];
    v15 = v36;
  }

  while (v36);

  if (v11)
  {
    v37 = [*(v13 + 3368) write];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19A0DB000, v37, OS_LOG_TYPE_INFO, "_cleanLocalDatabases saving changes", buf, 2u);
    }

    v53 = v7;
    v38 = [(REMSaveRequest *)v52 saveSynchronouslyWithError:&v53];
    v39 = v53;

    v5 = v45;
    v4 = v46;
    v9 = v44;
    if (v38)
    {
      v9 = 1;
      goto LABEL_46;
    }

    if (v43)
    {
      v40 = v39;
      *v43 = v39;
    }

    obj = +[REMLogStore write];
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [REMDatabaseMigrationContext _cleanLocalDatabases:];
    }

LABEL_45:

LABEL_46:
    v7 = v39;
  }

  else
  {
    v9 = 1;
    v5 = v45;
    v4 = v46;
  }

LABEL_47:

  v41 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)initWithSandboxDatabaseEnabled:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to create isolated store container for database migration {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)ensureAccountsExistWithMigrationAccountInfos:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "ensureAccountsExist: Found unexpected existing account with external identifier we are about to use for creating new account {uuid: %{public}@}");
}

- (void)ensureAccountsExistWithMigrationAccountInfos:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "ensureAccountsExist: CloudKit account type is not expected. {uuid: %{public}@}");
}

- (void)ensureAccountsExistWithMigrationAccountInfos:(uint64_t)a1 error:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "ensureAccountsExist: Invalid UUID. Skip. {uuid: %{public}@}");
}

- (void)ensureAccountsExistWithMigrationAccountInfos:error:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to save account objects for local migration {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_cleanLocalDatabases:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to fetch existing accounts when trying to clear local database before we can create clean ones for local migration {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_cleanLocalDatabases:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v2 = [OUTLINED_FUNCTION_0_10(a1 a2)];
  OUTLINED_FUNCTION_4_4(v2, 5.8381e-34);
  OUTLINED_FUNCTION_2_1(&dword_19A0DB000, v3, v4, "REMDatabaseMigrationContext found existing local account locally before migration, emptying content: {id: %{public}@}");
}

- (void)_cleanLocalDatabases:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5(&dword_19A0DB000, v0, v1, "Failed to remove existing accounts when trying to clear local database before we can create clean ones for local migration {error: %{public}@}", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end