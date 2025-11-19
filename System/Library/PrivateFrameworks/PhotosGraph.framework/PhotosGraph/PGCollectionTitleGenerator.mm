@interface PGCollectionTitleGenerator
- (PGCollectionTitleGenerator)initWithCollection:(id)a3 keyAsset:(id)a4 curatedAssetCollection:(id)a5 titleGenerationContext:(id)a6;
- (PGCollectionTitleGenerator)initWithCollection:(id)a3 titleGenerationContext:(id)a4;
- (PGCollectionTitleGenerator)initWithCollection:(id)a3 whitelistedMeaningLabels:(id)a4 titleGenerationContext:(id)a5;
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
  v3 = [(PGEventEnrichment *)self->_collection meaningLabels];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(PGCollectionTitleGenerator *)self _sortedMeaningLabels];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v3 containsObject:v8])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [(PGCollectionTitleGenerator *)self collection];
  if ([v3 isTrip])
  {
    v4 = [(PGDefaultCollectionTitleGenerator *)[PGTripCollectionTitleGenerator alloc] initWithCollection:self->_collection keyAsset:self->_keyAsset curatedAssetCollection:self->_curatedAssetCollection titleGenerationContext:self->_titleGenerationContext];
  }

  else
  {
    v5 = [(PGCollectionTitleGenerator *)self _meaningLabelForTitle];
    if ((!-[NSSet count](self->_whitelistedMeaningLabels, "count") || -[NSSet containsObject:](self->_whitelistedMeaningLabels, "containsObject:", v5)) && (+[PGMeaningfulEventRequiredCriteriaFactory availableMeaningLabels](PGMeaningfulEventRequiredCriteriaFactory, "availableMeaningLabels"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 containsObject:v5], v6, v7))
    {
      v8 = [(PGEventEnrichment *)self->_collection reliableMeaningLabels];
      v9 = [v8 containsObject:v5];

      v10 = [[PGMeaningfulEventTitleGenerator alloc] initWithCollection:self->_collection meaningLabel:v5 meaningIsReliable:v9 titleGenerationContext:self->_titleGenerationContext];
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
  v11 = [(PGTitleGenerator *)v16 title];
  v12 = [(PGTitleGenerator *)v16 subtitle];
  if (!v12)
  {
    v12 = [PGTitle titleWithString:&stru_2843F5C58 category:0];
  }

  v13 = [[PGTitleTuple alloc] initWithWithTitle:v11 subtitle:v12];
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

- (PGCollectionTitleGenerator)initWithCollection:(id)a3 keyAsset:(id)a4 curatedAssetCollection:(id)a5 titleGenerationContext:(id)a6
{
  v11 = a4;
  v12 = a5;
  v13 = [(PGCollectionTitleGenerator *)self initWithCollection:a3 titleGenerationContext:a6];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_keyAsset, a4);
    objc_storeStrong(&v14->_curatedAssetCollection, a5);
  }

  return v14;
}

- (PGCollectionTitleGenerator)initWithCollection:(id)a3 whitelistedMeaningLabels:(id)a4 titleGenerationContext:(id)a5
{
  v9 = a4;
  v10 = [(PGCollectionTitleGenerator *)self initWithCollection:a3 titleGenerationContext:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_whitelistedMeaningLabels, a4);
  }

  return v11;
}

- (PGCollectionTitleGenerator)initWithCollection:(id)a3 titleGenerationContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PGCollectionTitleGenerator;
  v9 = [(PGCollectionTitleGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_collection, a3);
    objc_storeStrong(&v10->_titleGenerationContext, a4);
  }

  return v10;
}

@end