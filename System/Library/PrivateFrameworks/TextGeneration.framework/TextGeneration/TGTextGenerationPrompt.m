@interface TGTextGenerationPrompt
- (BOOL)isEqual:(id)a3;
- (TGTextGenerationPrompt)initWithInstructionText:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation TGTextGenerationPrompt

- (TGTextGenerationPrompt)initWithInstructionText:(id)a3
{
  v15[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13.receiver = self;
  v13.super_class = TGTextGenerationPrompt;
  v5 = [(TGTextGenerationPrompt *)&v13 init];
  if (v5)
  {
    v6 = [v4 copy];
    instructionText = v5->_instructionText;
    v5->_instructionText = v6;

    v14 = @"instructionText";
    v15[0] = v4;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v8 description];
    description = v5->_description;
    v5->_description = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [TGTextGenerationPrompt alloc];
  v5 = [(TGTextGenerationPrompt *)self instructionText];
  v6 = [(TGTextGenerationPrompt *)v4 initWithInstructionText:v5];

  v7 = [(TGTextGenerationPrompt *)self contextText];
  [(TGTextGenerationPrompt *)v6 setContextText:v7];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [TGMutableTextGenerationPrompt alloc];
  v5 = [(TGTextGenerationPrompt *)self instructionText];
  v6 = [(TGTextGenerationPrompt *)v4 initWithInstructionText:v5];

  v7 = [(TGTextGenerationPrompt *)self contextText];
  [(TGTextGenerationPrompt *)v6 setContextText:v7];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TGTextGenerationPrompt *)self instructionText];
  v4 = [v3 hash];

  v5 = [(TGTextGenerationPrompt *)self contextText];
  v6 = [v5 hash];

  return v6 ^ v4;
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
    v7 = [(TGTextGenerationPrompt *)self instructionText];
    v8 = [v6 instructionText];
    if ([v7 isEqual:v8])
    {
      v9 = [(TGTextGenerationPrompt *)self contextText];
      v10 = [v6 contextText];
      v11 = TGTextGenerationEqualAllowingNil(v9, v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end