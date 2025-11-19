@interface PPSSQLStorage
+ (id)trimConditionsForEntryKey:(id)a3 trimDate:(double)a4 currDate:(double)a5;
- (BOOL)updateTable:(id)a3 transferDataForKeys:(id)a4;
- (PPSSQLStorage)init;
- (id)BGSQLConnection;
- (id)CESQLConnection;
- (id)EPSQLConnection;
- (id)PLSQLConnection;
- (id)PreUnlockEPSQLConnection;
- (id)XCSQLConnection;
- (id)connectionForKey:(id)a3;
- (id)metricsToAddForStorage:(id)a3 processedMetrics:(id)a4;
- (id)metricsToUpdateForStorage:(id)a3 processedMetrics:(id)a4;
- (id)setupDBConnectionAtPath:(id)a3;
- (int)storageForConnection:(id)a3;
- (void)closeAllConnections;
- (void)createMetadataTable;
- (void)deleteOldMetadataStore;
- (void)handleMetadataVersionChange;
- (void)handleSchemaMismatchForTable:(id)a3;
- (void)persistMetadata;
- (void)setupArrayTableForEntryKey:(id)a3 withName:(id)a4 withConnection:(id)a5;
- (void)setupDBConnections;
- (void)setupDynamicTableForEntryKey:(id)a3 withName:(id)a4 withConnection:(id)a5;
- (void)setupFolders;
- (void)setupMetadataStorage;
- (void)setupStorageForEntryKey:(id)a3;
- (void)setupTableForEntryKey:(id)a3 withName:(id)a4;
- (void)startStorage;
- (void)updateMetadata:(id)a3 updateMetrics:(id)a4 addMetrics:(id)a5;
@end

@implementation PPSSQLStorage

- (PPSSQLStorage)init
{
  v5.receiver = self;
  v5.super_class = PPSSQLStorage;
  v2 = [(PPSStorage *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PPSSQLStorage *)v2 setStorageStarted:0];
    [(PPSSQLStorage *)v3 setupFolders];
    [(PPSSQLStorage *)v3 setupDBConnections];
    if (init_onceToken_0 != -1)
    {
      [PPSSQLStorage init];
    }
  }

  return v3;
}

void __21__PPSSQLStorage_init__block_invoke()
{
  v4[11] = *MEMORY[0x1E69E9840];
  v3[0] = &unk_1F5405DD8;
  v3[1] = &unk_1F5405DF0;
  v4[0] = @"BLOB";
  v4[1] = @"INTEGER";
  v3[2] = &unk_1F5405E08;
  v3[3] = &unk_1F5405E20;
  v4[2] = @"INTEGER";
  v4[3] = @"TEXT";
  v3[4] = &unk_1F5405E38;
  v3[5] = &unk_1F5405E50;
  v4[4] = @"REAL";
  v4[5] = @"INTEGER";
  v3[6] = &unk_1F5405E68;
  v3[7] = &unk_1F5405E80;
  v4[6] = @"INTEGER";
  v4[7] = @"INTEGER";
  v3[8] = &unk_1F5405E98;
  v3[9] = &unk_1F5405EB0;
  v4[8] = @"REAL";
  v4[9] = @"BLOB";
  v3[10] = &unk_1F5405EC8;
  v4[10] = @"INTEGER";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v4 forKeys:v3 count:11];
  v1 = PLVTypeToPLSQLiteType_0;
  PLVTypeToPLSQLiteType_0 = v0;

  v2 = *MEMORY[0x1E69E9840];
}

- (void)startStorage
{
  if (startStorage_onceToken != -1)
  {
    [PPSSQLStorage startStorage];
  }
}

void __29__PPSSQLStorage_startStorage__block_invoke()
{
  v0 = sqlLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1D8611000, v0, OS_LOG_TYPE_DEFAULT, "[PPSSQLStorage] Starting Storage", v3, 2u);
  }

  v1 = +[PowerlogCore sharedCore];
  v2 = [v1 storage];
  [v2 startStorage];
}

- (void)setupMetadataStorage
{
  if (!+[PLUtilities shouldLogPreUnlockTelemetry])
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__PPSSQLStorage_setupMetadataStorage__block_invoke;
    block[3] = &unk_1E85190B8;
    block[4] = self;
    if (setupMetadataStorage_onceToken != -1)
    {
      dispatch_once(&setupMetadataStorage_onceToken, block);
    }
  }
}

uint64_t __37__PPSSQLStorage_setupMetadataStorage__block_invoke(uint64_t a1)
{
  v2 = sqlLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D8611000, v2, OS_LOG_TYPE_DEFAULT, "[PPSSQLStorage] Setup Metadata Storage", v4, 2u);
  }

  [*(a1 + 32) handleMetadataVersionChange];
  [*(a1 + 32) createMetadataTable];
  [*(a1 + 32) persistMetadata];
  return [*(a1 + 32) deleteOldMetadataStore];
}

- (void)createMetadataTable
{
  v48[3] = *MEMORY[0x1E69E9840];
  v46[0] = @"column-name";
  v46[1] = @"type";
  v47[0] = @"subsystem";
  v47[1] = @"TEXT";
  v48[0] = &unk_1F540CC98;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:2];
  v48[1] = v2;
  v44[0] = @"column-name";
  v44[1] = @"type";
  v45[0] = @"category";
  v45[1] = @"TEXT";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:2];
  v48[2] = v3;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];

  v43[0] = &unk_1F540CCC0;
  v43[1] = &unk_1F540CCE8;
  v41[0] = @"column-name";
  v41[1] = @"type";
  v42[0] = @"build";
  v42[1] = @"TEXT";
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:2];
  v43[2] = v4;
  v39[0] = @"column-name";
  v39[1] = @"type";
  v40[0] = @"name";
  v40[1] = @"TEXT";
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:2];
  v43[3] = v5;
  v37[0] = @"column-name";
  v37[1] = @"type";
  v38[0] = @"version";
  v38[1] = @"REAL";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:2];
  v43[4] = v6;
  v35[0] = @"column-name";
  v35[1] = @"type";
  v36[0] = @"metadata";
  v36[1] = @"BLOB";
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v43[5] = v7;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:6];

  v33[1] = @"REAL";
  v34[0] = &unk_1F540CD10;
  v32[0] = @"column-name";
  v32[1] = @"type";
  v33[0] = @"version";
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
  v34[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [(PPSSQLStorage *)self connectionByStorage];
  v11 = [v10 allValues];

  v12 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        if (([v16 tableExistsForTableName:@"PLCoreStorage_Metadata"] & 1) == 0)
        {
          [v16 createTableName:@"PLCoreStorage_Metadata" withColumns:v24];
          v30[0] = @"subsystem";
          v30[1] = @"category";
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
          [v16 createCompositeIndexOnTable:@"PLCoreStorage_Metadata" forColumns:v17];
        }

        if (([v16 tableExistsForTableName:@"PLCoreStorage_Metadata_Dynamic"] & 1) == 0)
        {
          [v16 createTableName:@"PLCoreStorage_Metadata_Dynamic" withColumns:v23];
          v29[0] = @"FK_ID";
          v29[1] = @"name";
          v29[2] = @"version";
          v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:3];
          [v16 createCompositeIndexOnTable:@"PLCoreStorage_Metadata_Dynamic" forColumns:v18];
        }

        if (([v16 tableExistsForTableName:@"PLCoreStorage_MetadataVersion"] & 1) == 0)
        {
          [v16 createTableName:@"PLCoreStorage_MetadataVersion" withColumns:v9];
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ (%@) VALUES (%f)", @"PLCoreStorage_MetadataVersion", @"version", 0x3FF0000000000000];
          v20 = [v16 performQuery:v19];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v13);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)handleMetadataVersionChange
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT %@ FROM %@", @"version", @"PLCoreStorage_MetadataVersion"];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [(PPSSQLStorage *)self connectionByStorage];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = @"PLCoreStorage_MetadataVersion";
    v9 = *v26;
    v10 = @"PLCoreStorage_Metadata";
    do
    {
      v11 = 0;
      v24 = v7;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        if (![v12 tableExistsForTableName:v8])
        {
          goto LABEL_11;
        }

        v13 = [v12 performQuery:v3];
        if ([v13 count] != 1)
        {

LABEL_11:
          [v12 dropTable:v10];
          [v12 dropTable:@"PLCoreStorage_Metadata_Dynamic"];
          [v12 dropTable:v8];
          goto LABEL_12;
        }

        v14 = [v13 objectAtIndexedSubscript:0];
        [v14 objectForKeyedSubscript:@"version"];
        v15 = v9;
        v16 = v8;
        v17 = v10;
        v18 = v5;
        v20 = v19 = v3;
        [v20 doubleValue];
        v22 = v21;

        v3 = v19;
        v5 = v18;
        v10 = v17;
        v8 = v16;
        v9 = v15;
        v7 = v24;

        if (v22 != 1.0)
        {
          goto LABEL_11;
        }

LABEL_12:
        ++v11;
      }

      while (v7 != v11);
      v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v7);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)persistMetadata
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DFA8] set];
  [(PPSSQLStorage *)self setEntryKeysToSetup:v3];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PPSSQLStorage *)self connectionByStorage];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = objc_opt_new();
        v12 = [(PPSSQLStorage *)self metricsToUpdateForStorage:v10 processedMetrics:v11];
        v13 = [(PPSSQLStorage *)self metricsToAddForStorage:v10 processedMetrics:v11];
        if ([v12 count] || objc_msgSend(v13, "count"))
        {
          [(PPSSQLStorage *)self updateMetadata:v10 updateMetrics:v12 addMetrics:v13];
        }

        [v10 freeMetadataState];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)updateMetadata:(id)a3 updateMetrics:(id)a4 addMetrics:(id)a5
{
  v94 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v55 = a5;
  v64 = v7;
  [v7 beginTransaction];
  v63 = +[PLUtilities buildVersion];
  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v9 = v8;
  obj = [v9 countByEnumeratingWithState:&v81 objects:v93 count:16];
  if (obj)
  {
    v57 = *v82;
    do
    {
      v10 = 0;
      do
      {
        if (*v82 != v57)
        {
          v11 = v10;
          objc_enumerationMutation(v9);
          v10 = v11;
        }

        v61 = v10;
        v12 = *(*(&v81 + 1) + 8 * v10);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v13 = [v9 objectForKeyedSubscript:v12];
        v14 = [v13 countByEnumeratingWithState:&v77 objects:v92 count:16];
        if (v14)
        {
          v15 = *v78;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v78 != v15)
              {
                objc_enumerationMutation(v13);
              }

              v17 = *(*(&v77 + 1) + 8 * i);
              v18 = [v9 objectForKeyedSubscript:v12];
              v19 = [v18 objectForKeyedSubscript:v17];
              v20 = [MEMORY[0x1E695DFB0] null];
              v21 = v19 == v20;

              if (v21)
              {
                v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"DELETE FROM %@ WHERE FK_ID='%@' AND name='%@'", @"PLCoreStorage_Metadata_Dynamic", v12, v17];
                v25 = [v64 performQuery:v23 returnValue:0 returnResult:0];
              }

              else
              {
                v22 = [v9 objectForKeyedSubscript:v12];
                v23 = [v22 objectForKeyedSubscript:v17];

                v24 = [v23 data];
                [v23 version];
                [v64 writeMetadata:v24 forFKID:v12 build:v63 name:v17 version:?];
              }
            }

            v14 = [v13 countByEnumeratingWithState:&v77 objects:v92 count:16];
          }

          while (v14);
        }

        v10 = v61 + 1;
      }

      while ((v61 + 1) != obj);
      obj = [v9 countByEnumeratingWithState:&v81 objects:v93 count:16];
    }

    while (obj);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obja = v55;
  v49 = [obja countByEnumeratingWithState:&v73 objects:v91 count:16];
  if (v49)
  {
    v48 = *v74;
    do
    {
      for (j = 0; j != v49; ++j)
      {
        if (*v74 != v48)
        {
          objc_enumerationMutation(obja);
        }

        v26 = *(*(&v73 + 1) + 8 * j);
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        v72 = 0u;
        v27 = v26;
        v51 = [obja objectForKeyedSubscript:?];
        v53 = [v51 countByEnumeratingWithState:&v69 objects:v90 count:16];
        if (v53)
        {
          v52 = *v70;
          do
          {
            v28 = 0;
            do
            {
              if (*v70 != v52)
              {
                v29 = v28;
                objc_enumerationMutation(v51);
                v28 = v29;
              }

              v54 = v28;
              v30 = *(*(&v69 + 1) + 8 * v28);
              v65 = 0u;
              v66 = 0u;
              v67 = 0u;
              v68 = 0u;
              v31 = [obja objectForKeyedSubscript:v27];
              v56 = [v31 objectForKeyedSubscript:v30];

              v62 = [v56 countByEnumeratingWithState:&v65 objects:v89 count:16];
              if (v62)
              {
                v58 = *v66;
                do
                {
                  v32 = 0;
                  do
                  {
                    if (*v66 != v58)
                    {
                      objc_enumerationMutation(v56);
                    }

                    v33 = *(*(&v65 + 1) + 8 * v32);
                    v34 = [obja objectForKeyedSubscript:v27];
                    v35 = [v34 objectForKeyedSubscript:v30];
                    v36 = [v35 objectForKeyedSubscript:v33];

                    v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT ID FROM %@ WHERE subsystem='%@' AND category='%@'", @"PLCoreStorage_Metadata", v27, v30];
                    v38 = [v64 performQuery:v37];
                    if ([v38 count] < 2)
                    {
                      if ([v38 count])
                      {
                        v40 = v38;
                        goto LABEL_42;
                      }

                      v41 = sqlLog();
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        v86 = v27;
                        v87 = 2112;
                        v88 = v30;
                        _os_log_impl(&dword_1D8611000, v41, OS_LOG_TYPE_DEFAULT, "New subsystem category added: %@ %@", buf, 0x16u);
                      }

                      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ (subsystem, category) VALUES ('%@', '%@')", @"PLCoreStorage_Metadata", v27, v30];
                      v42 = [v64 performQuery:v39 returnValue:0 returnResult:0];
                      v40 = [v64 performQuery:v37];

                      if ([v40 count] == 1)
                      {

LABEL_42:
                        v43 = [v40 objectAtIndexedSubscript:0];
                        v39 = [v43 objectForKeyedSubscript:@"ID"];

                        v44 = [v36 data];
                        [v36 version];
                        [v64 writeMetadata:v44 forFKID:v39 build:v63 name:v33 version:?];
                      }

                      else
                      {
                        v45 = sqlLog();
                        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138412546;
                          v86 = v27;
                          v87 = 2112;
                          v88 = v30;
                          _os_log_error_impl(&dword_1D8611000, v45, OS_LOG_TYPE_ERROR, "Failed to insert subsystem-category: %@ %@", buf, 0x16u);
                        }
                      }

                      v38 = v40;
                      goto LABEL_44;
                    }

                    v39 = sqlLog();
                    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v86 = v27;
                      v87 = 2112;
                      v88 = v30;
                      _os_log_error_impl(&dword_1D8611000, v39, OS_LOG_TYPE_ERROR, "Duplicate subsystem-category entries found: %@ %@", buf, 0x16u);
                    }

LABEL_44:

                    ++v32;
                  }

                  while (v62 != v32);
                  v46 = [v56 countByEnumeratingWithState:&v65 objects:v89 count:16];
                  v62 = v46;
                }

                while (v46);
              }

              v28 = v54 + 1;
            }

            while (v54 + 1 != v53);
            v53 = [v51 countByEnumeratingWithState:&v69 objects:v90 count:16];
          }

          while (v53);
        }
      }

      v49 = [obja countByEnumeratingWithState:&v73 objects:v91 count:16];
    }

    while (v49);
  }

  [v64 endTransaction];
  v47 = *MEMORY[0x1E69E9840];
}

- (id)metricsToUpdateForStorage:(id)a3 processedMetrics:(id)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT * from %@", @"PLCoreStorage_Metadata"];
  v66 = v5;
  v9 = [v5 performQuery:v8];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  v10 = v9;
  v11 = v7;
  obj = v10;
  v67 = [v10 countByEnumeratingWithState:&v81 objects:v92 count:16];
  if (v67)
  {
    v65 = *v82;
    v12 = 0x1E696A000uLL;
    v76 = v7;
    v73 = v6;
    do
    {
      v13 = 0;
      do
      {
        if (*v82 != v65)
        {
          objc_enumerationMutation(obj);
        }

        v70 = v13;
        v14 = *(*(&v81 + 1) + 8 * v13);
        context = objc_autoreleasePoolPush();
        v15 = [v14 objectForKeyedSubscript:@"subsystem"];
        v16 = [v14 objectForKeyedSubscript:@"category"];
        v17 = [v14 objectForKeyedSubscript:@"ID"];
        v18 = [v17 integerValue];

        v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SELECT FK_ID, name, max(version) as version FROM %@ WHERE FK_ID=%lu GROUP BY FK_ID, name", @"PLCoreStorage_Metadata_Dynamic", v18];
        v19 = [v66 performQuery:?];
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v72 = v19;
        v11 = v76;
        v75 = [v19 countByEnumeratingWithState:&v77 objects:v91 count:16];
        if (v75)
        {
          v74 = *v78;
          do
          {
            v20 = 0;
            do
            {
              if (*v78 != v74)
              {
                objc_enumerationMutation(v72);
              }

              v21 = *(*(&v77 + 1) + 8 * v20);
              v22 = [v21 objectForKeyedSubscript:@"name"];
              v23 = [v21 objectForKeyedSubscript:@"version"];
              [v23 doubleValue];
              v25 = v24;

              v26 = v22;
              v27 = [MEMORY[0x1E69BDC20] getMetadataForSubsystem:v15 category:v16 name:v22];
              v28 = v27;
              if (!v27 || ([v27 version], v29 < v25))
              {
                v30 = [*(v12 + 3480) numberWithInteger:v18];
                [v11 objectForKeyedSubscript:v30];
                v32 = v31 = v12;

                if (!v32)
                {
                  v33 = objc_opt_new();
                  v34 = [*(v31 + 3480) numberWithInteger:v18];
                  [v11 setObject:v33 forKeyedSubscript:v34];
                }

                v35 = [MEMORY[0x1E695DFB0] null];
                v36 = [*(v31 + 3480) numberWithInteger:v18];
                v37 = [v11 objectForKeyedSubscript:v36];
                [v37 setObject:v35 forKeyedSubscript:v26];

                v6 = v73;
LABEL_16:

                v12 = 0x1E696A000;
                goto LABEL_17;
              }

              [v28 version];
              v6 = v73;
              if (v46 <= v25)
              {
                goto LABEL_18;
              }

              v47 = [*(v12 + 3480) numberWithInteger:v18];
              v48 = [v76 objectForKeyedSubscript:v47];

              if (!v48)
              {
                v49 = objc_opt_new();
                v50 = [*(v12 + 3480) numberWithInteger:v18];
                [v76 setObject:v49 forKeyedSubscript:v50];
              }

              [v28 version];
              if (v51 == v25)
              {
                v52 = [*(v12 + 3480) numberWithInteger:v18];
                v53 = [v76 objectForKeyedSubscript:v52];
                [v53 setObject:v28 forKeyedSubscript:v26];

                v35 = [PPSEntryKey entryKeyForMetric:v28];
                if (v35)
                {
                  v36 = [(PPSSQLStorage *)self entryKeysToSetup];
                  [v36 addObject:v35];
                  goto LABEL_16;
                }

LABEL_17:

LABEL_18:
                v38 = [v6 objectForKeyedSubscript:v15];

                if (!v38)
                {
                  v39 = objc_opt_new();
                  [v6 setObject:v39 forKeyedSubscript:v15];
                }

                v40 = [v6 objectForKeyedSubscript:v15];
                v41 = [v40 objectForKeyedSubscript:v16];

                if (!v41)
                {
                  v42 = objc_opt_new();
                  v43 = [v6 objectForKeyedSubscript:v15];
                  [v43 setObject:v42 forKeyedSubscript:v16];
                }

                v44 = [v6 objectForKeyedSubscript:v15];
                v45 = [v44 objectForKeyedSubscript:v16];
                [v45 setObject:MEMORY[0x1E695E118] forKeyedSubscript:v26];

                goto LABEL_23;
              }

              v54 = [MEMORY[0x1E695DFB0] null];
              v55 = [*(v12 + 3480) numberWithInteger:v18];
              v56 = [v76 objectForKeyedSubscript:v55];
              [v56 setObject:v54 forKeyedSubscript:v26];

              v57 = [v73 objectForKeyedSubscript:v15];
              v58 = [v57 objectForKeyedSubscript:v16];
              [v58 setObject:MEMORY[0x1E695E110] forKeyedSubscript:v26];

              v44 = sqlLog();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                v59 = [v28 subsystem];
                v60 = [v28 category];
                *buf = 138412802;
                v86 = v59;
                v87 = 2112;
                v88 = v60;
                v89 = 2112;
                v90 = v26;
                _os_log_debug_impl(&dword_1D8611000, v44, OS_LOG_TYPE_DEBUG, "Metric[%@:%@:%@] underwent a major version change. Dropping old metadata", buf, 0x20u);
              }

              v12 = 0x1E696A000;
LABEL_23:

              ++v20;
              v11 = v76;
            }

            while (v75 != v20);
            v61 = [v72 countByEnumeratingWithState:&v77 objects:v91 count:16];
            v75 = v61;
          }

          while (v61);
        }

        objc_autoreleasePoolPop(context);
        v13 = v70 + 1;
      }

      while (v70 + 1 != v67);
      v67 = [obj countByEnumeratingWithState:&v81 objects:v92 count:16];
    }

    while (v67);
  }

  v62 = *MEMORY[0x1E69E9840];

  return v11;
}

- (id)metricsToAddForStorage:(id)a3 processedMetrics:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v48 = a4;
  v47 = objc_opt_new();
  v7 = [MEMORY[0x1E69BDC20] getAllSubsystem];
  v46 = self;
  v38 = v6;
  v50 = [(PPSSQLStorage *)self storageForConnection:v6];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v7;
  v41 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v41)
  {
    v40 = *v62;
    do
    {
      v8 = 0;
      do
      {
        if (*v62 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v8;
        v9 = *(*(&v61 + 1) + 8 * v8);
        v10 = [MEMORY[0x1E69BDC20] getMetadataByCategoryForSubsystem:v9];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v44 = [v10 countByEnumeratingWithState:&v57 objects:v66 count:16];
        if (v44)
        {
          v43 = *v58;
          do
          {
            v11 = 0;
            do
            {
              if (*v58 != v43)
              {
                objc_enumerationMutation(v10);
              }

              v45 = v11;
              v12 = *(*(&v57 + 1) + 8 * v11);
              v53 = 0u;
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v49 = [v10 objectForKeyedSubscript:v12];
              v52 = [v49 countByEnumeratingWithState:&v53 objects:v65 count:16];
              if (v52)
              {
                v51 = *v54;
                do
                {
                  for (i = 0; i != v52; ++i)
                  {
                    if (*v54 != v51)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v14 = *(*(&v53 + 1) + 8 * i);
                    v15 = [v10 objectForKeyedSubscript:v12];
                    v16 = [v15 objectForKeyedSubscript:v14];

                    if ([v16 storage] == v50)
                    {
                      v17 = [v48 objectForKeyedSubscript:v9];
                      [v17 objectForKeyedSubscript:v12];
                      v19 = v18 = v9;
                      v20 = [v19 objectForKeyedSubscript:v14];
                      v21 = [v20 BOOLValue];

                      v9 = v18;
                      if ((v21 & 1) == 0)
                      {
                        v22 = [v47 objectForKeyedSubscript:v18];

                        if (!v22)
                        {
                          v23 = objc_opt_new();
                          [v47 setObject:v23 forKeyedSubscript:v18];
                        }

                        v24 = [v47 objectForKeyedSubscript:v18];
                        v25 = [v24 objectForKeyedSubscript:v12];

                        if (!v25)
                        {
                          v26 = objc_opt_new();
                          v27 = [v47 objectForKeyedSubscript:v18];
                          [v27 setObject:v26 forKeyedSubscript:v12];
                        }

                        v28 = [v10 objectForKeyedSubscript:v12];
                        v29 = [v28 objectForKeyedSubscript:v14];
                        v30 = [v47 objectForKeyedSubscript:v18];
                        v31 = [v30 objectForKeyedSubscript:v12];
                        [v31 setObject:v29 forKeyedSubscript:v14];

                        v32 = [v10 objectForKeyedSubscript:v12];
                        v33 = [v32 objectForKeyedSubscript:v14];
                        v34 = [PPSEntryKey entryKeyForMetric:v33];

                        if (v34)
                        {
                          v35 = [(PPSSQLStorage *)v46 entryKeysToSetup];
                          [v35 addObject:v34];
                        }

                        v9 = v18;
                      }
                    }
                  }

                  v52 = [v49 countByEnumeratingWithState:&v53 objects:v65 count:16];
                }

                while (v52);
              }

              v11 = v45 + 1;
            }

            while (v45 + 1 != v44);
            v44 = [v10 countByEnumeratingWithState:&v57 objects:v66 count:16];
          }

          while (v44);
        }

        v8 = v42 + 1;
      }

      while (v42 + 1 != v41);
      v41 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
    }

    while (v41);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v47;
}

- (void)deleteOldMetadataStore
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setupStorageForEntryKey:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLStorage *)self connectionForKey:v4];
  if (([v5 tableExistsForTableName:v4] & 1) == 0)
  {
    [(PPSSQLStorage *)self setupTableForEntryKey:v4];
  }

  if ([PPSEntryKey hasDynamicKeys:v4])
  {
    v6 = [PPSEntryKey dynamicTableNameForEntryKey:v4];
    [(PPSSQLStorage *)self setupDynamicTableForEntryKey:v4 withName:v6 withConnection:v5];
  }

  if ([PPSEntryKey hasArrayKeys:v4])
  {
    [(PPSSQLStorage *)self setupArrayTableForEntryKey:v4 withName:v4 withConnection:v5];
  }

  v7 = [(PPSSQLStorage *)self entryKeysToSetup];
  v8 = [v7 containsObject:v4];

  if (v8)
  {
    [(PPSSQLStorage *)self handleSchemaMismatchForTable:v4];
    v9 = sqlLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PPSSQLStorage setupStorageForEntryKey:];
    }

    v10 = [(PPSSQLStorage *)self entryKeysToSetup];
    [v10 removeObject:v4];
  }
}

- (void)handleSchemaMismatchForTable:(id)a3
{
  v104 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v60 = self;
  v64 = [(PPSSQLStorage *)self connectionForKey:v4];
  v5 = [MEMORY[0x1E695DF70] arrayWithObject:v4];
  v6 = 0x1E8518000uLL;
  if ([PPSEntryKey hasDynamicKeys:v4])
  {
    v7 = [PPSEntryKey dynamicTableNameForEntryKey:v4];
    [v5 addObject:v7];
  }

  else
  {
    v7 = 0;
  }

  v63 = v4;
  v58 = [PPSEntryKey hasArrayKeys:v4];
  v56 = v7;
  if (v58)
  {
    v8 = [PPSEntryKey arrayMetricsForEntryKey:v4];
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v89 objects:v103 count:16];
    if (v9)
    {
      v10 = v9;
      v57 = 0;
      v11 = *v90;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v90 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v89 + 1) + 8 * i);
          v14 = [v8 objectForKeyedSubscript:v13];
          v15 = [v14 fixedArraySize];

          if (!v15)
          {
            v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_Array_%@", v63, v13];

            [v5 addObject:v16];
            v57 = v16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v89 objects:v103 count:16];
      }

      while (v10);
    }

    else
    {
      v57 = 0;
    }

    v4 = v63;
    v6 = 0x1E8518000uLL;
  }

  else
  {
    v57 = 0;
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  obj = v5;
  v62 = [obj countByEnumeratingWithState:&v85 objects:v102 count:16];
  if (v62)
  {
    v61 = *v86;
    v17 = 0x1E695D000uLL;
    do
    {
      v18 = 0;
      do
      {
        if (*v86 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v85 + 1) + 8 * v18);
        v20 = [*(v17 + 3984) dictionary];
        v66 = [v64 tableInfo:v19];
        v65 = v19;
        if ([v19 isEqualToString:v4])
        {
          v21 = [*(v6 + 2656) baseMetricsForEntryKey:v4];
          [v20 addEntriesFromDictionary:v21];

          if (v58)
          {
            v22 = [*(v6 + 2656) arrayMetricsForEntryKey:v4];
            v81 = 0u;
            v82 = 0u;
            v83 = 0u;
            v84 = 0u;
            v23 = [v22 countByEnumeratingWithState:&v81 objects:v101 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v82;
              do
              {
                for (j = 0; j != v24; ++j)
                {
                  if (*v82 != v25)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v27 = *(*(&v81 + 1) + 8 * j);
                  v28 = [v22 objectForKeyedSubscript:v27];
                  v29 = v28;
                  if (v28 && [v28 fixedArraySize])
                  {
                    [v20 setObject:v29 forKeyedSubscript:v27];
                  }
                }

                v24 = [v22 countByEnumeratingWithState:&v81 objects:v101 count:16];
              }

              while (v24);
            }

            goto LABEL_41;
          }
        }

        else
        {
          if ([v19 containsString:@"_Dynamic"])
          {
            v30 = [*(v6 + 2656) dynamicMetricsForEntryKey:v4];
            goto LABEL_40;
          }

          if ([v4 containsString:@"_Array"])
          {
            v30 = [*(v6 + 2656) arrayMetricsForEntryKey:v4];
LABEL_40:
            v22 = v30;
            [v20 addEntriesFromDictionary:v30];
LABEL_41:
          }
        }

        v31 = [*(v17 + 3984) dictionary];
        v32 = [MEMORY[0x1E695DFA8] set];
        v33 = [MEMORY[0x1E695DFA8] set];
        v34 = [MEMORY[0x1E695DFA8] set];
        v75[0] = MEMORY[0x1E69E9820];
        v75[1] = 3221225472;
        v75[2] = __46__PPSSQLStorage_handleSchemaMismatchForTable___block_invoke;
        v75[3] = &unk_1E851A0E0;
        v35 = v20;
        v76 = v35;
        v36 = v31;
        v77 = v36;
        v37 = v33;
        v78 = v37;
        v38 = v32;
        v79 = v38;
        v39 = v34;
        v80 = v39;
        [v66 enumerateObjectsUsingBlock:v75];
        v40 = MEMORY[0x1E695DFA8];
        v41 = [v35 allKeys];
        v42 = [v40 setWithArray:v41];

        v43 = MEMORY[0x1E695DFD8];
        v44 = [v36 allKeys];
        v45 = [v43 setWithArray:v44];
        [v42 minusSet:v45];

        [v42 minusSet:v39];
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = __46__PPSSQLStorage_handleSchemaMismatchForTable___block_invoke_2;
        v71[3] = &unk_1E851A108;
        v46 = v35;
        v72 = v46;
        v47 = v42;
        v73 = v47;
        v48 = v38;
        v74 = v48;
        [v36 enumerateKeysAndObjectsUsingBlock:v71];
        if ([v48 count] || objc_msgSend(v37, "count"))
        {
          v49 = sqlLog();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            v94 = v65;
            v95 = 2112;
            v96 = v48;
            v97 = 2112;
            v98 = v37;
            v99 = 2112;
            v100 = v47;
            _os_log_debug_impl(&dword_1D8611000, v49, OS_LOG_TYPE_DEBUG, "SchemaMismatch: table: %@ deleted: %@ typechange: %@ new: %@", buf, 0x2Au);
          }

          v50 = MEMORY[0x1E695DFA8];
          v51 = [v46 allKeys];
          v52 = [v50 setWithArray:v51];

          [v52 minusSet:v48];
          [v52 minusSet:v37];
          [v52 minusSet:v47];
          [(PPSSQLStorage *)v60 updateTable:v65 transferDataForKeys:v52];
          v4 = v63;
LABEL_47:

          goto LABEL_48;
        }

        if ([v47 count])
        {
          v53 = sqlLog();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v94 = v65;
            v95 = 2112;
            v96 = v47;
            _os_log_debug_impl(&dword_1D8611000, v53, OS_LOG_TYPE_DEBUG, "SchemaMismatch: table: %@ newMetrics: %@", buf, 0x16u);
          }

          v67[0] = MEMORY[0x1E69E9820];
          v67[1] = 3221225472;
          v67[2] = __46__PPSSQLStorage_handleSchemaMismatchForTable___block_invoke_169;
          v67[3] = &unk_1E851A130;
          v68 = v46;
          v69 = v65;
          v70 = v64;
          [v47 enumerateObjectsUsingBlock:v67];

          v52 = v68;
          goto LABEL_47;
        }

LABEL_48:

        ++v18;
        v6 = 0x1E8518000;
        v17 = 0x1E695D000;
      }

      while (v18 != v62);
      v54 = [obj countByEnumeratingWithState:&v85 objects:v102 count:16];
      v62 = v54;
    }

    while (v54);
  }

  v55 = *MEMORY[0x1E69E9840];
}

void __46__PPSSQLStorage_handleSchemaMismatchForTable___block_invoke(id *a1, void *a2)
{
  v20 = a2;
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [v20 objectForKeyedSubscript:@"name"];
  v5 = [v3 initWithString:v4];

  if (v5 && ([v5 isEqualToString:@"ID"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"timestamp") & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"FK_ID") & 1) == 0)
  {
    v6 = [a1[4] objectForKeyedSubscript:v5];

    if (!v6)
    {
      v7 = [v5 rangeOfString:@"_[0-9.]+$" options:1024];
      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [v5 stringByReplacingCharactersInRange:v7 withString:{v8, &stru_1F539D228}];
        if ([v9 length])
        {
          v10 = [a1[4] objectForKeyedSubscript:v9];
          v11 = v10;
          if (v10 && [v10 auxiliaryType] == 3 && objc_msgSend(v11, "fixedArraySize"))
          {
            [a1[4] setObject:v11 forKey:v5];
            v12 = [a1[5] objectForKeyedSubscript:v9];

            if (!v12)
            {
              v13 = [MEMORY[0x1E695DFA8] set];
              [a1[5] setObject:v13 forKeyedSubscript:v9];
            }

            v14 = [a1[5] objectForKeyedSubscript:v9];
            [v14 addObject:v5];
          }
        }
      }
    }

    v15 = [a1[4] objectForKeyedSubscript:v5];
    if (v15)
    {
      v16 = [v20 objectForKeyedSubscript:@"type"];
      v17 = PLVTypeToPLSQLiteType_0;
      v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "datatype")}];
      v19 = [v17 objectForKeyedSubscript:v18];

      if (([v19 isEqualToString:v16] & 1) == 0)
      {
        [a1[6] addObject:v5];
      }
    }

    else
    {
      [a1[7] addObject:v5];
    }

    [a1[8] addObject:v5];
  }
}

void __46__PPSSQLStorage_handleSchemaMismatchForTable___block_invoke_2(id *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [a1[4] objectForKeyedSubscript:v15];
  if ([v6 auxiliaryType] == 3)
  {
    v7 = [v6 fixedArraySize];
    v8 = [v5 count];
    v9 = [v6 fixedArraySize];
    if (v8 >= v7)
    {
      if ([v5 count] > v9)
      {
        v12 = [v6 fixedArraySize];
        if ([v5 count] > v12)
        {
          v13 = v12;
          do
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", v15, v13];
            [a1[6] addObject:v14];

            ++v13;
          }

          while ([v5 count] > v13);
        }
      }
    }

    else if (v9)
    {
      v10 = 0;
      do
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%d", v15, v10];
        if (([v5 containsObject:v11] & 1) == 0)
        {
          [a1[4] setObject:v6 forKey:v11];
          [a1[5] addObject:v11];
        }

        v10 = (v10 + 1);
      }

      while (v10 < [v6 fixedArraySize]);
    }
  }
}

void __46__PPSSQLStorage_handleSchemaMismatchForTable___block_invoke_169(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v12 = [v3 objectForKeyedSubscript:v4];
  v5 = MEMORY[0x1E696AEC0];
  v6 = *(a1 + 40);
  v7 = PLVTypeToPLSQLiteType_0;
  v8 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v12, "datatype")}];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v5 stringWithFormat:@"ALTER TABLE '%@' ADD COLUMN '%@' %@", v6, v4, v9];;

  v11 = [*(a1 + 48) performQuery:v10];
}

- (void)setupTableForEntryKey:(id)a3 withName:(id)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v47 = a4;
  v46 = [(PPSSQLStorage *)self connectionForKey:v6];
  v7 = [PPSEntryKey baseMetricsForEntryKey:v6];
  v48 = v6;
  v8 = [PPSEntryKey arrayMetricsForEntryKey:v6];
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v53 = v7;
  [v9 addEntriesFromDictionary:v7];
  v45 = v8;
  [v9 addEntriesFromDictionary:v8];
  v51 = v9;
  v10 = [v9 allKeys];
  v11 = [v10 sortedArrayUsingSelector:sel_compare_];

  v12 = objc_opt_new();
  [v12 addObject:&unk_1F540CD38];
  v56 = v12;
  [v12 addObject:&unk_1F540CD60];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v11;
  v52 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  if (v52)
  {
    v13 = @"column-name";
    v50 = *v59;
    v14 = @"%@_%d";
    v15 = 0x1E696A000uLL;
    v16 = @"type";
    v17 = &sharedInstance_result;
    v18 = 0x1E696A000uLL;
    v19 = 0x1E695D000uLL;
    do
    {
      v20 = 0;
      do
      {
        if (*v59 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v54 = v20;
        v21 = *(*(&v58 + 1) + 8 * v20);
        v22 = [v51 objectForKeyedSubscript:?];
        if ([v22 auxiliaryType] == 3 && objc_msgSend(v22, "fixedArraySize"))
        {
          if ([v22 fixedArraySize])
          {
            v23 = v21;
            v24 = 0;
            v57 = v22;
            v55 = v23;
            do
            {
              v64[0] = v13;
              v25 = [*(v15 + 3776) stringWithFormat:v14, v23, v24];
              v64[1] = v16;
              v65[0] = v25;
              v26 = v17[264];
              v27 = v14;
              v28 = [*(v18 + 3480) numberWithInt:{objc_msgSend(v57, "datatype")}];
              v29 = [v26 objectForKeyedSubscript:v28];
              v65[1] = v29;
              [*(v19 + 3872) dictionaryWithObjects:v65 forKeys:v64 count:2];
              v30 = v18;
              v31 = v17;
              v32 = v16;
              v34 = v33 = v13;
              [v56 addObject:v34];

              v13 = v33;
              v16 = v32;
              v17 = v31;
              v18 = v30;
              v19 = 0x1E695D000;

              v14 = v27;
              v15 = 0x1E696A000;

              v22 = v57;
              v24 = (v24 + 1);
              v35 = [v57 fixedArraySize];
              v23 = v55;
            }

            while (v24 < v35);
          }
        }

        else if (v53)
        {
          v36 = [v53 objectForKeyedSubscript:v21];

          if (v36)
          {
            v62[1] = v16;
            v63[0] = v21;
            v62[0] = v13;
            v37 = v17[264];
            v38 = [*(v18 + 3480) numberWithInt:{objc_msgSend(v22, "datatype")}];
            v39 = [v37 objectForKeyedSubscript:v38];
            v63[1] = v39;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:v62 count:2];
            v41 = v40 = v22;
            [v56 addObject:v41];

            v22 = v40;
            v19 = 0x1E695D000;
          }
        }

        v20 = v54 + 1;
      }

      while (v54 + 1 != v52);
      v52 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    }

    while (v52);
  }

  v42 = sqlLog();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [PPSSQLStorage setupTableForEntryKey:withName:];
  }

  v43 = sqlLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
  {
    [PPSSQLStorage setupTableForEntryKey:withName:];
  }

  [v46 createTableName:v47 withColumns:v56];
  v44 = *MEMORY[0x1E69E9840];
}

- (void)setupDynamicTableForEntryKey:(id)a3 withName:(id)a4 withConnection:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v24 = a4;
  v23 = a5;
  v8 = [PPSEntryKey dynamicMetricsForEntryKey:v7];
  v9 = objc_opt_new();
  [v9 addObject:&unk_1F540CD88];
  [v9 addObject:&unk_1F540CDB0];
  v25 = v7;
  [PPSEntryKey allDynamicKeysForEntryKey:v7];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v30 = 0u;
  v10 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v28;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v27 + 1) + 8 * i);
        v15 = [v8 objectForKeyedSubscript:v14];
        v31[0] = @"column-name";
        v31[1] = @"type";
        v32[0] = v14;
        v16 = PLVTypeToPLSQLiteType_0;
        v17 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v15, "datatype")}];
        v18 = [v16 objectForKeyedSubscript:v17];
        v32[1] = v18;
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
        [v9 addObject:v19];
      }

      v11 = [obj countByEnumeratingWithState:&v27 objects:v33 count:16];
    }

    while (v11);
  }

  v20 = sqlLog();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    [PPSSQLStorage setupTableForEntryKey:withName:];
  }

  v21 = sqlLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [PPSSQLStorage setupTableForEntryKey:withName:];
  }

  [v23 createTableName:v24 withColumns:v9];
  [v23 createCompositeIndexOnTable:v24 forColumns:&unk_1F540B7E8];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)setupArrayTableForEntryKey:(id)a3 withName:(id)a4 withConnection:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [PPSEntryKey arrayMetricsForEntryKey:v7];
  v32 = v7;
  v11 = [PPSEntryKey allArrayKeysForEntryKey:v7];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0x1E695D000uLL;
    v15 = 0x1E696A000uLL;
    v36 = *v38;
    v33 = v10;
    v34 = v8;
    do
    {
      v16 = 0;
      v35 = v13;
      do
      {
        if (*v38 != v36)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v37 + 1) + 8 * v16);
        v18 = [v10 objectForKeyedSubscript:v17];
        if (![v18 fixedArraySize])
        {
          v19 = *(v14 + 3952);
          v20 = objc_opt_new();
          v21 = [*(v15 + 3776) stringWithFormat:@"%@_Array_%@", v8, v17];
          if (([v9 tableExistsForTableName:v21] & 1) == 0)
          {
            [v20 addObject:&unk_1F540CDD8];
            [v20 addObject:&unk_1F540CE00];
            v42[0] = @"column-name";
            v22 = [v18 name];
            v42[1] = @"type";
            v43[0] = v22;
            v23 = v11;
            v24 = v9;
            v25 = PLVTypeToPLSQLiteType_0;
            v26 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "datatype")}];
            v27 = [v25 objectForKeyedSubscript:v26];
            v43[1] = v27;
            v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
            [v20 addObject:v28];

            v9 = v24;
            v11 = v23;
            v14 = 0x1E695D000;

            v15 = 0x1E696A000;
            [v9 createTableName:v21 withColumns:v20];
            v41[0] = @"FK_ID";
            v29 = [v18 name];
            v41[1] = v29;
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
            [v9 createCompositeIndexOnTable:v21 forColumns:v30];

            v10 = v33;
            v8 = v34;
          }

          v13 = v35;
        }

        ++v16;
      }

      while (v13 != v16);
      v13 = [v11 countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v13);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateTable:(id)a3 transferDataForKeys:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [@"PPSTmp_" stringByAppendingString:v6];
  if ([v6 containsString:@"_Dynamic"])
  {
    v9 = [v6 mutableCopy];
    v10 = [v9 length] - 8;
LABEL_5:
    v11 = [v9 substringToIndex:v10];

    goto LABEL_7;
  }

  if ([v6 containsString:@"_Array"])
  {
    v9 = [v6 mutableCopy];
    v10 = [v9 rangeOfString:@"_Array_"];
    goto LABEL_5;
  }

  v11 = v6;
LABEL_7:
  v12 = [(PPSSQLStorage *)self connectionForKey:v11];
  [v12 beginTransaction];
  [v7 addObject:@"ID"];
  if ([v6 containsString:@"_Dynamic"])
  {
    [v7 addObject:@"FK_ID"];
    [(PPSSQLStorage *)self setupDynamicTableForEntryKey:v11 withName:v8 withConnection:v12];
  }

  else if ([v6 containsString:@"_Array"])
  {
    [v7 addObject:@"FK_ID"];
    v13 = [@"PPSTmp_" stringByAppendingString:v11];
    [(PPSSQLStorage *)self setupArrayTableForEntryKey:v11 withName:v13 withConnection:v12];
  }

  else
  {
    [v7 addObject:@"timestamp"];
    [(PPSSQLStorage *)self setupTableForEntryKey:v11 withName:v8];
  }

  v14 = [MEMORY[0x1E696AD60] string];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __49__PPSSQLStorage_updateTable_transferDataForKeys___block_invoke;
  v25[3] = &unk_1E851A158;
  v15 = v14;
  v26 = v15;
  [v7 enumerateObjectsUsingBlock:v25];
  v16 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 2}];
  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"INSERT INTO %@ (%@) SELECT %@ FROM %@", v8, v16, v16, v6];
  v18 = sqlLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [PPSSQLStorage updateTable:transferDataForKeys:];
  }

  v19 = [v12 performQuery:v17];
  [v12 dropTable:v6];
  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ALTER TABLE %@ RENAME TO %@", v8, v6];
  v21 = sqlLog();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v20;
    _os_log_impl(&dword_1D8611000, v21, OS_LOG_TYPE_DEFAULT, "UpdateTable alter query %@", buf, 0xCu);
  }

  v22 = [v12 performQuery:v20];
  [v12 endTransaction];

  v23 = *MEMORY[0x1E69E9840];
  return 1;
}

uint64_t __49__PPSSQLStorage_updateTable_transferDataForKeys___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", a2];
  [v3 appendString:v4];

  v5 = *(a1 + 32);

  return [v5 appendString:{@", "}];
}

- (id)connectionForKey:(id)a3
{
  v4 = [PPSEntryKey storageForEntryKey:a3];
  v5 = [(PPSSQLStorage *)self connectionByStorage];
  v6 = [MEMORY[0x1E696AD98] numberWithInt:v4];
  v7 = [v5 objectForKeyedSubscript:v6];

  return v7;
}

- (id)PLSQLConnection
{
  v2 = [(PPSSQLStorage *)self connectionByStorage];
  v3 = [v2 objectForKeyedSubscript:&unk_1F5405E08];

  return v3;
}

- (id)EPSQLConnection
{
  v2 = [(PPSSQLStorage *)self connectionByStorage];
  v3 = [v2 objectForKeyedSubscript:&unk_1F5405DF0];

  return v3;
}

- (id)PreUnlockEPSQLConnection
{
  v2 = [(PPSSQLStorage *)self connectionByStorage];
  v3 = [v2 objectForKeyedSubscript:&unk_1F5405DF0];

  return v3;
}

- (id)CESQLConnection
{
  v2 = [(PPSSQLStorage *)self connectionByStorage];
  v3 = [v2 objectForKeyedSubscript:&unk_1F5405E20];

  return v3;
}

- (id)XCSQLConnection
{
  v2 = [(PPSSQLStorage *)self connectionByStorage];
  v3 = [v2 objectForKeyedSubscript:&unk_1F5405E38];

  return v3;
}

- (id)BGSQLConnection
{
  v2 = [(PPSSQLStorage *)self connectionByStorage];
  v3 = [v2 objectForKeyedSubscript:&unk_1F5405E50];

  return v3;
}

- (int)storageForConnection:(id)a3
{
  v4 = a3;
  v5 = [(PPSSQLStorage *)self PLSQLConnection];

  if (v5 == v4)
  {
    v11 = 2;
  }

  else
  {
    v6 = [(PPSSQLStorage *)self EPSQLConnection];

    if (v6 == v4 || ([(PPSSQLStorage *)self PreUnlockEPSQLConnection], v7 = objc_claimAutoreleasedReturnValue(), v7, v7 == v4))
    {
      v11 = 1;
    }

    else
    {
      v8 = [(PPSSQLStorage *)self CESQLConnection];

      if (v8 == v4)
      {
        v11 = 3;
      }

      else
      {
        v9 = [(PPSSQLStorage *)self XCSQLConnection];

        if (v9 == v4)
        {
          v11 = 4;
        }

        else
        {
          v10 = [(PPSSQLStorage *)self BGSQLConnection];

          if (v10 == v4)
          {
            v11 = 5;
          }

          else
          {
            v11 = 0;
          }
        }
      }
    }
  }

  return v11;
}

- (void)closeAllConnections
{
  v3 = [(PPSSQLStorage *)self PLSQLConnection];
  [v3 closeConnection];

  v4 = [(PPSSQLStorage *)self EPSQLConnection];
  [v4 closeConnection];

  v5 = [(PPSSQLStorage *)self CESQLConnection];
  [v5 closeConnection];

  v6 = [(PPSSQLStorage *)self XCSQLConnection];
  [v6 closeConnection];

  v7 = [(PPSSQLStorage *)self BGSQLConnection];
  [v7 closeConnection];
}

- (void)setupFolders
{
  v33[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  v3 = +[PPSFileUtilities containerPath];
  v4 = [v3 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v33[0] = v4;
  v5 = +[PPSFileUtilities containerPath];
  v6 = [v5 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v7 = [v6 stringByAppendingString:@"ExtendedPersistence/"];
  v33[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v9 = [v2 arrayWithArray:v8];

  if (+[PLUtilities shouldLogPreUnlockTelemetry])
  {
    v10 = +[PPSFileUtilities containerPath];
    v11 = [v10 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
    v12 = [v11 stringByAppendingString:@"PreUnlock/"];
    [v9 addObject:v12];
  }

  v13 = +[PPSFileUtilities containerPath];
  v14 = [v13 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v15 = [v14 stringByAppendingString:@"BackgroundProcessing/"];
  [v9 addObject:v15];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      v20 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        [PLUtilities createAndChownDirectory:*(*(&v26 + 1) + 8 * v20++), v26];
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v18);
  }

  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = *MEMORY[0x1E696A3A0];
  v31 = *MEMORY[0x1E696A3A8];
  v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v23 = +[PPSFileUtilities containerPath];
  v24 = [v23 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  [v21 setAttributes:v22 ofItemAtPath:v24 error:0];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)setupDBConnections
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_1D8611000, a2, OS_LOG_TYPE_ERROR, "Invalid connection to PreUnlock DB '%@'", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

- (id)setupDBConnectionAtPath:(id)a3
{
  v3 = a3;
  v4 = +[PPSFileUtilities containerPath];
  v5 = [v4 stringByAppendingString:@"/Library/PerfPowerTelemetry/"];
  v6 = [v5 stringByAppendingString:@"PreUnlock/"];
  v7 = [v3 hasPrefix:v6];

  v8 = [PLSQLiteConnection alloc];
  if (v7)
  {
    v9 = [(PLSQLiteConnection *)v8 initWithFilePath:v3 withFlags:&unk_1F540B800];
  }

  else
  {
    v9 = [(PLSQLiteConnection *)v8 initWithFilePath:v3];
  }

  v10 = v9;
  if (!v9)
  {
    v11 = sqlLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [PPSSQLStorage setupDBConnectionAtPath:];
    }

    [PLUtilities exitWithReason:101];
  }

  return v10;
}

void __51__PPSSQLStorage_trimConditionsForStorage_trimDate___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [PPSSQLStorage trimConditionsForEntryKey:*(a1 + 40) trimDate:*(a1 + 48) currDate:?];
  if (v3)
  {
    [*(a1 + 32) setObject:v3 forKeyedSubscript:v4];
  }
}

+ (id)trimConditionsForEntryKey:(id)a3 trimDate:(double)a4 currDate:(double)a5
{
  v7 = a3;
  v8 = [PPSEntryKey timeToLiveForEntryKey:v7];
  if ([PPSEntryKey directionalityForEntryKey:v7]== 3)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is NULL OR %@<(SELECT max(%@) FROM '%@' WHERE %@<%f)", @"timestamp", @"timestamp", @"timestamp", v7, @"timestamp", *&a4];
  }

  else
  {
    v9 = a5 + v8 * -86400.0;
    if (v9 > a4)
    {
      v9 = a4;
    }

    [MEMORY[0x1E696AEC0] stringWithFormat:@"(%@ is NULL OR %@<%f)", @"timestamp", @"timestamp", *&v9, v12, v13, v14];
  }
  v10 = ;

  return v10;
}

- (void)updateMetadata:(_DWORD *)a3 updateMetrics:(void *)a4 addMetrics:.cold.1(void *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v6 = objc_begin_catch(a1);
  v7 = sqlLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *a3 = 138412290;
    *a4 = v6;
    OUTLINED_FUNCTION_3_1(&dword_1D8611000, v8, v9, "Exception occurred while updating metadata, %@");
  }

  objc_end_catch();
}

- (void)updateMetadata:(_DWORD *)a3 updateMetrics:(void *)a4 addMetrics:.cold.2(void *a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v6 = objc_begin_catch(a1);
  v7 = sqlLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *a3 = 138412290;
    *a4 = v6;
    OUTLINED_FUNCTION_3_1(&dword_1D8611000, v8, v9, "Exception occurred while adding metadata, %@");
  }

  objc_end_catch();
}

- (void)setupStorageForEntryKey:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "'%@' metrics updated", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupTableForEntryKey:withName:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "tableName: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupTableForEntryKey:withName:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "tableSchemaColumns: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateTable:transferDataForKeys:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1D8611000, v0, v1, "UpdateTable insert query %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)setupDBConnectionAtPath:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)trimConditionsForStorage:(os_log_t)log trimDate:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&dword_1D8611000, log, OS_LOG_TYPE_DEBUG, "Storage: %d, trimFilters: %@", v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

@end