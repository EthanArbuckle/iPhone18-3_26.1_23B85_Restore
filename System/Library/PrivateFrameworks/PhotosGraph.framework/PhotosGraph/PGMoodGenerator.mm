@interface PGMoodGenerator
- (PGMoodGenerator)initWithAssetCollection:(id)a3 photoLibrary:(id)a4 options:(id)a5;
- (PGMoodGenerator)initWithEnrichedMemory:(id)a3 photoLibrary:(id)a4 options:(id)a5;
- (id)_moodSources;
- (id)historyWeightedPositiveMoodVectorWithGraph:(id)a3;
- (id)negativeMoodVectorWithGraph:(id)a3;
- (id)positiveMoodVectorWithGraph:(id)a3;
- (unint64_t)forbiddenMoodsWithGraph:(id)a3;
- (unint64_t)recommendedMoodsWithGraph:(id)a3;
- (unint64_t)suggestedMoodWithGraph:(id)a3;
- (void)_processMoodSourcesWithGraph:(id)a3;
@end

@implementation PGMoodGenerator

- (void)_processMoodSourcesWithGraph:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v25 = objc_opt_new();
  v6 = [(PGMoodGenerator *)self _moodSources];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v6);
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
          v19 = [v16 positiveVectorWithGraph:v4];
          [v19 multiplyByWeight:v18];
          [(PGMoodVector *)v5 addMoodVector:v19];
          v20 = [v16 negativeVectorWithGraph:v4];
          [v20 multiplyByWeight:v18];
          [(PGMoodVector *)v25 addMoodVector:v20];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
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

- (id)historyWeightedPositiveMoodVectorWithGraph:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  historyWeightedPositiveMoodVector = self->_historyWeightedPositiveMoodVector;
  if (!historyWeightedPositiveMoodVector)
  {
    v5 = [(PGMoodGenerator *)self positiveMoodVectorWithGraph:a3];
    v6 = [v5 copy];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = [(PGMoodGeneratorOptions *)self->_options moodHistory];
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          -[PGMoodVector multiplyByWeight:forMood:](v6, "multiplyByWeight:forMood:", [*(*(&v15 + 1) + 8 * v11++) unsignedIntegerValue], 0.9);
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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

- (id)negativeMoodVectorWithGraph:(id)a3
{
  negativeMoodVector = self->_negativeMoodVector;
  if (!negativeMoodVector)
  {
    [(PGMoodGenerator *)self _processMoodSourcesWithGraph:a3];
    negativeMoodVector = self->_negativeMoodVector;
  }

  return negativeMoodVector;
}

- (id)positiveMoodVectorWithGraph:(id)a3
{
  positiveMoodVector = self->_positiveMoodVector;
  if (!positiveMoodVector)
  {
    [(PGMoodGenerator *)self _processMoodSourcesWithGraph:a3];
    positiveMoodVector = self->_positiveMoodVector;
  }

  return positiveMoodVector;
}

- (unint64_t)forbiddenMoodsWithGraph:(id)a3
{
  v4 = [(PGMoodGenerator *)self negativeMoodVectorWithGraph:a3];
  v5 = [v4 moodsWithThreshold:self->_negativeThreshold];

  return v5;
}

- (unint64_t)recommendedMoodsWithGraph:(id)a3
{
  v4 = [(PGMoodGenerator *)self positiveMoodVectorWithGraph:a3];
  v5 = [v4 moodsWithThreshold:self->_positiveThreshold];

  return v5;
}

- (unint64_t)suggestedMoodWithGraph:(id)a3
{
  result = self->_suggestedMood;
  if (!result)
  {
    v5 = a3;
    v6 = [(PGMoodGenerator *)self recommendedMoodsWithGraph:v5];
    v7 = [(PGMoodGenerator *)self forbiddenMoodsWithGraph:v5];
    v8 = [(PGMoodGenerator *)self historyWeightedPositiveMoodVectorWithGraph:v5];

    v9 = [v8 copy];
    [v9 filterWithMoods:v6 & ~v7];
    v10 = [(PHAssetCollection *)self->_assetCollection uuid];
    self->_suggestedMood = [v9 weightedRandomMoodWithSeed:{objc_msgSend(v10, "hash")}];

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

- (PGMoodGenerator)initWithEnrichedMemory:(id)a3 photoLibrary:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGMoodGenerator;
  v12 = [(PGMoodGenerator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_enrichedMemory, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_options, a5);
    *&v13->_positiveThreshold = xmmword_22F78C0C0;
  }

  return v13;
}

- (PGMoodGenerator)initWithAssetCollection:(id)a3 photoLibrary:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGMoodGenerator;
  v12 = [(PGMoodGenerator *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_options, a5);
    *&v13->_positiveThreshold = xmmword_22F78C0C0;
  }

  return v13;
}

@end