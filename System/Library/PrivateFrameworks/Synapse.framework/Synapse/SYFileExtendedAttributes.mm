@interface SYFileExtendedAttributes
+ (void)fetchPrivateAttributesForFileURL:(id)a3 completion:(id)a4;
+ (void)setPrivateAttributes:(id)a3 forFileURL:(id)a4 completion:(id)a5;
@end

@implementation SYFileExtendedAttributes

+ (void)fetchPrivateAttributesForFileURL:(id)a3 completion:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"fileURL must not be nil" userInfo:0];
    objc_exception_throw(v11);
  }

  v7 = v6;
  v8 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SYFileExtendedAttributes fetchPrivateAttributesForFileURL:v5 completion:v8];
  }

  v12 = v5;
  v13 = v7;
  v9 = v7;
  v10 = v5;
  _MDItemFetchPrivateAttributesForURL();
}

void __72__SYFileExtendedAttributes_fetchPrivateAttributesForFileURL_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a2;
  if (v6)
  {
    v7 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v10 = [*(a1 + 32) path];
      v11 = 138478339;
      v12 = v10;
      v13 = 2113;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_225901000, v7, OS_LOG_TYPE_ERROR, "error fetching private attributes for url path: %{private}@, attrs: %{private}@, error: %@", &v11, 0x20u);
    }
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v5, v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)setPrivateAttributes:(id)a3 forFileURL:(id)a4 completion:(id)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v7)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE658];
    v18 = @"attributes must not be nil";
    goto LABEL_11;
  }

  if (!v8)
  {
    v16 = MEMORY[0x277CBEAD8];
    v17 = *MEMORY[0x277CBE658];
    v18 = @"fileURL must not be nil";
LABEL_11:
    v19 = [v16 exceptionWithName:v17 reason:v18 userInfo:0];
    objc_exception_throw(v19);
  }

  v10 = v9;
  v11 = os_log_create("com.apple.synapse", "DocumentWorkflows");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if ([v8 isFileReferenceURL])
    {
      [v8 absoluteString];
    }

    else
    {
      [v8 path];
    }
    v12 = ;
    *buf = 138478083;
    v23 = v7;
    v24 = 2113;
    v25 = v12;
    _os_log_impl(&dword_225901000, v11, OS_LOG_TYPE_DEFAULT, "Setting private attributes: %{private}@, for url path: %{private}@", buf, 0x16u);
  }

  v20 = v8;
  v21 = v10;
  v13 = v10;
  v14 = v8;
  _MDItemSetPrivateAttributesForURL();

  v15 = *MEMORY[0x277D85DE8];
}

void __71__SYFileExtendedAttributes_setPrivateAttributes_forFileURL_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.synapse", "DocumentWorkflows");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __71__SYFileExtendedAttributes_setPrivateAttributes_forFileURL_completion___block_invoke_cold_1(a1, v3, v4);
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

+ (void)fetchPrivateAttributesForFileURL:(void *)a1 completion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  if ([a1 isFileReferenceURL])
  {
    [a1 absoluteString];
  }

  else
  {
    [a1 path];
  }
  v4 = ;
  v6 = 138477827;
  v7 = v4;
  _os_log_debug_impl(&dword_225901000, a2, OS_LOG_TYPE_DEBUG, "Fetching private attributes for url path: %{private}@", &v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

void __71__SYFileExtendedAttributes_setPrivateAttributes_forFileURL_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(a1 + 32) path];
  v7 = 138478083;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_225901000, a3, OS_LOG_TYPE_ERROR, "Unable to set private attributes for url path: %{private}@, error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

@end