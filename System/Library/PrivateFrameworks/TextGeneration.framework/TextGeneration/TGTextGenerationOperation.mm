@interface TGTextGenerationOperation
- (BOOL)isEqual:(id)equal;
- (TGTextGenerationOperation)initWithPrompt:(id)prompt;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TGTextGenerationOperation

- (TGTextGenerationOperation)initWithPrompt:(id)prompt
{
  v16[1] = *MEMORY[0x277D85DE8];
  promptCopy = prompt;
  v14.receiver = self;
  v14.super_class = TGTextGenerationOperation;
  v5 = [(TGTextGenerationOperation *)&v14 init];
  if (v5)
  {
    v6 = [promptCopy copy];
    prompt = v5->_prompt;
    v5->_prompt = v6;

    v15 = @"prompt";
    prompt = [(TGTextGenerationOperation *)v5 prompt];
    v16[0] = prompt;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v9 description];
    description = v5->_description;
    v5->_description = v10;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TGTextGenerationOperation alloc];
  prompt = [(TGTextGenerationOperation *)self prompt];
  v6 = [(TGTextGenerationOperation *)v4 initWithPrompt:prompt];

  outputConstraint = [(TGTextGenerationOperation *)self outputConstraint];
  [(TGTextGenerationOperation *)v6 setOutputConstraint:outputConstraint];

  [(TGTextGenerationOperation *)v6 setProduceOutputStream:[(TGTextGenerationOperation *)self shouldProduceOutputStream]];
  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TGMutableTextGenerationOperation alloc];
  prompt = [(TGTextGenerationOperation *)self prompt];
  v6 = [(TGTextGenerationOperation *)v4 initWithPrompt:prompt];

  outputConstraint = [(TGTextGenerationOperation *)self outputConstraint];
  [(TGTextGenerationOperation *)v6 setOutputConstraint:outputConstraint];

  [(TGTextGenerationOperation *)v6 setProduceOutputStream:[(TGTextGenerationOperation *)self shouldProduceOutputStream]];
  return v6;
}

- (unint64_t)hash
{
  prompt = [(TGTextGenerationOperation *)self prompt];
  v4 = [prompt hash];

  outputConstraint = [(TGTextGenerationOperation *)self outputConstraint];
  v6 = [outputConstraint hash] ^ v4;

  return v6 ^ [(TGTextGenerationOperation *)self shouldProduceOutputStream];
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
    prompt = [(TGTextGenerationOperation *)self prompt];
    prompt2 = [v6 prompt];
    if ([prompt isEqual:prompt2])
    {
      outputConstraint = [(TGTextGenerationOperation *)self outputConstraint];
      outputConstraint2 = [v6 outputConstraint];
      if (TGTextGenerationEqualAllowingNil(outputConstraint, outputConstraint2))
      {
        shouldProduceOutputStream = [(TGTextGenerationOperation *)self shouldProduceOutputStream];
        v12 = shouldProduceOutputStream ^ [v6 shouldProduceOutputStream] ^ 1;
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