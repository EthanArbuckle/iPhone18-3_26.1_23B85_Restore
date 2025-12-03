@interface PGMoodGenerator
- (PGMoodGenerator)initWithAssetCollection:(id)collection photoLibrary:(id)library options:(id)options;
- (PGMoodGenerator)initWithEnrichedMemory:(id)memory photoLibrary:(id)library options:(id)options;
- (id)_moodSources;
- (id)historyWeightedPositiveMoodVectorWithGraph:(id)graph;
- (id)negativeMoodVectorWithGraph:(id)graph;
- (id)positiveMoodVectorWithGraph:(id)graph;
- (unint64_t)forbiddenMoodsWithGraph:(id)graph;
- (unint64_t)recommendedMoodsWithGraph:(id)graph;
- (unint64_t)suggestedMoodWithGraph:(id)graph;
- (void)_processMoodSourcesWithGraph:(id)graph;
@end

@implementation PGMoodGenerator

- (void)_processMoodSourcesWithGraph:(id)graph
{
  v31 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = objc_opt_new();
  v25 = objc_opt_new();
  _moodSources = [(PGMoodGenerator *)self _moodSources];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [_moodSources countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(_moodSources);
        }

        enrichedMemory = self->_enrichedMemory;
        v12 = objc_alloc(*(*(&v26 + 1) + 8 * v10));
        photoLibrary = self->_photoLibrary;
        options = self->_options;
        if (enrichedMemory)
        {
          v15 = [v12 initWithEnrichedMemory:self->_enrichedMemory photoLibrary:photoLibrary options:options];
        }

        else
        {
          v15 = [v12 initWithAssetCollection:self->_assetCollection photoLibrary:photoLibrary options:options];
        }

        v16 = v15;
        [v15 weight];
        if (v17 != 0.0)
        {
          v18 = v17;
          v19 = [v16 positiveVectorWithGraph:graphCopy];
          [v19 multiplyByWeight:v18];
          [(PGMoodVector *)v5 addMoodVector:v19];
          v20 = [v16 negativeVectorWithGraph:graphCopy];
          [v20 multiplyByWeight:v18];
          [(PGMoodVector *)v25 addMoodVector:v20];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_moodSources countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  positiveMoodVector = self->_positiveMoodVector;
  self->_positiveMoodVector = v5;
  v22 = v5;

  negativeMoodVector = self->_negativeMoodVector;
  self->_negativeMoodVector = v25;

  v24 = *MEMORY[0x277D85DE8];
}

- (id)historyWeightedPositiveMoodVectorWithGraph:(id)graph
{
  v20 = *MEMORY[0x277D85DE8];
  historyWeightedPositiveMoodVector = self->_historyWeightedPositiveMoodVector;
  if (!historyWeightedPositiveMoodVector)
  {
    v5 = [(PGMoodGenerator *)self positiveMoodVectorWithGraph:graph];
    v6 = [v5 copy];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    moodHistory = [(PGMoodGeneratorOptions *)self->_options moodHistory];
    v8 = [moodHistory countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(moodHistory);
          }

          -[PGMoodVector multiplyByWeight:forMood:](v6, "multiplyByWeight:forMood:", [*(*(&v15 + 1) + 8 * v11++) unsignedIntegerValue], 0.9);
        }

        while (v9 != v11);
        v9 = [moodHistory countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v12 = self->_historyWeightedPositiveMoodVector;
    self->_historyWeightedPositiveMoodVector = v6;

    historyWeightedPositiveMoodVector = self->_historyWeightedPositiveMoodVector;
  }

  v13 = *MEMORY[0x277D85DE8];

  return historyWeightedPositiveMoodVector;
}

- (id)negativeMoodVectorWithGraph:(id)graph
{
  negativeMoodVector = self->_negativeMoodVector;
  if (!negativeMoodVector)
  {
    [(PGMoodGenerator *)self _processMoodSourcesWithGraph:graph];
    negativeMoodVector = self->_negativeMoodVector;
  }

  return negativeMoodVector;
}

- (id)positiveMoodVectorWithGraph:(id)graph
{
  positiveMoodVector = self->_positiveMoodVector;
  if (!positiveMoodVector)
  {
    [(PGMoodGenerator *)self _processMoodSourcesWithGraph:graph];
    positiveMoodVector = self->_positiveMoodVector;
  }

  return positiveMoodVector;
}

- (unint64_t)forbiddenMoodsWithGraph:(id)graph
{
  v4 = [(PGMoodGenerator *)self negativeMoodVectorWithGraph:graph];
  v5 = [v4 moodsWithThreshold:self->_negativeThreshold];

  return v5;
}

- (unint64_t)recommendedMoodsWithGraph:(id)graph
{
  v4 = [(PGMoodGenerator *)self positiveMoodVectorWithGraph:graph];
  v5 = [v4 moodsWithThreshold:self->_positiveThreshold];

  return v5;
}

- (unint64_t)suggestedMoodWithGraph:(id)graph
{
  result = self->_suggestedMood;
  if (!result)
  {
    graphCopy = graph;
    v6 = [(PGMoodGenerator *)self recommendedMoodsWithGraph:graphCopy];
    v7 = [(PGMoodGenerator *)self forbiddenMoodsWithGraph:graphCopy];
    v8 = [(PGMoodGenerator *)self historyWeightedPositiveMoodVectorWithGraph:graphCopy];

    v9 = [v8 copy];
    [v9 filterWithMoods:v6 & ~v7];
    uuid = [(PHAssetCollection *)self->_assetCollection uuid];
    self->_suggestedMood = [v9 weightedRandomMoodWithSeed:{objc_msgSend(uuid, "hash")}];

    if (!self->_suggestedMood)
    {
      self->_suggestedMood = 16;
    }

    return self->_suggestedMood;
  }

  return result;
}

- (id)_moodSources
{
  if (_moodSources_onceToken != -1)
  {
    dispatch_once(&_moodSources_onceToken, &__block_literal_global_51058);
  }

  v3 = _moodSources_moodSources;

  return v3;
}

void __31__PGMoodGenerator__moodSources__block_invoke()
{
  v3[9] = *MEMORY[0x277D85DE8];
  v3[0] = objc_opt_class();
  v3[1] = objc_opt_class();
  v3[2] = objc_opt_class();
  v3[3] = objc_opt_class();
  v3[4] = objc_opt_class();
  v3[5] = objc_opt_class();
  v3[6] = objc_opt_class();
  v3[7] = objc_opt_class();
  v3[8] = objc_opt_class();
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:9];
  v1 = _moodSources_moodSources;
  _moodSources_moodSources = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (PGMoodGenerator)initWithEnrichedMemory:(id)memory photoLibrary:(id)library options:(id)options
{
  memoryCopy = memory;
  libraryCopy = library;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = PGMoodGenerator;
  v12 = [(PGMoodGenerator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_enrichedMemory, memory);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_options, options);
    *&v13->_positiveThreshold = xmmword_22F78C0C0;
  }

  return v13;
}

- (PGMoodGenerator)initWithAssetCollection:(id)collection photoLibrary:(id)library options:(id)options
{
  collectionCopy = collection;
  libraryCopy = library;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = PGMoodGenerator;
  v12 = [(PGMoodGenerator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, collection);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_options, options);
    *&v13->_positiveThreshold = xmmword_22F78C0C0;
  }

  return v13;
}

@end