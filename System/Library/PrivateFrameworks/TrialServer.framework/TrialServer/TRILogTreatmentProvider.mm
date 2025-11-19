@interface TRILogTreatmentProvider
+ (BOOL)deleteFileAtPath:(id)a3;
- (BOOL)addTreatment:(id)a3;
- (BOOL)saveTreatments:(id)a3;
- (void)removeTreatment:(id)a3;
- (void)updatePersistedLogNamespace:(id)a3;
@end

@implementation TRILogTreatmentProvider

+ (BOOL)deleteFileAtPath:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  if (![v4 fileExistsAtPath:v3] || ((v13 = 0, v5 = objc_msgSend(v4, "removeItemAtPath:error:", v3, &v13), v6 = v13, v5) ? (v7 = v6 == 0) : (v7 = 0), v7))
  {
    v10 = 1;
  }

  else
  {
    v8 = v6;
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v3;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "failed to remove file %{public}@ -- %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)saveTreatments:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRILogTreatmentReader *)self path];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v21 = 0;
  v7 = [v6 triCreateDirectoryForPath:v5 isDirectory:0 error:&v21];
  v8 = v21;

  if (v7)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    if (![v4 count])
    {
      v11 = [TRILogTreatmentProvider deleteFileAtPath:v5];
      goto LABEL_20;
    }

    v12 = objc_alloc_init(MEMORY[0x277D73AF8]);
    [v12 setTreatments:v4];
    [v12 setMetrics:0];
    [v12 setSubject:0];
    [v12 setSystemDimensions:0];
    [v12 setUserDimensions:0];
    v13 = [v12 data];
    if ([v13 length])
    {
      v20 = 0;
      v11 = 1;
      v14 = [v13 writeToFile:v5 options:1 error:&v20];
      v15 = v20;
      v16 = v15;
      if (v14 && !v15)
      {
        goto LABEL_19;
      }

      v17 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v23 = v5;
        v24 = 2114;
        v25 = v16;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "failed to write treatments to file %{public}@ -- %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v16 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = 0;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "failed to serialize treatments -- %{public}@", buf, 0xCu);
      }
    }

    v11 = 0;
LABEL_19:

    goto LABEL_20;
  }

  v10 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v23 = v5;
    v24 = 2114;
    v25 = v8;
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "failed to create directory for file %{public}@ -- %{public}@", buf, 0x16u);
  }

  v11 = 0;
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)addTreatment:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19 = self;
  v5 = [(TRILogTreatmentReader *)self treatments];
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    while (2)
    {
      v11 = 0;
      v12 = v9;
      v9 += v8;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v13 = [*(*(&v20 + 1) + 8 * v11) treatmentId];
        v14 = [v4 treatmentId];
        v15 = [v13 isEqualToString:v14];

        if (v15)
        {
          v9 = v12;
          goto LABEL_14;
        }

        ++v12;
        ++v11;
      }

      while (v8 != v11);
      v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_14:

  if (v9 >= [v6 count])
  {
    [v6 addObject:v4];
  }

  else
  {
    [v6 setObject:v4 atIndexedSubscript:v9];
  }

  v16 = [(TRILogTreatmentProvider *)v19 saveTreatments:v6];

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)removeTreatment:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRILogTreatmentReader *)self treatments];
  v6 = v5;
  if (v5)
  {
    v18 = self;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v20;
      while (2)
      {
        v12 = 0;
        v13 = v10;
        v10 += v9;
        do
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = [*(*(&v19 + 1) + 8 * v12) treatmentId];
          v15 = [v14 isEqualToString:v4];

          if (v15)
          {
            v10 = v13;
            goto LABEL_16;
          }

          ++v13;
          ++v12;
        }

        while (v9 != v12);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v10 = 0;
    }

LABEL_16:

    if (v10 < [v7 count])
    {
      [v7 removeObjectAtIndex:v10];
      [(TRILogTreatmentProvider *)v18 saveTreatments:v7];
    }
  }

  else
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v25 = v4;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "asked to remove treatment %@ from logging but no existing treatments", buf, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)updatePersistedLogNamespace:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRILogTreatmentReader *)self fetchRolloutLogNamespaces];
  v6 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v21 + 1) + 8 * v11) name];
        v13 = [v4 name];
        v14 = [v12 isEqualToString:v13];

        if ((v14 & 1) == 0)
        {
          [v6 addNamespace:v4];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v9);
  }

  [v6 addNamespace:v4];
  v15 = [v6 data];
  v16 = [(TRILogTreatmentReader *)self namespaceLoggingTreatmentPath];
  v17 = [v15 writeToFile:v16 atomically:1];

  if ((v17 & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [(TRILogTreatmentReader *)self namespaceLoggingTreatmentPath];
      *buf = 138412290;
      v26 = v20;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "failed writing rolloutcounts to %@", buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end