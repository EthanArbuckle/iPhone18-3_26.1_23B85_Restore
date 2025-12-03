@interface TRIGloballyAvailableNamespaces
- (BOOL)setNamespaces:(id)namespaces;
- (TRIGloballyAvailableNamespaces)initWithKVStore:(id)store;
- (id)namespaces;
@end

@implementation TRIGloballyAvailableNamespaces

- (TRIGloballyAvailableNamespaces)initWithKVStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIGloballyAvailableNamespaces.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"kvStore"}];
  }

  v11.receiver = self;
  v11.super_class = TRIGloballyAvailableNamespaces;
  v7 = [(TRIGloballyAvailableNamespaces *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_kvStore, store);
  }

  return v8;
}

- (BOOL)setNamespaces:(id)namespaces
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCAAB0];
  allObjects = [namespaces allObjects];
  v11 = 0;
  v6 = [v4 archivedDataWithRootObject:allObjects requiringSecureCoding:0 error:&v11];
  v7 = v11;

  if (v6)
  {
    [(TRIKVStore *)self->_kvStore setBlob:v6 forKey:@"globally_available_namespaces" usingTransaction:0];
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Couldn't generate data for globally available namespace with error:%@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6 != 0;
}

- (id)namespaces
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(TRIKVStore *)self->_kvStore blobForKey:@"globally_available_namespaces" usingTransaction:0];
  if ([v2 length])
  {
    v3 = MEMORY[0x277CCAAC8];
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v6 = objc_opt_class();
    v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    v16 = 0;
    v8 = [v3 unarchivedObjectOfClasses:v7 fromData:v2 error:&v16];
    v9 = v16;

    if (v8)
    {
      v10 = [MEMORY[0x277CBEB98] setWithArray:v8];
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v9;
        _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to unarchive globally available namespaces with error: %@", buf, 0xCu);
      }

      v10 = [MEMORY[0x277CBEB98] set];
    }

    v12 = v10;
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_INFO, "No globally available namespaces found.", buf, 2u);
    }

    v12 = [MEMORY[0x277CBEB98] set];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

@end