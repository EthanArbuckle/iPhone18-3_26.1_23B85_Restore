@interface TRINamespaceStatusProvider
- (BOOL)deleteStatusForNamespaceWithName:(id)a3;
- (BOOL)saveNamespaceStatus:(id)a3 toURL:(id)a4;
- (BOOL)saveStatus:(id)a3;
- (BOOL)updateStatusForNamespaceWithName:(id)a3 usingBlock:(id)a4;
- (TRINamespaceStatusProvider)initWithPaths:(id)a3;
- (id)loadNamespaceStatusFromURL:(id)a3;
- (id)statusForNamespaceWithName:(id)a3;
- (id)urlForStatusWithNamespaceName:(id)a3;
@end

@implementation TRINamespaceStatusProvider

- (TRINamespaceStatusProvider)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRINamespaceStatusProvider;
  v6 = [(TRINamespaceStatusProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
  }

  return v7;
}

- (id)urlForStatusWithNamespaceName:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [[TRITreatmentInfo alloc] initWithPaths:self->_paths];
  v7 = [(TRITreatmentInfo *)v6 baseUrlForTreatmentsWithNamespaceName:v5];
  v8 = [v7 URLByAppendingPathComponent:@"namespace-status.pb"];

  if (!v8)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:88 description:{@"URL for namespace status is nil for %@", v5}];
  }

  return v8;
}

- (id)statusForNamespaceWithName:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRINamespaceStatusProvider *)self urlForStatusWithNamespaceName:v4];
  v6 = [(TRINamespaceStatusProvider *)self loadNamespaceStatusFromURL:v5];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 namespaceName];
    v9 = [v4 isEqualToString:v8];

    if ((v9 & 1) == 0)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v13 = [v7 namespaceName];
        v14 = 138412546;
        v15 = v4;
        v16 = 2112;
        v17 = v13;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "status has mismatched namespace name: %@ != %@", &v14, 0x16u);
      }

      v7 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)saveStatus:(id)a3
{
  v5 = a3;
  v6 = [v5 namespaceName];

  if (!v6)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"status.namespaceName"}];
  }

  v7 = [v5 namespaceName];
  v8 = [(TRINamespaceStatusProvider *)self urlForStatusWithNamespaceName:v7];

  v9 = [(TRINamespaceStatusProvider *)self saveNamespaceStatus:v5 toURL:v8];
  return v9;
}

- (BOOL)updateStatusForNamespaceWithName:(id)a3 usingBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(TRINamespaceStatusProvider *)self statusForNamespaceWithName:v6];
  v9 = v7[2](v7, v8);

  if (!(v8 | v9))
  {
    v10 = 1;
    goto LABEL_11;
  }

  if (!v9)
  {
    v13 = [(TRINamespaceStatusProvider *)self deleteStatusForNamespaceWithName:v6];
    goto LABEL_7;
  }

  v11 = [v9 namespaceName];
  v12 = [v6 isEqualToString:v11];

  if (v12)
  {
    v13 = [(TRINamespaceStatusProvider *)self saveStatus:v9];
LABEL_7:
    v10 = v13;
    goto LABEL_11;
  }

  v14 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v17 = [v9 namespaceName];
    v18 = 138412546;
    v19 = v6;
    v20 = 2112;
    v21 = v17;
    _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "status has mismatched namespace name: %@ != %@", &v18, 0x16u);
  }

  v10 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)deleteStatusForNamespaceWithName:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [(TRINamespaceStatusProvider *)self urlForStatusWithNamespaceName:v5];
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v8 = [v7 removeItemAtURL:v6 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = v5;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "failed to remove status file for namespace %@ -- %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadNamespaceStatusFromURL:(id)a3
{
  v3 = a3;
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v3 options:1 error:&v8];
  if (v5)
  {
    v6 = [TRINamespaceStatus statusFromData:v5];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

- (BOOL)saveNamespaceStatus:(id)a3 toURL:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = [v7 asData];
  if (!v10)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    v23 = [v7 namespaceName];
    [v22 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:151 description:{@"failed to serialize status for namespace: %@", v23}];
  }

  v11 = [v8 URLByDeletingLastPathComponent];
  if (!v11)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"parentUrl"}];
  }

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v13 = [v12 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v26];
  v14 = v26;

  if (!v13 || (v25 = v14, v15 = 1, v16 = [v10 writeToURL:v8 options:1 error:&v25], v17 = v25, v14, v14 = v17, (v16 & 1) == 0))
  {
    v18 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [v7 namespaceName];
      *buf = 138412546;
      v28 = v21;
      v29 = 2112;
      v30 = v14;
      _os_log_error_impl(&dword_22EA6B000, v18, OS_LOG_TYPE_ERROR, "failed to write status for namespace %@ -- %@", buf, 0x16u);
    }

    v15 = 0;
  }

  objc_autoreleasePoolPop(v9);
  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

@end