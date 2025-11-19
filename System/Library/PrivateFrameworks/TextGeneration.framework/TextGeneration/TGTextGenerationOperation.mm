@interface TGTextGenerationOperation
- (BOOL)isEqual:(id)a3;
- (TGTextGenerationOperation)initWithPrompt:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TGTextGenerationOperation

- (TGTextGenerationOperation)initWithPrompt:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14.receiver = self;
  v14.super_class = TGTextGenerationOperation;
  v5 = [(TGTextGenerationOperation *)&v14 init];
  if (v5)
  {
    v6 = [v4 copy];
    prompt = v5->_prompt;
    v5->_prompt = v6;

    v15 = @"prompt";
    v8 = [(TGTextGenerationOperation *)v5 prompt];
    v16[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v9 description];
    description = v5->_description;
    v5->_description = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TGTextGenerationOperation alloc];
  v5 = [(TGTextGenerationOperation *)self prompt];
  v6 = [(TGTextGenerationOperation *)v4 initWithPrompt:v5];

  v7 = [(TGTextGenerationOperation *)self outputConstraint];
  [(TGTextGenerationOperation *)v6 setOutputConstraint:v7];

  [(TGTextGenerationOperation *)v6 setProduceOutputStream:[(TGTextGenerationOperation *)self shouldProduceOutputStream]];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TGMutableTextGenerationOperation alloc];
  v5 = [(TGTextGenerationOperation *)self prompt];
  v6 = [(TGTextGenerationOperation *)v4 initWithPrompt:v5];

  v7 = [(TGTextGenerationOperation *)self outputConstraint];
  [(TGTextGenerationOperation *)v6 setOutputConstraint:v7];

  [(TGTextGenerationOperation *)v6 setProduceOutputStream:[(TGTextGenerationOperation *)self shouldProduceOutputStream]];
  return v6;
}

- (unint64_t)hash
{
  v3 = [(TGTextGenerationOperation *)self prompt];
  v4 = [v3 hash];

  v5 = [(TGTextGenerationOperation *)self outputConstraint];
  v6 = [v5 hash] ^ v4;

  return v6 ^ [(TGTextGenerationOperation *)self shouldProduceOutputStream];
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
    v7 = [(TGTextGenerationOperation *)self prompt];
    v8 = [v6 prompt];
    if ([v7 isEqual:v8])
    {
      v9 = [(TGTextGenerationOperation *)self outputConstraint];
      v10 = [v6 outputConstraint];
      if (TGTextGenerationEqualAllowingNil(v9, v10))
      {
        v11 = [(TGTextGenerationOperation *)self shouldProduceOutputStream];
        v12 = v11 ^ [v6 shouldProduceOutputStream] ^ 1;
      }

      else
      {
        LOBYTE(v12) = 0;
      }
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  else
  {
    LOBYTE(v12) = 0;
  }

  return v12;
}

@end