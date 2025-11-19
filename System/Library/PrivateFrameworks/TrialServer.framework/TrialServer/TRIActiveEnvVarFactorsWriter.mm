@interface TRIActiveEnvVarFactorsWriter
- (TRIActiveEnvVarFactorsWriter)initWithPaths:(id)a3;
- (id)_constructPlistForExperiments:(id)a3;
- (void)writeExperiments:(id)a3;
@end

@implementation TRIActiveEnvVarFactorsWriter

- (TRIActiveEnvVarFactorsWriter)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIActiveEnvVarFactorsWriter;
  v6 = [(TRIActiveEnvVarFactorsWriter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
  }

  return v7;
}

- (id)_constructPlistForExperiments:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_alloc(MEMORY[0x277CBEB98]);
  v7 = [TRIKnownEnvVarFactorsReader knownFactorsFromPaths:self->_paths];
  v25 = [v6 initWithArray:v7];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v26)
  {
    v24 = *v35;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v35 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [v9 factorLevelStrings];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __62__TRIActiveEnvVarFactorsWriter__constructPlistForExperiments___block_invoke;
        v32[3] = &unk_279DE2048;
        v33 = v25;
        v11 = [v10 _pas_filteredArrayWithTest:v32];

        if ([v11 count])
        {
          v27 = i;
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [v9 targetedBundleIds];
          v13 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v29;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v29 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v28 + 1) + 8 * j);
                v18 = [v5 objectForKey:v17];
                if (!v18)
                {
                  v18 = objc_opt_new();
                }

                v19 = [v18 arrayByAddingObjectsFromArray:v11];
                [v5 setObject:v19 forKeyedSubscript:v17];
              }

              v14 = [v12 countByEnumeratingWithState:&v28 objects:v38 count:16];
            }

            while (v14);
          }

          i = v27;
        }
      }

      v26 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v26);
  }

  v20 = [v5 copy];
  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

uint64_t __62__TRIActiveEnvVarFactorsWriter__constructPlistForExperiments___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) containsObject:v3];
  if ((v4 & 1) == 0)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v3;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Refusing to write an active factor %@ which doesn't match a pre-declared known factor.", &v10, 0xCu);
    }

    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Known factors: %@", &v10, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)writeExperiments:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = TRILogCategory_Server();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "count")}];
    *buf = 138412290;
    v20 = v7;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Writing %@ low level experiments", buf, 0xCu);
  }

  v8 = [(TRIActiveEnvVarFactorsWriter *)self _constructPlistForExperiments:v4];
  v17 = @"ActiveLowLevelFactors";
  v18 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v10 = [MEMORY[0x277CCAC58] dataWithPropertyList:v9 format:100 options:0 error:0];
  v11 = [(TRIPaths *)self->_paths activeLowLevelFactorsFile];
  v16 = 0;
  v12 = [v10 writeToFile:v11 options:1 error:&v16];
  v13 = v16;
  if ((v12 & 1) == 0)
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v13;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to write low level factors: %@", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v5);
  v15 = *MEMORY[0x277D85DE8];
}

@end