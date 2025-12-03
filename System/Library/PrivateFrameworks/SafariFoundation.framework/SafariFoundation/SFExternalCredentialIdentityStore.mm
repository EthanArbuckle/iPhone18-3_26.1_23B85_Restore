@interface SFExternalCredentialIdentityStore
- (BOOL)_fetchStoreIsEmpty;
- (SFExternalCredentialIdentityStore)initWithURL:(id)l protectionType:(int64_t)type;
- (id)_credentialIdentityFromRow:(id)row;
- (id)_fetchCredentialIdentities;
- (id)_fetchCredentialIdentitiesMatchingDomains:(id)domains credentialIdentityType:(id)type;
- (id)_fetchCredentialIdentitiesWithType:(int64_t)type;
- (int)_createFreshDatabaseSchema;
- (int)_insertCredentialIdentity:(id)identity;
- (int)_migrateToSchemaVersion_2;
- (int)_migrateToSchemaVersion_3;
- (int)_removeAllCredentialIdentities;
- (int)_removeCredentialIdentities:(id)identities;
- (int)_removeCredentialIdentity:(id)identity;
- (int)_saveCredentialIdentities:(id)identities;
- (int)_updateCredentialIdentity:(id)identity;
- (int)_vacuum;
- (int64_t)_rowIDOfCredentialIdentityIfExists:(id)exists;
- (void)_databaseWillClose;
- (void)_removeAllCredentialIdentities;
- (void)_vacuum;
- (void)fetchAllPasskeyCredentialIdentitiesWithCompletion:(id)completion;
- (void)fetchCredentialIdentitiesWithCompletion:(id)completion;
- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion;
- (void)fetchStoreEmptyStateWithCompletion:(id)completion;
- (void)removeAllCredentialIdentitiesWithCompletion:(id)completion;
- (void)removeCredentialIdentities:(id)identities completion:(id)completion;
- (void)replaceCredentialIdentitiesWithIdentities:(id)identities completion:(id)completion;
- (void)saveCredentialIdentities:(id)identities completion:(id)completion;
@end

@implementation SFExternalCredentialIdentityStore

- (SFExternalCredentialIdentityStore)initWithURL:(id)l protectionType:(int64_t)type
{
  lCopy = l;
  v18.receiver = self;
  v18.super_class = SFExternalCredentialIdentityStore;
  v7 = [(WBSSQLiteStore *)&v18 initWithURL:lCopy protectionType:type];
  if (v7)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"com.apple.SafariFoundation.%@.%p", v10, v7];
    uTF8String = [v11 UTF8String];
    databaseQueue = [v7 databaseQueue];
    v14 = dispatch_queue_create_with_target_V2(uTF8String, 0, databaseQueue);
    v15 = *(v7 + 9);
    *(v7 + 9) = v14;

    dispatch_suspend(*(v7 + 9));
    v16 = v7;
  }

  return v7;
}

void __135__SFExternalCredentialIdentityStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) databaseQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __135__SFExternalCredentialIdentityStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke_2;
  block[3] = &unk_279B619C0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = a2;
  block[4] = v5;
  v8 = v6;
  dispatch_async(v4, block);
}

uint64_t __135__SFExternalCredentialIdentityStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = (a1 + 48);
  if (*(a1 + 48))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __135__SFExternalCredentialIdentityStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke_2_cold_1(v2);
    }
  }

  else
  {
    v4 = [*(a1 + 32) database];
    v5 = [v4 handle];

    if (v5)
    {
      sqlite3_create_function_v2(v5, "sf_identity_matches_domains", 3, 2049, 0, credentialIdentityMatchesDomains, 0, 0, 0);
    }

    v6 = objc_alloc(MEMORY[0x277D49B10]);
    v7 = [*(a1 + 32) database];
    v8 = [v6 initWithDatabase:v7];
    v9 = *(a1 + 32);
    v10 = *(v9 + 64);
    *(v9 + 64) = v8;
  }

  dispatch_resume(*(*(a1 + 32) + 72));
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *v2);
  }

  return result;
}

- (void)_databaseWillClose
{
  [(WBSSQLiteStatementCache *)self->_statements invalidate];
  statements = self->_statements;
  self->_statements = 0;
}

- (int)_createFreshDatabaseSchema
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 1;
  database = [(WBSSQLiteStore *)self database];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__SFExternalCredentialIdentityStore__createFreshDatabaseSchema__block_invoke;
  v6[3] = &unk_279B61A10;
  v7 = database;
  v8 = &v9;
  v3 = database;
  [v3 tryToPerformTransactionInBlock:v6];
  v4 = *(v10 + 6);

  _Block_object_dispose(&v9, 8);
  return v4;
}

uint64_t __63__SFExternalCredentialIdentityStore__createFreshDatabaseSchema__block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(a1 + 32), 0, @"CREATE TABLE credential_identities (id INTEGER PRIMARY KEY AUTOINCREMENT,identity_type INTEGER DEFAULT 0,service_id TEXT NOT NULL,service_id_type INTEGER NOT NULL DEFAULT 0,external_record_id TEXT DEFAULT NULL,user TEXT DEFAULT NULL,rank INTEGER NOT NULL DEFAULT 0,UNIQUE(service_id, service_id_type, external_record_id, user, identity_type) ON CONFLICT REPLACE)");
  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = [*(a1 + 32) lastErrorMessage];
      __63__SFExternalCredentialIdentityStore__createFreshDatabaseSchema__block_invoke_cold_1(v4, v7);
    }

    goto LABEL_8;
  }

  *(*(*(a1 + 40) + 8) + 24) = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(*(a1 + 32), 0, @"CREATE INDEX credential_identities__service_id ON credential_identities (service_id)");
  if (*(*(*(a1 + 40) + 8) + 24) != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [*(a1 + 32) lastErrorMessage];
      __63__SFExternalCredentialIdentityStore__createFreshDatabaseSchema__block_invoke_cold_2(v5, v7);
    }

LABEL_8:

    result = 0;
    goto LABEL_9;
  }

  result = 1;
LABEL_9:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void __61__SFExternalCredentialIdentityStore__migrateToSchemaVersion___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) database];
  v2 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(v1, 0, @"ROLLBACK TRANSACTION");

  if (v2 != 101)
  {
    v3 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__SFExternalCredentialIdentityStore__migrateToSchemaVersion___block_invoke_cold_1();
    }
  }
}

- (int)_migrateToSchemaVersion_2
{
  v17 = *MEMORY[0x277D85DE8];
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"ALTER TABLE credential_identities ADD COLUMN credential_id TEXT DEFAULT NULL");

  if (v4 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      database2 = [(WBSSQLiteStore *)self database];
      lastErrorMessage = [database2 lastErrorMessage];
      v13 = 138543618;
      v14 = lastErrorMessage;
      v15 = 1024;
      v16 = v4;
      _os_log_error_impl(&dword_26450F000, v6, OS_LOG_TYPE_ERROR, "Failed to add credential_id column to credential_identities table: %{public}@ (%d)", &v13, 0x12u);
    }

    goto LABEL_7;
  }

  database3 = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database3, 0, @"ALTER TABLE credential_identities ADD COLUMN user_handle TEXT DEFAULT NULL");

  if (v4 != 101)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      database4 = [(WBSSQLiteStore *)self database];
      lastErrorMessage2 = [database4 lastErrorMessage];
      v13 = 138543618;
      v14 = lastErrorMessage2;
      v15 = 1024;
      v16 = v4;
      _os_log_error_impl(&dword_26450F000, v6, OS_LOG_TYPE_ERROR, "Failed to add user_handle column to credential_identities table: %{public}@ (%d)", &v13, 0x12u);
    }

LABEL_7:
  }

  v9 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)_migrateToSchemaVersion_3
{
  v49 = *MEMORY[0x277D85DE8];
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT * FROM credential_identities");

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (!v5)
  {
    goto LABEL_33;
  }

  v6 = *v44;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v44 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v43 + 1) + 8 * i);
      v42 = [v8 int64AtIndex:0];
      v9 = [v8 int64AtIndex:1];
      v41 = [v8 stringAtIndex:2];
      v40 = [v8 int64AtIndex:3];
      v39 = [v8 stringAtIndex:4];
      v38 = [v8 stringAtIndex:5];
      v37 = [v8 int64AtIndex:6];
      v36 = [v8 stringAtIndex:7];
      v35 = [v8 stringAtIndex:8];
      if (!v9)
      {
        safari_bestURLForUserTypedString = [v41 safari_bestURLForUserTypedString];
        if (safari_bestURLForUserTypedString)
        {
          v19 = [v38 length] == 0;

          if (!v19)
          {
            database2 = [(WBSSQLiteStore *)self database];
            v21 = objc_alloc(MEMORY[0x277D49B08]);
            *buf = 0;
            v22 = [v21 initWithDatabase:database2 query:@"UPDATE credential_identities SET identity_type = ? error:{service_id = ?, service_id_type = ?, external_record_id = ?, user = ?, rank = ? WHERE id = ?", buf}];
            v23 = *buf;
            v24 = v23;
            if (v22)
            {
              v25 = v22;
              [v25 bindInt64:1 atParameterIndex:1];
              SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,long &>(v25, &v41, &v40, &v39, &v38, &v37, &v42);

              execute = [v25 execute];
              [v25 invalidate];
              if ((execute - 100) >= 2 && execute)
              {
                [database2 reportErrorWithCode:execute statement:objc_msgSend(v25 error:{"handle"), 0}];
              }
            }

            else
            {
              LODWORD(execute) = [v23 code];
            }

            if (execute != 101)
            {
              v26 = WBS_LOG_CHANNEL_PREFIXCredentials();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                database3 = [(WBSSQLiteStore *)self database];
                lastErrorMessage = [database3 lastErrorMessage];
                *buf = 138543362;
                *&buf[4] = lastErrorMessage;
                _os_log_error_impl(&dword_26450F000, v26, OS_LOG_TYPE_ERROR, "Failed to recover a password identity with error: %{public}@", buf, 0xCu);
              }

LABEL_29:

              v10 = 0;
              v33 = execute;
              goto LABEL_30;
            }
          }
        }
      }

      v10 = 1;
      if (v9 == 1 && v36 && v35)
      {
        database4 = [(WBSSQLiteStore *)self database];
        v12 = objc_alloc(MEMORY[0x277D49B08]);
        *buf = 0;
        v13 = [v12 initWithDatabase:database4 query:@"UPDATE credential_identities SET identity_type = ? error:{service_id = ?, service_id_type = ?, external_record_id = ?, user = ?, rank = ?, credential_id = ?, user_handle = ? WHERE id = ?", buf}];
        v14 = *buf;
        v15 = v14;
        if (v13)
        {
          v16 = v13;
          [v16 bindInt64:2 atParameterIndex:1];
          SafariShared::_WBSSQLiteStatementBindAllParameters<2,NSString * {__strong}&,SFCredentialServiceIdentifierType &,NSString * {__strong}&,NSString * {__strong}&,long &,NSString * {__strong}&,NSString * {__strong}&,long &>(v16, &v41, &v40, &v39, &v38, &v37, &v36, &v35, &v42);

          execute = [v16 execute];
          [v16 invalidate];
          if ((execute - 100) >= 2 && execute)
          {
            [database4 reportErrorWithCode:execute statement:objc_msgSend(v16 error:{"handle"), 0}];
          }
        }

        else
        {
          LODWORD(execute) = [v14 code];
        }

        if (execute == 101)
        {
          v10 = 1;
          goto LABEL_30;
        }

        v26 = WBS_LOG_CHANNEL_PREFIXCredentials();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          database5 = [(WBSSQLiteStore *)self database];
          lastErrorMessage2 = [database5 lastErrorMessage];
          *buf = 138543362;
          *&buf[4] = lastErrorMessage2;
          _os_log_error_impl(&dword_26450F000, v26, OS_LOG_TYPE_ERROR, "Failed to recover a passkey identity with error: %{public}@", buf, 0xCu);
        }

        goto LABEL_29;
      }

LABEL_30:

      if (!v10)
      {
        goto LABEL_34;
      }
    }

    v5 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  }

  while (v5);
LABEL_33:
  v33 = 101;
LABEL_34:

  v31 = *MEMORY[0x277D85DE8];
  return v33;
}

- (void)saveCredentialIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__SFExternalCredentialIdentityStore_saveCredentialIdentities_completion___block_invoke;
  block[3] = &unk_279B61A88;
  block[4] = self;
  v12 = identitiesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identitiesCopy;
  dispatch_async(queue, block);
}

void __73__SFExternalCredentialIdentityStore_saveCredentialIdentities_completion___block_invoke(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v2 = [*(a1 + 32) database];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SFExternalCredentialIdentityStore_saveCredentialIdentities_completion___block_invoke_2;
  v6[3] = &unk_279B61A60;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8 = &v9;
  v6[4] = v3;
  v7 = v4;
  [v2 tryToPerformTransactionInBlock:v6];

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, *(v10 + 24));
  }

  _Block_object_dispose(&v9, 8);
}

- (void)replaceCredentialIdentitiesWithIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SFExternalCredentialIdentityStore_replaceCredentialIdentitiesWithIdentities_completion___block_invoke;
  block[3] = &unk_279B61AB0;
  v12 = identitiesCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = identitiesCopy;
  v10 = completionCopy;
  dispatch_async(queue, block);
}

void __90__SFExternalCredentialIdentityStore_replaceCredentialIdentitiesWithIdentities_completion___block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v2 = [*(a1 + 32) _removeAllCredentialIdentities];
  *(v12 + 24) = v2 == 101;
  if (v2 == 101)
  {
    [*(a1 + 32) _vacuum];
    v3 = [*(a1 + 32) database];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__SFExternalCredentialIdentityStore_replaceCredentialIdentitiesWithIdentities_completion___block_invoke_2;
    v8[3] = &unk_279B61A60;
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v10 = &v11;
    v8[4] = v4;
    v9 = v5;
    [v3 tryToPerformTransactionInBlock:v8];

    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 16))(v6, *(v12 + 24));
    }
  }

  else
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 16))(v7, 0);
    }
  }

  _Block_object_dispose(&v11, 8);
}

- (void)removeAllCredentialIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __81__SFExternalCredentialIdentityStore_removeAllCredentialIdentitiesWithCompletion___block_invoke;
  v7[3] = &unk_279B61AD8;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

uint64_t __81__SFExternalCredentialIdentityStore_removeAllCredentialIdentitiesWithCompletion___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) _removeAllCredentialIdentities] == 101)
  {
    [*(a1 + 32) _vacuum];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)removeCredentialIdentities:(id)identities completion:(id)completion
{
  identitiesCopy = identities;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SFExternalCredentialIdentityStore_removeCredentialIdentities_completion___block_invoke;
  block[3] = &unk_279B61A88;
  block[4] = self;
  v12 = identitiesCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identitiesCopy;
  dispatch_async(queue, block);
}

uint64_t __75__SFExternalCredentialIdentityStore_removeCredentialIdentities_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _removeCredentialIdentities:*(a1 + 40)];
  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (int)_removeCredentialIdentities:(id)identities
{
  v18 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  if ([identitiesCopy count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = identitiesCopy;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = [(SFExternalCredentialIdentityStore *)self _removeCredentialIdentity:*(*(&v13 + 1) + 8 * i), v13];
          if (v9 != 101)
          {
            v10 = WBS_LOG_CHANNEL_PREFIXCredentials();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(WBSSQLiteStore *)self database];
              [objc_claimAutoreleasedReturnValue() lastErrorMessage];
              objc_claimAutoreleasedReturnValue();
              [SFExternalCredentialIdentityStore _removeCredentialIdentities:];
            }

            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v9 = 101;
LABEL_14:
  }

  else
  {
    v9 = 101;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int)_removeCredentialIdentity:(id)identity
{
  v14[3] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  if (identityCopy)
  {
    v5 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"DELETE FROM credential_identities WHERE service_id = ? AND service_id_type = ? AND external_record_id = ? AND user = ? AND identity_type = ?" error:0];
    serviceIdentifier = [identityCopy serviceIdentifier];
    v14[0] = [identityCopy serviceIdentifierType];
    externalRecordIdentifier = [identityCopy externalRecordIdentifier];
    user = [identityCopy user];
    type = [identityCopy type];
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(v5, &serviceIdentifier, v14, &externalRecordIdentifier, &user, &type);

    execute = [v5 execute];
    if (execute != 101)
    {
      v7 = WBS_LOG_CHANNEL_PREFIXCredentials();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(WBSSQLiteStore *)self database];
        [objc_claimAutoreleasedReturnValue() lastErrorMessage];
        objc_claimAutoreleasedReturnValue();
        [SFExternalCredentialIdentityStore _removeCredentialIdentity:];
      }
    }

    [v5 reset];
  }

  else
  {
    execute = 101;
  }

  v8 = *MEMORY[0x277D85DE8];
  return execute;
}

- (int)_removeAllCredentialIdentities
{
  v8 = *MEMORY[0x277D85DE8];
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"DELETE FROM credential_identities");

  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteStore *)self database];
      [objc_claimAutoreleasedReturnValue() lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFExternalCredentialIdentityStore _removeAllCredentialIdentities];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)_vacuum
{
  v8 = *MEMORY[0x277D85DE8];
  database = [(WBSSQLiteStore *)self database];
  v4 = SafariShared::_WBSSQLiteDatabaseExecuteAndReturnError<>(database, 0, @"VACUUM");
  if (v4 != 101)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteStore *)self database];
      [objc_claimAutoreleasedReturnValue() lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFExternalCredentialIdentityStore _vacuum];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (int)_saveCredentialIdentities:(id)identities
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  identitiesCopy = identities;
  v5 = [identitiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v15 != v6)
      {
        objc_enumerationMutation(identitiesCopy);
      }

      v8 = *(*(&v14 + 1) + 8 * v7);
      rowIdentifier = [v8 rowIdentifier];
      if (rowIdentifier == -1)
      {
        rowIdentifier = [(SFExternalCredentialIdentityStore *)self _rowIDOfCredentialIdentityIfExists:v8];
      }

      if (rowIdentifier == -1)
      {
        v10 = [(SFExternalCredentialIdentityStore *)self _insertCredentialIdentity:v8];
      }

      else
      {
        [v8 setRowIdentifier:?];
        v10 = [(SFExternalCredentialIdentityStore *)self _updateCredentialIdentity:v8];
      }

      v11 = v10;
      if (v10 != 101)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [identitiesCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v11 = 101;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int)_insertCredentialIdentity:(id)identity
{
  v30[3] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  type = [identityCopy type];
  v29 = type;
  v6 = &stru_2875FD420;
  if (type > 1)
  {
    v8 = @"INSERT INTO credential_identities (identity_type, service_id, service_id_type, external_record_id, user, rank, credential_id, user_handle) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
    if (type == 4)
    {
      v6 = @"INSERT INTO credential_identities (identity_type, service_id, service_id_type, external_record_id, user, rank) VALUES (?, ?, ?, ?, ?, ?)";
    }

    v7 = type == 2;
LABEL_7:
    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    v10 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:v9 error:0];
    if (v29 > 1)
    {
      if (v29 == 2)
      {
        serviceIdentifier = [identityCopy serviceIdentifier];
        v30[0] = [identityCopy serviceIdentifierType];
        externalRecordIdentifier = [identityCopy externalRecordIdentifier];
        user = [identityCopy user];
        rank = [identityCopy rank];
        credentialID = [identityCopy credentialID];
        userHandle = [identityCopy userHandle];
        SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong}>(v10, &v29, &serviceIdentifier, v30, &externalRecordIdentifier, &user, &rank, &credentialID, &userHandle);

        v11 = &serviceIdentifier;
      }

      else
      {
        if (v29 != 4)
        {
          goto LABEL_21;
        }

        serviceIdentifier2 = [identityCopy serviceIdentifier];
        v30[0] = [identityCopy serviceIdentifierType];
        externalRecordIdentifier2 = [identityCopy externalRecordIdentifier];
        user2 = [identityCopy user];
        rank = [identityCopy rank];
        SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(v10, &v29, &serviceIdentifier2, v30, &externalRecordIdentifier2, &user2, &rank);

        v11 = &serviceIdentifier2;
      }
    }

    else
    {
      if (!v29)
      {
        execute = 1;
LABEL_26:

        goto LABEL_27;
      }

      if (v29 != 1)
      {
LABEL_21:
        execute = [v10 execute];
        if (execute == 101)
        {
          database = [(WBSSQLiteStore *)self database];
          [identityCopy setRowIdentifier:{objc_msgSend(database, "lastInsertRowID")}];

          [v10 reset];
          execute = 101;
        }

        else
        {
          v14 = WBS_LOG_CHANNEL_PREFIXCredentials();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(WBSSQLiteStore *)self database];
            [objc_claimAutoreleasedReturnValue() lastErrorMessage];
            objc_claimAutoreleasedReturnValue();
            [SFExternalCredentialIdentityStore _insertCredentialIdentity:];
          }

          [v10 reset];
        }

        goto LABEL_26;
      }

      serviceIdentifier3 = [identityCopy serviceIdentifier];
      v30[0] = [identityCopy serviceIdentifierType];
      externalRecordIdentifier3 = [identityCopy externalRecordIdentifier];
      user3 = [identityCopy user];
      rank = [identityCopy rank];
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long>(v10, &v29, &serviceIdentifier3, v30, &externalRecordIdentifier3, &user3, &rank);

      v11 = &serviceIdentifier3;
    }

    goto LABEL_21;
  }

  if (type)
  {
    v7 = type == 1;
    v8 = @"INSERT INTO credential_identities (identity_type, service_id, service_id_type, external_record_id, user, rank) VALUES (?, ?, ?, ?, ?, ?)";
    goto LABEL_7;
  }

  execute = 1;
LABEL_27:

  v15 = *MEMORY[0x277D85DE8];
  return execute;
}

- (int)_updateCredentialIdentity:(id)identity
{
  v26[3] = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  type = [identityCopy type];
  v6 = 0;
  v25 = type;
  if (type > 1)
  {
    if (type == 2)
    {
      v7 = identityCopy;
      v6 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"UPDATE credential_identities SET identity_type = ? error:service_id = ?, service_id_type = ?, external_record_id = ?, user = ?, rank = ?, credential_id = ?, user_handle = ? WHERE id = ?", 0];
      serviceIdentifier = [v7 serviceIdentifier];
      v26[0] = [v7 serviceIdentifierType];
      externalRecordIdentifier = [v7 externalRecordIdentifier];
      user = [v7 user];
      rank = [v7 rank];
      credentialID = [v7 credentialID];
      userHandle = [v7 userHandle];
      rowIdentifier = [v7 rowIdentifier];
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,NSString * {__strong},NSString * {__strong},long>(v6, &v25, &serviceIdentifier, v26, &externalRecordIdentifier, &user, &rank, &credentialID, &userHandle, &rowIdentifier);
    }

    else
    {
      if (type != 4)
      {
        goto LABEL_11;
      }

      v6 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"UPDATE credential_identities SET identity_type = ? error:service_id = ?, service_id_type = ?, external_record_id = ?, user = ?, rank = ? WHERE id = ?", 0];
      serviceIdentifier2 = [identityCopy serviceIdentifier];
      v26[0] = [identityCopy serviceIdentifierType];
      externalRecordIdentifier2 = [identityCopy externalRecordIdentifier];
      user2 = [identityCopy user];
      rank = [identityCopy rank];
      rowIdentifier = [identityCopy rowIdentifier];
      SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(v6, &v25, &serviceIdentifier2, v26, &externalRecordIdentifier2, &user2, &rank, &rowIdentifier);

      v7 = serviceIdentifier2;
    }

    goto LABEL_10;
  }

  if (!type)
  {
    execute = 1;
    goto LABEL_16;
  }

  if (type == 1)
  {
    v6 = [(WBSSQLiteStatementCache *)self->_statements statementForQuery:@"UPDATE credential_identities SET identity_type = ? error:service_id = ?, service_id_type = ?, external_record_id = ?, user = ?, rank = ? WHERE id = ?", 0];
    serviceIdentifier3 = [identityCopy serviceIdentifier];
    v26[0] = [identityCopy serviceIdentifierType];
    externalRecordIdentifier3 = [identityCopy externalRecordIdentifier];
    user3 = [identityCopy user];
    rank = [identityCopy rank];
    rowIdentifier = [identityCopy rowIdentifier];
    SafariShared::_WBSSQLiteStatementBindAllParameters<1,long &,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},NSString * {__strong},long,long>(v6, &v25, &serviceIdentifier3, v26, &externalRecordIdentifier3, &user3, &rank, &rowIdentifier);

    v7 = serviceIdentifier3;
LABEL_10:
  }

LABEL_11:
  execute = [v6 execute];
  if (execute == 101)
  {
    [v6 reset];
    execute = 101;
  }

  else
  {
    v9 = WBS_LOG_CHANNEL_PREFIXCredentials();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(WBSSQLiteStore *)self database];
      [objc_claimAutoreleasedReturnValue() lastErrorMessage];
      objc_claimAutoreleasedReturnValue();
      [SFExternalCredentialIdentityStore _updateCredentialIdentity:];
    }

    [v6 reset];
  }

LABEL_16:

  v10 = *MEMORY[0x277D85DE8];
  return execute;
}

- (void)fetchCredentialIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __77__SFExternalCredentialIdentityStore_fetchCredentialIdentitiesWithCompletion___block_invoke;
    v7[3] = &unk_279B61B00;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __77__SFExternalCredentialIdentityStore_fetchCredentialIdentitiesWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fetchCredentialIdentities];
  (*(v1 + 16))(v1);
}

- (void)fetchPasswordCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__SFExternalCredentialIdentityStore_fetchPasswordCredentialIdentitiesMatchingDomains_completion___block_invoke;
    block[3] = &unk_279B61B28;
    v12 = completionCopy;
    block[4] = self;
    v11 = domainsCopy;
    dispatch_async(queue, block);
  }
}

void __97__SFExternalCredentialIdentityStore_fetchPasswordCredentialIdentitiesMatchingDomains_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v5 = [_SFCredentialIdentityTypeMatcher singleType:1];
  v4 = [v3 _fetchCredentialIdentitiesMatchingDomains:v2 credentialIdentityType:?];
  (*(v1 + 16))(v1, v4);
}

- (void)fetchPasskeyCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __96__SFExternalCredentialIdentityStore_fetchPasskeyCredentialIdentitiesMatchingDomains_completion___block_invoke;
    block[3] = &unk_279B61B28;
    v12 = completionCopy;
    block[4] = self;
    v11 = domainsCopy;
    dispatch_async(queue, block);
  }
}

void __96__SFExternalCredentialIdentityStore_fetchPasskeyCredentialIdentitiesMatchingDomains_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v5 = [_SFCredentialIdentityTypeMatcher singleType:2];
  v4 = [v3 _fetchCredentialIdentitiesMatchingDomains:v2 credentialIdentityType:?];
  (*(v1 + 16))(v1, v4);
}

- (void)fetchAllPasskeyCredentialIdentitiesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __87__SFExternalCredentialIdentityStore_fetchAllPasskeyCredentialIdentitiesWithCompletion___block_invoke;
    v7[3] = &unk_279B61B00;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

void __87__SFExternalCredentialIdentityStore_fetchAllPasskeyCredentialIdentitiesWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fetchCredentialIdentitiesWithType:2];
  (*(v1 + 16))(v1);
}

- (void)fetchOneTimeCodeCredentialIdentitiesMatchingDomains:(id)domains completion:(id)completion
{
  domainsCopy = domains;
  completionCopy = completion;
  v8 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__SFExternalCredentialIdentityStore_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_completion___block_invoke;
    block[3] = &unk_279B61B28;
    v12 = completionCopy;
    block[4] = self;
    v11 = domainsCopy;
    dispatch_async(queue, block);
  }
}

void __100__SFExternalCredentialIdentityStore_fetchOneTimeCodeCredentialIdentitiesMatchingDomains_completion___block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v3 = a1[4];
  v5 = [_SFCredentialIdentityTypeMatcher singleType:4];
  v4 = [v3 _fetchCredentialIdentitiesMatchingDomains:v2 credentialIdentityType:?];
  (*(v1 + 16))(v1, v4);
}

- (id)_credentialIdentityFromRow:(id)row
{
  rowCopy = row;
  v4 = [rowCopy int64AtIndex:0];
  v5 = [rowCopy stringAtIndex:2];
  v6 = [rowCopy int64AtIndex:3];
  v7 = [rowCopy stringAtIndex:4];
  v8 = [rowCopy stringAtIndex:5];
  v9 = [rowCopy int64AtIndex:6];
  v10 = [rowCopy stringAtIndex:7];
  v11 = [rowCopy stringAtIndex:8];
  v12 = [rowCopy int64AtIndex:1];
  switch(v12)
  {
    case 1:
      v13 = off_279B60CC8;
      goto LABEL_7;
    case 2:
      v14 = [[SFPasskeyCredentialIdentity alloc] initWithRowIdentifier:v4 serviceIdentifier:v5 serviceIdentifierType:v6 externalRecordIdentifier:v7 user:v8 rank:v9 credentialID:v10 userHandle:v11];
LABEL_8:
      v15 = v14;
      goto LABEL_10;
    case 4:
      v13 = off_279B60CB8;
LABEL_7:
      v14 = [objc_alloc(*v13) initWithRowIdentifier:v4 serviceIdentifier:v5 serviceIdentifierType:v6 externalRecordIdentifier:v7 user:v8 rank:v9];
      goto LABEL_8;
  }

  v15 = 0;
LABEL_10:

  return v15;
}

- (id)_fetchCredentialIdentitiesMatchingDomains:(id)domains credentialIdentityType:(id)type
{
  v45 = *MEMORY[0x277D85DE8];
  domainsCopy = domains;
  typeCopy = type;
  v32 = domainsCopy;
  if ([domainsCopy count])
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v8 = domainsCopy;
    v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v9)
    {
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          safari_highLevelDomainFromHost = [v12 safari_highLevelDomainFromHost];
          v14 = safari_highLevelDomainFromHost;
          if (safari_highLevelDomainFromHost)
          {
            v15 = safari_highLevelDomainFromHost;
          }

          else
          {
            v15 = v12;
          }

          v16 = v15;

          lowercaseString = [v16 lowercaseString];
          [v7 addObject:lowercaseString];
        }

        v9 = [v8 countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v9);
    }

    v18 = objc_alloc(MEMORY[0x277D49B08]);
    database = [(WBSSQLiteStore *)self database];
    v33 = [v18 initWithDatabase:database query:{@"SELECT * FROM credential_identities WHERE sf_identity_matches_domains(service_id, service_id_type, ?) == 1"}];

    sqlite3_bind_pointer([v33 handle], 1, v7, "domainSet", 0);
    fetch = [v33 fetch];
    array = [MEMORY[0x277CBEB18] array];
    matchAllTypes = [typeCopy matchAllTypes];
    typeToMatch = [typeCopy typeToMatch];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v23 = fetch;
    v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v24)
    {
      v25 = *v36;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v36 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = [(SFExternalCredentialIdentityStore *)self _credentialIdentityFromRow:*(*(&v35 + 1) + 8 * j)];
          v28 = v27;
          if (v27 && ((matchAllTypes & 1) != 0 || [v27 type] == typeToMatch))
          {
            [array addObject:v28];
          }
        }

        v24 = [v23 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v24);
    }
  }

  else
  {
    array = MEMORY[0x277CBEBF8];
  }

  v29 = *MEMORY[0x277D85DE8];

  return array;
}

- (int64_t)_rowIDOfCredentialIdentityIfExists:(id)exists
{
  existsCopy = exists;
  v5 = objc_alloc(MEMORY[0x277D49B08]);
  database = [(WBSSQLiteStore *)self database];
  v7 = [v5 initWithDatabase:database query:@"SELECT * FROM credential_identities WHERE service_id = ? AND service_id_type = ? AND user = ? AND identity_type = ?"];

  serviceIdentifier = [existsCopy serviceIdentifier];
  serviceIdentifierType = [existsCopy serviceIdentifierType];
  user = [existsCopy user];
  type = [existsCopy type];
  SafariShared::_WBSSQLiteStatementBindAllParameters<1,NSString * {__strong},SFCredentialServiceIdentifierType,NSString * {__strong},long>(v7, &serviceIdentifier, &serviceIdentifierType, &user, &type);

  fetch = [v7 fetch];
  nextObject = [fetch nextObject];
  v10 = nextObject;
  if (nextObject)
  {
    v11 = [nextObject int64AtIndex:0];
  }

  else
  {
    v11 = -1;
  }

  return v11;
}

- (id)_fetchCredentialIdentities
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  database = [(WBSSQLiteStore *)self database];
  v5 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT * FROM credential_identities");

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [(SFExternalCredentialIdentityStore *)self _credentialIdentityFromRow:*(*(&v13 + 1) + 8 * i), v13];
        if (v10)
        {
          [array addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_fetchCredentialIdentitiesWithType:(int64_t)type
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v6 = objc_alloc(MEMORY[0x277D49B08]);
  database = [(WBSSQLiteStore *)self database];
  v8 = [v6 initWithDatabase:database query:@"SELECT * FROM credential_identities WHERE identity_type = ?"];

  [v8 bindInt64:type atParameterIndex:1];
  [v8 fetch];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v9 = v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [(SFExternalCredentialIdentityStore *)self _credentialIdentityFromRow:*(*(&v17 + 1) + 8 * i), v17];
        v14 = v13;
        if (v13 && [v13 type] == type)
        {
          [array addObject:v14];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v15 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)fetchStoreEmptyStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    queue = self->_queue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__SFExternalCredentialIdentityStore_fetchStoreEmptyStateWithCompletion___block_invoke;
    v7[3] = &unk_279B61B00;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(queue, v7);
  }
}

uint64_t __72__SFExternalCredentialIdentityStore_fetchStoreEmptyStateWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) _fetchStoreIsEmpty];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

- (BOOL)_fetchStoreIsEmpty
{
  database = [(WBSSQLiteStore *)self database];
  v3 = SafariShared::WBSSQLiteDatabaseFetch<>(database, @"SELECT EXISTS(SELECT 1 FROM credential_identities)");
  nextObject = [v3 nextObject];

  if (nextObject)
  {
    v5 = [nextObject int64AtIndex:0] < 1;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

void __135__SFExternalCredentialIdentityStore_openAndCheckIntegrity_createIfNeeded_fallBackToMemoryStoreIfError_lockingPolicy_completionHandler___block_invoke_2_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __63__SFExternalCredentialIdentityStore__createFreshDatabaseSchema__block_invoke_cold_1(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v3, v4, "Failed to create identities table with error %{public}@", v5);
}

void __63__SFExternalCredentialIdentityStore__createFreshDatabaseSchema__block_invoke_cold_2(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_2_0(a1, a2, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v3, v4, "Failed to create index on identities table with error %{public}@", v5);
}

- (void)_migrateToSchemaVersion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_removeCredentialIdentities:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v4, v5, "Failed to delete an entry from identities table with error %{public}@", v6);
}

- (void)_removeCredentialIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v4, v5, "Failed to delete an item from identities table with error %{public}@", v6);
}

- (void)_removeAllCredentialIdentities
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v4, v5, "Failed to delete entries from identities table with error %{public}@", v6);
}

- (void)_vacuum
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v4, v5, "Failed to vacuum identities table with error %{public}@", v6);
}

- (void)_insertCredentialIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v4, v5, "Failed to insert an item into identities table with error %{public}@", v6);
}

- (void)_updateCredentialIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(v2, v3, 5.8381e-34);
  OUTLINED_FUNCTION_1_1(&dword_26450F000, v4, v5, "Failed to update an item of identities table with error %{public}@", v6);
}

@end