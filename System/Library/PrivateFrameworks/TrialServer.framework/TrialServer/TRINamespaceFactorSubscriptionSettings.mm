@interface TRINamespaceFactorSubscriptionSettings
+ (id)settingsWithKeyValueStore:(id)store;
- (BOOL)setSubscriptionWithFactorNames:(id)names inNamespaceName:(id)name error:(id *)error;
- (TRINamespaceFactorSubscriptionSettings)initWithKeyValueStore:(id)store;
- (id)subscribedFactorsForNamespaceName:(id)name;
@end

@implementation TRINamespaceFactorSubscriptionSettings

+ (id)settingsWithKeyValueStore:(id)store
{
  storeCopy = store;
  v4 = [[TRINamespaceFactorSubscriptionSettings alloc] initWithKeyValueStore:storeCopy];

  return v4;
}

- (TRINamespaceFactorSubscriptionSettings)initWithKeyValueStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = TRINamespaceFactorSubscriptionSettings;
  v6 = [(TRINamespaceFactorSubscriptionSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keyValueStore, store);
  }

  return v7;
}

- (id)subscribedFactorsForNamespaceName:(id)name
{
  v24 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorSubscriptionSettings.m" lineNumber:41 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  keyValueStore = [(TRINamespaceFactorSubscriptionSettings *)self keyValueStore];
  v7 = [TRINamespaceFactorSubscriptionSettings keyForNamespaceSubscription:nameCopy];
  v8 = [keyValueStore blobForKey:v7 usingTransaction:0];

  if (v8)
  {
    v9 = MEMORY[0x277CCAAC8];
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc(MEMORY[0x277CBEB98]);
    v12 = objc_opt_class();
    v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v10);
    v21 = 0;
    v14 = [v9 unarchivedObjectOfClasses:v13 fromData:v8 error:&v21];
    v15 = v21;

    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = v15;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to unarchive subscription object. Return empty array instead. Error: %{public}@", buf, 0xCu);
      }

      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)setSubscriptionWithFactorNames:(id)names inNamespaceName:(id)name error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  nameCopy = name;
  v11 = nameCopy;
  if (namesCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorSubscriptionSettings.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"factorNames"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorSubscriptionSettings.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  v12 = [MEMORY[0x277CBEB98] setWithArray:namesCopy];
  allObjects = [v12 allObjects];

  v26 = 0;
  v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:allObjects requiringSecureCoding:0 error:&v26];
  v15 = v26;
  v16 = TRILogCategory_Server();
  v17 = v16;
  if (v14)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138543618;
      v28 = v18;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Set subscription [%{public}@] in namespace '%{public}@'", buf, 0x16u);
    }

    keyValueStore = [(TRINamespaceFactorSubscriptionSettings *)self keyValueStore];
    v20 = [TRINamespaceFactorSubscriptionSettings keyForNamespaceSubscription:v11];
    [keyValueStore setBlob:v14 forKey:v20 usingTransaction:0];
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = v15;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to archive subscription object. Error: %{public}@", buf, 0xCu);
    }

    if (error)
    {
      v21 = v15;
      *error = v15;
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return v14 != 0;
}

@end