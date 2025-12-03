@interface TRINamespaceStatusProvider(Tasks)
+ (uint64_t)updateStatusFetchSuccess:()Tasks forNamespaceName:withContext:;
@end

@implementation TRINamespaceStatusProvider(Tasks)

+ (uint64_t)updateStatusFetchSuccess:()Tasks forNamespaceName:withContext:
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  namespaceDatabase = [v8 namespaceDatabase];
  v10 = [namespaceDatabase dynamicNamespaceRecordWithNamespaceName:v7];

  paths = [v8 paths];

  if (paths)
  {
    v12 = [objc_alloc(MEMORY[0x277D73788]) initWithPaths:paths];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __91__TRINamespaceStatusProvider_Tasks__updateStatusFetchSuccess_forNamespaceName_withContext___block_invoke;
    v18[3] = &__block_descriptor_33_e48___TRINamespaceStatus_16__0__TRINamespaceStatus_8l;
    v19 = a3;
    v13 = [v12 updateStatusForNamespaceWithName:v7 usingBlock:v18];
  }

  else
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      appContainer = [v10 appContainer];
      identifier = [appContainer identifier];
      *buf = 138543362;
      v21 = identifier;
      _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "updateStatusFetchSuccess skipping missing app container: %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

@end