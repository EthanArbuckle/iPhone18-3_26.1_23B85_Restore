@interface PMLMultiLabelLogisticRegressionModel
- (PMLMultiLabelLogisticRegressionModel)initWithModels:(id)models;
- (PMLMultiLabelLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context;
- (id)predict:(id)predict;
- (id)toPlistWithChunks:(id)chunks;
@end

@implementation PMLMultiLabelLogisticRegressionModel

- (PMLMultiLabelLogisticRegressionModel)initWithPlist:(id)plist chunks:(id)chunks context:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  plistCopy = plist;
  chunksCopy = chunks;
  contextCopy = context;
  v10 = [[PMLPlistClassWrapper alloc] initWithClassNameKey:@"CLASS_NAME"];
  v11 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = [plistCopy objectForKeyedSubscript:@"MULTI_LABEL_REGRESSION_MODELS"];
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

        v17 = [(PMLPlistClassWrapper *)v10 readObjectWithPlist:*(*(&v22 + 1) + 8 * v16) chunks:chunksCopy context:contextCopy];
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

- (id)toPlistWithChunks:(id)chunks
{
  v23 = *MEMORY[0x277D85DE8];
  chunksCopy = chunks;
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

        v12 = [(PMLPlistClassWrapper *)v5 writeToPlistWithObject:*(*(&v16 + 1) + 8 * i) andChunks:chunksCopy, v16];
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

- (id)predict:(id)predict
{
  v23 = *MEMORY[0x277D85DE8];
  predictCopy = predict;
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

          v11 = [*(*(&v18 + 1) + 8 * i) predict:{predictCopy, v18}];
          v12 = v11;
          if (v11)
          {
            firstObject = [v11 firstObject];
            [v5 addObject:firstObject];
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
    outputDimension = [(PMLMultiLabelLogisticRegressionModel *)self outputDimension];
    for (j = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:outputDimension]; outputDimension; --outputDimension)
    {
      [j addObject:&unk_287357F08];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return j;
}

- (PMLMultiLabelLogisticRegressionModel)initWithModels:(id)models
{
  modelsCopy = models;
  v9.receiver = self;
  v9.super_class = PMLMultiLabelLogisticRegressionModel;
  v6 = [(PMLMultiLabelLogisticRegressionModel *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_models, models);
  }

  return v7;
}

@end