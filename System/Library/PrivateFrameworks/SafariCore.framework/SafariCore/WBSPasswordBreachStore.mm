@interface WBSPasswordBreachStore
+ (BOOL)_readAndValidatePersistentIdentifierCanaryWithPersistentIdentifier:(id)a3 expectedValue:(id)a4;
+ (id)_createPersistentIdentifierCanary;
+ (void)_createPersistentIdentifierCanary;
- (WBSPasswordBreachStore)initWithBackingStoreURL:(id)a3;
- (unint64_t)rampIdentifier;
- (void)setRampIdentifier:(unint64_t)a3;
@end

@implementation WBSPasswordBreachStore

- (WBSPasswordBreachStore)initWithBackingStoreURL:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = WBSPasswordBreachStore;
  v5 = [(WBSPasswordBreachStore *)&v18 init];
  if (v5)
  {
    v6 = [WBSPersistentPropertyListStore alloc];
    v19 = *MEMORY[0x1E695DB80];
    v20[0] = MEMORY[0x1E695E118];
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v8 = [(WBSPersistentPropertyListStore *)v6 initWithBackingStoreURL:v4 fileResourceValues:v7];
    store = v5->_store;
    v5->_store = v8;

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke;
    v16 = &unk_1E7CF3408;
    v17 = v4;
    [(WBSPersistentPropertyListStore *)v5->_store setCreateEmptyStoreHandler:&v13];
    [(WBSPersistentPropertyListStore *)v5->_store setValidateLoadedStoreHandler:&__block_literal_global_44, v13, v14, v15, v16];
    v10 = v5;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v5;
}

id __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v10 = @"Version";
  v11[0] = &unk_1F308E3C0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v3 = [v2 mutableCopy];

  if (*(a1 + 32))
  {
    v4 = +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
    v5 = v4;
    if (!v4)
    {
      goto LABEL_5;
    }

    v6 = [v4 first];
    [v3 setObject:v6 forKeyedSubscript:@"KeychainPersistentIdentifierCanaryPersistentIdentifier"];

    v7 = [v5 second];
    [v3 setObject:v7 forKeyedSubscript:@"KeychainPersistentIdentifierCanaryValue"];
  }

  v5 = v3;
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

id __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 safari_numberForKey:@"Version"];
  v4 = [v3 unsignedIntegerValue];

  if (v4 == 1)
  {
    v5 = [v2 safari_dataForKey:@"KeychainPersistentIdentifierCanaryPersistentIdentifier"];
    if (![v5 length])
    {
      v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_4();
      }

      v9 = 0;
      goto LABEL_20;
    }

    v6 = [v2 safari_stringForKey:@"KeychainPersistentIdentifierCanaryValue"];
    if ([v6 length])
    {
      if ([WBSPasswordBreachStore _readAndValidatePersistentIdentifierCanaryWithPersistentIdentifier:v5 expectedValue:v6])
      {
        v7 = [v2 valueForKey:@"PasswordEvaluationResults"];

        if (v7)
        {
          v8 = [v2 mutableCopy];
          [v8 removeObjectForKey:@"PasswordEvaluationResults"];

          v2 = v8;
        }

        v2 = v2;
        v9 = v2;
        goto LABEL_19;
      }

      v13 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_2();
      }
    }

    else
    {
      v12 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_3();
      }
    }

    v9 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v10 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_1(v4, v10);
  }

  v9 = 0;
LABEL_21:

  return v9;
}

- (unint64_t)rampIdentifier
{
  v2 = [(WBSPersistentPropertyListStore *)self->_store numberForKey:@"RampIdentifier"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setRampIdentifier:(unint64_t)a3
{
  store = self->_store;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [(WBSPersistentPropertyListStore *)store setObject:v4 forKey:@"RampIdentifier"];
}

+ (id)_createPersistentIdentifierCanary
{
  v42[6] = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = SecAccessControlCreateWithFlags(0, *MEMORY[0x1E697ABE8], 0, &error);
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    v6 = *MEMORY[0x1E697AFF8];
    v7 = *MEMORY[0x1E697B008];
    v8 = *MEMORY[0x1E697AE88];
    v41[0] = *MEMORY[0x1E697AFF8];
    v41[1] = v8;
    v42[0] = v7;
    v42[1] = @"KeychainPersistentIdentifierCanaryPersistentIdentifier";
    v9 = *MEMORY[0x1E697B3C0];
    v41[2] = *MEMORY[0x1E697B3C0];
    v34 = v5;
    v10 = [(__CFError *)v5 dataUsingEncoding:4];
    v11 = *MEMORY[0x1E697B320];
    v12 = *MEMORY[0x1E695E4D0];
    v42[2] = v10;
    v42[3] = v12;
    v13 = *MEMORY[0x1E697ABC8];
    v33 = v11;
    v41[3] = v11;
    v41[4] = v13;
    v14 = *MEMORY[0x1E697ABD0];
    v41[5] = *MEMORY[0x1E697ABD0];
    v42[4] = v3;
    v42[5] = @"com.apple.cfnetwork";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:v41 count:6];

    result = 0;
    v16 = SecItemAdd(v15, &result);
    if (v16)
    {
      v17 = v16;
      if (v16 != -25299)
      {
        v25 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[(WBSPasswordBreachStore *)v17];
        }

        v24 = 0;
        v19 = v34;
        goto LABEL_25;
      }

      v32 = v15;
      v39[0] = v6;
      v39[1] = v8;
      v40[0] = v7;
      v40[1] = @"KeychainPersistentIdentifierCanaryPersistentIdentifier";
      v39[2] = v14;
      v40[2] = @"com.apple.cfnetwork";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:3];
      v37 = v9;
      v19 = v34;
      v20 = [(__CFError *)v34 dataUsingEncoding:4];
      v38 = v20;
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];

      if (SecItemUpdate(v18, v21))
      {
        v22 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
        }

LABEL_17:

        v24 = 0;
        v15 = v32;
LABEL_25:

        goto LABEL_26;
      }

      v26 = [v18 mutableCopy];
      [v26 setObject:v12 forKeyedSubscript:v33];
      if (SecItemCopyMatching(v26, &result))
      {
        v27 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
        }

        goto LABEL_17;
      }

      v15 = v32;
    }

    v28 = result;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v34;
      v24 = [[WBSPair alloc] initWithFirst:v28 second:v34];
    }

    else
    {
      v29 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
      v19 = v34;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        +[WBSPasswordBreachStore _createPersistentIdentifierCanary];
      }

      v24 = 0;
    }

    goto LABEL_25;
  }

  v19 = error;
  v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    +[(WBSPasswordBreachStore *)v23];
  }

  v24 = 0;
LABEL_26:

  v30 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (BOOL)_readAndValidatePersistentIdentifierCanaryWithPersistentIdentifier:(id)a3 expectedValue:(id)a4
{
  v23[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E697B3C8];
  v22[0] = *MEMORY[0x1E697AFF8];
  v22[1] = v7;
  v23[0] = *MEMORY[0x1E697B008];
  v23[1] = v5;
  v22[2] = *MEMORY[0x1E697B318];
  v23[2] = MEMORY[0x1E695E118];
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:3];
  v19[0] = 0;
  v9 = SecItemCopyMatching(v8, v19);
  if (v9)
  {
    v10 = v9;
    v11 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v10;
      _os_log_impl(&dword_1B8447000, v11, OS_LOG_TYPE_DEFAULT, "Could not find canary in keychain: %d", buf, 8u);
    }

LABEL_10:

    v13 = 0;
LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = v19[0];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "Canary item in keychain had unexpected type", buf, 2u);
    }

    goto LABEL_10;
  }

  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v12 encoding:4];

  if (([v13 isEqualToString:v6] & 1) == 0)
  {
    v18 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_DEFAULT, "Canary item in keychain did not match plist value.", v19, 2u);
    }

    goto LABEL_11;
  }

  v14 = 1;
LABEL_12:

  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

void __50__WBSPasswordBreachStore_initWithBackingStoreURL___block_invoke_32_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134349056;
  v4 = a1;
  _os_log_error_impl(&dword_1B8447000, a2, OS_LOG_TYPE_ERROR, "Unexpected store version %{public}lu, resetting store.", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_createPersistentIdentifierCanary
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  v6 = 138543362;
  v7 = v4;
  _os_log_error_impl(&dword_1B8447000, v3, OS_LOG_TYPE_ERROR, "Could not create same device access ref: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end