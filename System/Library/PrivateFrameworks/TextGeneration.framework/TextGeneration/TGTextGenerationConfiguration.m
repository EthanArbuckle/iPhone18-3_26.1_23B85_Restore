@interface TGTextGenerationConfiguration
+ (NSUUID)defaultConfigurationUUID;
+ (id)defaultConfiguration;
+ (void)defaultConfiguration;
- (BOOL)isEqual:(id)a3;
- (TGITextGenerationInferenceModelConfiguration)modelConfiguration;
- (TGTextGenerationConfiguration)initWithUUID:(id)a3 resources:(id)a4 decodingPolicy:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TGTextGenerationConfiguration

+ (NSUUID)defaultConfigurationUUID
{
  if (+[TGTextGenerationConfiguration defaultConfigurationUUID]::onceToken != -1)
  {
    +[TGTextGenerationConfiguration defaultConfigurationUUID];
  }

  v3 = +[TGTextGenerationConfiguration defaultConfigurationUUID]::uuid;

  return v3;
}

uint64_t __57__TGTextGenerationConfiguration_defaultConfigurationUUID__block_invoke()
{
  +[TGTextGenerationConfiguration defaultConfigurationUUID]::uuid = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"45B6920D-B93B-4A91-815B-874312410EFB"];

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultConfiguration
{
  v59 = *MEMORY[0x277D85DE8];
  v52 = [MEMORY[0x277CBEB58] set];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v51 = v2;
  v3 = [v2 URLForResource:@"Configuration" withExtension:@"plist"];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v3];
    if (v4)
    {
      v50 = +[TGTextGenerationConfiguration defaultConfigurationUUID];
      v5 = [v50 UUIDString];
      v6 = [v4 objectForKey:v5];

      v47 = v6;
      if (v50)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = v6;
        }

        else
        {
          v7 = 0;
        }

        v8 = v7;
        v48 = v8;
        if (v8)
        {
          v9 = [v8 objectForKeyedSubscript:@"resources", v6];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 = [v48 objectForKeyedSubscript:@"resources"];
          }

          else
          {
            v10 = 0;
          }

          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          obj = v10;
          v27 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
          if (v27)
          {
            v28 = *v54;
LABEL_25:
            v29 = 0;
            while (1)
            {
              if (*v54 != v28)
              {
                objc_enumerationMutation(obj);
              }

              v30 = *(*(&v53 + 1) + 8 * v29);
              objc_opt_class();
              v31 = (objc_opt_isKindOfClass() & 1) != 0 ? v30 : 0;
              v32 = v31;
              if (!v32)
              {
                break;
              }

              v33 = v32;
              v34 = [TGTextGenerationResource createWithResourceDict:v32];
              if (!v34)
              {
                v38 = _nlpDefaultLog();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                {
                  [(TGTextGenerationConfiguration *)v33 defaultConfiguration:v38];
                }

LABEL_41:
                v17 = 0;
                v36 = obj;
                goto LABEL_42;
              }

              [v52 addObject:v34];

              if (v27 == ++v29)
              {
                v27 = [obj countByEnumeratingWithState:&v53 objects:v57 count:16];
                if (v27)
                {
                  goto LABEL_25;
                }

                goto LABEL_35;
              }
            }

            v33 = _nlpDefaultLog();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              v37 = objc_opt_class();
              +[(TGTextGenerationConfiguration *)v30];
            }

            goto LABEL_41;
          }

LABEL_35:

          v35 = [TGTextGenerationConfiguration alloc];
          v36 = +[TGTextGenerationConfiguration defaultConfigurationUUID];
          v33 = +[TGTextGenerationDecodingPolicy defaultDecodingPolicy];
          v17 = [(TGTextGenerationConfiguration *)v35 initWithUUID:v36 resources:v52 decodingPolicy:v33];
LABEL_42:
        }

        else
        {
          obj = _nlpDefaultLog();
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            v26 = objc_opt_class();
            +[(TGTextGenerationConfiguration *)v50];
          }

          v17 = 0;
        }
      }

      else
      {
        v25 = _nlpDefaultLog();
        v48 = v25;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          +[(TGTextGenerationConfiguration *)v4];
        }

        v17 = 0;
      }
    }

    else
    {
      v18 = _nlpDefaultLog();
      v50 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(TGTextGenerationConfiguration *)v3 defaultConfiguration:v18];
      }

      v17 = 0;
    }
  }

  else
  {
    v4 = _nlpDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(TGTextGenerationConfiguration *)v2 defaultConfiguration:v4];
    }

    v17 = 0;
  }

  v45 = *MEMORY[0x277D85DE8];

  return v17;
}

- (TGTextGenerationConfiguration)initWithUUID:(id)a3 resources:(id)a4 decodingPolicy:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = TGTextGenerationConfiguration;
  v11 = [(TGTextGenerationConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [v9 copy];
    resources = v11->_resources;
    v11->_resources = v14;

    v16 = [v10 copy];
    decodingPolicy = v11->_decodingPolicy;
    v11->_decodingPolicy = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TGTextGenerationConfiguration alloc];
  v5 = [(TGTextGenerationConfiguration *)self uuid];
  v6 = [(TGTextGenerationConfiguration *)self resources];
  v7 = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v8 = [(TGTextGenerationConfiguration *)v4 initWithUUID:v5 resources:v6 decodingPolicy:v7];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TGMutableTextGenerationConfiguration alloc];
  v5 = [(TGTextGenerationConfiguration *)self uuid];
  v6 = [(TGTextGenerationConfiguration *)self resources];
  v7 = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v8 = [(TGTextGenerationConfiguration *)v4 initWithUUID:v5 resources:v6 decodingPolicy:v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    v7 = [(TGTextGenerationConfiguration *)self uuid];
    v8 = [v6 uuid];
    if ([v7 isEqual:v8])
    {
      v9 = [(TGTextGenerationConfiguration *)self resources];
      v10 = [v6 resources];
      if ([v9 isEqualToSet:v10])
      {
        v11 = [(TGTextGenerationConfiguration *)self decodingPolicy];
        v12 = [v6 decodingPolicy];
        v13 = [v11 isEqual:v12];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(TGTextGenerationConfiguration *)self uuid];
  [v3 hash];

  v4 = [(TGTextGenerationConfiguration *)self resources];
  [v4 hash];

  v5 = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v6 = [v5 hash];

  return v6;
}

- (id)description
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"uuid";
  v3 = [(TGTextGenerationConfiguration *)self uuid];
  v11[0] = v3;
  v10[1] = @"resources";
  v4 = [(TGTextGenerationConfiguration *)self resources];
  v11[1] = v4;
  v10[2] = @"decodingPolicy";
  v5 = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v11[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v7 = [v6 description];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (TGITextGenerationInferenceModelConfiguration)modelConfiguration
{
  v24 = *MEMORY[0x277D85DE8];
  *(&retstr[2].var0.var0.var1 + 2) = 0;
  *&retstr[1].var0.var0.var1.var1 = 0u;
  *retstr[2].var0.var0.var0.var0 = 0u;
  *retstr->var0.var0.var0.var0 = 0u;
  *(&retstr->var0.var0.var1 + 1) = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v3 = [v1 resources];
  v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v20;
    for (i = *v20; ; i = *v20)
    {
      if (i != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v19 + 1) + 8 * v5);
      if ([v8 type] == 1)
      {
        v9 = [v8 url];
        v10 = [v9 path];
        v11 = v10;
        std::string::__assign_external(retstr, [v10 UTF8String]);

        v12 = [v8 e5FunctionName];
        v13 = v12;
        std::string::__assign_external(&retstr[2], [v12 UTF8String]);
      }

      if (![v8 type])
      {
        v14 = [v8 url];
        v15 = [v14 path];
        v16 = v15;
        std::string::__assign_external(&retstr[1], [v15 UTF8String]);
      }

      if (++v5 >= v4)
      {
        v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (!v4)
        {
          break;
        }

        v5 = 0;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)defaultConfiguration
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0(&dword_26D3B8000, a2, a3, "Failed to look for configuration plist in bundle: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

@end