@interface PGFeatureExtractorFrequentPeople
- (PGFeatureExtractorFrequentPeople)initWithNumberOfFrequentPeopleToExtract:(unint64_t)a3;
- (id)featureNames;
- (id)floatVectorWithEntity:(id)a3 error:(id *)a4;
@end

@implementation PGFeatureExtractorFrequentPeople

- (id)floatVectorWithEntity:(id)a3 error:(id *)a4
{
  v46[2] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 photoLibrary];
  v7 = [v6 librarySpecificFetchOptions];

  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"faceCount" ascending:0];
  v46[0] = v8;
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
  v46[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  [v7 setSortDescriptors:v10];

  [v7 setFetchLimit:{-[PGFeatureExtractorFrequentPeople numberOfFrequentPeopleToExtract](self, "numberOfFrequentPeopleToExtract")}];
  v11 = [(PGFeatureExtractorFrequentPeople *)self frequencySortedPersons];
  v12 = [v11 count];

  if (!v12)
  {
    v13 = [MEMORY[0x277CD9938] fetchPersonsWithOptions:v7];
    [(PGFeatureExtractorFrequentPeople *)self setFrequencySortedPersons:v13];
  }

  v35 = v5;
  v14 = [MEMORY[0x277CD9938] fetchPersonsInAsset:v5 options:{v7, v7}];
  v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v40 + 1) + 8 * i) uuid];
        [v15 addObject:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v18);
  }

  v22 = [MEMORY[0x277D22C68] zerosOfCount:{-[PGFeatureExtractorFrequentPeople numberOfFrequentPeopleToExtract](self, "numberOfFrequentPeopleToExtract")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = [(PGFeatureExtractorFrequentPeople *)self frequencySortedPersons];
  v24 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v37;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v37 != v27)
        {
          objc_enumerationMutation(v23);
        }

        v29 = [*(*(&v36 + 1) + 8 * j) uuid];
        v30 = [v15 containsObject:v29];

        if (v30)
        {
          LODWORD(v31) = 1.0;
          [v22 setFloat:v26 atIndex:v31];
        }

        ++v26;
      }

      v25 = [v23 countByEnumeratingWithState:&v36 objects:v44 count:16];
    }

    while (v25);
  }

  v32 = *MEMORY[0x277D85DE8];

  return v22;
}

- (id)featureNames
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(PGFeatureExtractorFrequentPeople *)self numberOfFrequentPeopleToExtract])
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%lu", @"FREQ_PERSON", v4];
      [v3 addObject:v5];

      ++v4;
    }

    while (v4 < [(PGFeatureExtractorFrequentPeople *)self numberOfFrequentPeopleToExtract]);
  }

  return v3;
}

- (PGFeatureExtractorFrequentPeople)initWithNumberOfFrequentPeopleToExtract:(unint64_t)a3
{
  v8.receiver = self;
  v8.super_class = PGFeatureExtractorFrequentPeople;
  v4 = [(PGFeatureExtractorFrequentPeople *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_numberOfFrequentPeopleToExtract = a3;
    frequencySortedPersons = v4->_frequencySortedPersons;
    v4->_frequencySortedPersons = 0;
  }

  return v5;
}

@end