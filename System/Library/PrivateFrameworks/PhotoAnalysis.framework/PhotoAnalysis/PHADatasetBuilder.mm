@interface PHADatasetBuilder
+ (id)_randomIndicesWithUpperBound:(unint64_t)bound count:(unint64_t)count;
+ (id)labelVectorForLabelPolicy:(int64_t)policy label:(id)label numberOfClasses:(unint64_t)classes;
+ (id)labelVectorsForLabelPolicy:(int64_t)policy;
- (BOOL)_isFeatureNameForAssetPredicateWithFeatureName:(id)name;
- (NSArray)negativeLocalIdentifiers;
- (NSArray)positiveLocalIdentifiers;
- (PHADatasetBuilder)initWithDatasetOptions:(id)options;
- (id)_assetPropertiesPredicateForKeywordFromFeatureExtractorFilters:(id)filters;
- (id)_currentFetchOptionPropertySet;
- (id)_datasetBuilderHelperForBiomeStream:(id)stream error:(id *)error;
- (id)_datasetBuilderHelperForLocalIdentifiers:(id)identifiers positiveFingerprints:(id)fingerprints negativeFingerprints:(id)negativeFingerprints error:(id *)error;
- (id)_datasetForLocalIdentifiers:(id)identifiers positiveFingerprints:(id)fingerprints negativeFingerprints:(id)negativeFingerprints error:(id *)error;
- (id)_featureProviderForFingerprintVectors:(id)vectors labelVectors:(id)labelVectors batchSize:(unint64_t)size error:(id *)error;
- (id)_fetchObjectsForFingerprintVersion:(int64_t)version options:(id)options localIdentifiers:(id)identifiers error:(id *)error;
- (id)_filterDataSamples:(id)samples filters:(id)filters numberOfSamples:(id)ofSamples error:(id *)error;
- (id)_fingerprintsForDatasetName:(id)name localIdentifiers:(id)identifiers labelName:(id)labelName numberOfSamples:(id)samples filters:(id)filters error:(id *)error;
- (id)_fingerprintsForObjects:(id)objects fingerprintVersion:(int64_t)version error:(id *)error;
- (id)_fingerprintsForPhotosStyleWithDataLabelArray:(id)array error:(id *)error;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error;
- (id)_localIdentifiersForCoreDuetDatasetName:(id)name subsetName:(id)subsetName;
- (id)_localIdentifiersToExcludeForLabel:(id)label;
- (id)_mergeLocalIdentifiersFromPositiveLocalIdentifiers:(id)identifiers negativeLocalIdentifiers:(id)localIdentifiers numberOfPositiveSamples:(id)samples numberOfNegativeSamples:(id)negativeSamples error:(id *)error;
- (id)_numberOfSamplesPerClassWithError:(id *)error;
- (id)_performAugmentationsOnLabeledSamples:(id)samples error:(id *)error;
- (id)_randomSamplesOfCount:(unint64_t)count filterPredicateForKeyword:(id)keyword labelName:(id)name error:(id *)error;
- (id)_samplesOfCount:(unint64_t)count fromLocalIdentifiers:(id)identifiers filterPredicateForKeyword:(id)keyword error:(id *)error;
- (id)_trainingDataWithDataLabelArray:(id)array fingerprints:(id)fingerprints error:(id *)error;
- (id)dataLabelArrayForPhotosStyleWithError:(id *)error;
- (id)datasetBuilderHelperForBinaryTrainingWithError:(id *)error;
- (id)datasetBuilderHelperForPhotosStyleWithError:(id *)error;
- (id)datasetForEvaluationForLabel:(id)label error:(id *)error;
- (id)datasetWithError:(id *)error;
- (id)readLocalIdentifiersFromBiomeStream:(id)stream subsetName:(id)name type:(id)type;
- (id)trainingDataBatchWithBiomeStream:(id)stream error:(id *)error;
- (int64_t)_validatePHObject:(id)object withFeatureValidator:(id)validator error:(id *)error;
- (unint64_t)_minAvailableNumberOfSamples;
@end

@implementation PHADatasetBuilder

- (id)_featureProviderForFingerprintVectors:(id)vectors labelVectors:(id)labelVectors batchSize:(unint64_t)size error:(id *)error
{
  v51[2] = *MEMORY[0x277D85DE8];
  vectorsCopy = vectors;
  labelVectorsCopy = labelVectors;
  if ([labelVectorsCopy count] && objc_msgSend(vectorsCopy, "count"))
  {
    options = [(PHADatasetBuilder *)self options];
    labelPolicyString = [options labelPolicyString];
    v14 = [labelPolicyString isEqualToString:@"one-hot"];

    v15 = 0x277CCA000uLL;
    if (v14)
    {
      v16 = MEMORY[0x277CBFF48];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
      v51[0] = v17;
      v18 = MEMORY[0x277CCABB0];
      options2 = [(PHADatasetBuilder *)self options];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(options2, "labelSize")}];
      v51[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      v22 = [v16 doubleMultiArrayWithShape:v21 valueArray:labelVectorsCopy error:error];

      v15 = 0x277CCA000;
    }

    else
    {
      options3 = [(PHADatasetBuilder *)self options];
      labelPolicyString2 = [options3 labelPolicyString];
      v27 = [labelPolicyString2 isEqualToString:@"indexed"];

      if (!v27)
      {
        v46 = 0;
LABEL_12:
        v29 = MEMORY[0x277CBFF48];
        v30 = [*(v15 + 2992) numberWithUnsignedInteger:size];
        v49[0] = v30;
        v31 = *(v15 + 2992);
        options4 = [(PHADatasetBuilder *)self options];
        v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(options4, "featureSize")}];
        v49[1] = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
        v35 = [v29 doubleMultiArrayWithShape:v34 valueArray:vectorsCopy error:error];

        v36 = v46;
        if (v46)
        {
          if (v35)
          {
            v45 = objc_alloc(MEMORY[0x277CBFED0]);
            options5 = [(PHADatasetBuilder *)self options];
            modelInputName = [options5 modelInputName];
            v47[0] = modelInputName;
            v48[0] = v35;
            options6 = [(PHADatasetBuilder *)self options];
            modelOutputName = [options6 modelOutputName];
            v47[1] = modelOutputName;
            v48[1] = v46;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
            v24 = [v45 initWithDictionary:v41 error:error];

            v36 = v46;
LABEL_20:

LABEL_22:
            goto LABEL_23;
          }

          if (error)
          {
            options5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to create MLMultiArray vector for feature"];
            selfCopy2 = self;
            v43 = 15;
            goto LABEL_19;
          }
        }

        else if (error)
        {
          options5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to create MLMultiArray vector for label"];
          selfCopy2 = self;
          v43 = 14;
LABEL_19:
          [(PHADatasetBuilder *)selfCopy2 _generateErrorWithErrorCode:v43 errorMessage:options5 underlyingError:0];
          *error = v24 = 0;
          goto LABEL_20;
        }

        v24 = 0;
        goto LABEL_22;
      }

      v28 = MEMORY[0x277CBFF48];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:size];
      v50[0] = v17;
      v50[1] = &unk_2844CC900;
      options2 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      v22 = [v28 doubleMultiArrayWithShape:options2 valueArray:labelVectorsCopy error:error];
    }

    v46 = v22;

    goto LABEL_12;
  }

  if (error)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty label or feature vectors"];
    *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:13 errorMessage:v23 underlyingError:0];
  }

  v24 = 0;
LABEL_23:

  return v24;
}

- (id)_trainingDataWithDataLabelArray:(id)array fingerprints:(id)fingerprints error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  fingerprintsCopy = fingerprints;
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v8 = arrayCopy;
  v61 = [v8 countByEnumeratingWithState:&v64 objects:v68 count:16];
  selfCopy = self;
  if (!v61)
  {
    v58 = 0;
    goto LABEL_32;
  }

  v58 = 0;
  v60 = *v65;
  v55 = v8;
  do
  {
    for (i = 0; i != v61; ++i)
    {
      if (*v65 != v60)
      {
        objc_enumerationMutation(v8);
      }

      v10 = *(*(&v64 + 1) + 8 * i);
      v11 = MEMORY[0x277CD9918];
      options = [(PHADatasetBuilder *)self options];
      biomeInputName = [options biomeInputName];
      v14 = [v10 objectForKey:biomeInputName];
      v15 = [v11 uuidFromLocalIdentifier:v14];

      self = selfCopy;
      v16 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:v15];
      options2 = [(PHADatasetBuilder *)selfCopy options];
      biomeLabelName = [options2 biomeLabelName];
      v19 = [v10 objectForKey:biomeLabelName];

      if (v16)
      {
        v20 = v19 == 0;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v19, "intValue")}];
        unsignedIntegerValue = [v21 unsignedIntegerValue];
        options3 = [(PHADatasetBuilder *)selfCopy options];
        numberOfClasses = [options3 numberOfClasses];

        if (unsignedIntegerValue <= numberOfClasses)
        {
          v25 = [v57 objectForKey:v21];
          if (!v25)
          {
            options4 = [(PHADatasetBuilder *)selfCopy options];
            labelPolicy = [options4 labelPolicy];
            options5 = [(PHADatasetBuilder *)selfCopy options];
            v25 = +[PHADatasetBuilder labelVectorForLabelPolicy:label:numberOfClasses:](PHADatasetBuilder, "labelVectorForLabelPolicy:label:numberOfClasses:", labelPolicy, v21, [options5 numberOfClasses]);

            v8 = v55;
            [v57 setObject:v25 forKeyedSubscript:v21];
          }

          v29 = [fingerprintsCopy objectForKey:v16];
          floatArray = [v29 floatArray];
          array = [floatArray array];

          v59 = array;
          if ([v25 count] && objc_msgSend(array, "count"))
          {
            options6 = [(PHADatasetBuilder *)selfCopy options];
            labelPolicyString = [options6 labelPolicyString];
            if ([labelPolicyString isEqualToString:@"one-hot"])
            {
              v51 = [v25 count];
              options7 = [(PHADatasetBuilder *)selfCopy options];
              labelSize = [options7 labelSize];

              v8 = v55;
              if (v51 != labelSize)
              {
                if (error)
                {
                  v36 = MEMORY[0x277CCACA8];
                  options8 = [(PHADatasetBuilder *)selfCopy options];
                  v8 = v55;
                  v38 = [v36 stringWithFormat:@"Wrong label size %ld, expected: %ld", objc_msgSend(options8, "labelSize"), objc_msgSend(v25, "count")];
                  *error = [(PHADatasetBuilder *)selfCopy _generateErrorWithErrorCode:17 errorMessage:v38 underlyingError:0];

                  goto LABEL_25;
                }

                goto LABEL_26;
              }
            }

            else
            {
            }

            [v53 addObjectsFromArray:v59];
            [v54 addObjectsFromArray:v25];
            ++v58;
          }

          options9 = [(PHADatasetBuilder *)selfCopy options];
          v40 = v58 % [options9 batchSize];

          if (!v40)
          {
            options10 = [(PHADatasetBuilder *)selfCopy options];
            options8 = -[PHADatasetBuilder _featureProviderForFingerprintVectors:labelVectors:batchSize:error:](selfCopy, "_featureProviderForFingerprintVectors:labelVectors:batchSize:error:", v53, v54, [options10 batchSize], error);

            if (options8)
            {
              [v50 addObject:options8];
              [v53 removeAllObjects];
              [v54 removeAllObjects];
            }

            v8 = v55;
LABEL_25:
          }

LABEL_26:

          self = selfCopy;
        }
      }
    }

    v61 = [v8 countByEnumeratingWithState:&v64 objects:v68 count:16];
  }

  while (v61);
LABEL_32:

  if (![v53 count])
  {
LABEL_38:
    v48 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v50];
    goto LABEL_39;
  }

  options11 = [(PHADatasetBuilder *)selfCopy options];
  v43 = v58 % [options11 batchSize];

  v63 = 0;
  v44 = [(PHADatasetBuilder *)selfCopy _featureProviderForFingerprintVectors:v53 labelVectors:v54 batchSize:v43 error:&v63];
  v45 = v63;
  if (!v45)
  {
    [v50 addObject:v44];

    goto LABEL_38;
  }

  v46 = v45;
  if (error)
  {
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to create batch data"];
    *error = [(PHADatasetBuilder *)selfCopy _generateErrorWithErrorCode:18 errorMessage:v47 underlyingError:v46];
  }

  v48 = 0;
LABEL_39:

  return v48;
}

- (id)_datasetBuilderHelperForBiomeStream:(id)stream error:(id *)error
{
  streamCopy = stream;
  v7 = objc_alloc_init(PHADatasetBuilderHelper);
  v8 = [PHABiomeUtilities biomeStreamFor:streamCopy];

  if (v8 == 9)
  {
    v9 = [(PHADatasetBuilder *)self datasetBuilderHelperForPhotosStyleWithError:error];
LABEL_5:
    v10 = v9;

    v7 = v10;
    goto LABEL_6;
  }

  if ([PHABiomeUtilities supportsForBinaryTrainingWithStream:v8])
  {
    v9 = [(PHADatasetBuilder *)self datasetBuilderHelperForBinaryTrainingWithError:error];
    goto LABEL_5;
  }

LABEL_6:
  v11 = v7;

  return v7;
}

- (id)trainingDataBatchWithBiomeStream:(id)stream error:(id *)error
{
  v18 = 0;
  v6 = [(PHADatasetBuilder *)self _datasetBuilderHelperForBiomeStream:stream error:&v18];
  v7 = v18;
  if (v6)
  {
    dataLabelArray = [v6 dataLabelArray];
    fingerprints = [v6 fingerprints];
    v17 = 0;
    v10 = [(PHADatasetBuilder *)self _trainingDataWithDataLabelArray:dataLabelArray fingerprints:fingerprints error:&v17];
    v11 = v17;

    array = [v10 array];
    v13 = [array count];

    if (v13)
    {
      v14 = v10;
    }

    else
    {
      if (error)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty training data"];
        *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:16 errorMessage:v15 underlyingError:v11];
      }

      v14 = 0;
    }

    goto LABEL_10;
  }

  if (error)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty training data"];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:16 errorMessage:v10 underlyingError:v7];
    *error = v14 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_datasetBuilderHelperForLocalIdentifiers:(id)identifiers positiveFingerprints:(id)fingerprints negativeFingerprints:(id)negativeFingerprints error:(id *)error
{
  v46 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  fingerprintsCopy = fingerprints;
  negativeFingerprintsCopy = negativeFingerprints;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = identifiersCopy;
  v36 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v36)
  {
    v34 = *v38;
    v31 = v11;
    while (2)
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v38 != v34)
        {
          objc_enumerationMutation(v11);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        v14 = [fingerprintsCopy objectForKeyedSubscript:v13];

        if (v14)
        {
          options = [(PHADatasetBuilder *)self options];
          biomeInputName = [options biomeInputName];
          v43[0] = biomeInputName;
          v44[0] = v13;
          options2 = [(PHADatasetBuilder *)self options];
          biomeLabelName = [options2 biomeLabelName];
          v43[1] = biomeLabelName;
          v44[1] = @"1";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

          [v10 addObject:v19];
          v20 = fingerprintsCopy;
        }

        else
        {
          if (!negativeFingerprintsCopy || ([negativeFingerprintsCopy objectForKeyedSubscript:v13], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
          {
            if (error)
            {
              *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:@"No fingerprint for local identifier" underlyingError:0];
            }

            v28 = 0;
            v27 = v33;
            goto LABEL_19;
          }

          options3 = [(PHADatasetBuilder *)self options];
          biomeInputName2 = [options3 biomeInputName];
          v41[0] = biomeInputName2;
          v42[0] = v13;
          options4 = [(PHADatasetBuilder *)self options];
          biomeLabelName2 = [options4 biomeLabelName];
          v41[1] = biomeLabelName2;
          v42[1] = @"0";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

          [v10 addObject:v19];
          v20 = negativeFingerprintsCopy;
          v11 = v31;
        }

        v26 = [v20 objectForKeyedSubscript:v13];

        if (v26)
        {
          [v33 setValue:v26 forKey:v13];
        }
      }

      v36 = [v11 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v36)
      {
        continue;
      }

      break;
    }
  }

  v27 = v33;
  v28 = [[PHADatasetBuilderHelper alloc] initWithDataLabelArray:v10 fingerprints:v33];
LABEL_19:

  return v28;
}

- (id)datasetBuilderHelperForBinaryTrainingWithError:(id *)error
{
  v5 = [(PHADatasetBuilder *)self _numberOfSamplesPerClassWithError:?];
  v6 = v5;
  if (!v5)
  {
    v36 = 0;
    goto LABEL_25;
  }

  errorCopy = error;
  v7 = [v5 objectForKeyedSubscript:@"positive"];
  v45 = v6;
  v8 = [v6 objectForKeyedSubscript:@"negative"];
  [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
  options = [(PHADatasetBuilder *)self options];
  positivesDatasetName = [options positivesDatasetName];
  positiveLocalIdentifiers = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
  options2 = [(PHADatasetBuilder *)self options];
  filtersByDatasetName = [options2 filtersByDatasetName];
  v14 = [filtersByDatasetName objectForKeyedSubscript:@"positive"];
  v50 = 0;
  v46 = v7;
  v15 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:positivesDatasetName localIdentifiers:positiveLocalIdentifiers labelName:@"positive" numberOfSamples:v7 filters:v14 error:&v50];
  v16 = v50;

  if ([v15 count])
  {
    v42 = v15;
    options3 = [(PHADatasetBuilder *)self options];
    negativesDatasetName = [options3 negativesDatasetName];
    negativeLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    options4 = [(PHADatasetBuilder *)self options];
    [options4 filtersByDatasetName];
    v22 = v21 = v8;
    v23 = [v22 objectForKeyedSubscript:@"negative"];
    v49 = v16;
    v43 = v21;
    options6 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:negativesDatasetName localIdentifiers:negativeLocalIdentifiers labelName:@"negative" numberOfSamples:v21 filters:v23 error:&v49];
    v25 = v49;

    if (![options6 count])
    {
      v8 = v43;
      v38 = v46;
      if (!errorCopy)
      {
        v36 = 0;
        v16 = v25;
        v15 = v42;
LABEL_23:

        goto LABEL_24;
      }

      v39 = MEMORY[0x277CCACA8];
      options5 = [(PHADatasetBuilder *)self options];
      negativesDatasetName2 = [options5 negativesDatasetName];
      v40 = [v39 stringWithFormat:@"No data for negative datasetName %@", negativesDatasetName2];
      *errorCopy = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v40 underlyingError:v25];

      v36 = 0;
      v16 = v25;
      v15 = v42;
LABEL_22:

      goto LABEL_23;
    }

    v26 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [v42 allKeys];
    v28 = [v26 initWithArray:allKeys];
    v29 = objc_alloc(MEMORY[0x277CBEB98]);
    [options6 allKeys];
    v31 = v30 = options6;
    v32 = [v29 initWithArray:v31];
    v48 = v25;
    negativesDatasetName2 = [(PHADatasetBuilder *)self _mergeLocalIdentifiersFromPositiveLocalIdentifiers:v28 negativeLocalIdentifiers:v32 numberOfPositiveSamples:v46 numberOfNegativeSamples:v43 error:&v48];
    v16 = v48;

    if ([negativesDatasetName2 count])
    {
      v47 = v16;
      options5 = [(PHADatasetBuilder *)self _datasetBuilderHelperForLocalIdentifiers:negativesDatasetName2 positiveFingerprints:v42 negativeFingerprints:v30 error:&v47];
      v35 = v47;

      v15 = v42;
      options6 = v30;
      if (!options5 || v35)
      {
        v38 = v46;
        if (errorCopy)
        {
          [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:@"No fingerprint for local identifier" underlyingError:v35];
          *errorCopy = v36 = 0;
        }

        else
        {
          v36 = 0;
        }

        v16 = v35;
        v8 = v43;
        goto LABEL_22;
      }

      options5 = options5;
      v16 = 0;
      v36 = options5;
      v8 = v43;
    }

    else
    {
      options6 = v30;
      if (errorCopy)
      {
        [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:@"No data after rebalancing dataset" underlyingError:v16];
        options5 = 0;
        *errorCopy = v36 = 0;
      }

      else
      {
        options5 = 0;
        v36 = 0;
      }

      v15 = v42;
      v8 = v43;
    }

LABEL_21:
    v38 = v46;
    goto LABEL_22;
  }

  if (errorCopy)
  {
    v37 = MEMORY[0x277CCACA8];
    options6 = [(PHADatasetBuilder *)self options];
    options5 = [options6 positivesDatasetName];
    negativesDatasetName2 = [v37 stringWithFormat:@"No data for positive datasetName %@", options5];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:negativesDatasetName2 underlyingError:v16];
    *errorCopy = v36 = 0;
    goto LABEL_21;
  }

  v36 = 0;
  v38 = v46;
LABEL_24:

  v6 = v45;
LABEL_25:

  return v36;
}

- (id)_fingerprintsForPhotosStyleWithDataLabelArray:(id)array error:(id *)error
{
  v42 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v37 + 1) + 8 * i);
        options = [(PHADatasetBuilder *)self options];
        biomeInputName = [options biomeInputName];
        v16 = [v13 objectForKeyedSubscript:biomeInputName];

        if (v16)
        {
          [v7 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v10);
  }

  v17 = [v7 count];
  options2 = [(PHADatasetBuilder *)self options];
  v19 = +[PHADatasetBuilder _randomIndicesWithUpperBound:count:](PHADatasetBuilder, "_randomIndicesWithUpperBound:count:", v17, [options2 totalNumberOfSamples]);

  if (v19)
  {
    v20 = [v7 objectsAtIndexes:v19];
    [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
    options3 = [(PHADatasetBuilder *)self options];
    photoLibrary = [options3 photoLibrary];
    librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

    options4 = [(PHADatasetBuilder *)self options];
    v34 = librarySpecificFetchOptions;
    v35 = v20;
    errorCopy = error;
    v26 = -[PHADatasetBuilder _fetchObjectsForFingerprintVersion:options:localIdentifiers:error:](self, "_fetchObjectsForFingerprintVersion:options:localIdentifiers:error:", [options4 fingerprintVersion], librarySpecificFetchOptions, v20, error);

    fetchedObjects = [v26 fetchedObjects];
    options5 = [(PHADatasetBuilder *)self options];
    v36 = 0;
    v29 = -[PHADatasetBuilder _fingerprintsForObjects:fingerprintVersion:error:](self, "_fingerprintsForObjects:fingerprintVersion:error:", fetchedObjects, [options5 fingerprintVersion], &v36);
    v30 = v36;

    if (v29 && [v29 count])
    {
      v31 = v29;
    }

    else
    {
      if (errorCopy)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting fingerprints for Photos Style"];
        *errorCopy = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:v32 underlyingError:v30];
      }

      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)dataLabelArrayForPhotosStyleWithError:(id *)error
{
  options = [(PHADatasetBuilder *)self options];
  biomeInputName = [options biomeInputName];
  options2 = [(PHADatasetBuilder *)self options];
  biomeLabelName = [options2 biomeLabelName];
  v9 = [PHABiomeUtilities readBiomeEventsForPhotoStyleWithInputName:biomeInputName labelName:biomeLabelName error:error];

  return v9;
}

- (id)datasetBuilderHelperForPhotosStyleWithError:(id *)error
{
  v13 = 0;
  v5 = [(PHADatasetBuilder *)self dataLabelArrayForPhotosStyleWithError:&v13];
  v6 = v13;
  if ([v5 count])
  {
    v12 = v6;
    v7 = [(PHADatasetBuilder *)self _fingerprintsForPhotosStyleWithDataLabelArray:v5 error:&v12];
    v8 = v12;

    if ([v7 count])
    {
      v9 = [[PHADatasetBuilderHelper alloc] initWithDataLabelArray:v5 fingerprints:v7];
    }

    else
    {
      if (error)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting fingerprints"];
        *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:v10 underlyingError:v8];
      }

      v9 = 0;
    }
  }

  else
  {
    if (error)
    {
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:12 errorMessage:@"Reading from Photos.Style returns empty data" underlyingError:v6];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    v8 = v6;
  }

  return v9;
}

- (id)_localIdentifiersToExcludeForLabel:(id)label
{
  labelCopy = label;
  if ([labelCopy isEqualToString:@"negative"])
  {
    v5 = MEMORY[0x277CBEB98];
    positiveLocalIdentifiers = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
LABEL_5:
    v8 = positiveLocalIdentifiers;
    v9 = [v5 setWithArray:positiveLocalIdentifiers];

    goto LABEL_7;
  }

  v7 = [labelCopy isEqualToString:@"positive"];
  v5 = MEMORY[0x277CBEB98];
  if (v7)
  {
    positiveLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    goto LABEL_5;
  }

  v9 = [MEMORY[0x277CBEB98] set];
LABEL_7:

  return v9;
}

- (id)_currentFetchOptionPropertySet
{
  v3 = MEMORY[0x277D3B908];
  options = [(PHADatasetBuilder *)self options];
  v5 = [v3 fetchOptionPropertySetForFingerprintVersion:{objc_msgSend(options, "fingerprintVersion")}];

  options2 = [(PHADatasetBuilder *)self options];
  filtersByDatasetName = [options2 filtersByDatasetName];
  v8 = [filtersByDatasetName objectForKeyedSubscript:@"positive"];
  if ([v8 count])
  {
  }

  else
  {
    options3 = [(PHADatasetBuilder *)self options];
    filtersByDatasetName2 = [options3 filtersByDatasetName];
    v11 = [filtersByDatasetName2 objectForKeyedSubscript:@"negative"];
    v12 = [v11 count];

    if (!v12)
    {
      allObjects = v5;
      goto LABEL_9;
    }
  }

  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = v13;
  if (v5)
  {
    [v13 addObjectsFromArray:v5];
  }

  v15 = [MEMORY[0x277D3B908] fetchOptionPropertySetForFingerprintVersion:3];
  if (v15)
  {
    [v14 addObjectsFromArray:v15];
  }

  allObjects = [v14 allObjects];

LABEL_9:

  return allObjects;
}

- (id)_assetPropertiesPredicateForKeywordFromFeatureExtractorFilters:(id)filters
{
  v22 = *MEMORY[0x277D85DE8];
  filtersCopy = filters;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = filtersCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        featureName = [v11 featureName];
        v13 = [(PHADatasetBuilder *)self _isFeatureNameForAssetPredicateWithFeatureName:featureName];

        if (v13)
        {
          predicate = [v11 predicate];
          featureName2 = [v11 featureName];
          [v5 setObject:predicate forKeyedSubscript:featureName2];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_isFeatureNameForAssetPredicateWithFeatureName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AssetPropertiesFilter"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [nameCopy isEqualToString:@"AssetInternalPropertiesFilter"];
  }

  return v4;
}

- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error
{
  errorCopy = error;
  v8 = MEMORY[0x277CBEB38];
  messageCopy = message;
  v10 = objc_alloc_init(v8);
  [v10 setObject:messageCopy forKey:*MEMORY[0x277CCA450]];

  if (errorCopy)
  {
    [v10 setObject:errorCopy forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHADatasetBuilder" code:code userInfo:v10];

  return v11;
}

- (id)_performAugmentationsOnLabeledSamples:(id)samples error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  options = [(PHADatasetBuilder *)self options];
  augmenters = [options augmenters];

  v8 = [augmenters countByEnumeratingWithState:&v26 objects:v30 count:16];
  v9 = samplesCopy;
  if (v8)
  {
    v10 = v8;
    v11 = *v27;
    v9 = samplesCopy;
LABEL_3:
    v12 = 0;
    v13 = v9;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(augmenters);
      }

      v14 = *(*(&v26 + 1) + 8 * v12);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      name2 = v14;
      v25 = 0;
      v9 = [name2 labeledFloatVectorsWithLabeledFloatVectors:samplesCopy error:&v25];
      v16 = v25;

      if (!v9)
      {
        if (error)
        {
          v19 = MEMORY[0x277CCACA8];
          name = [objc_opt_class() name];
          v21 = [v19 stringWithFormat:@"Error executing augmenter %@", name];
          *error = [(PHADatasetBuilder *)selfCopy _generateErrorWithErrorCode:9 errorMessage:v21 underlyingError:v16];
        }

        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }

      ++v12;
      v13 = v9;
      if (v10 == v12)
      {
        v10 = [augmenters countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (error)
    {
      v18 = MEMORY[0x277CCACA8];
      name2 = [objc_opt_class() name];
      v16 = [v18 stringWithFormat:@"Feature augmenter not supported: %@. Only supervised learning augmenters are currently supported.", name2];
      *error = [(PHADatasetBuilder *)selfCopy _generateErrorWithErrorCode:8 errorMessage:v16 underlyingError:0];
      goto LABEL_16;
    }

LABEL_17:

    v17 = 0;
    goto LABEL_18;
  }

LABEL_10:

  v13 = v9;
  v17 = v13;
LABEL_18:

  return v17;
}

- (id)_fingerprintsForObjects:(id)objects fingerprintVersion:(int64_t)version error:(id *)error
{
  objectsCopy = objects;
  if ([MEMORY[0x277D3B908] isAssetFingerprintVersion:version])
  {
    options = [(PHADatasetBuilder *)self options];
    graphManager = [options graphManager];
    options2 = [(PHADatasetBuilder *)self options];
    fingerprintVersion = [options2 fingerprintVersion];
    options3 = [(PHADatasetBuilder *)self options];
    transformersForFeatureExtractors = [options3 transformersForFeatureExtractors];
    v15 = [graphManager assetFingerprintsWithVersion:fingerprintVersion forAssets:objectsCopy withTransformers:transformersForFeatureExtractors error:error];
LABEL_6:
    v17 = v15;

LABEL_7:
    goto LABEL_8;
  }

  if (([MEMORY[0x277D3B908] isMomentFingerprintVersion:version] & 1) != 0 || objc_msgSend(MEMORY[0x277D3B908], "isMemoryFingerprintVersion:", version))
  {
    options = [(PHADatasetBuilder *)self options];
    graphManager = [options graphManager];
    options2 = [(PHADatasetBuilder *)self options];
    fingerprintVersion2 = [options2 fingerprintVersion];
    options3 = [(PHADatasetBuilder *)self options];
    transformersForFeatureExtractors = [options3 transformersForFeatureExtractors];
    v15 = [graphManager assetCollectionFingerprintsWithVersion:fingerprintVersion2 forAssetCollections:objectsCopy withTransformers:transformersForFeatureExtractors error:error];
    goto LABEL_6;
  }

  if (error)
  {
    options = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported: %ld", version];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:5 errorMessage:options underlyingError:0];
    *error = v17 = 0;
    goto LABEL_7;
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (id)_fetchObjectsForFingerprintVersion:(int64_t)version options:(id)options localIdentifiers:(id)identifiers error:(id *)error
{
  optionsCopy = options;
  identifiersCopy = identifiers;
  if ([MEMORY[0x277D3B908] isAssetFingerprintVersion:version])
  {
    if ([identifiersCopy count])
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:identifiersCopy options:optionsCopy];
    }

    else
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithOptions:optionsCopy];
    }
    v12 = ;
    goto LABEL_12;
  }

  if ([MEMORY[0x277D3B908] isMomentFingerprintVersion:version])
  {
    v13 = [identifiersCopy count];
    v14 = MEMORY[0x277CD97B8];
    v15 = 3;
    if (v13)
    {
LABEL_7:
      v12 = [v14 fetchAssetCollectionsWithType:v15 localIdentifiers:identifiersCopy options:optionsCopy];
LABEL_12:
      error = v12;
      goto LABEL_13;
    }

LABEL_10:
    v12 = [v14 fetchAssetCollectionsWithType:v15 subtype:0x7FFFFFFFFFFFFFFFLL options:optionsCopy];
    goto LABEL_12;
  }

  if ([MEMORY[0x277D3B908] isMemoryFingerprintVersion:version])
  {
    v16 = [identifiersCopy count];
    v14 = MEMORY[0x277CD97B8];
    v15 = 4;
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (error)
  {
    version = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported: %ld", version];
    *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:5 errorMessage:version underlyingError:0];

    error = 0;
  }

LABEL_13:

  return error;
}

- (id)_localIdentifiersForCoreDuetDatasetName:(id)name subsetName:(id)subsetName
{
  v23 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  subsetNameCopy = subsetName;
  datasetStore = [(PHADatasetBuilder *)self datasetStore];
  v9 = [datasetStore samplesForDataset:nameCopy subset:subsetNameCopy];

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        identifier = [*(*(&v18 + 1) + 8 * i) identifier];
        [v10 addObject:identifier];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (int64_t)_validatePHObject:(id)object withFeatureValidator:(id)validator error:(id *)error
{
  objectCopy = object;
  validatorCopy = validator;
  featureValidatorType = [validatorCopy featureValidatorType];
  if (featureValidatorType <= 6)
  {
    if (((1 << featureValidatorType) & 0x2A) != 0)
    {
      v5 = [validatorCopy isValidEntity:objectCopy error:error];
      goto LABEL_12;
    }

    if (((1 << featureValidatorType) & 0x50) != 0)
    {
      options = [(PHADatasetBuilder *)self options];
      graphManager = [options graphManager];
      _currentFetchOptionPropertySet = [(PHADatasetBuilder *)self _currentFetchOptionPropertySet];
      v5 = [graphManager validatePHObject:objectCopy featureAggregationValidator:validatorCopy assetFetchOptionPropertySet:_currentFetchOptionPropertySet error:error];

      goto LABEL_12;
    }

    if (featureValidatorType == 2)
    {
      options2 = [(PHADatasetBuilder *)self options];
      graphManager2 = [options2 graphManager];
      v5 = [graphManager2 validatePHObject:objectCopy graphRelationsFeatureValidator:validatorCopy error:error];

      goto LABEL_12;
    }
  }

  if (!featureValidatorType)
  {
    if (error)
    {
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:11 errorMessage:@"Unknown feature validator type is not supported." underlyingError:0];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_12:

  return v5;
}

- (id)_filterDataSamples:(id)samples filters:(id)filters numberOfSamples:(id)ofSamples error:(id *)error
{
  v49 = *MEMORY[0x277D85DE8];
  samplesCopy = samples;
  filtersCopy = filters;
  ofSamplesCopy = ofSamples;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = samplesCopy;
  v35 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v35)
  {
    v14 = *v44;
    v33 = ofSamplesCopy;
    v34 = filtersCopy;
    v31 = *v44;
    v32 = v13;
    v37 = v12;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v44 != v14)
      {
        objc_enumerationMutation(v13);
      }

      v16 = *(*(&v43 + 1) + 8 * v15);
      v17 = [v12 count];
      if (v17 >= [ofSamplesCopy integerValue])
      {
        break;
      }

      v36 = v15;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = filtersCopy;
      v19 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v40;
        v22 = 1;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v40 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v24 = *(*(&v39 + 1) + 8 * i);
            featureName = [v24 featureName];
            v26 = [(PHADatasetBuilder *)self _isFeatureNameForAssetPredicateWithFeatureName:featureName];

            if (!v26)
            {
              v27 = [(PHADatasetBuilder *)self _validatePHObject:v16 withFeatureValidator:v24 error:error];
              if (v27 == 2)
              {
                v22 = 2;
              }

              else if (!v27)
              {

                v13 = v32;
                v29 = 0;
                ofSamplesCopy = v33;
                filtersCopy = v34;
                v12 = v37;
                goto LABEL_26;
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v20);

        v28 = v22 == 1;
        ofSamplesCopy = v33;
        filtersCopy = v34;
        v14 = v31;
        v13 = v32;
        v12 = v37;
        if (!v28)
        {
          goto LABEL_23;
        }
      }

      else
      {

        v12 = v37;
      }

      [v12 addObject:v16];
LABEL_23:
      v15 = v36 + 1;
      if (v36 + 1 == v35)
      {
        v35 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
        if (v35)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v29 = v12;
LABEL_26:

  return v29;
}

- (id)_randomSamplesOfCount:(unint64_t)count filterPredicateForKeyword:(id)keyword labelName:(id)name error:(id *)error
{
  v41[2] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  keywordCopy = keyword;
  options = [(PHADatasetBuilder *)self options];
  photoLibrary = [options photoLibrary];
  librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

  _currentFetchOptionPropertySet = [(PHADatasetBuilder *)self _currentFetchOptionPropertySet];
  if (_currentFetchOptionPropertySet)
  {
    [librarySpecificFetchOptions setFetchPropertySets:_currentFetchOptionPropertySet];
  }

  v16 = MEMORY[0x277CCAC30];
  v36 = nameCopy;
  v17 = [(PHADatasetBuilder *)self _localIdentifiersToExcludeForLabel:nameCopy];
  v18 = [v16 predicateWithFormat:@"NOT (uuid IN %@)", v17];

  v19 = [keywordCopy objectForKeyedSubscript:@"AssetPropertiesFilter"];
  v20 = [keywordCopy objectForKeyedSubscript:@"AssetInternalPropertiesFilter"];

  v35 = v20;
  if (v19)
  {
    v21 = MEMORY[0x277CCA920];
    v41[0] = v18;
    v41[1] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
    [librarySpecificFetchOptions setPredicate:v23];
LABEL_7:

    goto LABEL_8;
  }

  if (v20)
  {
    v24 = MEMORY[0x277CCA920];
    v40[0] = v18;
    v40[1] = v20;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:2];
    v23 = [v24 andPredicateWithSubpredicates:v22];
    [librarySpecificFetchOptions setInternalPredicate:v23];
    goto LABEL_7;
  }

  [librarySpecificFetchOptions setPredicate:v18];
LABEL_8:
  options2 = [(PHADatasetBuilder *)self options];
  v26 = -[PHADatasetBuilder _fetchObjectsForFingerprintVersion:options:error:](self, "_fetchObjectsForFingerprintVersion:options:error:", [options2 fingerprintVersion], librarySpecificFetchOptions, error);

  if (v26)
  {
    v27 = [v26 count];
    v28 = [PHADatasetBuilder _randomIndicesWithUpperBound:v27 count:count];
    if (v28)
    {
      v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __85__PHADatasetBuilder__randomSamplesOfCount_filterPredicateForKeyword_labelName_error___block_invoke;
      v37[3] = &unk_2788B1E50;
      v30 = v29;
      v38 = v30;
      v39 = v26;
      [v28 enumerateIndexesUsingBlock:v37];
      v31 = v39;
      v32 = v30;

      v33 = v32;
    }

    else
    {
      if (!error)
      {
        v33 = 0;
        goto LABEL_16;
      }

      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough random samples(%lu), requested: (%lu)", v27, count];
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:3 errorMessage:v32 underlyingError:0];
      *error = v33 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (error)
  {
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:4 errorMessage:@"Random sample query returned nil" underlyingError:0];
    *error = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_17:

  return v33;
}

void __85__PHADatasetBuilder__randomSamplesOfCount_filterPredicateForKeyword_labelName_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) objectAtIndexedSubscript:a2];
  [v2 addObject:v3];
}

- (id)_samplesOfCount:(unint64_t)count fromLocalIdentifiers:(id)identifiers filterPredicateForKeyword:(id)keyword error:(id *)error
{
  identifiersCopy = identifiers;
  keywordCopy = keyword;
  if (count)
  {
    v12 = +[PHADatasetBuilder _randomIndicesWithUpperBound:count:](PHADatasetBuilder, "_randomIndicesWithUpperBound:count:", [identifiersCopy count], count);
    if (v12)
    {
      v13 = [identifiersCopy objectsAtIndexes:v12];
      options = [(PHADatasetBuilder *)self options];
      photoLibrary = [options photoLibrary];
      librarySpecificFetchOptions = [photoLibrary librarySpecificFetchOptions];

      [librarySpecificFetchOptions setIncludeHiddenAssets:1];
      [librarySpecificFetchOptions setIncludeTrashedAssets:1];
      _currentFetchOptionPropertySet = [(PHADatasetBuilder *)self _currentFetchOptionPropertySet];
      if (_currentFetchOptionPropertySet)
      {
        [librarySpecificFetchOptions setFetchPropertySets:_currentFetchOptionPropertySet];
      }

      v18 = [keywordCopy objectForKeyedSubscript:@"AssetPropertiesFilter"];
      v19 = [keywordCopy objectForKeyedSubscript:@"AssetInternalPropertiesFilter"];
      v20 = v19;
      v29 = _currentFetchOptionPropertySet;
      if (v18)
      {
        [librarySpecificFetchOptions setPredicate:v18];
      }

      else if (v19)
      {
        [librarySpecificFetchOptions setInternalPredicate:v19];
      }

      options2 = [(PHADatasetBuilder *)self options];
      v23 = -[PHADatasetBuilder _fetchObjectsForFingerprintVersion:options:localIdentifiers:error:](self, "_fetchObjectsForFingerprintVersion:options:localIdentifiers:error:", [options2 fingerprintVersion], librarySpecificFetchOptions, v13, error);

      v24 = MEMORY[0x277CBEB98];
      [v23 fetchedObjects];
      v26 = v25 = v13;
      v21 = [v24 setWithArray:v26];

      keywordCopy = v28;
    }

    else
    {
      v21 = 0;
    }
  }

  else if (error)
  {
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:6 errorMessage:@"Request for zero samples from the database is not supported." underlyingError:0];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_datasetForLocalIdentifiers:(id)identifiers positiveFingerprints:(id)fingerprints negativeFingerprints:(id)negativeFingerprints error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  fingerprintsCopy = fingerprints;
  negativeFingerprintsCopy = negativeFingerprints;
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  selfCopy = self;
  options = [(PHADatasetBuilder *)self options];
  v37 = +[PHADatasetBuilder labelVectorsForLabelPolicy:](PHADatasetBuilder, "labelVectorsForLabelPolicy:", [options labelPolicy]);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = identifiersCopy;
  v14 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v40;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v39 + 1) + 8 * i);
        v19 = [fingerprintsCopy objectForKeyedSubscript:v18];

        if (v19)
        {
          v20 = [fingerprintsCopy objectForKeyedSubscript:v18];
          v21 = @"positive";
        }

        else
        {
          if (!negativeFingerprintsCopy || ([negativeFingerprintsCopy objectForKeyedSubscript:v18], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
          {
            if (error)
            {
              [(PHADatasetBuilder *)selfCopy _generateErrorWithErrorCode:1 errorMessage:@"No fingerprint for local identifier" underlyingError:0];
              *error = v33 = 0;
            }

            else
            {
              v33 = 0;
            }

            v27 = v13;
            goto LABEL_19;
          }

          v20 = [negativeFingerprintsCopy objectForKeyedSubscript:v18];
          v21 = @"negative";
        }

        v23 = [v37 objectForKeyedSubscript:v21];
        v24 = objc_alloc(MEMORY[0x277D3BA30]);
        floatArray = [v20 floatArray];
        v26 = [v24 initWithFloatVector:floatArray label:v23];

        [v38 addObject:v26];
      }

      v15 = [v13 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v27 = [(PHADatasetBuilder *)selfCopy _performAugmentationsOnLabeledSamples:v38 error:error];
  if (v27)
  {
    v28 = [PHADataset alloc];
    options2 = [(PHADatasetBuilder *)selfCopy options];
    modelInputName = [options2 modelInputName];
    options3 = [(PHADatasetBuilder *)selfCopy options];
    labelName = [options3 labelName];
    v33 = [(PHADataset *)v28 initWithLabeledFeatureVectors:v27 inputName:modelInputName labelName:labelName];
  }

  else
  {
    v33 = 0;
  }

LABEL_19:

  return v33;
}

- (id)_mergeLocalIdentifiersFromPositiveLocalIdentifiers:(id)identifiers negativeLocalIdentifiers:(id)localIdentifiers numberOfPositiveSamples:(id)samples numberOfNegativeSamples:(id)negativeSamples error:(id *)error
{
  identifiersCopy = identifiers;
  localIdentifiersCopy = localIdentifiers;
  samplesCopy = samples;
  negativeSamplesCopy = negativeSamples;
  options = [(PHADatasetBuilder *)self options];
  positivesDatasetName = [options positivesDatasetName];
  if ([positivesDatasetName isEqualToString:@"noneDataset"])
  {
  }

  else
  {
    [(PHADatasetBuilder *)self options];
    selfCopy = self;
    v18 = identifiersCopy;
    v19 = localIdentifiersCopy;
    v20 = samplesCopy;
    v21 = negativeSamplesCopy;
    v23 = v22 = error;
    negativesDatasetName = [v23 negativesDatasetName];
    v25 = [negativesDatasetName isEqualToString:@"noneDataset"];

    error = v22;
    negativeSamplesCopy = v21;
    samplesCopy = v20;
    localIdentifiersCopy = v19;
    identifiersCopy = v18;
    self = selfCopy;

    if (!v25)
    {
      v26 = 0;
      goto LABEL_8;
    }
  }

  if ([identifiersCopy count] || objc_msgSend(localIdentifiersCopy, "count"))
  {
    v26 = 1;
LABEL_8:
    integerValue = [samplesCopy integerValue];
    if (integerValue != [identifiersCopy count] || (v28 = objc_msgSend(negativeSamplesCopy, "integerValue"), v28 != objc_msgSend(localIdentifiersCopy, "count")))
    {
      options2 = [(PHADatasetBuilder *)self options];
      datasetPolicy = [options2 datasetPolicy];

      if (datasetPolicy == 1)
      {
        if (error)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Requested number of samples not met in  positives (%lu/%@) or negatives dataset (%lu/%@) for balanced strict training.", objc_msgSend(identifiersCopy, "count"), samplesCopy, objc_msgSend(localIdentifiersCopy, "count"), negativeSamplesCopy];
          v51 = LABEL_34:;
          *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v51 underlyingError:0];

          goto LABEL_35;
        }

        goto LABEL_35;
      }

      options3 = [(PHADatasetBuilder *)self options];
      if ([options3 datasetPolicy] == 2 && !objc_msgSend(identifiersCopy, "count"))
      {
        v53 = [localIdentifiersCopy count];

        if (!v53)
        {
          if (!error)
          {
            goto LABEL_35;
          }

          v47 = @"No samples for positve and negative datasets.";
          selfCopy3 = self;
          v49 = 2;
          goto LABEL_28;
        }
      }

      else
      {
      }

      options4 = [(PHADatasetBuilder *)self options];
      if ([options4 datasetPolicy])
      {
        v33 = 1;
      }

      else
      {
        v33 = v26;
      }

      if ((v33 & 1) == 0)
      {
        if (![identifiersCopy count] || !objc_msgSend(localIdentifiersCopy, "count"))
        {
          if (error)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples in positives (%lu) or negatives dataset (%lu) for balanced training.", objc_msgSend(identifiersCopy, "count"), objc_msgSend(localIdentifiersCopy, "count"), v54, v55];
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        v34 = [identifiersCopy count];
        v35 = [localIdentifiersCopy count];
        if (v34 >= v35)
        {
          v34 = v35;
        }

        v36 = objc_alloc(MEMORY[0x277CBEB98]);
        allObjects = [identifiersCopy allObjects];
        [allObjects subarrayWithRange:{0, v34}];
        v38 = samplesCopy;
        v39 = negativeSamplesCopy;
        v41 = v40 = error;
        v42 = [v36 initWithArray:v41];

        error = v40;
        negativeSamplesCopy = v39;
        samplesCopy = v38;

        v43 = objc_alloc(MEMORY[0x277CBEB98]);
        allObjects2 = [localIdentifiersCopy allObjects];
        v45 = [allObjects2 subarrayWithRange:{0, v34}];
        v46 = [v43 initWithArray:v45];

        localIdentifiersCopy = v46;
        identifiersCopy = v42;
      }
    }

    if (![identifiersCopy intersectsSet:localIdentifiersCopy])
    {
      v50 = [identifiersCopy setByAddingObjectsFromSet:localIdentifiersCopy];
      goto LABEL_36;
    }

    if (!error)
    {
      goto LABEL_35;
    }

    v47 = @"Positive samples and negative samples overlap";
    selfCopy3 = self;
    v49 = 4;
LABEL_28:
    [(PHADatasetBuilder *)selfCopy3 _generateErrorWithErrorCode:v49 errorMessage:v47 underlyingError:0];
    *error = v50 = 0;
    goto LABEL_36;
  }

  if (error)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples in positives (%lu) or negatives dataset (%lu) for single class training.", objc_msgSend(identifiersCopy, "count"), objc_msgSend(localIdentifiersCopy, "count"), v54, v55];
    goto LABEL_34;
  }

LABEL_35:
  v50 = 0;
LABEL_36:

  return v50;
}

- (id)_fingerprintsForDatasetName:(id)name localIdentifiers:(id)identifiers labelName:(id)labelName numberOfSamples:(id)samples filters:(id)filters error:(id *)error
{
  nameCopy = name;
  identifiersCopy = identifiers;
  labelNameCopy = labelName;
  samplesCopy = samples;
  filtersCopy = filters;
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [(PHADatasetBuilder *)self _assetPropertiesPredicateForKeywordFromFeatureExtractorFilters:filtersCopy];
  v46 = identifiersCopy;
  if ([samplesCopy integerValue] < 1)
  {
    v28 = 0;
LABEL_11:
    v32 = v28;
    v49 = v28;
    v33 = [(PHADatasetBuilder *)self _filterDataSamples:v17 filters:filtersCopy numberOfSamples:samplesCopy error:&v49];
    v28 = v49;

    if (v33)
    {
      v42 = nameCopy;
      v44 = v18;
      allObjects = [v33 allObjects];
      options = [(PHADatasetBuilder *)self options];
      v48 = v28;
      v36 = -[PHADatasetBuilder _fingerprintsForObjects:fingerprintVersion:error:](self, "_fingerprintsForObjects:fingerprintVersion:error:", allObjects, [options fingerprintVersion], &v48);
      v37 = v48;

      if (v36)
      {
        labelNameCopy2 = v36;
        v28 = v37;
        v39 = labelNameCopy2;
      }

      else
      {
        if (error)
        {
          labelNameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting fingerprints for label %@", labelNameCopy];
          *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:labelNameCopy underlyingError:v37];
        }

        labelNameCopy2 = 0;
        v39 = 0;
        v28 = v37;
      }

      nameCopy = v42;
    }

    else
    {
      if (!error)
      {
        v33 = 0;
        v39 = 0;
        goto LABEL_23;
      }

      v44 = v18;
      labelNameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error filtering samples for label %@", labelNameCopy];
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:10 errorMessage:labelNameCopy2 underlyingError:v28];
      *error = v39 = 0;
    }

    v18 = v44;
LABEL_23:

    allObjects2 = v17;
    goto LABEL_24;
  }

  v43 = filtersCopy;
  v19 = v18;
  v20 = [MEMORY[0x277CBEB98] setWithArray:identifiersCopy];
  allObjects2 = [v20 allObjects];

  v22 = [nameCopy isEqualToString:@"randomDataset"];
  integerValue = [samplesCopy integerValue];
  options2 = [(PHADatasetBuilder *)self options];
  v25 = [options2 oversamplingRate] * integerValue;

  if (v22)
  {
    v51 = 0;
    v26 = &v51;
    v18 = v19;
    v27 = [(PHADatasetBuilder *)self _randomSamplesOfCount:v25 filterPredicateForKeyword:v19 labelName:labelNameCopy error:&v51];
  }

  else
  {
    v29 = [allObjects2 count];
    if (v25 >= v29)
    {
      v30 = v29;
    }

    else
    {
      v30 = v25;
    }

    v50 = 0;
    v26 = &v50;
    v18 = v19;
    v27 = [(PHADatasetBuilder *)self _samplesOfCount:v30 fromLocalIdentifiers:allObjects2 filterPredicateForKeyword:v19 error:&v50];
  }

  v31 = v27;
  v28 = *v26;

  filtersCopy = v43;
  if (v31)
  {

    v17 = v31;
    goto LABEL_11;
  }

  if (error)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples for label %@ (%lu), requested: (%lu)", labelNameCopy, objc_msgSend(allObjects2, "count"), objc_msgSend(samplesCopy, "integerValue")];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v33 underlyingError:v28];
    *error = v39 = 0;
    v17 = allObjects2;
    goto LABEL_23;
  }

  v39 = 0;
LABEL_24:

  return v39;
}

- (unint64_t)_minAvailableNumberOfSamples
{
  positiveLocalIdentifiers = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
  v4 = [positiveLocalIdentifiers count];

  if (v4)
  {
    positiveLocalIdentifiers2 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v6 = [positiveLocalIdentifiers2 count];
  }

  else
  {
    v6 = -1;
  }

  negativeLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
  v8 = [negativeLocalIdentifiers count];

  if (!v8)
  {
    return v6;
  }

  negativeLocalIdentifiers2 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
  v10 = [negativeLocalIdentifiers2 count];

  if (v10 >= v6)
  {
    return v6;
  }

  else
  {
    return v10;
  }
}

- (id)_numberOfSamplesPerClassWithError:(id *)error
{
  v56[2] = *MEMORY[0x277D85DE8];
  options = [(PHADatasetBuilder *)self options];
  positivesDatasetName = [options positivesDatasetName];
  v7 = [positivesDatasetName isEqualToString:@"noneDataset"];

  options2 = [(PHADatasetBuilder *)self options];
  v9 = options2;
  if (v7)
  {
    totalNumberOfSamples = [options2 totalNumberOfSamples];

    negativeLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v12 = [negativeLocalIdentifiers count];

    if (totalNumberOfSamples >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = totalNumberOfSamples;
    }

    v55[0] = @"positive";
    v55[1] = @"negative";
    v56[0] = &unk_2844CC8E8;
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v56[1] = v14;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v56;
    v17 = v55;
LABEL_11:
    v21 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:2];
LABEL_12:

    goto LABEL_13;
  }

  negativesDatasetName = [options2 negativesDatasetName];
  v19 = [negativesDatasetName isEqualToString:@"noneDataset"];

  options3 = [(PHADatasetBuilder *)self options];
  v21 = options3;
  if (v19)
  {
    totalNumberOfSamples2 = [options3 totalNumberOfSamples];

    positiveLocalIdentifiers = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v24 = [positiveLocalIdentifiers count];

    if (totalNumberOfSamples2 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = totalNumberOfSamples2;
    }

    v53[0] = @"positive";
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
    v53[1] = @"negative";
    v54[0] = v14;
    v54[1] = &unk_2844CC8E8;
    v15 = MEMORY[0x277CBEAC0];
    v16 = v54;
    v17 = v53;
    goto LABEL_11;
  }

  datasetPolicy = [options3 datasetPolicy];

  if (datasetPolicy > 0)
  {
    if (datasetPolicy == 1)
    {
      options4 = [(PHADatasetBuilder *)self options];
      v45 = [options4 totalNumberOfSamples] >> 1;

      v49[0] = @"positive";
      v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
      v49[1] = @"negative";
      v50[0] = v14;
      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v45];
      v50[1] = v32;
      v33 = MEMORY[0x277CBEAC0];
      v34 = v50;
      v35 = v49;
      goto LABEL_33;
    }

    if (datasetPolicy == 2)
    {
      options5 = [(PHADatasetBuilder *)self options];
      totalNumberOfSamples3 = [options5 totalNumberOfSamples];

      _minAvailableNumberOfSamples = [(PHADatasetBuilder *)self _minAvailableNumberOfSamples];
      if (totalNumberOfSamples3 >= _minAvailableNumberOfSamples)
      {
        v39 = _minAvailableNumberOfSamples;
      }

      else
      {
        v39 = totalNumberOfSamples3;
      }

      v40 = arc4random_uniform(v39 + 1);
      v41 = v39 - v40;
      v47[0] = @"positive";
      v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v40];
      v47[1] = @"negative";
      v48[0] = v42;
      v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
      v48[1] = v43;
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
    }
  }

  else
  {
    if (datasetPolicy == -1)
    {
      if (error)
      {
        [(PHADatasetBuilder *)self _generateErrorWithErrorCode:7 errorMessage:@"Unknown dataset builder policy is not supported" underlyingError:0];
        *error = v21 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      if (datasetPolicy)
      {
        goto LABEL_13;
      }

      options6 = [(PHADatasetBuilder *)self options];
      v29 = [options6 totalNumberOfSamples] >> 1;

      _minAvailableNumberOfSamples2 = [(PHADatasetBuilder *)self _minAvailableNumberOfSamples];
      if (v29 >= _minAvailableNumberOfSamples2)
      {
        v31 = _minAvailableNumberOfSamples2;
      }

      else
      {
        v31 = v29;
      }

      if (v31)
      {
        v51[0] = @"positive";
        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
        v51[1] = @"negative";
        v52[0] = v14;
        v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v31];
        v52[1] = v32;
        v33 = MEMORY[0x277CBEAC0];
        v34 = v52;
        v35 = v51;
LABEL_33:
        v21 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:2];

        goto LABEL_12;
      }

      if (error)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples per class (%lu)", 0];
        *error = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v46 underlyingError:0];
      }
    }

    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)datasetWithError:(id *)error
{
  v5 = [(PHADatasetBuilder *)self _numberOfSamplesPerClassWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"positive"];
    v35 = v6;
    [v6 objectForKeyedSubscript:@"negative"];
    v8 = v33 = error;
    [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
    options = [(PHADatasetBuilder *)self options];
    positivesDatasetName = [options positivesDatasetName];
    positiveLocalIdentifiers = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    options2 = [(PHADatasetBuilder *)self options];
    filtersByDatasetName = [options2 filtersByDatasetName];
    v14 = [filtersByDatasetName objectForKeyedSubscript:@"positive"];
    v34 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:positivesDatasetName localIdentifiers:positiveLocalIdentifiers labelName:@"positive" numberOfSamples:v7 filters:v14 error:v33];

    options3 = [(PHADatasetBuilder *)self options];
    negativesDatasetName = [options3 negativesDatasetName];
    negativeLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    options4 = [(PHADatasetBuilder *)self options];
    filtersByDatasetName2 = [options4 filtersByDatasetName];
    v20 = [filtersByDatasetName2 objectForKeyedSubscript:@"negative"];
    v36 = v8;
    v21 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:negativesDatasetName localIdentifiers:negativeLocalIdentifiers labelName:@"negative" numberOfSamples:v8 filters:v20 error:v33];

    v22 = 0;
    if (v21)
    {
      v23 = v7;
      v24 = v34;
      if (v34)
      {
        v25 = objc_alloc(MEMORY[0x277CBEB98]);
        allKeys = [v34 allKeys];
        v27 = [v25 initWithArray:allKeys];
        v28 = objc_alloc(MEMORY[0x277CBEB98]);
        allKeys2 = [v21 allKeys];
        v30 = [v28 initWithArray:allKeys2];
        v31 = [(PHADatasetBuilder *)self _mergeLocalIdentifiersFromPositiveLocalIdentifiers:v27 negativeLocalIdentifiers:v30 numberOfPositiveSamples:v7 numberOfNegativeSamples:v36 error:v33];

        if (v31)
        {
          v22 = [(PHADatasetBuilder *)self _datasetForLocalIdentifiers:v31 positiveFingerprints:v34 negativeFingerprints:v21 error:v33];
        }

        else
        {
          v22 = 0;
        }
      }
    }

    else
    {
      v23 = v7;
      v24 = v34;
    }

    v6 = v35;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)datasetForEvaluationForLabel:(id)label error:(id *)error
{
  labelCopy = label;
  [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
  v35 = labelCopy;
  errorCopy = error;
  if ([labelCopy isEqualToString:@"positive"])
  {
    options = [(PHADatasetBuilder *)self options];
    positivesDatasetName = [options positivesDatasetName];
    positiveLocalIdentifiers = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v9 = MEMORY[0x277CCABB0];
    positiveLocalIdentifiers2 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    options5 = [v9 numberWithUnsignedInteger:{objc_msgSend(positiveLocalIdentifiers2, "count")}];
    options2 = [(PHADatasetBuilder *)self options];
    filtersByDatasetName = [options2 filtersByDatasetName];
    v14 = [filtersByDatasetName objectForKeyedSubscript:@"positive"];
    options4 = options;
    v16 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:positivesDatasetName localIdentifiers:positiveLocalIdentifiers labelName:@"positive" numberOfSamples:options5 filters:v14 error:error];
  }

  else
  {
    negativeLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v18 = [negativeLocalIdentifiers count];

    options3 = [(PHADatasetBuilder *)self options];
    negativesDatasetName = [options3 negativesDatasetName];
    v21 = [negativesDatasetName isEqualToString:@"randomDataset"];

    if (v21)
    {
      positiveLocalIdentifiers3 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
      v18 = [positiveLocalIdentifiers3 count];
    }

    options4 = [(PHADatasetBuilder *)self options];
    positivesDatasetName = [options4 negativesDatasetName];
    positiveLocalIdentifiers = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    positiveLocalIdentifiers2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    options5 = [(PHADatasetBuilder *)self options];
    options2 = [options5 filtersByDatasetName];
    filtersByDatasetName = [options2 objectForKeyedSubscript:@"negative"];
    v16 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:positivesDatasetName localIdentifiers:positiveLocalIdentifiers labelName:@"negative" numberOfSamples:positiveLocalIdentifiers2 filters:filtersByDatasetName error:error];
  }

  if (v16)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    allKeys = [v16 allKeys];
    v25 = [v23 initWithArray:allKeys];

    if (v25)
    {
      v26 = v35;
      if ([v35 isEqualToString:@"positive"])
      {
        selfCopy2 = self;
        v28 = v25;
        v29 = v16;
        v30 = 0;
      }

      else
      {
        selfCopy2 = self;
        v28 = v25;
        v29 = 0;
        v30 = v16;
      }

      v31 = [(PHADatasetBuilder *)selfCopy2 _datasetForLocalIdentifiers:v28 positiveFingerprints:v29 negativeFingerprints:v30 error:errorCopy];
    }

    else
    {
      v31 = 0;
      v26 = v35;
    }
  }

  else
  {
    v31 = 0;
    v26 = v35;
  }

  return v31;
}

- (NSArray)negativeLocalIdentifiers
{
  if (!self->_negativeLocalIdentifiers)
  {
    options = [(PHADatasetBuilder *)self options];
    datasetSource = [options datasetSource];
    v5 = [datasetSource isEqualToString:@"CoreDuet"];

    options2 = [(PHADatasetBuilder *)self options];
    options4 = options2;
    if (v5)
    {
      negativesDatasetName = [options2 negativesDatasetName];
      options3 = [(PHADatasetBuilder *)self options];
      negativesSubsetName = [options3 negativesSubsetName];
      v11 = [(PHADatasetBuilder *)self _localIdentifiersForCoreDuetDatasetName:negativesDatasetName subsetName:negativesSubsetName];
      negativeLocalIdentifiers = self->_negativeLocalIdentifiers;
      self->_negativeLocalIdentifiers = v11;
    }

    else
    {
      datasetSource2 = [options2 datasetSource];
      v14 = [datasetSource2 isEqualToString:@"Biome"];

      if (!v14)
      {
        goto LABEL_7;
      }

      options4 = [(PHADatasetBuilder *)self options];
      negativesDatasetName = [options4 negativesSubsetName];
      options3 = [(PHADatasetBuilder *)self options];
      negativesSubsetName = [options3 negativesSubsetName];
      negativeLocalIdentifiers = [(PHADatasetBuilder *)self options];
      negativesDatasetType = [negativeLocalIdentifiers negativesDatasetType];
      v16 = [(PHADatasetBuilder *)self readLocalIdentifiersFromBiomeStream:negativesDatasetName subsetName:negativesSubsetName type:negativesDatasetType];
      v17 = self->_negativeLocalIdentifiers;
      self->_negativeLocalIdentifiers = v16;
    }
  }

LABEL_7:
  v18 = self->_negativeLocalIdentifiers;

  return v18;
}

- (id)readLocalIdentifiersFromBiomeStream:(id)stream subsetName:(id)name type:(id)type
{
  nameCopy = name;
  typeCopy = type;
  v9 = MEMORY[0x277CBEA60];
  streamCopy = stream;
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_2500];
  v13 = [PHABiomeUtilities biomeStreamFor:streamCopy];

  if (v13)
  {
    v14 = [PHABiomeUtilities readUUIDsWithStream:v13 subsetName:nameCopy type:typeCopy progressReporter:v12 error:0];
    allObjects = [v14 allObjects];

    v11 = allObjects;
  }

  v16 = v11;

  return v11;
}

- (NSArray)positiveLocalIdentifiers
{
  if (!self->_positiveLocalIdentifiers)
  {
    options = [(PHADatasetBuilder *)self options];
    datasetSource = [options datasetSource];
    v5 = [datasetSource isEqualToString:@"CoreDuet"];

    options2 = [(PHADatasetBuilder *)self options];
    options4 = options2;
    if (v5)
    {
      positivesDatasetName = [options2 positivesDatasetName];
      options3 = [(PHADatasetBuilder *)self options];
      positivesSubsetName = [options3 positivesSubsetName];
      v11 = [(PHADatasetBuilder *)self _localIdentifiersForCoreDuetDatasetName:positivesDatasetName subsetName:positivesSubsetName];
      positiveLocalIdentifiers = self->_positiveLocalIdentifiers;
      self->_positiveLocalIdentifiers = v11;
    }

    else
    {
      datasetSource2 = [options2 datasetSource];
      v14 = [datasetSource2 isEqualToString:@"Biome"];

      if (!v14)
      {
        goto LABEL_7;
      }

      options4 = [(PHADatasetBuilder *)self options];
      positivesDatasetName = [options4 positivesDatasetName];
      options3 = [(PHADatasetBuilder *)self options];
      positivesSubsetName = [options3 positivesSubsetName];
      positiveLocalIdentifiers = [(PHADatasetBuilder *)self options];
      positivesDatasetType = [positiveLocalIdentifiers positivesDatasetType];
      v16 = [(PHADatasetBuilder *)self readLocalIdentifiersFromBiomeStream:positivesDatasetName subsetName:positivesSubsetName type:positivesDatasetType];
      v17 = self->_positiveLocalIdentifiers;
      self->_positiveLocalIdentifiers = v16;
    }
  }

LABEL_7:
  v18 = self->_positiveLocalIdentifiers;

  return v18;
}

- (PHADatasetBuilder)initWithDatasetOptions:(id)options
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = PHADatasetBuilder;
  v6 = [(PHADatasetBuilder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, options);
    positiveLocalIdentifiers = v7->_positiveLocalIdentifiers;
    v7->_positiveLocalIdentifiers = 0;

    negativeLocalIdentifiers = v7->_negativeLocalIdentifiers;
    v7->_negativeLocalIdentifiers = 0;

    v10 = objc_alloc_init(PHACoreDuetDatasetStorage);
    datasetStore = v7->_datasetStore;
    v7->_datasetStore = v10;
  }

  return v7;
}

+ (id)labelVectorForLabelPolicy:(int64_t)policy label:(id)label numberOfClasses:(unint64_t)classes
{
  v15[1] = *MEMORY[0x277D85DE8];
  labelCopy = label;
  v8 = labelCopy;
  if (policy == 1)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:classes];
    v10 = classes - 1;
    if (classes != 1)
    {
      v11 = 0;
      do
      {
        v12 = [MEMORY[0x277CCABB0] numberWithInt:0];
        [v9 insertObject:v12 atIndex:v11];

        ++v11;
      }

      while (v10 != v11);
    }

    v13 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [v9 insertObject:v13 atIndex:{objc_msgSend(v8, "intValue")}];
  }

  else if (policy)
  {
    v9 = 0;
  }

  else
  {
    v15[0] = labelCopy;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  return v9;
}

+ (id)labelVectorsForLabelPolicy:(int64_t)policy
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (policy == 1)
  {
    v10[0] = @"positive";
    v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_2844CCAF8];
    v10[1] = @"negative";
    v11[0] = v3;
    v4 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_2844CCB10];
    v11[1] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v11;
    v7 = v10;
    goto LABEL_5;
  }

  if (!policy)
  {
    v12[0] = @"positive";
    v3 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_2844CCAC8];
    v12[1] = @"negative";
    v13[0] = v3;
    v4 = [objc_alloc(MEMORY[0x277D22C40]) initWithArray:&unk_2844CCAE0];
    v13[1] = v4;
    v5 = MEMORY[0x277CBEAC0];
    v6 = v13;
    v7 = v12;
LABEL_5:
    v8 = [v5 dictionaryWithObjects:v6 forKeys:v7 count:2];

    goto LABEL_7;
  }

  v8 = MEMORY[0x277CBEC10];
LABEL_7:

  return v8;
}

+ (id)_randomIndicesWithUpperBound:(unint64_t)bound count:(unint64_t)count
{
  if (bound)
  {
    boundCopy = bound;
    if (bound <= count)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, bound}];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
      if (count)
      {
        v7 = 0;
        do
        {
          v8 = arc4random_uniform(boundCopy);
          if ([v6 containsIndex:v8])
          {
            do
            {
              v8 = arc4random_uniform(boundCopy);
            }

            while (([v6 containsIndex:v8] & 1) != 0);
          }

          [v6 addIndex:v8];
          ++v7;
        }

        while (v7 != count);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end