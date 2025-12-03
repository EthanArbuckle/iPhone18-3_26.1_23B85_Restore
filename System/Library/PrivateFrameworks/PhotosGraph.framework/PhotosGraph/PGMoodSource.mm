@interface PGMoodSource
- (NSDictionary)moodSourceDictionary;
- (PGMoodSource)initWithAssetCollection:(id)collection photoLibrary:(id)library options:(id)options;
- (PGMoodSource)initWithEnrichedMemory:(id)memory photoLibrary:(id)library options:(id)options;
- (id)_moodVectorForMoodIdentifier:(id)identifier;
- (id)_moodVectorsWithGraph:(id)graph;
- (id)negativeVectorWithGraph:(id)graph;
- (id)positiveVectorWithGraph:(id)graph;
- (unint64_t)_sourceInputCount;
- (void)_combineMoodVectorsWithGraph:(id)graph;
@end

@implementation PGMoodSource

- (NSDictionary)moodSourceDictionary
{
  moodSourceDictionary = self->_moodSourceDictionary;
  if (!moodSourceDictionary)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    _plistName = [objc_opt_class() _plistName];
    v6 = [v4 pathForResource:_plistName ofType:@"plist"];

    v7 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v6];
    v8 = self->_moodSourceDictionary;
    self->_moodSourceDictionary = v7;

    moodSourceDictionary = self->_moodSourceDictionary;
  }

  return moodSourceDictionary;
}

- (unint64_t)_sourceInputCount
{
  enrichedMemory = [(PGMoodSource *)self enrichedMemory];
  memoryMomentNodes = [enrichedMemory memoryMomentNodes];
  v4 = [memoryMomentNodes count];

  if (v4 <= 1)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)_combineMoodVectorsWithGraph:(id)graph
{
  v32 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  selfCopy = self;
  v21 = graphCopy;
  v7 = [(PGMoodSource *)self _moodVectorsWithGraph:graphCopy];
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

  _sourceInputCount = [(PGMoodSource *)selfCopy _sourceInputCount];
  if (_sourceInputCount > 1)
  {
    [(PGMoodVector *)v5 multiplyByWeight:1.0 / _sourceInputCount];
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
  positiveVector = selfCopy->_positiveVector;
  selfCopy->_positiveVector = v5;
  v16 = v5;

  negativeVector = selfCopy->_negativeVector;
  selfCopy->_negativeVector = v14;
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

- (id)_moodVectorsWithGraph:(id)graph
{
  v19 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(PGMoodSource *)self _plistMoodIdentifiersWithGraph:graphCopy];
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
          [array addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];

  return array;
}

- (id)_moodVectorForMoodIdentifier:(id)identifier
{
  identifierCopy = identifier;
  moodSourceDictionary = [(PGMoodSource *)self moodSourceDictionary];
  v6 = [moodSourceDictionary objectForKeyedSubscript:identifierCopy];

  if (v6)
  {
    v7 = [[PGMoodVector alloc] initWithArray:v6];
  }

  else
  {
    v7 = [PGMoodHolidayResolver moodVectorForMoodIdentifier:identifierCopy];
  }

  v8 = v7;

  return v8;
}

- (id)negativeVectorWithGraph:(id)graph
{
  negativeVector = self->_negativeVector;
  if (!negativeVector)
  {
    [(PGMoodSource *)self _combineMoodVectorsWithGraph:graph];
    negativeVector = self->_negativeVector;
  }

  return negativeVector;
}

- (id)positiveVectorWithGraph:(id)graph
{
  positiveVector = self->_positiveVector;
  if (!positiveVector)
  {
    [(PGMoodSource *)self _combineMoodVectorsWithGraph:graph];
    positiveVector = self->_positiveVector;
  }

  return positiveVector;
}

- (PGMoodSource)initWithEnrichedMemory:(id)memory photoLibrary:(id)library options:(id)options
{
  memoryCopy = memory;
  libraryCopy = library;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = PGMoodSource;
  v12 = [(PGMoodSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_enrichedMemory, memory);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_options, options);
  }

  return v13;
}

- (PGMoodSource)initWithAssetCollection:(id)collection photoLibrary:(id)library options:(id)options
{
  collectionCopy = collection;
  libraryCopy = library;
  optionsCopy = options;
  v15.receiver = self;
  v15.super_class = PGMoodSource;
  v12 = [(PGMoodSource *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetCollection, collection);
    objc_storeStrong(&v13->_photoLibrary, library);
    objc_storeStrong(&v13->_options, options);
  }

  return v13;
}

@end