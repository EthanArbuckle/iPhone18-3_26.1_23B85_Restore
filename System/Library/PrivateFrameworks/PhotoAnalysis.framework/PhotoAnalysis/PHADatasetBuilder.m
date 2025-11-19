@interface PHADatasetBuilder
+ (id)_randomIndicesWithUpperBound:(unint64_t)a3 count:(unint64_t)a4;
+ (id)labelVectorForLabelPolicy:(int64_t)a3 label:(id)a4 numberOfClasses:(unint64_t)a5;
+ (id)labelVectorsForLabelPolicy:(int64_t)a3;
- (BOOL)_isFeatureNameForAssetPredicateWithFeatureName:(id)a3;
- (NSArray)negativeLocalIdentifiers;
- (NSArray)positiveLocalIdentifiers;
- (PHADatasetBuilder)initWithDatasetOptions:(id)a3;
- (id)_assetPropertiesPredicateForKeywordFromFeatureExtractorFilters:(id)a3;
- (id)_currentFetchOptionPropertySet;
- (id)_datasetBuilderHelperForBiomeStream:(id)a3 error:(id *)a4;
- (id)_datasetBuilderHelperForLocalIdentifiers:(id)a3 positiveFingerprints:(id)a4 negativeFingerprints:(id)a5 error:(id *)a6;
- (id)_datasetForLocalIdentifiers:(id)a3 positiveFingerprints:(id)a4 negativeFingerprints:(id)a5 error:(id *)a6;
- (id)_featureProviderForFingerprintVectors:(id)a3 labelVectors:(id)a4 batchSize:(unint64_t)a5 error:(id *)a6;
- (id)_fetchObjectsForFingerprintVersion:(int64_t)a3 options:(id)a4 localIdentifiers:(id)a5 error:(id *)a6;
- (id)_filterDataSamples:(id)a3 filters:(id)a4 numberOfSamples:(id)a5 error:(id *)a6;
- (id)_fingerprintsForDatasetName:(id)a3 localIdentifiers:(id)a4 labelName:(id)a5 numberOfSamples:(id)a6 filters:(id)a7 error:(id *)a8;
- (id)_fingerprintsForObjects:(id)a3 fingerprintVersion:(int64_t)a4 error:(id *)a5;
- (id)_fingerprintsForPhotosStyleWithDataLabelArray:(id)a3 error:(id *)a4;
- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5;
- (id)_localIdentifiersForCoreDuetDatasetName:(id)a3 subsetName:(id)a4;
- (id)_localIdentifiersToExcludeForLabel:(id)a3;
- (id)_mergeLocalIdentifiersFromPositiveLocalIdentifiers:(id)a3 negativeLocalIdentifiers:(id)a4 numberOfPositiveSamples:(id)a5 numberOfNegativeSamples:(id)a6 error:(id *)a7;
- (id)_numberOfSamplesPerClassWithError:(id *)a3;
- (id)_performAugmentationsOnLabeledSamples:(id)a3 error:(id *)a4;
- (id)_randomSamplesOfCount:(unint64_t)a3 filterPredicateForKeyword:(id)a4 labelName:(id)a5 error:(id *)a6;
- (id)_samplesOfCount:(unint64_t)a3 fromLocalIdentifiers:(id)a4 filterPredicateForKeyword:(id)a5 error:(id *)a6;
- (id)_trainingDataWithDataLabelArray:(id)a3 fingerprints:(id)a4 error:(id *)a5;
- (id)dataLabelArrayForPhotosStyleWithError:(id *)a3;
- (id)datasetBuilderHelperForBinaryTrainingWithError:(id *)a3;
- (id)datasetBuilderHelperForPhotosStyleWithError:(id *)a3;
- (id)datasetForEvaluationForLabel:(id)a3 error:(id *)a4;
- (id)datasetWithError:(id *)a3;
- (id)readLocalIdentifiersFromBiomeStream:(id)a3 subsetName:(id)a4 type:(id)a5;
- (id)trainingDataBatchWithBiomeStream:(id)a3 error:(id *)a4;
- (int64_t)_validatePHObject:(id)a3 withFeatureValidator:(id)a4 error:(id *)a5;
- (unint64_t)_minAvailableNumberOfSamples;
@end

@implementation PHADatasetBuilder

- (id)_featureProviderForFingerprintVectors:(id)a3 labelVectors:(id)a4 batchSize:(unint64_t)a5 error:(id *)a6
{
  v51[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  if ([v11 count] && objc_msgSend(v10, "count"))
  {
    v12 = [(PHADatasetBuilder *)self options];
    v13 = [v12 labelPolicyString];
    v14 = [v13 isEqualToString:@"one-hot"];

    v15 = 0x277CCA000uLL;
    if (v14)
    {
      v16 = MEMORY[0x277CBFF48];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
      v51[0] = v17;
      v18 = MEMORY[0x277CCABB0];
      v19 = [(PHADatasetBuilder *)self options];
      v20 = [v18 numberWithUnsignedInteger:{objc_msgSend(v19, "labelSize")}];
      v51[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      v22 = [v16 doubleMultiArrayWithShape:v21 valueArray:v11 error:a6];

      v15 = 0x277CCA000;
    }

    else
    {
      v25 = [(PHADatasetBuilder *)self options];
      v26 = [v25 labelPolicyString];
      v27 = [v26 isEqualToString:@"indexed"];

      if (!v27)
      {
        v46 = 0;
LABEL_12:
        v29 = MEMORY[0x277CBFF48];
        v30 = [*(v15 + 2992) numberWithUnsignedInteger:a5];
        v49[0] = v30;
        v31 = *(v15 + 2992);
        v32 = [(PHADatasetBuilder *)self options];
        v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v32, "featureSize")}];
        v49[1] = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
        v35 = [v29 doubleMultiArrayWithShape:v34 valueArray:v10 error:a6];

        v36 = v46;
        if (v46)
        {
          if (v35)
          {
            v45 = objc_alloc(MEMORY[0x277CBFED0]);
            v37 = [(PHADatasetBuilder *)self options];
            v38 = [v37 modelInputName];
            v47[0] = v38;
            v48[0] = v35;
            v39 = [(PHADatasetBuilder *)self options];
            v40 = [v39 modelOutputName];
            v47[1] = v40;
            v48[1] = v46;
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:2];
            v24 = [v45 initWithDictionary:v41 error:a6];

            v36 = v46;
LABEL_20:

LABEL_22:
            goto LABEL_23;
          }

          if (a6)
          {
            v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to create MLMultiArray vector for feature"];
            v42 = self;
            v43 = 15;
            goto LABEL_19;
          }
        }

        else if (a6)
        {
          v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to create MLMultiArray vector for label"];
          v42 = self;
          v43 = 14;
LABEL_19:
          [(PHADatasetBuilder *)v42 _generateErrorWithErrorCode:v43 errorMessage:v37 underlyingError:0];
          *a6 = v24 = 0;
          goto LABEL_20;
        }

        v24 = 0;
        goto LABEL_22;
      }

      v28 = MEMORY[0x277CBFF48];
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a5];
      v50[0] = v17;
      v50[1] = &unk_2844CC900;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
      v22 = [v28 doubleMultiArrayWithShape:v19 valueArray:v11 error:a6];
    }

    v46 = v22;

    goto LABEL_12;
  }

  if (a6)
  {
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty label or feature vectors"];
    *a6 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:13 errorMessage:v23 underlyingError:0];
  }

  v24 = 0;
LABEL_23:

  return v24;
}

- (id)_trainingDataWithDataLabelArray:(id)a3 fingerprints:(id)a4 error:(id *)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v56 = a4;
  v57 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v8 = v7;
  v61 = [v8 countByEnumeratingWithState:&v64 objects:v68 count:16];
  v62 = self;
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
      v12 = [(PHADatasetBuilder *)self options];
      v13 = [v12 biomeInputName];
      v14 = [v10 objectForKey:v13];
      v15 = [v11 uuidFromLocalIdentifier:v14];

      self = v62;
      v16 = [MEMORY[0x277CD97A8] localIdentifierWithUUID:v15];
      v17 = [(PHADatasetBuilder *)v62 options];
      v18 = [v17 biomeLabelName];
      v19 = [v10 objectForKey:v18];

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
        v22 = [v21 unsignedIntegerValue];
        v23 = [(PHADatasetBuilder *)v62 options];
        v24 = [v23 numberOfClasses];

        if (v22 <= v24)
        {
          v25 = [v57 objectForKey:v21];
          if (!v25)
          {
            v26 = [(PHADatasetBuilder *)v62 options];
            v27 = [v26 labelPolicy];
            v28 = [(PHADatasetBuilder *)v62 options];
            v25 = +[PHADatasetBuilder labelVectorForLabelPolicy:label:numberOfClasses:](PHADatasetBuilder, "labelVectorForLabelPolicy:label:numberOfClasses:", v27, v21, [v28 numberOfClasses]);

            v8 = v55;
            [v57 setObject:v25 forKeyedSubscript:v21];
          }

          v29 = [v56 objectForKey:v16];
          v30 = [v29 floatArray];
          v31 = [v30 array];

          v59 = v31;
          if ([v25 count] && objc_msgSend(v31, "count"))
          {
            v32 = [(PHADatasetBuilder *)v62 options];
            v33 = [v32 labelPolicyString];
            if ([v33 isEqualToString:@"one-hot"])
            {
              v51 = [v25 count];
              v34 = [(PHADatasetBuilder *)v62 options];
              v35 = [v34 labelSize];

              v8 = v55;
              if (v51 != v35)
              {
                if (a5)
                {
                  v36 = MEMORY[0x277CCACA8];
                  v37 = [(PHADatasetBuilder *)v62 options];
                  v8 = v55;
                  v38 = [v36 stringWithFormat:@"Wrong label size %ld, expected: %ld", objc_msgSend(v37, "labelSize"), objc_msgSend(v25, "count")];
                  *a5 = [(PHADatasetBuilder *)v62 _generateErrorWithErrorCode:17 errorMessage:v38 underlyingError:0];

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

          v39 = [(PHADatasetBuilder *)v62 options];
          v40 = v58 % [v39 batchSize];

          if (!v40)
          {
            v41 = [(PHADatasetBuilder *)v62 options];
            v37 = -[PHADatasetBuilder _featureProviderForFingerprintVectors:labelVectors:batchSize:error:](v62, "_featureProviderForFingerprintVectors:labelVectors:batchSize:error:", v53, v54, [v41 batchSize], a5);

            if (v37)
            {
              [v50 addObject:v37];
              [v53 removeAllObjects];
              [v54 removeAllObjects];
            }

            v8 = v55;
LABEL_25:
          }

LABEL_26:

          self = v62;
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

  v42 = [(PHADatasetBuilder *)v62 options];
  v43 = v58 % [v42 batchSize];

  v63 = 0;
  v44 = [(PHADatasetBuilder *)v62 _featureProviderForFingerprintVectors:v53 labelVectors:v54 batchSize:v43 error:&v63];
  v45 = v63;
  if (!v45)
  {
    [v50 addObject:v44];

    goto LABEL_38;
  }

  v46 = v45;
  if (a5)
  {
    v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fail to create batch data"];
    *a5 = [(PHADatasetBuilder *)v62 _generateErrorWithErrorCode:18 errorMessage:v47 underlyingError:v46];
  }

  v48 = 0;
LABEL_39:

  return v48;
}

- (id)_datasetBuilderHelperForBiomeStream:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = objc_alloc_init(PHADatasetBuilderHelper);
  v8 = [PHABiomeUtilities biomeStreamFor:v6];

  if (v8 == 9)
  {
    v9 = [(PHADatasetBuilder *)self datasetBuilderHelperForPhotosStyleWithError:a4];
LABEL_5:
    v10 = v9;

    v7 = v10;
    goto LABEL_6;
  }

  if ([PHABiomeUtilities supportsForBinaryTrainingWithStream:v8])
  {
    v9 = [(PHADatasetBuilder *)self datasetBuilderHelperForBinaryTrainingWithError:a4];
    goto LABEL_5;
  }

LABEL_6:
  v11 = v7;

  return v7;
}

- (id)trainingDataBatchWithBiomeStream:(id)a3 error:(id *)a4
{
  v18 = 0;
  v6 = [(PHADatasetBuilder *)self _datasetBuilderHelperForBiomeStream:a3 error:&v18];
  v7 = v18;
  if (v6)
  {
    v8 = [v6 dataLabelArray];
    v9 = [v6 fingerprints];
    v17 = 0;
    v10 = [(PHADatasetBuilder *)self _trainingDataWithDataLabelArray:v8 fingerprints:v9 error:&v17];
    v11 = v17;

    v12 = [v10 array];
    v13 = [v12 count];

    if (v13)
    {
      v14 = v10;
    }

    else
    {
      if (a4)
      {
        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty training data"];
        *a4 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:16 errorMessage:v15 underlyingError:v11];
      }

      v14 = 0;
    }

    goto LABEL_10;
  }

  if (a4)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty training data"];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:16 errorMessage:v10 underlyingError:v7];
    *a4 = v14 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (id)_datasetBuilderHelperForLocalIdentifiers:(id)a3 positiveFingerprints:(id)a4 negativeFingerprints:(id)a5 error:(id *)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v32 = a5;
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v11 = v8;
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
        v14 = [v9 objectForKeyedSubscript:v13];

        if (v14)
        {
          v15 = [(PHADatasetBuilder *)self options];
          v16 = [v15 biomeInputName];
          v43[0] = v16;
          v44[0] = v13;
          v17 = [(PHADatasetBuilder *)self options];
          v18 = [v17 biomeLabelName];
          v43[1] = v18;
          v44[1] = @"1";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];

          [v10 addObject:v19];
          v20 = v9;
        }

        else
        {
          if (!v32 || ([v32 objectForKeyedSubscript:v13], v21 = objc_claimAutoreleasedReturnValue(), v21, !v21))
          {
            if (a6)
            {
              *a6 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:@"No fingerprint for local identifier" underlyingError:0];
            }

            v28 = 0;
            v27 = v33;
            goto LABEL_19;
          }

          v22 = [(PHADatasetBuilder *)self options];
          v23 = [v22 biomeInputName];
          v41[0] = v23;
          v42[0] = v13;
          v24 = [(PHADatasetBuilder *)self options];
          v25 = [v24 biomeLabelName];
          v41[1] = v25;
          v42[1] = @"0";
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

          [v10 addObject:v19];
          v20 = v32;
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

- (id)datasetBuilderHelperForBinaryTrainingWithError:(id *)a3
{
  v5 = [(PHADatasetBuilder *)self _numberOfSamplesPerClassWithError:?];
  v6 = v5;
  if (!v5)
  {
    v36 = 0;
    goto LABEL_25;
  }

  v44 = a3;
  v7 = [v5 objectForKeyedSubscript:@"positive"];
  v45 = v6;
  v8 = [v6 objectForKeyedSubscript:@"negative"];
  [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
  v9 = [(PHADatasetBuilder *)self options];
  v10 = [v9 positivesDatasetName];
  v11 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
  v12 = [(PHADatasetBuilder *)self options];
  v13 = [v12 filtersByDatasetName];
  v14 = [v13 objectForKeyedSubscript:@"positive"];
  v50 = 0;
  v46 = v7;
  v15 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:v10 localIdentifiers:v11 labelName:@"positive" numberOfSamples:v7 filters:v14 error:&v50];
  v16 = v50;

  if ([v15 count])
  {
    v42 = v15;
    v17 = [(PHADatasetBuilder *)self options];
    v18 = [v17 negativesDatasetName];
    v19 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v20 = [(PHADatasetBuilder *)self options];
    [v20 filtersByDatasetName];
    v22 = v21 = v8;
    v23 = [v22 objectForKeyedSubscript:@"negative"];
    v49 = v16;
    v43 = v21;
    v24 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:v18 localIdentifiers:v19 labelName:@"negative" numberOfSamples:v21 filters:v23 error:&v49];
    v25 = v49;

    if (![v24 count])
    {
      v8 = v43;
      v38 = v46;
      if (!v44)
      {
        v36 = 0;
        v16 = v25;
        v15 = v42;
LABEL_23:

        goto LABEL_24;
      }

      v39 = MEMORY[0x277CCACA8];
      v34 = [(PHADatasetBuilder *)self options];
      v33 = [v34 negativesDatasetName];
      v40 = [v39 stringWithFormat:@"No data for negative datasetName %@", v33];
      *v44 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v40 underlyingError:v25];

      v36 = 0;
      v16 = v25;
      v15 = v42;
LABEL_22:

      goto LABEL_23;
    }

    v26 = objc_alloc(MEMORY[0x277CBEB98]);
    v27 = [v42 allKeys];
    v28 = [v26 initWithArray:v27];
    v29 = objc_alloc(MEMORY[0x277CBEB98]);
    [v24 allKeys];
    v31 = v30 = v24;
    v32 = [v29 initWithArray:v31];
    v48 = v25;
    v33 = [(PHADatasetBuilder *)self _mergeLocalIdentifiersFromPositiveLocalIdentifiers:v28 negativeLocalIdentifiers:v32 numberOfPositiveSamples:v46 numberOfNegativeSamples:v43 error:&v48];
    v16 = v48;

    if ([v33 count])
    {
      v47 = v16;
      v34 = [(PHADatasetBuilder *)self _datasetBuilderHelperForLocalIdentifiers:v33 positiveFingerprints:v42 negativeFingerprints:v30 error:&v47];
      v35 = v47;

      v15 = v42;
      v24 = v30;
      if (!v34 || v35)
      {
        v38 = v46;
        if (v44)
        {
          [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:@"No fingerprint for local identifier" underlyingError:v35];
          *v44 = v36 = 0;
        }

        else
        {
          v36 = 0;
        }

        v16 = v35;
        v8 = v43;
        goto LABEL_22;
      }

      v34 = v34;
      v16 = 0;
      v36 = v34;
      v8 = v43;
    }

    else
    {
      v24 = v30;
      if (v44)
      {
        [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:@"No data after rebalancing dataset" underlyingError:v16];
        v34 = 0;
        *v44 = v36 = 0;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v15 = v42;
      v8 = v43;
    }

LABEL_21:
    v38 = v46;
    goto LABEL_22;
  }

  if (v44)
  {
    v37 = MEMORY[0x277CCACA8];
    v24 = [(PHADatasetBuilder *)self options];
    v34 = [v24 positivesDatasetName];
    v33 = [v37 stringWithFormat:@"No data for positive datasetName %@", v34];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v33 underlyingError:v16];
    *v44 = v36 = 0;
    goto LABEL_21;
  }

  v36 = 0;
  v38 = v46;
LABEL_24:

  v6 = v45;
LABEL_25:

  return v36;
}

- (id)_fingerprintsForPhotosStyleWithDataLabelArray:(id)a3 error:(id *)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v8 = v6;
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
        v14 = [(PHADatasetBuilder *)self options];
        v15 = [v14 biomeInputName];
        v16 = [v13 objectForKeyedSubscript:v15];

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
  v18 = [(PHADatasetBuilder *)self options];
  v19 = +[PHADatasetBuilder _randomIndicesWithUpperBound:count:](PHADatasetBuilder, "_randomIndicesWithUpperBound:count:", v17, [v18 totalNumberOfSamples]);

  if (v19)
  {
    v20 = [v7 objectsAtIndexes:v19];
    [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
    v21 = [(PHADatasetBuilder *)self options];
    v22 = [v21 photoLibrary];
    v23 = [v22 librarySpecificFetchOptions];

    v24 = [(PHADatasetBuilder *)self options];
    v34 = v23;
    v35 = v20;
    v25 = a4;
    v26 = -[PHADatasetBuilder _fetchObjectsForFingerprintVersion:options:localIdentifiers:error:](self, "_fetchObjectsForFingerprintVersion:options:localIdentifiers:error:", [v24 fingerprintVersion], v23, v20, a4);

    v27 = [v26 fetchedObjects];
    v28 = [(PHADatasetBuilder *)self options];
    v36 = 0;
    v29 = -[PHADatasetBuilder _fingerprintsForObjects:fingerprintVersion:error:](self, "_fingerprintsForObjects:fingerprintVersion:error:", v27, [v28 fingerprintVersion], &v36);
    v30 = v36;

    if (v29 && [v29 count])
    {
      v31 = v29;
    }

    else
    {
      if (v25)
      {
        v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting fingerprints for Photos Style"];
        *v25 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:v32 underlyingError:v30];
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

- (id)dataLabelArrayForPhotosStyleWithError:(id *)a3
{
  v5 = [(PHADatasetBuilder *)self options];
  v6 = [v5 biomeInputName];
  v7 = [(PHADatasetBuilder *)self options];
  v8 = [v7 biomeLabelName];
  v9 = [PHABiomeUtilities readBiomeEventsForPhotoStyleWithInputName:v6 labelName:v8 error:a3];

  return v9;
}

- (id)datasetBuilderHelperForPhotosStyleWithError:(id *)a3
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
      if (a3)
      {
        v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting fingerprints"];
        *a3 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:v10 underlyingError:v8];
      }

      v9 = 0;
    }
  }

  else
  {
    if (a3)
    {
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:12 errorMessage:@"Reading from Photos.Style returns empty data" underlyingError:v6];
      *a3 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }

    v8 = v6;
  }

  return v9;
}

- (id)_localIdentifiersToExcludeForLabel:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"negative"])
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
LABEL_5:
    v8 = v6;
    v9 = [v5 setWithArray:v6];

    goto LABEL_7;
  }

  v7 = [v4 isEqualToString:@"positive"];
  v5 = MEMORY[0x277CBEB98];
  if (v7)
  {
    v6 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    goto LABEL_5;
  }

  v9 = [MEMORY[0x277CBEB98] set];
LABEL_7:

  return v9;
}

- (id)_currentFetchOptionPropertySet
{
  v3 = MEMORY[0x277D3B908];
  v4 = [(PHADatasetBuilder *)self options];
  v5 = [v3 fetchOptionPropertySetForFingerprintVersion:{objc_msgSend(v4, "fingerprintVersion")}];

  v6 = [(PHADatasetBuilder *)self options];
  v7 = [v6 filtersByDatasetName];
  v8 = [v7 objectForKeyedSubscript:@"positive"];
  if ([v8 count])
  {
  }

  else
  {
    v9 = [(PHADatasetBuilder *)self options];
    v10 = [v9 filtersByDatasetName];
    v11 = [v10 objectForKeyedSubscript:@"negative"];
    v12 = [v11 count];

    if (!v12)
    {
      v16 = v5;
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

  v16 = [v14 allObjects];

LABEL_9:

  return v16;
}

- (id)_assetPropertiesPredicateForKeywordFromFeatureExtractorFilters:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
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
        v12 = [v11 featureName];
        v13 = [(PHADatasetBuilder *)self _isFeatureNameForAssetPredicateWithFeatureName:v12];

        if (v13)
        {
          v14 = [v11 predicate];
          v15 = [v11 featureName];
          [v5 setObject:v14 forKeyedSubscript:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)_isFeatureNameForAssetPredicateWithFeatureName:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"AssetPropertiesFilter"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"AssetInternalPropertiesFilter"];
  }

  return v4;
}

- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x277CBEB38];
  v9 = a4;
  v10 = objc_alloc_init(v8);
  [v10 setObject:v9 forKey:*MEMORY[0x277CCA450]];

  if (v7)
  {
    [v10 setObject:v7 forKey:*MEMORY[0x277CCA7E8]];
  }

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHADatasetBuilder" code:a3 userInfo:v10];

  return v11;
}

- (id)_performAugmentationsOnLabeledSamples:(id)a3 error:(id *)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v23 = self;
  v6 = [(PHADatasetBuilder *)self options];
  v7 = [v6 augmenters];

  v8 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  v9 = v5;
  if (v8)
  {
    v10 = v8;
    v11 = *v27;
    v9 = v5;
LABEL_3:
    v12 = 0;
    v13 = v9;
    while (1)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v26 + 1) + 8 * v12);
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      v15 = v14;
      v25 = 0;
      v9 = [v15 labeledFloatVectorsWithLabeledFloatVectors:v5 error:&v25];
      v16 = v25;

      if (!v9)
      {
        if (a4)
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = [objc_opt_class() name];
          v21 = [v19 stringWithFormat:@"Error executing augmenter %@", v20];
          *a4 = [(PHADatasetBuilder *)v23 _generateErrorWithErrorCode:9 errorMessage:v21 underlyingError:v16];
        }

        v13 = 0;
LABEL_16:

        goto LABEL_17;
      }

      ++v12;
      v13 = v9;
      if (v10 == v12)
      {
        v10 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    if (a4)
    {
      v18 = MEMORY[0x277CCACA8];
      v15 = [objc_opt_class() name];
      v16 = [v18 stringWithFormat:@"Feature augmenter not supported: %@. Only supervised learning augmenters are currently supported.", v15];
      *a4 = [(PHADatasetBuilder *)v23 _generateErrorWithErrorCode:8 errorMessage:v16 underlyingError:0];
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

- (id)_fingerprintsForObjects:(id)a3 fingerprintVersion:(int64_t)a4 error:(id *)a5
{
  v8 = a3;
  if ([MEMORY[0x277D3B908] isAssetFingerprintVersion:a4])
  {
    v9 = [(PHADatasetBuilder *)self options];
    v10 = [v9 graphManager];
    v11 = [(PHADatasetBuilder *)self options];
    v12 = [v11 fingerprintVersion];
    v13 = [(PHADatasetBuilder *)self options];
    v14 = [v13 transformersForFeatureExtractors];
    v15 = [v10 assetFingerprintsWithVersion:v12 forAssets:v8 withTransformers:v14 error:a5];
LABEL_6:
    v17 = v15;

LABEL_7:
    goto LABEL_8;
  }

  if (([MEMORY[0x277D3B908] isMomentFingerprintVersion:a4] & 1) != 0 || objc_msgSend(MEMORY[0x277D3B908], "isMemoryFingerprintVersion:", a4))
  {
    v9 = [(PHADatasetBuilder *)self options];
    v10 = [v9 graphManager];
    v11 = [(PHADatasetBuilder *)self options];
    v16 = [v11 fingerprintVersion];
    v13 = [(PHADatasetBuilder *)self options];
    v14 = [v13 transformersForFeatureExtractors];
    v15 = [v10 assetCollectionFingerprintsWithVersion:v16 forAssetCollections:v8 withTransformers:v14 error:a5];
    goto LABEL_6;
  }

  if (a5)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported: %ld", a4];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:5 errorMessage:v9 underlyingError:0];
    *a5 = v17 = 0;
    goto LABEL_7;
  }

  v17 = 0;
LABEL_8:

  return v17;
}

- (id)_fetchObjectsForFingerprintVersion:(int64_t)a3 options:(id)a4 localIdentifiers:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if ([MEMORY[0x277D3B908] isAssetFingerprintVersion:a3])
  {
    if ([v11 count])
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithLocalIdentifiers:v11 options:v10];
    }

    else
    {
      [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v10];
    }
    v12 = ;
    goto LABEL_12;
  }

  if ([MEMORY[0x277D3B908] isMomentFingerprintVersion:a3])
  {
    v13 = [v11 count];
    v14 = MEMORY[0x277CD97B8];
    v15 = 3;
    if (v13)
    {
LABEL_7:
      v12 = [v14 fetchAssetCollectionsWithType:v15 localIdentifiers:v11 options:v10];
LABEL_12:
      a6 = v12;
      goto LABEL_13;
    }

LABEL_10:
    v12 = [v14 fetchAssetCollectionsWithType:v15 subtype:0x7FFFFFFFFFFFFFFFLL options:v10];
    goto LABEL_12;
  }

  if ([MEMORY[0x277D3B908] isMemoryFingerprintVersion:a3])
  {
    v16 = [v11 count];
    v14 = MEMORY[0x277CD97B8];
    v15 = 4;
    if (v16)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (a6)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version not supported: %ld", a3];
    *a6 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:5 errorMessage:v18 underlyingError:0];

    a6 = 0;
  }

LABEL_13:

  return a6;
}

- (id)_localIdentifiersForCoreDuetDatasetName:(id)a3 subsetName:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(PHADatasetBuilder *)self datasetStore];
  v9 = [v8 samplesForDataset:v6 subset:v7];

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

        v16 = [*(*(&v18 + 1) + 8 * i) identifier];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v10;
}

- (int64_t)_validatePHObject:(id)a3 withFeatureValidator:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [v10 featureValidatorType];
  if (v11 <= 6)
  {
    if (((1 << v11) & 0x2A) != 0)
    {
      v5 = [v10 isValidEntity:v9 error:a5];
      goto LABEL_12;
    }

    if (((1 << v11) & 0x50) != 0)
    {
      v12 = [(PHADatasetBuilder *)self options];
      v13 = [v12 graphManager];
      v14 = [(PHADatasetBuilder *)self _currentFetchOptionPropertySet];
      v5 = [v13 validatePHObject:v9 featureAggregationValidator:v10 assetFetchOptionPropertySet:v14 error:a5];

      goto LABEL_12;
    }

    if (v11 == 2)
    {
      v15 = [(PHADatasetBuilder *)self options];
      v16 = [v15 graphManager];
      v5 = [v16 validatePHObject:v9 graphRelationsFeatureValidator:v10 error:a5];

      goto LABEL_12;
    }
  }

  if (!v11)
  {
    if (a5)
    {
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:11 errorMessage:@"Unknown feature validator type is not supported." underlyingError:0];
      *a5 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

LABEL_12:

  return v5;
}

- (id)_filterDataSamples:(id)a3 filters:(id)a4 numberOfSamples:(id)a5 error:(id *)a6
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v13 = v9;
  v35 = [v13 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v35)
  {
    v14 = *v44;
    v33 = v11;
    v34 = v10;
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
      if (v17 >= [v11 integerValue])
      {
        break;
      }

      v36 = v15;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v18 = v10;
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
            v25 = [v24 featureName];
            v26 = [(PHADatasetBuilder *)self _isFeatureNameForAssetPredicateWithFeatureName:v25];

            if (!v26)
            {
              v27 = [(PHADatasetBuilder *)self _validatePHObject:v16 withFeatureValidator:v24 error:a6];
              if (v27 == 2)
              {
                v22 = 2;
              }

              else if (!v27)
              {

                v13 = v32;
                v29 = 0;
                v11 = v33;
                v10 = v34;
                v12 = v37;
                goto LABEL_26;
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v39 objects:v47 count:16];
        }

        while (v20);

        v28 = v22 == 1;
        v11 = v33;
        v10 = v34;
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

- (id)_randomSamplesOfCount:(unint64_t)a3 filterPredicateForKeyword:(id)a4 labelName:(id)a5 error:(id *)a6
{
  v41[2] = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a4;
  v12 = [(PHADatasetBuilder *)self options];
  v13 = [v12 photoLibrary];
  v14 = [v13 librarySpecificFetchOptions];

  v15 = [(PHADatasetBuilder *)self _currentFetchOptionPropertySet];
  if (v15)
  {
    [v14 setFetchPropertySets:v15];
  }

  v16 = MEMORY[0x277CCAC30];
  v36 = v10;
  v17 = [(PHADatasetBuilder *)self _localIdentifiersToExcludeForLabel:v10];
  v18 = [v16 predicateWithFormat:@"NOT (uuid IN %@)", v17];

  v19 = [v11 objectForKeyedSubscript:@"AssetPropertiesFilter"];
  v20 = [v11 objectForKeyedSubscript:@"AssetInternalPropertiesFilter"];

  v35 = v20;
  if (v19)
  {
    v21 = MEMORY[0x277CCA920];
    v41[0] = v18;
    v41[1] = v19;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
    v23 = [v21 andPredicateWithSubpredicates:v22];
    [v14 setPredicate:v23];
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
    [v14 setInternalPredicate:v23];
    goto LABEL_7;
  }

  [v14 setPredicate:v18];
LABEL_8:
  v25 = [(PHADatasetBuilder *)self options];
  v26 = -[PHADatasetBuilder _fetchObjectsForFingerprintVersion:options:error:](self, "_fetchObjectsForFingerprintVersion:options:error:", [v25 fingerprintVersion], v14, a6);

  if (v26)
  {
    v27 = [v26 count];
    v28 = [PHADatasetBuilder _randomIndicesWithUpperBound:v27 count:a3];
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
      if (!a6)
      {
        v33 = 0;
        goto LABEL_16;
      }

      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough random samples(%lu), requested: (%lu)", v27, a3];
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:3 errorMessage:v32 underlyingError:0];
      *a6 = v33 = 0;
    }

LABEL_16:
    goto LABEL_17;
  }

  if (a6)
  {
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:4 errorMessage:@"Random sample query returned nil" underlyingError:0];
    *a6 = v33 = 0;
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

- (id)_samplesOfCount:(unint64_t)a3 fromLocalIdentifiers:(id)a4 filterPredicateForKeyword:(id)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a5;
  if (a3)
  {
    v12 = +[PHADatasetBuilder _randomIndicesWithUpperBound:count:](PHADatasetBuilder, "_randomIndicesWithUpperBound:count:", [v10 count], a3);
    if (v12)
    {
      v13 = [v10 objectsAtIndexes:v12];
      v14 = [(PHADatasetBuilder *)self options];
      v15 = [v14 photoLibrary];
      v16 = [v15 librarySpecificFetchOptions];

      [v16 setIncludeHiddenAssets:1];
      [v16 setIncludeTrashedAssets:1];
      v17 = [(PHADatasetBuilder *)self _currentFetchOptionPropertySet];
      if (v17)
      {
        [v16 setFetchPropertySets:v17];
      }

      v18 = [v11 objectForKeyedSubscript:@"AssetPropertiesFilter"];
      v19 = [v11 objectForKeyedSubscript:@"AssetInternalPropertiesFilter"];
      v20 = v19;
      v29 = v17;
      if (v18)
      {
        [v16 setPredicate:v18];
      }

      else if (v19)
      {
        [v16 setInternalPredicate:v19];
      }

      v22 = [(PHADatasetBuilder *)self options];
      v23 = -[PHADatasetBuilder _fetchObjectsForFingerprintVersion:options:localIdentifiers:error:](self, "_fetchObjectsForFingerprintVersion:options:localIdentifiers:error:", [v22 fingerprintVersion], v16, v13, a6);

      v24 = MEMORY[0x277CBEB98];
      [v23 fetchedObjects];
      v26 = v25 = v13;
      v21 = [v24 setWithArray:v26];

      v11 = v28;
    }

    else
    {
      v21 = 0;
    }
  }

  else if (a6)
  {
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:6 errorMessage:@"Request for zero samples from the database is not supported." underlyingError:0];
    *a6 = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)_datasetForLocalIdentifiers:(id)a3 positiveFingerprints:(id)a4 negativeFingerprints:(id)a5 error:(id *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v35 = self;
  v12 = [(PHADatasetBuilder *)self options];
  v37 = +[PHADatasetBuilder labelVectorsForLabelPolicy:](PHADatasetBuilder, "labelVectorsForLabelPolicy:", [v12 labelPolicy]);

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v9;
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
        v19 = [v10 objectForKeyedSubscript:v18];

        if (v19)
        {
          v20 = [v10 objectForKeyedSubscript:v18];
          v21 = @"positive";
        }

        else
        {
          if (!v11 || ([v11 objectForKeyedSubscript:v18], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
          {
            if (a6)
            {
              [(PHADatasetBuilder *)v35 _generateErrorWithErrorCode:1 errorMessage:@"No fingerprint for local identifier" underlyingError:0];
              *a6 = v33 = 0;
            }

            else
            {
              v33 = 0;
            }

            v27 = v13;
            goto LABEL_19;
          }

          v20 = [v11 objectForKeyedSubscript:v18];
          v21 = @"negative";
        }

        v23 = [v37 objectForKeyedSubscript:v21];
        v24 = objc_alloc(MEMORY[0x277D3BA30]);
        v25 = [v20 floatArray];
        v26 = [v24 initWithFloatVector:v25 label:v23];

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

  v27 = [(PHADatasetBuilder *)v35 _performAugmentationsOnLabeledSamples:v38 error:a6];
  if (v27)
  {
    v28 = [PHADataset alloc];
    v29 = [(PHADatasetBuilder *)v35 options];
    v30 = [v29 modelInputName];
    v31 = [(PHADatasetBuilder *)v35 options];
    v32 = [v31 labelName];
    v33 = [(PHADataset *)v28 initWithLabeledFeatureVectors:v27 inputName:v30 labelName:v32];
  }

  else
  {
    v33 = 0;
  }

LABEL_19:

  return v33;
}

- (id)_mergeLocalIdentifiersFromPositiveLocalIdentifiers:(id)a3 negativeLocalIdentifiers:(id)a4 numberOfPositiveSamples:(id)a5 numberOfNegativeSamples:(id)a6 error:(id *)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(PHADatasetBuilder *)self options];
  v17 = [v16 positivesDatasetName];
  if ([v17 isEqualToString:@"noneDataset"])
  {
  }

  else
  {
    [(PHADatasetBuilder *)self options];
    v56 = self;
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v23 = v22 = a7;
    v24 = [v23 negativesDatasetName];
    v25 = [v24 isEqualToString:@"noneDataset"];

    a7 = v22;
    v15 = v21;
    v14 = v20;
    v13 = v19;
    v12 = v18;
    self = v56;

    if (!v25)
    {
      v26 = 0;
      goto LABEL_8;
    }
  }

  if ([v12 count] || objc_msgSend(v13, "count"))
  {
    v26 = 1;
LABEL_8:
    v27 = [v14 integerValue];
    if (v27 != [v12 count] || (v28 = objc_msgSend(v15, "integerValue"), v28 != objc_msgSend(v13, "count")))
    {
      v29 = [(PHADatasetBuilder *)self options];
      v30 = [v29 datasetPolicy];

      if (v30 == 1)
      {
        if (a7)
        {
          [MEMORY[0x277CCACA8] stringWithFormat:@"Requested number of samples not met in  positives (%lu/%@) or negatives dataset (%lu/%@) for balanced strict training.", objc_msgSend(v12, "count"), v14, objc_msgSend(v13, "count"), v15];
          v51 = LABEL_34:;
          *a7 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v51 underlyingError:0];

          goto LABEL_35;
        }

        goto LABEL_35;
      }

      v31 = [(PHADatasetBuilder *)self options];
      if ([v31 datasetPolicy] == 2 && !objc_msgSend(v12, "count"))
      {
        v53 = [v13 count];

        if (!v53)
        {
          if (!a7)
          {
            goto LABEL_35;
          }

          v47 = @"No samples for positve and negative datasets.";
          v48 = self;
          v49 = 2;
          goto LABEL_28;
        }
      }

      else
      {
      }

      v32 = [(PHADatasetBuilder *)self options];
      if ([v32 datasetPolicy])
      {
        v33 = 1;
      }

      else
      {
        v33 = v26;
      }

      if ((v33 & 1) == 0)
      {
        if (![v12 count] || !objc_msgSend(v13, "count"))
        {
          if (a7)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples in positives (%lu) or negatives dataset (%lu) for balanced training.", objc_msgSend(v12, "count"), objc_msgSend(v13, "count"), v54, v55];
            goto LABEL_34;
          }

          goto LABEL_35;
        }

        v34 = [v12 count];
        v35 = [v13 count];
        if (v34 >= v35)
        {
          v34 = v35;
        }

        v36 = objc_alloc(MEMORY[0x277CBEB98]);
        v37 = [v12 allObjects];
        [v37 subarrayWithRange:{0, v34}];
        v38 = v14;
        v39 = v15;
        v41 = v40 = a7;
        v42 = [v36 initWithArray:v41];

        a7 = v40;
        v15 = v39;
        v14 = v38;

        v43 = objc_alloc(MEMORY[0x277CBEB98]);
        v44 = [v13 allObjects];
        v45 = [v44 subarrayWithRange:{0, v34}];
        v46 = [v43 initWithArray:v45];

        v13 = v46;
        v12 = v42;
      }
    }

    if (![v12 intersectsSet:v13])
    {
      v50 = [v12 setByAddingObjectsFromSet:v13];
      goto LABEL_36;
    }

    if (!a7)
    {
      goto LABEL_35;
    }

    v47 = @"Positive samples and negative samples overlap";
    v48 = self;
    v49 = 4;
LABEL_28:
    [(PHADatasetBuilder *)v48 _generateErrorWithErrorCode:v49 errorMessage:v47 underlyingError:0];
    *a7 = v50 = 0;
    goto LABEL_36;
  }

  if (a7)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples in positives (%lu) or negatives dataset (%lu) for single class training.", objc_msgSend(v12, "count"), objc_msgSend(v13, "count"), v54, v55];
    goto LABEL_34;
  }

LABEL_35:
  v50 = 0;
LABEL_36:

  return v50;
}

- (id)_fingerprintsForDatasetName:(id)a3 localIdentifiers:(id)a4 labelName:(id)a5 numberOfSamples:(id)a6 filters:(id)a7 error:(id *)a8
{
  v13 = a3;
  v14 = a4;
  v47 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [(PHADatasetBuilder *)self _assetPropertiesPredicateForKeywordFromFeatureExtractorFilters:v16];
  v46 = v14;
  if ([v15 integerValue] < 1)
  {
    v28 = 0;
LABEL_11:
    v32 = v28;
    v49 = v28;
    v33 = [(PHADatasetBuilder *)self _filterDataSamples:v17 filters:v16 numberOfSamples:v15 error:&v49];
    v28 = v49;

    if (v33)
    {
      v42 = v13;
      v44 = v18;
      v34 = [v33 allObjects];
      v35 = [(PHADatasetBuilder *)self options];
      v48 = v28;
      v36 = -[PHADatasetBuilder _fingerprintsForObjects:fingerprintVersion:error:](self, "_fingerprintsForObjects:fingerprintVersion:error:", v34, [v35 fingerprintVersion], &v48);
      v37 = v48;

      if (v36)
      {
        v38 = v36;
        v28 = v37;
        v39 = v38;
      }

      else
      {
        if (a8)
        {
          v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error extracting fingerprints for label %@", v47];
          *a8 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:1 errorMessage:v40 underlyingError:v37];
        }

        v38 = 0;
        v39 = 0;
        v28 = v37;
      }

      v13 = v42;
    }

    else
    {
      if (!a8)
      {
        v33 = 0;
        v39 = 0;
        goto LABEL_23;
      }

      v44 = v18;
      v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error filtering samples for label %@", v47];
      [(PHADatasetBuilder *)self _generateErrorWithErrorCode:10 errorMessage:v38 underlyingError:v28];
      *a8 = v39 = 0;
    }

    v18 = v44;
LABEL_23:

    v21 = v17;
    goto LABEL_24;
  }

  v43 = v16;
  v19 = v18;
  v20 = [MEMORY[0x277CBEB98] setWithArray:v14];
  v21 = [v20 allObjects];

  v22 = [v13 isEqualToString:@"randomDataset"];
  v23 = [v15 integerValue];
  v24 = [(PHADatasetBuilder *)self options];
  v25 = [v24 oversamplingRate] * v23;

  if (v22)
  {
    v51 = 0;
    v26 = &v51;
    v18 = v19;
    v27 = [(PHADatasetBuilder *)self _randomSamplesOfCount:v25 filterPredicateForKeyword:v19 labelName:v47 error:&v51];
  }

  else
  {
    v29 = [v21 count];
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
    v27 = [(PHADatasetBuilder *)self _samplesOfCount:v30 fromLocalIdentifiers:v21 filterPredicateForKeyword:v19 error:&v50];
  }

  v31 = v27;
  v28 = *v26;

  v16 = v43;
  if (v31)
  {

    v17 = v31;
    goto LABEL_11;
  }

  if (a8)
  {
    v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples for label %@ (%lu), requested: (%lu)", v47, objc_msgSend(v21, "count"), objc_msgSend(v15, "integerValue")];
    [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v33 underlyingError:v28];
    *a8 = v39 = 0;
    v17 = v21;
    goto LABEL_23;
  }

  v39 = 0;
LABEL_24:

  return v39;
}

- (unint64_t)_minAvailableNumberOfSamples
{
  v3 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v6 = [v5 count];
  }

  else
  {
    v6 = -1;
  }

  v7 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
  v8 = [v7 count];

  if (!v8)
  {
    return v6;
  }

  v9 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
  v10 = [v9 count];

  if (v10 >= v6)
  {
    return v6;
  }

  else
  {
    return v10;
  }
}

- (id)_numberOfSamplesPerClassWithError:(id *)a3
{
  v56[2] = *MEMORY[0x277D85DE8];
  v5 = [(PHADatasetBuilder *)self options];
  v6 = [v5 positivesDatasetName];
  v7 = [v6 isEqualToString:@"noneDataset"];

  v8 = [(PHADatasetBuilder *)self options];
  v9 = v8;
  if (v7)
  {
    v10 = [v8 totalNumberOfSamples];

    v11 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v12 = [v11 count];

    if (v10 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v10;
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

  v18 = [v8 negativesDatasetName];
  v19 = [v18 isEqualToString:@"noneDataset"];

  v20 = [(PHADatasetBuilder *)self options];
  v21 = v20;
  if (v19)
  {
    v22 = [v20 totalNumberOfSamples];

    v23 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v24 = [v23 count];

    if (v22 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v22;
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

  v27 = [v20 datasetPolicy];

  if (v27 > 0)
  {
    if (v27 == 1)
    {
      v44 = [(PHADatasetBuilder *)self options];
      v45 = [v44 totalNumberOfSamples] >> 1;

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

    if (v27 == 2)
    {
      v36 = [(PHADatasetBuilder *)self options];
      v37 = [v36 totalNumberOfSamples];

      v38 = [(PHADatasetBuilder *)self _minAvailableNumberOfSamples];
      if (v37 >= v38)
      {
        v39 = v38;
      }

      else
      {
        v39 = v37;
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
    if (v27 == -1)
    {
      if (a3)
      {
        [(PHADatasetBuilder *)self _generateErrorWithErrorCode:7 errorMessage:@"Unknown dataset builder policy is not supported" underlyingError:0];
        *a3 = v21 = 0;
        goto LABEL_13;
      }
    }

    else
    {
      if (v27)
      {
        goto LABEL_13;
      }

      v28 = [(PHADatasetBuilder *)self options];
      v29 = [v28 totalNumberOfSamples] >> 1;

      v30 = [(PHADatasetBuilder *)self _minAvailableNumberOfSamples];
      if (v29 >= v30)
      {
        v31 = v30;
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

      if (a3)
      {
        v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not enough samples per class (%lu)", 0];
        *a3 = [(PHADatasetBuilder *)self _generateErrorWithErrorCode:2 errorMessage:v46 underlyingError:0];
      }
    }

    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)datasetWithError:(id *)a3
{
  v5 = [(PHADatasetBuilder *)self _numberOfSamplesPerClassWithError:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"positive"];
    v35 = v6;
    [v6 objectForKeyedSubscript:@"negative"];
    v8 = v33 = a3;
    [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
    v9 = [(PHADatasetBuilder *)self options];
    v10 = [v9 positivesDatasetName];
    v11 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v12 = [(PHADatasetBuilder *)self options];
    v13 = [v12 filtersByDatasetName];
    v14 = [v13 objectForKeyedSubscript:@"positive"];
    v34 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:v10 localIdentifiers:v11 labelName:@"positive" numberOfSamples:v7 filters:v14 error:v33];

    v15 = [(PHADatasetBuilder *)self options];
    v16 = [v15 negativesDatasetName];
    v17 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v18 = [(PHADatasetBuilder *)self options];
    v19 = [v18 filtersByDatasetName];
    v20 = [v19 objectForKeyedSubscript:@"negative"];
    v36 = v8;
    v21 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:v16 localIdentifiers:v17 labelName:@"negative" numberOfSamples:v8 filters:v20 error:v33];

    v22 = 0;
    if (v21)
    {
      v23 = v7;
      v24 = v34;
      if (v34)
      {
        v25 = objc_alloc(MEMORY[0x277CBEB98]);
        v26 = [v34 allKeys];
        v27 = [v25 initWithArray:v26];
        v28 = objc_alloc(MEMORY[0x277CBEB98]);
        v29 = [v21 allKeys];
        v30 = [v28 initWithArray:v29];
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

- (id)datasetForEvaluationForLabel:(id)a3 error:(id *)a4
{
  v6 = a3;
  [MEMORY[0x277D3B908] resetPreCalculatedFeatures];
  v35 = v6;
  v34 = a4;
  if ([v6 isEqualToString:@"positive"])
  {
    v33 = [(PHADatasetBuilder *)self options];
    v7 = [v33 positivesDatasetName];
    v8 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v9 = MEMORY[0x277CCABB0];
    v10 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
    v11 = [v9 numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
    v12 = [(PHADatasetBuilder *)self options];
    v13 = [v12 filtersByDatasetName];
    v14 = [v13 objectForKeyedSubscript:@"positive"];
    v15 = v33;
    v16 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:v7 localIdentifiers:v8 labelName:@"positive" numberOfSamples:v11 filters:v14 error:a4];
  }

  else
  {
    v17 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v18 = [v17 count];

    v19 = [(PHADatasetBuilder *)self options];
    v20 = [v19 negativesDatasetName];
    v21 = [v20 isEqualToString:@"randomDataset"];

    if (v21)
    {
      v22 = [(PHADatasetBuilder *)self positiveLocalIdentifiers];
      v18 = [v22 count];
    }

    v15 = [(PHADatasetBuilder *)self options];
    v7 = [v15 negativesDatasetName];
    v8 = [(PHADatasetBuilder *)self negativeLocalIdentifiers];
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
    v11 = [(PHADatasetBuilder *)self options];
    v12 = [v11 filtersByDatasetName];
    v13 = [v12 objectForKeyedSubscript:@"negative"];
    v16 = [(PHADatasetBuilder *)self _fingerprintsForDatasetName:v7 localIdentifiers:v8 labelName:@"negative" numberOfSamples:v10 filters:v13 error:a4];
  }

  if (v16)
  {
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = [v16 allKeys];
    v25 = [v23 initWithArray:v24];

    if (v25)
    {
      v26 = v35;
      if ([v35 isEqualToString:@"positive"])
      {
        v27 = self;
        v28 = v25;
        v29 = v16;
        v30 = 0;
      }

      else
      {
        v27 = self;
        v28 = v25;
        v29 = 0;
        v30 = v16;
      }

      v31 = [(PHADatasetBuilder *)v27 _datasetForLocalIdentifiers:v28 positiveFingerprints:v29 negativeFingerprints:v30 error:v34];
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
    v3 = [(PHADatasetBuilder *)self options];
    v4 = [v3 datasetSource];
    v5 = [v4 isEqualToString:@"CoreDuet"];

    v6 = [(PHADatasetBuilder *)self options];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 negativesDatasetName];
      v9 = [(PHADatasetBuilder *)self options];
      v10 = [v9 negativesSubsetName];
      v11 = [(PHADatasetBuilder *)self _localIdentifiersForCoreDuetDatasetName:v8 subsetName:v10];
      negativeLocalIdentifiers = self->_negativeLocalIdentifiers;
      self->_negativeLocalIdentifiers = v11;
    }

    else
    {
      v13 = [v6 datasetSource];
      v14 = [v13 isEqualToString:@"Biome"];

      if (!v14)
      {
        goto LABEL_7;
      }

      v7 = [(PHADatasetBuilder *)self options];
      v8 = [v7 negativesSubsetName];
      v9 = [(PHADatasetBuilder *)self options];
      v10 = [v9 negativesSubsetName];
      negativeLocalIdentifiers = [(PHADatasetBuilder *)self options];
      v15 = [negativeLocalIdentifiers negativesDatasetType];
      v16 = [(PHADatasetBuilder *)self readLocalIdentifiersFromBiomeStream:v8 subsetName:v10 type:v15];
      v17 = self->_negativeLocalIdentifiers;
      self->_negativeLocalIdentifiers = v16;
    }
  }

LABEL_7:
  v18 = self->_negativeLocalIdentifiers;

  return v18;
}

- (id)readLocalIdentifiersFromBiomeStream:(id)a3 subsetName:(id)a4 type:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = MEMORY[0x277CBEA60];
  v10 = a3;
  v11 = objc_alloc_init(v9);
  v12 = [MEMORY[0x277D22C80] progressReporterWithProgressBlock:&__block_literal_global_2500];
  v13 = [PHABiomeUtilities biomeStreamFor:v10];

  if (v13)
  {
    v14 = [PHABiomeUtilities readUUIDsWithStream:v13 subsetName:v7 type:v8 progressReporter:v12 error:0];
    v15 = [v14 allObjects];

    v11 = v15;
  }

  v16 = v11;

  return v11;
}

- (NSArray)positiveLocalIdentifiers
{
  if (!self->_positiveLocalIdentifiers)
  {
    v3 = [(PHADatasetBuilder *)self options];
    v4 = [v3 datasetSource];
    v5 = [v4 isEqualToString:@"CoreDuet"];

    v6 = [(PHADatasetBuilder *)self options];
    v7 = v6;
    if (v5)
    {
      v8 = [v6 positivesDatasetName];
      v9 = [(PHADatasetBuilder *)self options];
      v10 = [v9 positivesSubsetName];
      v11 = [(PHADatasetBuilder *)self _localIdentifiersForCoreDuetDatasetName:v8 subsetName:v10];
      positiveLocalIdentifiers = self->_positiveLocalIdentifiers;
      self->_positiveLocalIdentifiers = v11;
    }

    else
    {
      v13 = [v6 datasetSource];
      v14 = [v13 isEqualToString:@"Biome"];

      if (!v14)
      {
        goto LABEL_7;
      }

      v7 = [(PHADatasetBuilder *)self options];
      v8 = [v7 positivesDatasetName];
      v9 = [(PHADatasetBuilder *)self options];
      v10 = [v9 positivesSubsetName];
      positiveLocalIdentifiers = [(PHADatasetBuilder *)self options];
      v15 = [positiveLocalIdentifiers positivesDatasetType];
      v16 = [(PHADatasetBuilder *)self readLocalIdentifiersFromBiomeStream:v8 subsetName:v10 type:v15];
      v17 = self->_positiveLocalIdentifiers;
      self->_positiveLocalIdentifiers = v16;
    }
  }

LABEL_7:
  v18 = self->_positiveLocalIdentifiers;

  return v18;
}

- (PHADatasetBuilder)initWithDatasetOptions:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = PHADatasetBuilder;
  v6 = [(PHADatasetBuilder *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_options, a3);
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

+ (id)labelVectorForLabelPolicy:(int64_t)a3 label:(id)a4 numberOfClasses:(unint64_t)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = v7;
  if (a3 == 1)
  {
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:a5];
    v10 = a5 - 1;
    if (a5 != 1)
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

  else if (a3)
  {
    v9 = 0;
  }

  else
  {
    v15[0] = v7;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  return v9;
}

+ (id)labelVectorsForLabelPolicy:(int64_t)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (a3 == 1)
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

  if (!a3)
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

+ (id)_randomIndicesWithUpperBound:(unint64_t)a3 count:(unint64_t)a4
{
  if (a3)
  {
    v5 = a3;
    if (a3 <= a4)
    {
      v6 = [objc_alloc(MEMORY[0x277CCAA78]) initWithIndexesInRange:{0, a3}];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x277CCAB58]);
      if (a4)
      {
        v7 = 0;
        do
        {
          v8 = arc4random_uniform(v5);
          if ([v6 containsIndex:v8])
          {
            do
            {
              v8 = arc4random_uniform(v5);
            }

            while (([v6 containsIndex:v8] & 1) != 0);
          }

          [v6 addIndex:v8];
          ++v7;
        }

        while (v7 != a4);
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