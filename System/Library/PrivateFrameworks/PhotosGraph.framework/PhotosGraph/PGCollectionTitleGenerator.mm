@interface PGCollectionTitleGenerator
- (PGCollectionTitleGenerator)initWithCollection:(id)collection keyAsset:(id)asset curatedAssetCollection:(id)assetCollection titleGenerationContext:(id)context;
- (PGCollectionTitleGenerator)initWithCollection:(id)collection titleGenerationContext:(id)context;
- (PGCollectionTitleGenerator)initWithCollection:(id)collection whitelistedMeaningLabels:(id)labels titleGenerationContext:(id)context;
- (PGTitleTuple)titleTuple;
- (id)_meaningLabelForTitle;
- (id)_sortedMeaningLabels;
- (void)_generateTitleTuples;
@end

@implementation PGCollectionTitleGenerator

- (id)_sortedMeaningLabels
{
  if (_sortedMeaningLabels_onceToken != -1)
  {
    dispatch_once(&_sortedMeaningLabels_onceToken, &__block_literal_global_16377);
  }

  v3 = _sortedMeaningLabels_sortedLabels;

  return v3;
}

uint64_t __50__PGCollectionTitleGenerator__sortedMeaningLabels__block_invoke()
{
  v0 = MEMORY[0x277CBEB18];
  v1 = +[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels];
  v2 = [v0 arrayWithArray:v1];
  v3 = _sortedMeaningLabels_sortedLabels;
  _sortedMeaningLabels_sortedLabels = v2;

  [_sortedMeaningLabels_sortedLabels removeObject:@"HolidayEvent"];
  v4 = _sortedMeaningLabels_sortedLabels;

  return [v4 addObject:@"HolidayEvent"];
}

- (id)_meaningLabelForTitle
{
  v16 = *MEMORY[0x277D85DE8];
  meaningLabels = [(PGEventEnrichment *)self->_collection meaningLabels];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  _sortedMeaningLabels = [(PGCollectionTitleGenerator *)self _sortedMeaningLabels];
  v5 = [_sortedMeaningLabels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(_sortedMeaningLabels);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([meaningLabels containsObject:v8])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [_sortedMeaningLabels countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)_generateTitleTuples
{
  collection = [(PGCollectionTitleGenerator *)self collection];
  if ([collection isTrip])
  {
    v4 = [(PGDefaultCollectionTitleGenerator *)[PGTripCollectionTitleGenerator alloc] initWithCollection:self->_collection keyAsset:self->_keyAsset curatedAssetCollection:self->_curatedAssetCollection titleGenerationContext:self->_titleGenerationContext];
  }

  else
  {
    _meaningLabelForTitle = [(PGCollectionTitleGenerator *)self _meaningLabelForTitle];
    if ((!-[NSSet count](self->_whitelistedMeaningLabels, "count") || -[NSSet containsObject:](self->_whitelistedMeaningLabels, "containsObject:", _meaningLabelForTitle)) && (+[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels](PGMeaningfulEventRequiredCriteriaFactory, "availableMeaningLabels"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:_meaningLabelForTitle], v6, v7))
    {
      reliableMeaningLabels = [(PGEventEnrichment *)self->_collection reliableMeaningLabels];
      v9 = [reliableMeaningLabels containsObject:_meaningLabelForTitle];

      v10 = [[PGMeaningfulEventTitleGenerator alloc] initWithCollection:self->_collection meaningLabel:_meaningLabelForTitle meaningIsReliable:v9 titleGenerationContext:self->_titleGenerationContext];
    }

    else
    {
      v10 = [[PGDefaultCollectionTitleGenerator alloc] initWithCollection:self->_collection keyAsset:self->_keyAsset curatedAssetCollection:self->_curatedAssetCollection titleGenerationContext:self->_titleGenerationContext];
    }

    v15 = v10;

    v4 = v15;
  }

  v16 = v4;
  [(PGDefaultCollectionTitleGenerator *)v4 setForDiagnostics:self->_forDiagnostics];
  title = [(PGTitleGenerator *)v16 title];
  subtitle = [(PGTitleGenerator *)v16 subtitle];
  if (!subtitle)
  {
    subtitle = [PGTitle titleWithString:&stru_2843F5C58 category:0];
  }

  v13 = [[PGTitleTuple alloc] initWithWithTitle:title subtitle:subtitle];
  titleTuple = self->_titleTuple;
  self->_titleTuple = v13;
}

- (PGTitleTuple)titleTuple
{
  titleTuple = self->_titleTuple;
  if (!titleTuple)
  {
    [(PGCollectionTitleGenerator *)self _generateTitleTuples];
    titleTuple = self->_titleTuple;
  }

  return titleTuple;
}

- (PGCollectionTitleGenerator)initWithCollection:(id)collection keyAsset:(id)asset curatedAssetCollection:(id)assetCollection titleGenerationContext:(id)context
{
  assetCopy = asset;
  assetCollectionCopy = assetCollection;
  v13 = [(PGCollectionTitleGenerator *)self initWithCollection:collection titleGenerationContext:context];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_keyAsset, asset);
    objc_storeStrong(&v14->_curatedAssetCollection, assetCollection);
  }

  return v14;
}

- (PGCollectionTitleGenerator)initWithCollection:(id)collection whitelistedMeaningLabels:(id)labels titleGenerationContext:(id)context
{
  labelsCopy = labels;
  v10 = [(PGCollectionTitleGenerator *)self initWithCollection:collection titleGenerationContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_whitelistedMeaningLabels, labels);
  }

  return v11;
}

- (PGCollectionTitleGenerator)initWithCollection:(id)collection titleGenerationContext:(id)context
{
  collectionCopy = collection;
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = PGCollectionTitleGenerator;
  v9 = [(PGCollectionTitleGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, collection);
    objc_storeStrong(&v10->_titleGenerationContext, context);
  }

  return v10;
}

@end