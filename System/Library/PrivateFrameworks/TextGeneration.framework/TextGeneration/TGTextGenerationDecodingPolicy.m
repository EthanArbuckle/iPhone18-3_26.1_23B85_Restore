@interface TGTextGenerationDecodingPolicy
+ (id)defaultDecodingPolicy;
- (BOOL)isEqual:(id)a3;
- (TGTextGenerationDecodingPolicy)initWithType:(unint64_t)a3;
@end

@implementation TGTextGenerationDecodingPolicy

+ (id)defaultDecodingPolicy
{
  v2 = [[TGTextGenerationDecodingPolicy alloc] initWithType:0];

  return v2;
}

- (TGTextGenerationDecodingPolicy)initWithType:(unint64_t)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = TGTextGenerationDecodingPolicy;
  v4 = [(TGTextGenerationDecodingPolicy *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v13 = @"type";
    if (a3)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown decoding policy type: %d", a3];
    }

    else
    {
      v6 = @"Greedy";
    }

    v14[0] = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v7 description];
    description = v5->_description;
    v5->_description = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (v4 && (isKindOfClass & 1) != 0)
  {
    v7 = v4;
    v8 = [(TGTextGenerationDecodingPolicy *)self type];
    v9 = [v7 type];

    v6 = v8 == v9;
  }

  return v6;
}

@end