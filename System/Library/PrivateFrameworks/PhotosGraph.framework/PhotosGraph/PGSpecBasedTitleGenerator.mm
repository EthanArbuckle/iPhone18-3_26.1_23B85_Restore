@interface PGSpecBasedTitleGenerator
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes features:(id)features meaningLabel:(id)label isAggregation:(BOOL)aggregation titleGenerationContext:(id)context;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes features:(id)features specCollection:(id)collection titleGenerationContext:(id)context;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes meaningLabel:(id)label titleGenerationContext:(id)context;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes memoryCategory:(unint64_t)category subcategory:(unint64_t)subcategory titleGenerationContext:(id)context;
- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes personNodes:(id)personNodes memoryCategory:(unint64_t)category subcategory:(unint64_t)subcategory titleGenerationContext:(id)context;
- (PGSpecBasedTitleGeneratorDelegate)delegate;
- (PGTitle)title;
- (id)_title;
- (id)_titleFromSpecs:(id)specs;
- (id)titleSpec:(id)spec inputForArgument:(id)argument;
@end

@implementation PGSpecBasedTitleGenerator

- (PGSpecBasedTitleGeneratorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)titleSpec:(id)spec inputForArgument:(id)argument
{
  argumentCopy = argument;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v7 = [WeakRetained titleGenerator:self inputForArgument:argumentCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_titleFromSpecs:(id)specs
{
  v29 = *MEMORY[0x277D85DE8];
  specsCopy = specs;
  v6 = [specsCopy mutableCopy];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  momentNodes = [(PGSpecBasedTitleGenerator *)self momentNodes];
  v8 = [momentNodes countByEnumeratingWithState:&v24 objects:v28 count:16];
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
          objc_enumerationMutation(momentNodes);
        }

        universalStartDate = [*(*(&v24 + 1) + 8 * i) universalStartDate];
        [universalStartDate timeIntervalSince1970];
        v11 = fmin(v11, v14);
      }

      v9 = [momentNodes countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
    v3 = v11;
  }

  v15 = [PGTitleSpecArgumentEvaluationContext alloc];
  locationHelper = [(PGTitleGenerationContext *)self->_titleGenerationContext locationHelper];
  serviceManager = [(PGTitleGenerationContext *)self->_titleGenerationContext serviceManager];
  v18 = [(PGTitleSpecArgumentEvaluationContext *)v15 initWithLocationHelper:locationHelper serviceManager:serviceManager];

  while (1)
  {

    if (![v6 count])
    {
      v21 = 0;
      goto LABEL_18;
    }

    locationHelper = [v6 objectAtIndexedSubscript:{v3 % objc_msgSend(v6, "count")}];
    [locationHelper setInsertNonBreakableSpace:{(self->_lineBreakBehavior >> 1) & 1 & ~objc_msgSend(locationHelper, "hasSpecArgumentHandlingLineBreakBehavior")}];
    [locationHelper setDelegate:self];
    momentNodes = self->_momentNodes;
    features = self->_features;
    if (features)
    {
      [locationHelper titleWithMomentNodes:momentNodes features:features argumentEvaluationContext:v18];
    }

    else
    {
      [locationHelper titleWithMomentNodes:momentNodes argumentEvaluationContext:v18];
    }
    v21 = ;
    if (v21)
    {
      break;
    }

    [v6 removeObject:locationHelper];
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
  specPools = [(PGTitleSpecCollection *)self->_specCollection specPools];
  v4 = [specPools countByEnumeratingWithState:&v12 objects:v16 count:16];
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
        objc_enumerationMutation(specPools);
      }

      if (v6)
      {
        break;
      }

      specs = [*(*(&v12 + 1) + 8 * v8) specs];
      v6 = [(PGSpecBasedTitleGenerator *)self _titleFromSpecs:specs];

      if (v5 == ++v8)
      {
        v5 = [specPools countByEnumeratingWithState:&v12 objects:v16 count:16];
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
    _title = [(PGSpecBasedTitleGenerator *)self _title];
    v5 = self->_title;
    self->_title = _title;

    title = self->_title;
  }

  return title;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes features:(id)features specCollection:(id)collection titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  featuresCopy = features;
  collectionCopy = collection;
  contextCopy = context;
  v18.receiver = self;
  v18.super_class = PGSpecBasedTitleGenerator;
  v15 = [(PGSpecBasedTitleGenerator *)&v18 init];
  if (v15)
  {
    if (![nodesCopy count])
    {
      v16 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v15->_momentNodes, nodes);
    objc_storeStrong(&v15->_features, features);
    objc_storeStrong(&v15->_specCollection, collection);
    v15->_lineBreakBehavior = 1;
    objc_storeStrong(&v15->_titleGenerationContext, context);
  }

  v16 = v15;
LABEL_6:

  return v16;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes features:(id)features meaningLabel:(id)label isAggregation:(BOOL)aggregation titleGenerationContext:(id)context
{
  aggregationCopy = aggregation;
  nodesCopy = nodes;
  featuresCopy = features;
  labelCopy = label;
  contextCopy = context;
  if (aggregationCopy)
  {
    [PGAggregationsTitleSpecFactory specCollectionForMeaningLabel:labelCopy features:featuresCopy];
  }

  else
  {
    [PGTitleSpecFactory specCollectionForMeaningLabel:labelCopy];
  }
  v16 = ;
  if (v16)
  {
    v17 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:nodesCopy features:featuresCopy specCollection:v16 titleGenerationContext:contextCopy];
  }

  else
  {

    v17 = 0;
  }

  return v17;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes meaningLabel:(id)label titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  contextCopy = context;
  v10 = [PGTitleSpecFactory specCollectionForMeaningLabel:label];
  if (v10)
  {
    v11 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:nodesCopy features:0 specCollection:v10 titleGenerationContext:contextCopy];
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes personNodes:(id)personNodes memoryCategory:(unint64_t)category subcategory:(unint64_t)subcategory titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  contextCopy = context;
  v14 = [PGTitleSpecFactory specCollectionForMemoryCategory:category subcategory:subcategory personNodes:personNodes];
  if (v14)
  {
    v15 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:nodesCopy features:0 specCollection:v14 titleGenerationContext:contextCopy];
  }

  else
  {

    v15 = 0;
  }

  return v15;
}

- (PGSpecBasedTitleGenerator)initWithMomentNodes:(id)nodes memoryCategory:(unint64_t)category subcategory:(unint64_t)subcategory titleGenerationContext:(id)context
{
  nodesCopy = nodes;
  contextCopy = context;
  v12 = [PGTitleSpecFactory specCollectionForMemoryCategory:category subcategory:subcategory];
  if (v12)
  {
    v13 = [(PGSpecBasedTitleGenerator *)self initWithMomentNodes:nodesCopy features:0 specCollection:v12 titleGenerationContext:contextCopy];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

@end