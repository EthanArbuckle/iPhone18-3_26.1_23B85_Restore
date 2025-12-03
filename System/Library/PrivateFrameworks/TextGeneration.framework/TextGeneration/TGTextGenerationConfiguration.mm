@interface TGTextGenerationConfiguration
+ (NSUUID)defaultConfigurationUUID;
+ (id)defaultConfiguration;
+ (void)defaultConfiguration;
- (BOOL)isEqual:(id)equal;
- (TGITextGenerationInferenceModelConfiguration)modelConfiguration;
- (TGTextGenerationConfiguration)initWithUUID:(id)d resources:(id)resources decodingPolicy:(id)policy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
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
      uUIDString = [v50 UUIDString];
      v6 = [v4 objectForKey:uUIDString];

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

- (TGTextGenerationConfiguration)initWithUUID:(id)d resources:(id)resources decodingPolicy:(id)policy
{
  dCopy = d;
  resourcesCopy = resources;
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = TGTextGenerationConfiguration;
  v11 = [(TGTextGenerationConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [resourcesCopy copy];
    resources = v11->_resources;
    v11->_resources = v14;

    v16 = [policyCopy copy];
    decodingPolicy = v11->_decodingPolicy;
    v11->_decodingPolicy = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TGTextGenerationConfiguration alloc];
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  resources = [(TGTextGenerationConfiguration *)self resources];
  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v8 = [(TGTextGenerationConfiguration *)v4 initWithUUID:uuid resources:resources decodingPolicy:decodingPolicy];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TGMutableTextGenerationConfiguration alloc];
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  resources = [(TGTextGenerationConfiguration *)self resources];
  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v8 = [(TGTextGenerationConfiguration *)v4 initWithUUID:uuid resources:resources decodingPolicy:decodingPolicy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uuid = [(TGTextGenerationConfiguration *)self uuid];
    uuid2 = [v6 uuid];
    if ([uuid isEqual:uuid2])
    {
      resources = [(TGTextGenerationConfiguration *)self resources];
      resources2 = [v6 resources];
      if ([resources isEqualToSet:resources2])
      {
        decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
        decodingPolicy2 = [v6 decodingPolicy];
        v13 = [decodingPolicy isEqual:decodingPolicy2];
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
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  [uuid hash];

  resources = [(TGTextGenerationConfiguration *)self resources];
  [resources hash];

  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v6 = [decodingPolicy hash];

  return v6;
}

- (id)description
{
  v11[3] = *MEMORY[0x277D85DE8];
  v10[0] = @"uuid";
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  v11[0] = uuid;
  v10[1] = @"resources";
  resources = [(TGTextGenerationConfiguration *)self resources];
  v11[1] = resources;
  v10[2] = @"decodingPolicy";
  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v11[2] = decodingPolicy;
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
  resources = [v1 resources];
  v4 = [resources countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v20;
    for (i = *v20; ; i = *v20)
    {
      if (i != v6)
      {
        objc_enumerationMutation(resources);
      }

      v8 = *(*(&v19 + 1) + 8 * v5);
      if ([v8 type] == 1)
      {
        v9 = [v8 url];
        path = [v9 path];
        v11 = path;
        std::string::__assign_external(retstr, [path UTF8String]);

        e5FunctionName = [v8 e5FunctionName];
        v13 = e5FunctionName;
        std::string::__assign_external(&retstr[2], [e5FunctionName UTF8String]);
      }

      if (![v8 type])
      {
        v14 = [v8 url];
        path2 = [v14 path];
        v16 = path2;
        std::string::__assign_external(&retstr[1], [path2 UTF8String]);
      }

      if (++v5 >= v4)
      {
        v4 = [resources countByEnumeratingWithState:&v19 objects:v23 count:16];
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