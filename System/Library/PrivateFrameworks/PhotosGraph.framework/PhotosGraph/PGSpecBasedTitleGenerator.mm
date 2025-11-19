@interface PGSpecBasedTitleGenerator
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 features:(id)a4 meaningLabel:(id)a5 isAggregation:(BOOL)a6 titleGenerationContext:(id)a7;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 features:(id)a4 specCollection:(id)a5 titleGenerationContext:(id)a6;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 meaningLabel:(id)a4 titleGenerationContext:(id)a5;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 memoryCategory:(unint64_t)a4 subcategory:(unint64_t)a5 titleGenerationContext:(id)a6;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 personNodes:(id)a4 memoryCategory:(unint64_t)a5 subcategory:(unint64_t)a6 titleGenerationContext:(id)a7;
- (PGSpecBasedTitleGeneratorDelegate)delegate;
- (PGTitle)title;
- (id)_title;
- (id)_titleFromSpecs:(id)a3;
- (id)titleSpec:(id)a3 inputForArgument:(id)a4;
@end

@implementation PGSpecBasedTitleGenerator

- (PGSpecBasedTitleGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)titleSpec:(id)a3 inputForArgument:(id)a4
{
  v5 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [WeakRetained titleGenerator:self inputForArgument:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_titleFromSpecs:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v7 = [(PGSpecBasedTitleGenerator *)self momentNodes];
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v24 + 1) + 8 * i) universalStartDate];
        [v13 timeIntervalSince1970];
        v11 = fmin(v11, v14);
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
    v3 = v11;
  }

  v15 = [PGTitleSpecArgumentEvaluationContext alloc];
  v16 = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  v17 = [(PGTitleGenerationContext *)self->_titleGenerationContext serviceManager];
  v18 = [(PGTitleSpecArgumentEvaluationContext *)v15 initWithLocationHelper:v16 serviceManager:v17];

  while (1)
  {

    if (![v6 count])
    {
      v21 = 0;
      goto LABEL_18;
    }

    v16 = [v6 objectAtIndexedSubscript:{v3 % objc_msgSend(v6, "count")}];
    [v16 setInsertNonBreakableSpace:{(self->_lineBreakBehavior >> 1) & 1 & ~objc_msgSend(v16, "hasSpecArgumentHandlingLineBreakBehavior")}];
    [v16 setDelegate:self];
    momentNodes = self->_momentNodes;
    features = self->_features;
    if (features)
    {
      [v16 titleWithMomentNodes:momentNodes features:features argumentEvaluationContext:v18];
    }

    else
    {
      [v16 titleWithMomentNodes:momentNodes argumentEvaluationContext:v18];
    }
    v21 = ;
    if (v21)
    {
      break;
    }

    [v6 removeObject:v16];
  }

LABEL_18:
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)_title
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(PGTitleSpecCollection *)self->_specCollection specPools];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(v3);
      }

      if (v6)
      {
        break;
      }

      v9 = [*(*(&v12 + 1) + 8 * v8) specs];
      v6 = [(PGSpecBasedTitleGenerator *)self _titleFromSpecs:v9];

      if (v5 == ++v8)
      {
        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v6;
}

- (PGTitle)title
{
  title = self->_title;
  if (!title)
  {
    v4 = [(PGSpecBasedTitleGenerator *)self _title];
    v5 = self->_title;
    self->_title = v4;

    title = self->_title;
  }

  return title;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 features:(id)a4 specCollection:(id)a5 titleGenerationContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = PGSpecBasedTitleGenerator;
  v15 = [(PGSpecBasedTitleGenerator *)&v18 init];
  if (v15)
  {
    if (![v11 count])
    {
      v16 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v15->_momentNodes, a3);
    objc_storeStrong(&v15->_features, a4);
    objc_storeStrong(&v15->_specCollection, a5);
    v15->_lineBreakBehavior = 1;
    objc_storeStrong(&v15->_titleGenerationContext, a6);
  }

  v16 = v15;
LABEL_6:

  return v16;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 features:(id)a4 meaningLabel:(id)a5 isAggregation:(BOOL)a6 titleGenerationContext:(id)a7
{
  v8 = a6;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  if (v8)
  {
    [PGAggregationsTitleSpecFactory specCollectionForMeaningLabel:v14 features:v13];
  }

  else
  {
    [PGTitleSpecFactory specCollectionForMeaningLabel:v14];
  }
  v16 = ;
  if (v16)
  {
    v17 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:v12 features:v13 specCollection:v16 titleGenerationContext:v15];
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 meaningLabel:(id)a4 titleGenerationContext:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [PGTitleSpecFactory specCollectionForMeaningLabel:a4];
  if (v10)
  {
    v11 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:v8 features:0 specCollection:v10 titleGenerationContext:v9];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 personNodes:(id)a4 memoryCategory:(unint64_t)a5 subcategory:(unint64_t)a6 titleGenerationContext:(id)a7
{
  v12 = a3;
  v13 = a7;
  v14 = [PGTitleSpecFactory specCollectionForMemoryCategory:a5 subcategory:a6 personNodes:a4];
  if (v14)
  {
    v15 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:v12 features:0 specCollection:v14 titleGenerationContext:v13];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)a3 memoryCategory:(unint64_t)a4 subcategory:(unint64_t)a5 titleGenerationContext:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [PGTitleSpecFactory specCollectionForMemoryCategory:a4 subcategory:a5];
  if (v12)
  {
    v13 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:v10 features:0 specCollection:v12 titleGenerationContext:v11];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

@end