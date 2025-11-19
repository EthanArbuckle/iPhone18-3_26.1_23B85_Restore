@interface RMBaseStore
- (BOOL)isEqualToStore:(id)a3;
- (BOOL)isValidDeclaration:(id)a3;
- (RMBaseStore)initWithCoder:(id)a3;
- (RMBaseStore)initWithIdentifier:(id)a3 type:(int64_t)a4 scope:(int64_t)a5 name:(id)a6 description:(id)a7 enrollmentURL:(id)a8 accountIdentifier:(id)a9 defaultToInteractive:(BOOL)a10 dataSeparated:(BOOL)a11 personaIdentifier:(id)a12;
- (id)metadataReturningError:(id *)a3;
- (id)metadataValueForKey:(id)a3 error:(id *)a4;
- (void)declarationManifestWithCompletionHandler:(id)a3;
- (void)declarationWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)declarationsWithCompletionHandler:(id)a3;
- (void)declarationsWithTypes:(id)a3 completionHandler:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)fetchDataAtURL:(id)a3 completionHandler:(id)a4;
- (void)waitForActiveAndValidDeclarations:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
- (void)waitForProcessingOfDeclarations:(id)a3 timeout:(double)a4 completionHandler:(id)a5;
@end

@implementation RMBaseStore

- (RMBaseStore)initWithIdentifier:(id)a3 type:(int64_t)a4 scope:(int64_t)a5 name:(id)a6 description:(id)a7 enrollmentURL:(id)a8 accountIdentifier:(id)a9 defaultToInteractive:(BOOL)a10 dataSeparated:(BOOL)a11 personaIdentifier:(id)a12
{
  v16 = a3;
  v17 = a6;
  v18 = a7;
  v29 = a8;
  v19 = a9;
  v20 = a12;
  v30.receiver = self;
  v30.super_class = RMBaseStore;
  v21 = [(RMBaseStore *)&v30 init];
  if (v21)
  {
    v22 = [v16 copy];
    identifier = v21->_identifier;
    v21->_identifier = v22;

    v21->_type = a4;
    v21->_scope = a5;
    objc_storeStrong(&v21->_name, a6);
    objc_storeStrong(&v21->_storeDescription, a7);
    objc_storeStrong(&v21->_enrollmentURL, a8);
    v24 = [v19 copy];
    accountIdentifier = v21->_accountIdentifier;
    v21->_accountIdentifier = v24;

    v21->_defaultToInteractive = a10;
    v21->_dataSeparated = a11;
    objc_storeStrong(&v21->_personaIdentifier, a12);
  }

  return v21;
}

- (void)declarationManifestWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMBaseStore *)self xpcConnection];
  v6 = [v5 connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke;
  v13[3] = &unk_279B05310;
  v7 = v4;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];

  v9 = [(RMBaseStore *)self identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke_29;
  v11[3] = &unk_279B05388;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 declarationManifestForStoreIdentifier:v9 completionHandler:v11];
}

void __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke_29(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke_29_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched declaration manifest", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

- (void)declarationWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RMBaseStore *)self xpcConnection];
  v9 = [v8 connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = v6;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v16];

  v12 = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke_31;
  v14[3] = &unk_279B05338;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 declarationWithIdentifier:v7 storeIdentifier:v12 completionHandler:v14];
}

void __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke_31(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke_31_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched declaration", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

- (void)declarationsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(RMBaseStore *)self xpcConnection];
  v6 = [v5 connection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke;
  v13[3] = &unk_279B05310;
  v7 = v4;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v13];

  v9 = [(RMBaseStore *)self identifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke_33;
  v11[3] = &unk_279B053B0;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 declarationsForStoreIdentifier:v9 completionHandler:v11];
}

void __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke_33(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke_33_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched declarations", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

- (void)declarationsWithTypes:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RMBaseStore *)self xpcConnection];
  v9 = [v8 connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = v6;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v16];

  v12 = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke_35;
  v14[3] = &unk_279B053B0;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 declarationsWithTypes:v7 storeIdentifier:v12 completionHandler:v14];
}

void __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke_35(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke_35_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched declarations with types", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

- (BOOL)isValidDeclaration:(id)a3
{
  v4 = MEMORY[0x277D46038];
  v5 = a3;
  LOBYTE(self) = [v5 isSupportedForPlatform:objc_msgSend(v4 scope:"currentPlatform") enrollmentType:{-[RMBaseStore scope](self, "scope"), -[RMBaseStore type](self, "type")}];

  return self;
}

void __77__RMBaseStore_setShouldInstallConfiguration_shouldInstall_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __77__RMBaseStore_setShouldInstallConfiguration_shouldInstall_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __77__RMBaseStore_setShouldInstallConfiguration_shouldInstall_completionHandler___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __77__RMBaseStore_setShouldInstallConfiguration_shouldInstall_completionHandler___block_invoke_36_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Set shouldInstallConfiguration", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (void)fetchDataAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(RMBaseStore *)self xpcConnection];
  v9 = [v8 connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke;
  v16[3] = &unk_279B05310;
  v10 = v6;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v16];

  v12 = [(RMBaseStore *)self identifier];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke_37;
  v14[3] = &unk_279B053D8;
  v14[4] = self;
  v15 = v10;
  v13 = v10;
  [v11 fetchDataAtURL:v7 storeIdentifier:v12 completionHandler:v14];
}

void __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke_37_cold_1();
    }

    v7 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Fetched data for URL", v8, 2u);
    }

    v7 = *(*(a1 + 40) + 16);
  }

  v7();
  [*(a1 + 32) xpcConnection];
}

- (void)waitForActiveAndValidDeclarations:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(RMBaseStore *)self xpcConnection];
  v11 = [v10 connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke;
  v18[3] = &unk_279B05310;
  v12 = v8;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];

  v14 = [(RMBaseStore *)self identifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke_39;
  v16[3] = &unk_279B051D0;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v13 waitForActiveAndValidDeclarations:v9 timeout:v14 storeIdentifier:v16 completionHandler:a4];
}

void __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke_39_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Declarations are active and valid", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (void)waitForProcessingOfDeclarations:(id)a3 timeout:(double)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [(RMBaseStore *)self xpcConnection];
  v11 = [v10 connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke;
  v18[3] = &unk_279B05310;
  v12 = v8;
  v19 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v18];

  v14 = [(RMBaseStore *)self identifier];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke_40;
  v16[3] = &unk_279B051D0;
  v16[4] = self;
  v17 = v12;
  v15 = v12;
  [v13 waitForProcessingOfDeclarations:v9 timeout:v14 storeIdentifier:v16 completionHandler:a4];
}

void __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke_40(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke_40_cold_1();
    }

    v4 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Declarations to be processed succeeded", v5, 2u);
    }

    v4 = *(*(a1 + 40) + 16);
  }

  v4();
  [*(a1 + 32) xpcConnection];
}

- (id)metadataReturningError:(id *)a3
{
  v5 = [(RMBaseStore *)self xpcConnection];
  v6 = [v5 connection];
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_0];

  v23 = 0;
  v24[0] = &v23;
  v24[1] = 0x3032000000;
  v24[2] = __Block_byref_object_copy_;
  v24[3] = __Block_byref_object_dispose_;
  v25 = 0;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy_;
  v21[3] = __Block_byref_object_dispose_;
  v22 = 0;
  v8 = [(RMBaseStore *)self identifier];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __38__RMBaseStore_metadataReturningError___block_invoke_41;
  v19[3] = &unk_279B05420;
  v19[4] = &v23;
  v19[5] = &v20;
  [v7 metadataForStoreIdentifier:v8 completionHandler:v19];

  if (*(v21[0] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [(RMBaseStore *)v21 metadataReturningError:v9, v10, v11, v12, v13, v14, v15];
      if (a3)
      {
LABEL_4:
        v16 = *(v21[0] + 40);
        if (v16)
        {
          v17 = 0;
          *a3 = v16;
          goto LABEL_11;
        }
      }
    }

    else if (a3)
    {
      goto LABEL_4;
    }

    v17 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [RMBaseStore metadataReturningError:v24];
  }

  v17 = *(v24[0] + 40);
LABEL_11:
  _Block_object_dispose(&v20, 8);

  _Block_object_dispose(&v23, 8);

  return v17;
}

void __38__RMBaseStore_metadataReturningError___block_invoke()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __38__RMBaseStore_metadataReturningError___block_invoke_cold_1();
  }
}

void __38__RMBaseStore_metadataReturningError___block_invoke_41(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)metadataValueForKey:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(RMBaseStore *)self xpcConnection];
  v8 = [v7 connection];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __41__RMBaseStore_metadataValueForKey_error___block_invoke;
  v22[3] = &unk_279B05448;
  v9 = v6;
  v23 = v9;
  v10 = [v8 synchronousRemoteObjectProxyWithErrorHandler:v22];

  v19 = 0;
  v20[0] = &v19;
  v20[1] = 0x3032000000;
  v20[2] = __Block_byref_object_copy_;
  v20[3] = __Block_byref_object_dispose_;
  v21 = 0;
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy_;
  v17[3] = __Block_byref_object_dispose_;
  v18 = 0;
  v11 = [(RMBaseStore *)self identifier];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __41__RMBaseStore_metadataValueForKey_error___block_invoke_43;
  v15[3] = &unk_279B05470;
  v15[4] = &v19;
  v15[5] = &v16;
  [v10 metadataValueForKey:v9 storeIdentifier:v11 completionHandler:v15];

  if (*(v17[0] + 40))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [RMBaseStore metadataValueForKey:v9 error:v17];
      if (a4)
      {
LABEL_4:
        v12 = *(v17[0] + 40);
        if (v12)
        {
          v13 = 0;
          *a4 = v12;
          goto LABEL_11;
        }
      }
    }

    else if (a4)
    {
      goto LABEL_4;
    }

    v13 = 0;
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [RMBaseStore metadataValueForKey:v9 error:v20];
  }

  v13 = *(v20[0] + 40);
LABEL_11:
  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v19, 8);

  return v13;
}

void __41__RMBaseStore_metadataValueForKey_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __41__RMBaseStore_metadataValueForKey_error___block_invoke_cold_1(a1, a2);
  }
}

void __41__RMBaseStore_metadataValueForKey_error___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (RMBaseStore)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v18 = [v3 decodeIntegerForKey:@"type"];
  v17 = [v3 decodeIntegerForKey:@"scope"];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"description"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"enrollmentURL"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"accountIdentifier"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"defaultToInteractive"];
  v10 = [v9 BOOLValue];

  v11 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"dataSeparated"];
  v12 = [v11 BOOLValue];

  v13 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"personaIdentifier"];

  BYTE1(v16) = v12;
  LOBYTE(v16) = v10;
  v14 = [(RMBaseStore *)self initWithIdentifier:v4 type:v18 scope:v17 name:v5 description:v6 enrollmentURL:v7 accountIdentifier:v8 defaultToInteractive:v16 dataSeparated:v13 personaIdentifier:?];

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  v4 = [(RMBaseStore *)self identifier];
  [v17 encodeObject:v4 forKey:@"identifier"];

  [v17 encodeInteger:-[RMBaseStore type](self forKey:{"type"), @"type"}];
  [v17 encodeInteger:-[RMBaseStore scope](self forKey:{"scope"), @"scope"}];
  v5 = [(RMBaseStore *)self name];

  if (v5)
  {
    v6 = [(RMBaseStore *)self name];
    [v17 encodeObject:v6 forKey:@"name"];
  }

  v7 = [(RMBaseStore *)self storeDescription];

  if (v7)
  {
    v8 = [(RMBaseStore *)self storeDescription];
    [v17 encodeObject:v8 forKey:@"description"];
  }

  v9 = [(RMBaseStore *)self enrollmentURL];

  if (v9)
  {
    v10 = [(RMBaseStore *)self enrollmentURL];
    [v17 encodeObject:v10 forKey:@"enrollmentURL"];
  }

  v11 = [(RMBaseStore *)self accountIdentifier];

  if (v11)
  {
    v12 = [(RMBaseStore *)self accountIdentifier];
    [v17 encodeObject:v12 forKey:@"accountIdentifier"];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMBaseStore defaultToInteractive](self, "defaultToInteractive")}];
  [v17 encodeObject:v13 forKey:@"defaultToInteractive"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:{-[RMBaseStore dataSeparated](self, "dataSeparated")}];
  [v17 encodeObject:v14 forKey:@"dataSeparated"];

  v15 = [(RMBaseStore *)self personaIdentifier];

  if (v15)
  {
    v16 = [(RMBaseStore *)self personaIdentifier];
    [v17 encodeObject:v16 forKey:@"personaIdentifier"];
  }
}

- (BOOL)isEqualToStore:(id)a3
{
  v4 = a3;
  v5 = [(RMBaseStore *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMBaseStore *)self type];
    if (v7 == [v4 type])
    {
      v8 = [(RMBaseStore *)self name];
      v9 = [v4 name];
      v10 = v8;
      v11 = v9;
      v12 = v11;
      if (v10 == v11)
      {
      }

      else
      {
        LOBYTE(v13) = 0;
        v14 = v11;
        v15 = v10;
        if (!v10 || !v11)
        {
          goto LABEL_34;
        }

        v16 = [v10 isEqual:v11];

        if (!v16)
        {
          LOBYTE(v13) = 0;
LABEL_35:

          goto LABEL_36;
        }
      }

      v17 = [(RMBaseStore *)self storeDescription];
      v18 = [v4 storeDescription];
      v15 = v17;
      v19 = v18;
      v14 = v19;
      v36 = v15;
      if (v15 == v19)
      {
      }

      else
      {
        LOBYTE(v13) = 0;
        v20 = v19;
        if (!v15 || !v19)
        {
          goto LABEL_33;
        }

        v13 = [v15 isEqual:v19];

        if (!v13)
        {
          goto LABEL_34;
        }
      }

      v21 = [(RMBaseStore *)self accountIdentifier];
      v22 = [v4 accountIdentifier];
      v15 = v21;
      v23 = v22;
      v20 = v23;
      if (v15 == v23)
      {

        v35 = v15;
      }

      else
      {
        LOBYTE(v13) = 0;
        v24 = v23;
        v25 = v15;
        if (!v15 || !v23)
        {
          goto LABEL_32;
        }

        v13 = [v15 isEqual:v23];

        v35 = v15;
        if (!v13)
        {
          goto LABEL_25;
        }
      }

      v26 = [(RMBaseStore *)self defaultToInteractive];
      if (v26 != [v4 defaultToInteractive] || (v27 = -[RMBaseStore dataSeparated](self, "dataSeparated"), v27 != objc_msgSend(v4, "dataSeparated")))
      {
        LOBYTE(v13) = 0;
LABEL_25:
        v15 = v35;
LABEL_33:

        v15 = v36;
LABEL_34:

        goto LABEL_35;
      }

      v28 = [(RMBaseStore *)self personaIdentifier];
      v29 = [v4 personaIdentifier];
      v30 = v28;
      v31 = v29;
      v32 = v31;
      if (v30 == v31)
      {
        LOBYTE(v13) = 1;
      }

      else
      {
        LOBYTE(v13) = 0;
        if (v30 && v31)
        {
          LOBYTE(v13) = [v30 isEqual:v31];
        }
      }

      v24 = v32;
      v25 = v30;
      v15 = v35;
LABEL_32:
      v33 = v25;

      goto LABEL_33;
    }
  }

  LOBYTE(v13) = 0;
LABEL_36:

  return v13;
}

void __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching declaration manifest: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__RMBaseStore_declarationManifestWithCompletionHandler___block_invoke_29_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch declaration manifest: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching declaration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__RMBaseStore_declarationWithIdentifier_completionHandler___block_invoke_31_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch declaration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching declarations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __49__RMBaseStore_declarationsWithCompletionHandler___block_invoke_33_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch declarations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while fetching declarations with types: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __55__RMBaseStore_declarationsWithTypes_completionHandler___block_invoke_35_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch declarations with types: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__RMBaseStore_setShouldInstallConfiguration_shouldInstall_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while setting shouldInstallConfiguration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __77__RMBaseStore_setShouldInstallConfiguration_shouldInstall_completionHandler___block_invoke_36_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to set shouldInstallConfiguration: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while setting fetchDataAtURL: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __48__RMBaseStore_fetchDataAtURL_completionHandler___block_invoke_37_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to fetch data for URL: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while waiting for declarations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __75__RMBaseStore_waitForActiveAndValidDeclarations_timeout_completionHandler___block_invoke_39_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to wait for declarations: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while waiting for declarations to be processed: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__RMBaseStore_waitForProcessingOfDeclarations_timeout_completionHandler___block_invoke_40_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed to wait for declarations to be processed: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataReturningError:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], a3, "Failed to read all metadata: %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)metadataReturningError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v1 = *(*a1 + 40);
  v3 = 138543362;
  v4 = v1;
  _os_log_debug_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read all metadata: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __38__RMBaseStore_metadataReturningError___block_invoke_cold_1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3(&dword_261E36000, MEMORY[0x277D86220], v0, "Failed XPC connection while reading all metadata: %{public}@", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)metadataValueForKey:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_5();
  v6 = 2114;
  v7 = v3;
  _os_log_error_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to read metadata key %{public}@: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)metadataValueForKey:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_5();
  v6 = 2114;
  v7 = v3;
  _os_log_debug_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Read metadata key %{public}@: %{public}@", v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __41__RMBaseStore_metadataValueForKey_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138543618;
  v5 = v2;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_261E36000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed XPC connection while reading metadata key %{public}@: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

@end