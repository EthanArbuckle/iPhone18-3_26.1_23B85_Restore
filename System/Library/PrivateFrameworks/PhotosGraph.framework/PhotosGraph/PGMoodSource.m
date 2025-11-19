@interface PGMoodSource
- (NSDictionary)moodSourceDictionary;
- (PGMoodSource)initWithAssetCollection:(id)a3 photoLibrary:(id)a4 options:(id)a5;
- (PGMoodSource)initWithEnrichedMemory:(id)a3 photoLibrary:(id)a4 options:(id)a5;
- (id)_moodVectorForMoodIdentifier:(id)a3;
- (id)_moodVectorsWithGraph:(id)a3;
- (id)negativeVectorWithGraph:(id)a3;
- (id)positiveVectorWithGraph:(id)a3;
- (unint64_t)_sourceInputCount;
- (void)_combineMoodVectorsWithGraph:(id)a3;
@end

@implementation PGMoodSource

- (NSDictionary)moodSourceDictionary
{
  moodSourceDictionary = self->_moodSourceDictionary;
  if (!moodSourceDictionary)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [objc_opt_class() _plistName];
    v6 = [v4 pathForResource:v5 ofType:@"plist"];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v8 = self->_moodSourceDictionary;
    self->_moodSourceDictionary = v7;

    moodSourceDictionary = self->_moodSourceDictionary;
  }

  return moodSourceDictionary;
}

- (unint64_t)_sourceInputCount
{
  v2 = [(PGMoodSource *)self enrichedMemory];
  v3 = [v2 memoryMomentNodes];
  v4 = [v3 count];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)_combineMoodVectorsWithGraph:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  v20 = self;
  v21 = v4;
  v7 = [(PGMoodSource *)self _moodVectorsWithGraph:v4];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __45__PGMoodSource__combineMoodVectorsWithGraph___block_invoke;
        v24[3] = &unk_278886530;
        v25 = v5;
        v26 = v6;
        [v12 enumerateWithBlock:v24];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v9);
  }

  v13 = [(PGMoodSource *)v20 _sourceInputCount];
  if (v13 > 1)
  {
    [(PGMoodVector *)v5 multiplyByWeight:1.0 / v13];
  }

  else
  {
    [(PGMoodVector *)v5 normalize];
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __45__PGMoodSource__combineMoodVectorsWithGraph___block_invoke_2;
  v22[3] = &unk_2788841C8;
  v14 = v6;
  v23 = v14;
  [(PGMoodVector *)v14 enumerateWithBlock:v22];
  positiveVector = v20->_positiveVector;
  v20->_positiveVector = v5;
  v16 = v5;

  negativeVector = v20->_negativeVector;
  v20->_negativeVector = v14;
  v18 = v14;

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __45__PGMoodSource__combineMoodVectorsWithGraph___block_invoke(uint64_t result, uint64_t a2, double a3)
{
  if (a3 == 1.0)
  {
    v3 = 32;
  }

  else
  {
    if (a3 != -1.0)
    {
      return result;
    }

    v3 = 40;
  }

  return [*(result + v3) addValue:a2 forMood:1.0];
}

uint64_t __45__PGMoodSource__combineMoodVectorsWithGraph___block_invoke_2(uint64_t result, uint64_t a2, double a3)
{
  if (a3 != 0.0)
  {
    return [*(result + 32) setValue:a2 forMood:1.0];
  }

  return result;
}

- (id)_moodVectorsWithGraph:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [(PGMoodSource *)self _plistMoodIdentifiersWithGraph:v4];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(PGMoodSource *)self _moodVectorForMoodIdentifier:*(*(&v14 + 1) + 8 * i)];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_moodVectorForMoodIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PGMoodSource *)self moodSourceDictionary];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [[PGMoodVector alloc] initWithArray:v6];
  }

  else
  {
    v7 = [PGMoodHolidayResolver moodVectorForMoodIdentifier:v4];
  }

  v8 = v7;

  return v8;
}

- (id)negativeVectorWithGraph:(id)a3
{
  negativeVector = self->_negativeVector;
  if (!negativeVector)
  {
    [(PGMoodSource *)self _combineMoodVectorsWithGraph:a3];
    negativeVector = self->_negativeVector;
  }

  return negativeVector;
}

- (id)positiveVectorWithGraph:(id)a3
{
  positiveVector = self->_positiveVector;
  if (!positiveVector)
  {
    [(PGMoodSource *)self _combineMoodVectorsWithGraph:a3];
    positiveVector = self->_positiveVector;
  }

  return positiveVector;
}

- (PGMoodSource)initWithEnrichedMemory:(id)a3 photoLibrary:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGMoodSource;
  v12 = [(PGMoodSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_enrichedMemory, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_options, a5);
  }

  return v13;
}

- (PGMoodSource)initWithAssetCollection:(id)a3 photoLibrary:(id)a4 options:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = PGMoodSource;
  v12 = [(PGMoodSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, a3);
    objc_storeStrong(&v13->_photoLibrary, a4);
    objc_storeStrong(&v13->_options, a5);
  }

  return v13;
}

@end