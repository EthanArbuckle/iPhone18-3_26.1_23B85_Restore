@interface TRINamespaceStatusProvider
- (BOOL)deleteStatusForNamespaceWithName:(id)name;
- (BOOL)saveNamespaceStatus:(id)status toURL:(id)l;
- (BOOL)saveStatus:(id)status;
- (BOOL)updateStatusForNamespaceWithName:(id)name usingBlock:(id)block;
- (TRINamespaceStatusProvider)initWithPaths:(id)paths;
- (id)loadNamespaceStatusFromURL:(id)l;
- (id)statusForNamespaceWithName:(id)name;
- (id)urlForStatusWithNamespaceName:(id)name;
@end

@implementation TRINamespaceStatusProvider

- (TRINamespaceStatusProvider)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRINamespaceStatusProvider;
  v6 = [(TRINamespaceStatusProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, paths);
  }

  return v7;
}

- (id)urlForStatusWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [[TRITreatmentInfo alloc] initWithPaths:self->_paths];
  v7 = [(TRITreatmentInfo *)v6 baseUrlForTreatmentsWithNamespaceName:nameCopy];
  v8 = [v7 URLByAppendingPathComponent:@"namespace-status.pb"];

  if (!v8)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:88 description:{@"URL for namespace status is nil for %@", nameCopy}];
  }

  return v8;
}

- (id)statusForNamespaceWithName:(id)name
{
  v18 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v5 = [(TRINamespaceStatusProvider *)self urlForStatusWithNamespaceName:nameCopy];
  v6 = [(TRINamespaceStatusProvider *)self loadNamespaceStatusFromURL:v5];
  v7 = v6;
  if (v6)
  {
    namespaceName = [v6 namespaceName];
    v9 = [nameCopy isEqualToString:namespaceName];

    if ((v9 & 1) == 0)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        namespaceName2 = [v7 namespaceName];
        v14 = 138412546;
        v15 = nameCopy;
        v16 = 2112;
        v17 = namespaceName2;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "status has mismatched namespace name: %@ != %@", &v14, 0x16u);
      }

      v7 = 0;
    }
  }

  v11 = *MEMORY[0x277D85DE8];

  return v7;
}

- (BOOL)saveStatus:(id)status
{
  statusCopy = status;
  namespaceName = [statusCopy namespaceName];

  if (!namespaceName)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:103 description:{@"Invalid parameter not satisfying: %@", @"status.namespaceName"}];
  }

  namespaceName2 = [statusCopy namespaceName];
  v8 = [(TRINamespaceStatusProvider *)self urlForStatusWithNamespaceName:namespaceName2];

  v9 = [(TRINamespaceStatusProvider *)self saveNamespaceStatus:statusCopy toURL:v8];
  return v9;
}

- (BOOL)updateStatusForNamespaceWithName:(id)name usingBlock:(id)block
{
  v22 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  blockCopy = block;
  v8 = [(TRINamespaceStatusProvider *)self statusForNamespaceWithName:nameCopy];
  v9 = blockCopy[2](blockCopy, v8);

  if (!(v8 | v9))
  {
    v10 = 1;
    goto LABEL_11;
  }

  if (!v9)
  {
    v13 = [(TRINamespaceStatusProvider *)self deleteStatusForNamespaceWithName:nameCopy];
    goto LABEL_7;
  }

  namespaceName = [v9 namespaceName];
  v12 = [nameCopy isEqualToString:namespaceName];

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
    namespaceName2 = [v9 namespaceName];
    v18 = 138412546;
    v19 = nameCopy;
    v20 = 2112;
    v21 = namespaceName2;
    _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "status has mismatched namespace name: %@ != %@", &v18, 0x16u);
  }

  v10 = 0;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)deleteStatusForNamespaceWithName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v6 = [(TRINamespaceStatusProvider *)self urlForStatusWithNamespaceName:nameCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = 0;
  v8 = [defaultManager removeItemAtURL:v6 error:&v14];
  v9 = v14;

  if ((v8 & 1) == 0)
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v16 = nameCopy;
      v17 = 2112;
      v18 = v9;
      _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "failed to remove status file for namespace %@ -- %@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)loadNamespaceStatusFromURL:(id)l
{
  lCopy = l;
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy options:1 error:&v8];
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

- (BOOL)saveNamespaceStatus:(id)status toURL:(id)l
{
  v31 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  lCopy = l;
  v9 = objc_autoreleasePoolPush();
  asData = [statusCopy asData];
  if (!asData)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    namespaceName = [statusCopy namespaceName];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:151 description:{@"failed to serialize status for namespace: %@", namespaceName}];
  }

  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  if (!uRLByDeletingLastPathComponent)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceStatusProvider.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"parentUrl"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v13 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v26];
  v14 = v26;

  if (!v13 || (v25 = v14, v15 = 1, v16 = [asData writeToURL:lCopy options:1 error:&v25], v17 = v25, v14, v14 = v17, (v16 & 1) == 0))
  {
    v18 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      namespaceName2 = [statusCopy namespaceName];
      *buf = 138412546;
      v28 = namespaceName2;
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