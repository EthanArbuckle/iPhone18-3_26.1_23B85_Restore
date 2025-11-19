@interface NSDictionary(TRI)
+ (void)triKeys:()TRI values:fromDictionary:;
- (id)triObjectForExpectedKey:()TRI;
@end

@implementation NSDictionary(TRI)

+ (void)triKeys:()TRI values:fromDictionary:
{
  v7 = a5;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__NSDictionary_TRI__triKeys_values_fromDictionary___block_invoke;
  v8[3] = &unk_279DDEE40;
  v8[4] = &v15;
  v8[5] = &v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v8];
  if (a3)
  {
    *a3 = v16[5];
  }

  if (a4)
  {
    *a4 = v10[5];
  }

  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
}

- (id)triObjectForExpectedKey:()TRI
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  if (!v5)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Value missing for key %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

@end