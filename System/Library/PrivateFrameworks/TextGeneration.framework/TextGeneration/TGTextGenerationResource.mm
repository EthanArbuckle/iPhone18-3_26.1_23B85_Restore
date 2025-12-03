@interface TGTextGenerationResource
+ (id)createWithResourceDict:(id)dict;
- (BOOL)isEqual:(id)equal;
- (TGTextGenerationResource)initWithType:(unint64_t)type url:(id)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TGTextGenerationResource

+ (id)createWithResourceDict:(id)dict
{
  dictCopy = dict;
  v4 = [dictCopy objectForKeyedSubscript:@"path"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [dictCopy objectForKeyedSubscript:@"path"];

    if (v5)
    {
      v6 = [dictCopy objectForKeyedSubscript:@"type"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [dictCopy objectForKeyedSubscript:@"type"];

        if (v7)
        {
          intValue = [v7 intValue];
          v9 = intValue;
          if (intValue < 2)
          {
            v10 = [dictCopy objectForKeyedSubscript:@"e5FunctionName"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v11 = [dictCopy objectForKeyedSubscript:@"e5FunctionName"];
            }

            else
            {
              v11 = 0;
            }

            if (v9 != 1 || v11)
            {
              v16 = [TGMutableTextGenerationResource alloc];
              v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
              v12 = [(TGTextGenerationResource *)v16 initWithType:v9 url:v17];

              [(TGTextGenerationResource *)v12 setE5FunctionName:v11];
            }

            else
            {
              v15 = _nlpDefaultLog();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                +[TGTextGenerationResource createWithResourceDict:];
              }

              v12 = 0;
            }

            goto LABEL_16;
          }

          v14 = _nlpDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [(TGTextGenerationResource *)dictCopy createWithResourceDict:v9, v14];
          }

LABEL_15:
          v12 = 0;
LABEL_16:

          goto LABEL_17;
        }
      }

      else
      {
      }

      v7 = _nlpDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[TGTextGenerationResource createWithResourceDict:];
      }

      goto LABEL_15;
    }
  }

  else
  {
  }

  v5 = _nlpDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[TGTextGenerationResource createWithResourceDict:];
  }

  v12 = 0;
LABEL_17:

  return v12;
}

- (TGTextGenerationResource)initWithType:(unint64_t)type url:(id)url
{
  v20[2] = *MEMORY[0x277D85DE8];
  urlCopy = url;
  v18.receiver = self;
  v18.super_class = TGTextGenerationResource;
  v7 = [(TGTextGenerationResource *)&v18 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = [urlCopy copy];
    url = v8->_url;
    v8->_url = v9;

    v19[0] = @"type";
    type = v8->_type;
    if (type == 1)
    {
      v12 = @"Foundation Language Model";
    }

    else if (type)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown resource type: %d", v8->_type];
    }

    else
    {
      v12 = @"Sentence Piece Tokenizer";
    }

    v19[1] = @"url";
    v20[0] = v12;
    v20[1] = v8->_url;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
    v14 = [v13 description];
    description = v8->_description;
    v8->_description = v14;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TGTextGenerationResource alloc];
  type = [(TGTextGenerationResource *)self type];
  v6 = [(TGTextGenerationResource *)self url];
  v7 = [(TGTextGenerationResource *)v4 initWithType:type url:v6];

  e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
  [(TGTextGenerationResource *)v7 setE5FunctionName:e5FunctionName];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TGMutableTextGenerationResource alloc];
  type = [(TGTextGenerationResource *)self type];
  v6 = [(TGTextGenerationResource *)self url];
  v7 = [(TGTextGenerationResource *)v4 initWithType:type url:v6];

  e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
  [(TGTextGenerationResource *)v7 setE5FunctionName:e5FunctionName];

  return v7;
}

- (unint64_t)hash
{
  type = [(TGTextGenerationResource *)self type];
  v4 = [(TGTextGenerationResource *)self url];
  v5 = [v4 hash] ^ type;

  e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
  v7 = [e5FunctionName hash];

  return v5 ^ v7;
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
  if (v6 && (v7 = -[TGTextGenerationResource type](self, "type"), v7 == [v6 type]))
  {
    v8 = [(TGTextGenerationResource *)self url];
    v9 = [v6 url];
    if ([v8 isEqual:v9])
    {
      e5FunctionName = [(TGTextGenerationResource *)self e5FunctionName];
      e5FunctionName2 = [v6 e5FunctionName];
      v12 = TGTextGenerationEqualAllowingNil(e5FunctionName, e5FunctionName2);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (void)createWithResourceDict:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_26D3B8000, log, OS_LOG_TYPE_ERROR, "Invalid type: %d for resource type in config dictionary: %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

+ (void)createWithResourceDict:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26D3B8000, v0, v1, "Missing E5 function name key: %@ in configuration: %@ for foundation model", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)createWithResourceDict:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26D3B8000, v0, v1, "Missing type key: %@ in config dictionary: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)createWithResourceDict:.cold.4()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_26D3B8000, v0, v1, "Missing path key: %@ in config dictionary: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end