@interface SRAssetBundleQuery
- (SRAssetBundleQuery)init;
- (SRAssetBundleQuery)initWithXPCObject:(id)a3 isResult:(BOOL)a4;
- (id)xpcObject;
- (unint64_t)count;
- (void)addQueryEntriesForLanguage:(id)a3 assetType:(id)a4 deliveryTypes:(id)a5;
- (void)enumerateEntriesForLanguage:(id)a3 block:(id)a4;
- (void)xpcObject;
@end

@implementation SRAssetBundleQuery

- (SRAssetBundleQuery)init
{
  v6.receiver = self;
  v6.super_class = SRAssetBundleQuery;
  v2 = [(SRAssetBundleQuery *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queryEntries = v2->_queryEntries;
    v2->_queryEntries = v3;
  }

  return v2;
}

- (id)xpcObject
{
  [(SRAssetBundleQuery *)self count];
  empty = xpc_array_create_empty();
  queryEntries = self->_queryEntries;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__SRAssetBundleQuery_xpcObject__block_invoke;
  v8[3] = &unk_1E7A2ADE8;
  v5 = empty;
  v9 = v5;
  [(NSMutableDictionary *)queryEntries enumerateKeysAndObjectsUsingBlock:v8];
  v6 = SRLogCategoryAssets();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SRAssetBundleQuery xpcObject];
  }

  return v5;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queryEntries = self->_queryEntries;
  if (queryEntries)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __27__SRAssetBundleQuery_count__block_invoke;
    v5[3] = &unk_1E7A2AD98;
    v5[4] = &v6;
    [(NSMutableDictionary *)queryEntries enumerateKeysAndObjectsUsingBlock:v5];
    v3 = v7[3];
  }

  else
  {
    v3 = 0;
  }

  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__SRAssetBundleQuery_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__SRAssetBundleQuery_count__block_invoke_2;
  v4[3] = &unk_1E7A2AD98;
  v4[4] = *(a1 + 32);
  return [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

uint64_t __27__SRAssetBundleQuery_count__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

void __31__SRAssetBundleQuery_xpcObject__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__SRAssetBundleQuery_xpcObject__block_invoke_2;
  v4[3] = &unk_1E7A2ADE8;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __31__SRAssetBundleQuery_xpcObject__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__SRAssetBundleQuery_xpcObject__block_invoke_3;
  v4[3] = &unk_1E7A2ADC0;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

void __31__SRAssetBundleQuery_xpcObject__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "a", [v13 assetType]);
  v5 = [v13 language];
  xpc_dictionary_set_string(empty, "l", [v5 UTF8String]);

  xpc_dictionary_set_int64(empty, "d", [v13 deliveryType]);
  if ([v13 isResult])
  {
    v6 = [v13 bundleVersion];
    if (!v6)
    {
      goto LABEL_5;
    }

    v7 = v6;
    v8 = [v13 bundleVersion];
    v9 = [v8 version];

    if (v9)
    {
      v10 = [v13 bundleVersion];
      v11 = [v10 version];
      xpc_dictionary_set_string(empty, "b", [v11 UTF8String]);

      v12 = [v13 path];
      xpc_dictionary_set_string(empty, "p", [v12 UTF8String]);
    }

    else
    {
LABEL_5:
      xpc_dictionary_set_string(empty, "b", "n");
    }
  }

  xpc_array_append_value(*(a1 + 32), empty);
}

- (SRAssetBundleQuery)initWithXPCObject:(id)a3 isResult:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 && MEMORY[0x1B2705140](v6) == MEMORY[0x1E69E9E50])
  {
    v17.receiver = self;
    v17.super_class = SRAssetBundleQuery;
    v10 = [(SRAssetBundleQuery *)&v17 init];
    if (v10)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
      queryEntries = v10->_queryEntries;
      v10->_queryEntries = v11;

      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __49__SRAssetBundleQuery_initWithXPCObject_isResult___block_invoke;
      v14[3] = &unk_1E7A2AD70;
      v16 = a4;
      v15 = v10;
      xpc_array_apply(v7, v14);
    }

    self = v10;
    v9 = self;
  }

  else
  {
    v8 = SRLogCategoryAssets();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SRAssetBundleQuery initWithXPCObject:v8 isResult:?];
    }

    v9 = 0;
  }

  return v9;
}

uint64_t __49__SRAssetBundleQuery_initWithXPCObject_isResult___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1B2705140](v4) == MEMORY[0x1E69E9E80])
  {
    int64 = xpc_dictionary_get_int64(v5, "a");
    string = xpc_dictionary_get_string(v5, "l");
    v10 = xpc_dictionary_get_int64(v5, "d");
    v11 = [SRAssetBundleCacheEntry alloc];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v43 = v10;
    v13 = [(SRAssetBundleCacheEntry *)v11 initWithAssetType:int64 language:v12 deliveryType:v10];

    if (*(a1 + 40) == 1)
    {
      v14 = xpc_dictionary_get_string(v5, "b");
      if (v14 && (v15 = v14, *v14 != 110))
      {
        v16 = [SRAssetBundleVersion alloc];
        v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
        v18 = [(SRAssetBundleVersion *)v16 initWithBundleVersion:v17];

        v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{xpc_dictionary_get_string(v5, "p")}];
        [(SRAssetBundleCacheEntry *)v13 makeResultWithBundleVersion:v18 path:v19 loaded:0];
      }

      else
      {
        [(SRAssetBundleCacheEntry *)v13 makeResultNone];
      }
    }

    v20 = *(*(a1 + 32) + 8);
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v22 = [v20 objectForKeyedSubscript:v21];

    if (!v22)
    {
      v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v24 = *(*(a1 + 32) + 8);
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      [v24 setObject:v23 forKeyedSubscript:v25];
    }

    v26 = *(*(a1 + 32) + 8);
    v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v28 = [v26 objectForKeyedSubscript:v27];
    v29 = assetTypeString(int64);
    v30 = [v28 objectForKeyedSubscript:v29];

    if (!v30)
    {
      v31 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v32 = *(*(a1 + 32) + 8);
      v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
      v34 = [v32 objectForKeyedSubscript:v33];
      v35 = assetTypeString(int64);
      [v34 setObject:v31 forKeyedSubscript:v35];
    }

    v36 = *(*(a1 + 32) + 8);
    v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    v38 = [v36 objectForKeyedSubscript:v37];
    v39 = assetTypeString(int64);
    v40 = [v38 objectForKeyedSubscript:v39];
    v41 = deliveryTypeString(v43);
    [v40 setObject:v13 forKeyedSubscript:v41];

    v7 = 1;
  }

  else
  {
    v6 = SRLogCategoryAssets();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __49__SRAssetBundleQuery_initWithXPCObject_isResult___block_invoke_cold_1(v6);
    }

    v7 = 0;
  }

  return v7;
}

- (void)addQueryEntriesForLanguage:(id)a3 assetType:(id)a4 deliveryTypes:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (assetTypeID(v9) == -1)
  {
    v18 = SRLogCategoryAssets();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SRAssetBundleQuery addQueryEntriesForLanguage:assetType:deliveryTypes:];
    }
  }

  else
  {
    v11 = [(NSMutableDictionary *)self->_queryEntries objectForKeyedSubscript:v8];

    if (!v11)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
      [(NSMutableDictionary *)self->_queryEntries setObject:v12 forKeyedSubscript:v8];
    }

    v13 = [(NSMutableDictionary *)self->_queryEntries objectForKeyedSubscript:v8];
    v14 = [v13 objectForKeyedSubscript:v9];

    if (!v14)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v16 = [(NSMutableDictionary *)self->_queryEntries objectForKeyedSubscript:v8];
      [v16 setObject:v15 forKeyedSubscript:v9];
    }

    v17 = assetTypeID(v9);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __73__SRAssetBundleQuery_addQueryEntriesForLanguage_assetType_deliveryTypes___block_invoke;
    v19[3] = &unk_1E7A2AE10;
    v20 = v8;
    v21 = v9;
    v22 = self;
    v23 = v17;
    [v10 enumerateObjectsUsingBlock:v19];

    v18 = v20;
  }
}

void __73__SRAssetBundleQuery_addQueryEntriesForLanguage_assetType_deliveryTypes___block_invoke(void *a1, void *a2)
{
  v3 = [a2 unsignedIntegerValue];
  v4 = SRLogCategoryAssets();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __73__SRAssetBundleQuery_addQueryEntriesForLanguage_assetType_deliveryTypes___block_invoke_cold_1(a1, v3);
  }

  v5 = [[SRAssetBundleCacheEntry alloc] initWithAssetType:a1[7] language:a1[4] deliveryType:v3];
  v6 = [*(a1[6] + 8) objectForKeyedSubscript:a1[4]];
  v7 = [v6 objectForKeyedSubscript:a1[5]];
  v8 = deliveryTypeString(v3);
  [v7 setObject:v5 forKeyedSubscript:v8];
}

- (void)enumerateEntriesForLanguage:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_queryEntries objectForKeyedSubscript:a3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SRAssetBundleQuery_enumerateEntriesForLanguage_block___block_invoke;
  v9[3] = &unk_1E7A2AE60;
  v10 = v6;
  v8 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];
}

void __56__SRAssetBundleQuery_enumerateEntriesForLanguage_block___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__SRAssetBundleQuery_enumerateEntriesForLanguage_block___block_invoke_2;
  v4[3] = &unk_1E7A2AE38;
  v5 = *(a1 + 32);
  [a3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)xpcObject
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_1AE58E000, v0, OS_LOG_TYPE_DEBUG, "%zd entries in query", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)addQueryEntriesForLanguage:assetType:deliveryTypes:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1AE58E000, v1, OS_LOG_TYPE_ERROR, "Invalid assetType %@ for %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void __73__SRAssetBundleQuery_addQueryEntriesForLanguage_assetType_deliveryTypes___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = deliveryTypeString(a2);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6(&dword_1AE58E000, v5, v6, "Add query entry (%@, %@, %@)", v7, v8, v9, v10, v12);

  v11 = *MEMORY[0x1E69E9840];
}

@end