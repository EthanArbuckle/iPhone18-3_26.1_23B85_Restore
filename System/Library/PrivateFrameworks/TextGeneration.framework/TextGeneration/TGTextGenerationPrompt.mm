@interface TGTextGenerationPrompt
- (BOOL)isEqual:(id)equal;
- (TGTextGenerationPrompt)initWithInstructionText:(id)text;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TGTextGenerationPrompt

- (TGTextGenerationPrompt)initWithInstructionText:(id)text
{
  v15[1] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v13.receiver = self;
  v13.super_class = TGTextGenerationPrompt;
  v5 = [(TGTextGenerationPrompt *)&v13 init];
  if (v5)
  {
    v6 = [textCopy copy];
    instructionText = v5->_instructionText;
    v5->_instructionText = v6;

    v14 = @"instructionText";
    v15[0] = textCopy;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v9 = [v8 description];
    description = v5->_description;
    v5->_description = v9;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TGTextGenerationPrompt alloc];
  instructionText = [(TGTextGenerationPrompt *)self instructionText];
  v6 = [(TGTextGenerationPrompt *)v4 initWithInstructionText:instructionText];

  contextText = [(TGTextGenerationPrompt *)self contextText];
  [(TGTextGenerationPrompt *)v6 setContextText:contextText];

  return v6;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TGMutableTextGenerationPrompt alloc];
  instructionText = [(TGTextGenerationPrompt *)self instructionText];
  v6 = [(TGTextGenerationPrompt *)v4 initWithInstructionText:instructionText];

  contextText = [(TGTextGenerationPrompt *)self contextText];
  [(TGTextGenerationPrompt *)v6 setContextText:contextText];

  return v6;
}

- (unint64_t)hash
{
  instructionText = [(TGTextGenerationPrompt *)self instructionText];
  v4 = [instructionText hash];

  contextText = [(TGTextGenerationPrompt *)self contextText];
  v6 = [contextText hash];

  return v6 ^ v4;
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
    instructionText = [(TGTextGenerationPrompt *)self instructionText];
    instructionText2 = [v6 instructionText];
    if ([instructionText isEqual:instructionText2])
    {
      contextText = [(TGTextGenerationPrompt *)self contextText];
      contextText2 = [v6 contextText];
      v11 = TGTextGenerationEqualAllowingNil(contextText, contextText2);
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