@interface TGTextGenerationOutput
- (BOOL)isEqual:(id)a3;
- (TGTextGenerationOutput)initWithText:(id)a3 score:(double)a4;
- (unint64_t)hash;
@end

@implementation TGTextGenerationOutput

- (TGTextGenerationOutput)initWithText:(id)a3 score:(double)a4
{
  v18[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v16.receiver = self;
  v16.super_class = TGTextGenerationOutput;
  v8 = [(TGTextGenerationOutput *)&v16 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_text, a3);
    v9->_score = a4;
    v17[0] = @"text";
    v17[1] = @"score";
    v18[0] = v7;
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    v18[1] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    v12 = [v11 description];
    description = v9->_description;
    v9->_description = v12;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
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
    v7 = [(TGTextGenerationOutput *)self text];
    v8 = [v6 text];
    if ([v7 isEqual:v8])
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
  v3 = [(TGTextGenerationOutput *)self text];
  v4 = [v3 hash];

  v5 = MEMORY[0x277CCABB0];
  [(TGTextGenerationOutput *)self score];
  v6 = [v5 numberWithDouble:?];
  v7 = [v6 hash];

  return v7 ^ v4;
}

@end