@interface PMLMultiLabelLogisticRegressionModel
- (PMLMultiLabelLogisticRegressionModel)initWithModels:(id)a3;
- (PMLMultiLabelLogisticRegressionModel)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5;
- (id)predict:(id)a3;
- (id)toPlistWithChunks:(id)a3;
@end

@implementation PMLMultiLabelLogisticRegressionModel

- (PMLMultiLabelLogisticRegressionModel)initWithPlist:(id)a3 chunks:(id)a4 context:(id)a5
{
  v27 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[PMLPlistClassWrapper alloc] initWithClassNameKey:@"CLASS_NAME"];
  v11 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [v7 objectForKeyedSubscript:@"MULTI_LABEL_REGRESSION_MODELS"];
  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [(PMLPlistClassWrapper *)v10 readObjectWithPlist:*(*(&v22 + 1) + 8 * v16) chunks:v8 context:v9];
        [v11 addObject:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [(PMLMultiLabelLogisticRegressionModel *)self initWithModels:v11];
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)toPlistWithChunks:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [[PMLPlistClassWrapper alloc] initWithClassNameKey:@"CLASS_NAME"];
  v6 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = self->_models;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(PMLPlistClassWrapper *)v5 writeToPlistWithObject:*(*(&v16 + 1) + 8 * i) andChunks:v4, v16];
        [v6 addObject:v12];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v9);
  }

  v20 = @"MULTI_LABEL_REGRESSION_MODELS";
  v21 = v6;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)predict:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](self->_models, "count")}];
  if (v5)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = self->_models;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v18 + 1) + 8 * i) predict:{v4, v18}];
          v12 = v11;
          if (v11)
          {
            v13 = [v11 firstObject];
            [v5 addObject:v13];
          }

          else
          {
            [v5 addObject:&unk_287357F08];
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    j = v5;
  }

  else
  {
    v15 = [(PMLMultiLabelLogisticRegressionModel *)self outputDimension];
    for (j = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v15]; v15; --v15)
    {
      [j addObject:&unk_287357F08];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return j;
}

- (PMLMultiLabelLogisticRegressionModel)initWithModels:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PMLMultiLabelLogisticRegressionModel;
  v6 = [(PMLMultiLabelLogisticRegressionModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_models, a3);
  }

  return v7;
}

@end