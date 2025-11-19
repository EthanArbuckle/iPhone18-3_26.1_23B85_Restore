@interface TRINamespaceDatabase
- ($61A80719B04F7407D3E47539F1B23CAA)removeDynamicNamespaceRecordWithNamespaceName:(id)a3;
- ($61A80719B04F7407D3E47539F1B23CAA)setFetched:(BOOL)a3 forDynamicNamespaceName:(id)a4;
- (BOOL)_enumerateDynamicNamespaceRecordsWithWhereClause:(id)a3 bind:(id)a4 block:(id)a5;
- (BOOL)addOrUpdateDynamicNamespaceWithName:(id)a3 compatibilityVersion:(unsigned int)a4 defaultsFileURL:(id)a5 teamId:(id)a6 appContainerId:(id)a7 appContainerType:(int64_t)a8 cloudKitContainer:(int)a9;
- (BOOL)enumerateAppContainerIdsForContainer:(int)a3 block:(id)a4;
- (BOOL)enumerateDynamicNamespaceRecordsForContainer:(int)a3 teamId:(id)a4 block:(id)a5;
- (BOOL)enumerateDynamicNamespaceRecordsWithBlock:(id)a3;
- (BOOL)hasUnfetchedNamespaceForTeamId:(id)a3;
- (TRINamespaceDatabase)initWithDatabase:(id)a3;
- (id)dynamicNamespaceRecordWithNamespaceName:(id)a3;
@end

@implementation TRINamespaceDatabase

- (TRINamespaceDatabase)initWithDatabase:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v11.receiver = self;
  v11.super_class = TRINamespaceDatabase;
  v7 = [(TRINamespaceDatabase *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_db, a3);
  }

  return v8;
}

- (BOOL)addOrUpdateDynamicNamespaceWithName:(id)a3 compatibilityVersion:(unsigned int)a4 defaultsFileURL:(id)a5 teamId:(id)a6 appContainerId:(id)a7 appContainerType:(int64_t)a8 cloudKitContainer:(int)a9
{
  v41 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  if (v16)
  {
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_12:
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"teamId"}];

    if (v19)
    {
      goto LABEL_4;
    }

LABEL_13:
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"appContainerId"}];

    goto LABEL_4;
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

  if (!v18)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (!v19)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ([v18 length] && (objc_msgSend(v18, "stringByAppendingString:", @"."), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v16, "hasPrefix:", v20), v20, (v21 & 1) == 0))
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "dynamic namespace name (%{public}@) must be prefixed with teamId (%{public}@)", buf, 0x16u);
    }

    v22 = 0;
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v40 = 0;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __154__TRINamespaceDatabase_addOrUpdateDynamicNamespaceWithName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainer___block_invoke;
    v29[3] = &unk_279DE1B38;
    v35 = buf;
    v30 = v16;
    v31 = v18;
    v32 = v19;
    v36 = a8;
    v37 = a9;
    v38 = a4;
    v33 = v17;
    v34 = self;
    [(TRINamespaceDatabase *)self writeTransactionWithFailableBlock:v29];
    v22 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

uint64_t __154__TRINamespaceDatabase_addOrUpdateDynamicNamespaceWithName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainer___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __154__TRINamespaceDatabase_addOrUpdateDynamicNamespaceWithName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainer___block_invoke_2;
  v15[3] = &unk_279DE1708;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v18 = *(a1 + 80);
  v19 = *(a1 + 88);
  v7 = *(a1 + 56);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v16 = v9;
  v17 = v8;
  v10 = [*(*(a1 + 64) + 8) generalErrorHandlerWithOutError:{0, v15[0], 3221225472, __154__TRINamespaceDatabase_addOrUpdateDynamicNamespaceWithName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainer___block_invoke_2, &unk_279DE1708}];
  *(*(*(a1 + 72) + 8) + 24) = [v3 prepAndRunQuery:@" INSERT INTO dynamicNamespaces(    name onPrep:teamId onRow:appContainerId onError:{appContainerType, cloudKitContainerId, compatibilityVersion, defaultsFileURL) VALUES(    :name, :team_id, :app_container_id, :app_container_type, :cloudkit_container_id, :compat_version, :defaults_url) ON CONFLICT (name) DO UPDATE SET     teamId = :team_id, appContainerId = :app_container_id, appContainerType = :app_container_type, cloudKitContainerId = :cloudkit_container_id, compatibilityVersion = :compat_version, defaultsFileURL = :defaults_url;", v15, 0, v10}];

  LODWORD(a1) = *(*(*(a1 + 72) + 8) + 24);
  v11 = MEMORY[0x277D42670];
  v12 = MEMORY[0x277D42678];

  if (a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  return *v13;
}

void __154__TRINamespaceDatabase_addOrUpdateDynamicNamespaceWithName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainer___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindNamedParam:":name" toNSString:v3];
  [v4 bindNamedParam:":team_id" toNSString:*(a1 + 40)];
  [v4 bindNamedParam:":app_container_id" toNSString:*(a1 + 48)];
  [v4 bindNamedParam:":app_container_type" toInt64:*(a1 + 64)];
  [v4 bindNamedParam:":cloudkit_container_id" toInt64:*(a1 + 72)];
  [v4 bindNamedParam:":compat_version" toInt64:*(a1 + 76)];
  v5 = [*(a1 + 56) triSaveURLToString];
  [v4 bindNamedParam:":defaults_url" toNSString:v5];
}

- ($61A80719B04F7407D3E47539F1B23CAA)removeDynamicNamespaceRecordWithNamespaceName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:108 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2810000000;
  v17 = &unk_26F7089E2;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __70__TRINamespaceDatabase_removeDynamicNamespaceRecordWithNamespaceName___block_invoke;
  v10[3] = &unk_279DDF9C0;
  v6 = v5;
  v11 = v6;
  v12 = self;
  v13 = &v14;
  [(TRINamespaceDatabase *)self writeTransactionWithFailableBlock:v10];
  v7.var0 = v15[4];

  _Block_object_dispose(&v14, 8);
  return v7;
}

uint64_t __70__TRINamespaceDatabase_removeDynamicNamespaceRecordWithNamespaceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __70__TRINamespaceDatabase_removeDynamicNamespaceRecordWithNamespaceName___block_invoke_2;
  v12[3] = &unk_279DDF860;
  v13 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
  v6 = [v4 prepAndRunQuery:@" DELETE FROM     dynamicNamespaces WHERE     name = :name;" onPrep:v12 onRow:0 onError:v5];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);
    v9 = 1;
    if (v8 <= 0)
    {
      v9 = 2;
    }

    *(*(*(a1 + 48) + 8) + 32) = v9;

    v10 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 32) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

- (BOOL)_enumerateDynamicNamespaceRecordsWithWhereClause:(id)a3 bind:(id)a4 block:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  if ((v9 == 0) != (v10 == 0))
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:138 description:{@"Invalid parameter not satisfying: %@", @"(whereClause == nil) == (bind == nil)"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:139 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __84__TRINamespaceDatabase__enumerateDynamicNamespaceRecordsWithWhereClause_bind_block___block_invoke;
  v20[3] = &unk_279DE1B60;
  v13 = v9;
  v21 = v13;
  v25 = &v27;
  v14 = v10;
  v26 = a2;
  v22 = self;
  v23 = v14;
  v15 = v12;
  v24 = v15;
  [(TRINamespaceDatabase *)self readTransactionWithFailableBlock:v20];
  v16 = *(v28 + 24);

  _Block_object_dispose(&v27, 8);
  return v16;
}

uint64_t __84__TRINamespaceDatabase__enumerateDynamicNamespaceRecordsWithWhereClause_bind_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = *(a1 + 32);
  if (!v6)
  {
    v6 = &stru_287FA0430;
  }

  v7 = [v5 initWithFormat:@" SELECT * FROM dynamicNamespaces %@ ORDER BY rowid ASC", v6];
  v8 = [v4 db];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __84__TRINamespaceDatabase__enumerateDynamicNamespaceRecordsWithWhereClause_bind_block___block_invoke_2;
  v17[3] = &unk_279DE15F8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v19 = *(a1 + 72);
  v17[4] = v9;
  v18 = *(a1 + 56);
  v11 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:0];
  *(*(*(a1 + 64) + 8) + 24) = [v8 prepAndRunQuery:v7 onPrep:v10 onRow:v17 onError:v11];

  v12 = *(*(*(a1 + 64) + 8) + 24);
  v13 = MEMORY[0x277D42670];
  v14 = MEMORY[0x277D42678];

  if (v12)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  return *v15;
}

uint64_t __84__TRINamespaceDatabase__enumerateDynamicNamespaceRecordsWithWhereClause_bind_block___block_invoke_2(void *a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isNullForColumnName:"compatibilityVersion" table:0])
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:151 description:@"NULL compatibilityVersion read from NOT NULL column"];
  }

  if ([v3 isNullForColumnName:"appContainerType" table:0])
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:152 description:@"NULL appContainerType read from NOT NULL column"];
  }

  if ([v3 isNullForColumnName:"cloudKitContainerId" table:0])
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:153 description:@"NULL cloudKitContainerId read from NOT NULL column"];
  }

  if ([v3 isNullForColumnName:"hasFetched" table:0])
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:154 description:@"NULL hasFetched read from NOT NULL column"];
  }

  v4 = [v3 getNSStringForColumnName:"name" table:0];
  v5 = [v3 getNSStringForColumnName:"teamId" table:0];
  v6 = [v3 getNSStringForColumnName:"appContainerId" table:0];
  v7 = [v3 getIntegerForColumnName:"appContainerType" table:0];
  v8 = [v3 getInt64ForColumnName:"cloudKitContainerId" table:0];
  v9 = [v3 getInt64ForColumnName:"compatibilityVersion" table:0];
  v10 = [v3 getNSStringForColumnName:"defaultsFileURL" table:0];
  v30 = v10;
  if (v10)
  {
    v11 = [MEMORY[0x277CBEBC0] triParseURLFromString:v10];
    if (v11)
    {
      goto LABEL_15;
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v32 = v30;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "failed to parse url from %@", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_15:
  v13 = [v3 getInt64ForColumnName:"hasFetched" table:0];
  if (v6)
  {
    v14 = [MEMORY[0x277D73650] containerWithIdentifier:v6 type:v7];
    if (v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = 0;
    if (v4)
    {
LABEL_17:
      if (v5)
      {
        goto LABEL_18;
      }

LABEL_25:
      v28 = [MEMORY[0x277CCA890] currentHandler];
      [v28 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:173 description:@"NULL teamId read from NOT NULL column"];

      if (v6)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:172 description:@"NULL namespaceName read from NOT NULL column"];

  if (!v5)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v6)
  {
    goto LABEL_19;
  }

LABEL_26:
  v29 = [MEMORY[0x277CCA890] currentHandler];
  [v29 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:174 description:@"NULL appContainerId read from NOT NULL column"];

LABEL_19:
  LOBYTE(v26) = v13 != 0;
  v15 = [[TRIDynamicNamespaceRecord alloc] initWithName:v4 teamId:v5 appContainer:v14 cloudKitContainer:v8 compatibilityVersion:v9 defaultsFileURL:v11 hasFetched:v26];
  buf[0] = 0;
  (*(a1[5] + 16))();
  v16 = buf[0];
  v17 = MEMORY[0x277D42698];
  v18 = MEMORY[0x277D42690];

  if (v16)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = *MEMORY[0x277D85DE8];
  return *v19;
}

- (id)dynamicNamespaceRecordWithNamespaceName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:195 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__22;
  v18 = __Block_byref_object_dispose__22;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__TRINamespaceDatabase_dynamicNamespaceRecordWithNamespaceName___block_invoke;
  v12[3] = &unk_279DDF860;
  v6 = v5;
  v13 = v6;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __64__TRINamespaceDatabase_dynamicNamespaceRecordWithNamespaceName___block_invoke_2;
  v11[3] = &unk_279DE1B88;
  v11[4] = &v14;
  if ([(TRINamespaceDatabase *)self _enumerateDynamicNamespaceRecordsWithWhereClause:@"WHERE name = :name" bind:v12 block:v11])
  {
    v7 = v15[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)enumerateDynamicNamespaceRecordsWithBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v6 = [(TRINamespaceDatabase *)self _enumerateDynamicNamespaceRecordsWithWhereClause:0 bind:0 block:v5];

  return v6;
}

- (BOOL)enumerateDynamicNamespaceRecordsForContainer:(int)a3 teamId:(id)a4 block:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:221 description:{@"Invalid parameter not satisfying: %@", @"teamId"}];

    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:222 description:{@"Invalid parameter not satisfying: %@", @"block"}];

    goto LABEL_3;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __82__TRINamespaceDatabase_enumerateDynamicNamespaceRecordsForContainer_teamId_block___block_invoke;
  v17[3] = &unk_279DE1BB0;
  v19 = a3;
  v18 = v9;
  v12 = v9;
  v13 = [(TRINamespaceDatabase *)self _enumerateDynamicNamespaceRecordsWithWhereClause:@" WHERE         cloudKitContainerId = :container_id     AND teamId = :team_id" bind:v17 block:v11];

  return v13;
}

void __82__TRINamespaceDatabase_enumerateDynamicNamespaceRecordsForContainer_teamId_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":container_id" toInt64:v3];
  [v4 bindNamedParam:":team_id" toNSString:*(a1 + 32)];
}

- (BOOL)enumerateAppContainerIdsForContainer:(int)a3 block:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:238 description:{@"Invalid parameter not satisfying: %@", @"block"}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__TRINamespaceDatabase_enumerateAppContainerIdsForContainer_block___block_invoke;
  v12[3] = &unk_279DE1BF8;
  v16 = a3;
  v14 = &v17;
  v15 = a2;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  [(TRINamespaceDatabase *)self readTransactionWithFailableBlock:v12];
  v9 = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t __67__TRINamespaceDatabase_enumerateAppContainerIdsForContainer_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 db];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __67__TRINamespaceDatabase_enumerateAppContainerIdsForContainer_block___block_invoke_2;
  v15[3] = &__block_descriptor_36_e29_v16__0___PASSqliteStatement_8l;
  v16 = *(a1 + 64);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __67__TRINamespaceDatabase_enumerateAppContainerIdsForContainer_block___block_invoke_3;
  v11[3] = &unk_279DE15F8;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v14 = *(a1 + 56);
  v12 = v4;
  v13 = v5;
  v6 = [*(*(a1 + 32) + 8) generalErrorHandlerWithOutError:{0, v11[0], 3221225472, __67__TRINamespaceDatabase_enumerateAppContainerIdsForContainer_block___block_invoke_3, &unk_279DE15F8, v12}];
  *(*(*(a1 + 48) + 8) + 24) = [v3 prepAndRunQuery:@" SELECT appContainerId onPrep:teamId onRow:appContainerType FROM     dynamicNamespaces WHERE     cloudKitContainerId = :container_id;" onError:{v15, v11, v6}];

  LODWORD(a1) = *(*(*(a1 + 48) + 8) + 24);
  v7 = MEMORY[0x277D42670];
  v8 = MEMORY[0x277D42678];

  if (a1)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  return *v9;
}

uint64_t __67__TRINamespaceDatabase_enumerateAppContainerIdsForContainer_block___block_invoke_3(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumnName:"teamId" table:0];
  if (!v4)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:253 description:@"NULL teamId read from NOT NULL column"];
  }

  v5 = [v3 getNSStringForColumnName:"appContainerId" table:0];
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a1[6] object:a1[4] file:@"TRINamespaceDatabase.m" lineNumber:255 description:@"NULL appContainerId read from NOT NULL column"];
  }

  [v3 getIntegerForColumnName:"appContainerType" table:0];
  (*(a1[5] + 16))();
  v6 = MEMORY[0x277D42690];

  return *v6;
}

- ($61A80719B04F7407D3E47539F1B23CAA)setFetched:(BOOL)a3 forDynamicNamespaceName:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:271 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2810000000;
  v20 = &unk_26F7089E2;
  v21 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__TRINamespaceDatabase_setFetched_forDynamicNamespaceName___block_invoke;
  v12[3] = &unk_279DE17F8;
  v16 = a3;
  v8 = v7;
  v13 = v8;
  v14 = self;
  v15 = &v17;
  [(TRINamespaceDatabase *)self writeTransactionWithFailableBlock:v12];
  v9.var0 = v18[4];

  _Block_object_dispose(&v17, 8);
  return v9;
}

uint64_t __59__TRINamespaceDatabase_setFetched_forDynamicNamespaceName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 db];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__TRINamespaceDatabase_setFetched_forDynamicNamespaceName___block_invoke_2;
  v12[3] = &unk_279DE17D0;
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  v5 = [*(*(a1 + 40) + 8) generalErrorHandlerWithOutError:{0, v12[0], 3221225472, __59__TRINamespaceDatabase_setFetched_forDynamicNamespaceName___block_invoke_2, &unk_279DE17D0}];
  v6 = [v4 prepAndRunQuery:@" UPDATE     dynamicNamespaces SET     hasFetched = :fetched_int WHERE     name = :name;" onPrep:v12 onRow:0 onError:v5];

  if (v6)
  {
    v7 = [v3 db];
    v8 = sqlite3_changes([v7 handle]);
    v9 = 1;
    if (v8 <= 0)
    {
      v9 = 2;
    }

    *(*(*(a1 + 48) + 8) + 32) = v9;

    v10 = MEMORY[0x277D42670];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 32) = 0;
    v10 = MEMORY[0x277D42678];
  }

  return *v10;
}

void __59__TRINamespaceDatabase_setFetched_forDynamicNamespaceName___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  [v4 bindNamedParam:":fetched_int" toInt64:v3];
  [v4 bindNamedParam:":name" toNSString:*(a1 + 32)];
}

- (BOOL)hasUnfetchedNamespaceForTeamId:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"TRINamespaceDatabase.m" lineNumber:302 description:{@"Invalid parameter not satisfying: %@", @"teamId"}];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__TRINamespaceDatabase_hasUnfetchedNamespaceForTeamId___block_invoke;
  v11[3] = &unk_279DDF860;
  v6 = v5;
  v12 = v6;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__TRINamespaceDatabase_hasUnfetchedNamespaceForTeamId___block_invoke_2;
  v10[3] = &unk_279DE1B88;
  v10[4] = &v13;
  [(TRINamespaceDatabase *)self _enumerateDynamicNamespaceRecordsWithWhereClause:@" WHERE         teamId = :team_id     and hasFetched = 0" bind:v11 block:v10];
  v7 = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __55__TRINamespaceDatabase_hasUnfetchedNamespaceForTeamId___block_invoke_2(uint64_t result, uint64_t a2, _BYTE *a3)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a3 = 1;
  return result;
}

@end