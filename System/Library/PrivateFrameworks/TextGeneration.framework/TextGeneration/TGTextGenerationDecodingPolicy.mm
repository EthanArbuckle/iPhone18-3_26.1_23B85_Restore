@interface TGTextGenerationDecodingPolicy
+ (id)defaultDecodingPolicy;
- (BOOL)isEqual:(id)equal;
- (TGTextGenerationDecodingPolicy)initWithType:(unint64_t)type;
@end

@implementation TGTextGenerationDecodingPolicy

+ (id)defaultDecodingPolicy
{
  v2 = [[TGTextGenerationDecodingPolicy alloc] initWithType:0];

  return v2;
}

- (TGTextGenerationDecodingPolicy)initWithType:(unint64_t)type
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = TGTextGenerationDecodingPolicy;
  v4 = [(TGTextGenerationDecodingPolicy *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    v13 = @"type";
    if (type)
    {
      type = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown decoding policy type: %d", type];
    }

    else
    {
      type = @"Greedy";
    }

    v14[0] = type;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    v8 = [v7 description];
    description = v5->_description;
    v5->_description = v8;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = 0;
  if (equalCopy && (isKindOfClass & 1) != 0)
  {
    v7 = equalCopy;
    type = [(TGTextGenerationDecodingPolicy *)self type];
    type2 = [v7 type];

    v6 = type == type2;
  }

  return v6;
}

@end