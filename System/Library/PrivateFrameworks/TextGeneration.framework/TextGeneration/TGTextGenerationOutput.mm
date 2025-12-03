@interface TGTextGenerationOutput
- (BOOL)isEqual:(id)equal;
- (TGTextGenerationOutput)initWithText:(id)text score:(double)score;
- (unint64_t)hash;
@end

@implementation TGTextGenerationOutput

- (TGTextGenerationOutput)initWithText:(id)text score:(double)score
{
  v18[2] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v16.receiver = self;
  v16.super_class = TGTextGenerationOutput;
  v8 = [(TGTextGenerationOutput *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, text);
    v9->_score = score;
    v17[0] = @"text";
    v17[1] = @"score";
    v18[0] = textCopy;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:score];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v11 description];
    description = v9->_description;
    v9->_description = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
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
    text = [(TGTextGenerationOutput *)self text];
    text2 = [v6 text];
    if ([text isEqual:text2])
    {
      [(TGTextGenerationOutput *)self score];
      v10 = v9;
      [v6 score];
      v12 = v10 == v11;
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

- (unint64_t)hash
{
  text = [(TGTextGenerationOutput *)self text];
  v4 = [text hash];

  v5 = MEMORY[0x277CCABB0];
  [(TGTextGenerationOutput *)self score];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];

  return v7 ^ v4;
}

@end