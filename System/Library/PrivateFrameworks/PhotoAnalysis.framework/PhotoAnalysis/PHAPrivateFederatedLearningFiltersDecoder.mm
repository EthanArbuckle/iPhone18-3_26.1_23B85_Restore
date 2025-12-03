@interface PHAPrivateFederatedLearningFiltersDecoder
- (BOOL)validateFiltersForDatasetName:(id)name error:(id *)error;
- (PHAPrivateFederatedLearningFiltersDecoder)initWithFingeprintVersionString:(id)string;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message;
- (id)featureExtractorFromName:(id)name error:(id *)error;
- (id)featureValidatorForFilterConfig:(id)config featureExtractor:(id)extractor featureValidatorType:(int64_t)type featureExtractorType:(int64_t)extractorType error:(id *)error;
- (id)featureValidatorsForFilterConfigList:(id)list featureExtractor:(id)extractor featureValidatorType:(int64_t)type featureExtractorType:(int64_t)extractorType error:(id *)error;
- (id)filtersByDatasetNameFromDictionary:(id)dictionary error:(id *)error;
- (id)filtersFromDictionary:(id)dictionary error:(id *)error;
- (int64_t)featureExtractorTypeForFeatureExtractorName:(id)name;
- (int64_t)featureValidatorTypeForFeatureExtractorName:(id)name;
@end

@implementation PHAPrivateFederatedLearningFiltersDecoder

- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningFiltersDecoder" code:code userInfo:v8];

  return v9;
}

- (BOOL)validateFiltersForDatasetName:(id)name error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  nameCopy = name;
  v25 = [nameCopy countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v25)
  {
    errorCopy = error;
    v7 = *v33;
    v27 = nameCopy;
    selfCopy = self;
    v23 = *v33;
    do
    {
      v8 = 0;
      do
      {
        if (*v33 != v7)
        {
          objc_enumerationMutation(nameCopy);
        }

        v26 = v8;
        v9 = *(*(&v32 + 1) + 8 * v8);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v10 = [nameCopy objectForKeyedSubscript:{v9, selfCopy}];
        v11 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = 0;
          v14 = *v29;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v29 != v14)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v28 + 1) + 8 * i);
              featureName = [v16 featureName];
              if ([featureName isEqualToString:@"AssetPropertiesFilter"])
              {
                v18 = 1;
              }

              else
              {
                featureName2 = [v16 featureName];
                v18 = [featureName2 isEqualToString:@"AssetInternalPropertiesFilter"];
              }

              if ((v18 & v13) == 1)
              {
                if (errorCopy)
                {
                  *errorCopy = [(PHAPrivateFederatedLearningFiltersDecoder *)selfCopy _generateErrorWithErrorCode:4 errorMessage:@"Invalid filters: setting multiple asset properties filters for the same dataset is not allowed."];
                }

                v20 = 0;
                nameCopy = v27;
                goto LABEL_24;
              }

              v13 |= v18;
            }

            v12 = [v10 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v8 = v26 + 1;
        nameCopy = v27;
        v7 = v23;
      }

      while (v26 + 1 != v25);
      v20 = 1;
      v25 = [v27 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v25);
  }

  else
  {
    v20 = 1;
  }

LABEL_24:

  return v20;
}

- (id)featureExtractorFromName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [nameCopy stringByReplacingOccurrencesOfString:@"PhotoLibraryAverage-" withString:&stru_2844B1BF0];
  assetFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self assetFeatureExtractorNameToClass];
  v9 = [assetFeatureExtractorNameToClass objectForKeyedSubscript:v7];

  graphFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self graphFeatureExtractorNameToClass];
  v11 = [graphFeatureExtractorNameToClass objectForKeyedSubscript:v7];

  facesFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self facesFeatureExtractorNameToClass];
  v13 = [facesFeatureExtractorNameToClass objectForKeyedSubscript:v7];

  assetPhotoLibraryFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self assetPhotoLibraryFeatureExtractorNameToClass];
  v15 = [assetPhotoLibraryFeatureExtractorNameToClass objectForKeyedSubscript:v7];

  if (v9)
  {
    v16 = v9;
LABEL_3:
    featureExtractor = [v16 featureExtractor];
LABEL_6:
    v18 = featureExtractor;
    goto LABEL_7;
  }

  if (v11)
  {
    featureExtractor = [v11 featureExtractorWithError:error];
    goto LABEL_6;
  }

  if (v13)
  {
    v16 = v13;
    goto LABEL_3;
  }

  if (v15)
  {
    v16 = v15;
    goto LABEL_3;
  }

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid filters format: feature extractor name %@ is not valid.", nameCopy];
  if (error)
  {
    *error = [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:0 errorMessage:nameCopy];
  }

  v18 = 0;
LABEL_7:

  return v18;
}

- (int64_t)featureExtractorTypeForFeatureExtractorName:(id)name
{
  v4 = [name stringByReplacingOccurrencesOfString:@"PhotoLibraryAverage-" withString:&stru_2844B1BF0];
  assetFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self assetFeatureExtractorNameToClass];
  v6 = [assetFeatureExtractorNameToClass objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = 1;
  }

  else
  {
    graphFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self graphFeatureExtractorNameToClass];
    v9 = [graphFeatureExtractorNameToClass objectForKeyedSubscript:v4];

    if (v9)
    {
      v7 = 2;
    }

    else
    {
      facesFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self facesFeatureExtractorNameToClass];
      v11 = [facesFeatureExtractorNameToClass objectForKeyedSubscript:v4];

      if (v11)
      {
        v7 = 3;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  return v7;
}

- (int64_t)featureValidatorTypeForFeatureExtractorName:(id)name
{
  nameCopy = name;
  if ([nameCopy containsString:@"PhotoLibraryAverage-"])
  {
    v5 = 6;
  }

  else
  {
    assetPhotoLibraryFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self assetPhotoLibraryFeatureExtractorNameToClass];
    v7 = [assetPhotoLibraryFeatureExtractorNameToClass objectForKeyedSubscript:nameCopy];

    if (v7)
    {
      v5 = 5;
    }

    else
    {
      v8 = MEMORY[0x277D3B908];
      fingerprintVersionString = [(PHAPrivateFederatedLearningFiltersDecoder *)self fingerprintVersionString];
      v10 = [v8 fingerprintVersionForName:fingerprintVersionString];

      if ([MEMORY[0x277D3B908] isMomentFingerprintVersion:v10] & 1) != 0 || (objc_msgSend(MEMORY[0x277D3B908], "isMemoryFingerprintVersion:", v10))
      {
        v5 = 4;
      }

      else
      {
        assetFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self assetFeatureExtractorNameToClass];
        v13 = [assetFeatureExtractorNameToClass objectForKeyedSubscript:nameCopy];

        if (v13)
        {
          v5 = 1;
        }

        else
        {
          graphFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self graphFeatureExtractorNameToClass];
          v15 = [graphFeatureExtractorNameToClass objectForKeyedSubscript:nameCopy];

          if (v15)
          {
            v5 = 2;
          }

          else
          {
            facesFeatureExtractorNameToClass = [(PHAPrivateFederatedLearningFiltersDecoder *)self facesFeatureExtractorNameToClass];
            v17 = [facesFeatureExtractorNameToClass objectForKeyedSubscript:nameCopy];

            if (v17)
            {
              v5 = 3;
            }

            else
            {
              v5 = 0;
            }
          }
        }
      }
    }
  }

  return v5;
}

- (id)featureValidatorForFilterConfig:(id)config featureExtractor:(id)extractor featureValidatorType:(int64_t)type featureExtractorType:(int64_t)extractorType error:(id *)error
{
  configCopy = config;
  extractorCopy = extractor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = [configCopy objectForKeyedSubscript:@"featureName"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filter config format: feature name is not a string."];
        *error = self = 0;
      }

      else
      {
        self = 0;
      }

      goto LABEL_34;
    }

    v15 = [configCopy objectForKeyedSubscript:@"predicate"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      if (error)
      {
        [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filter config format: predicate is not a string."];
        *error = self = 0;
      }

      else
      {
        self = 0;
      }

      goto LABEL_33;
    }

    v16 = [MEMORY[0x277CCAC30] predicateWithFormat:v15];
    if (type <= 2)
    {
      switch(type)
      {
        case 0:
          if (error)
          {
            [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:3 errorMessage:@"Unknown feature validator type is unsupported"];
            *error = self = 0;
          }

          else
          {
            self = 0;
          }

          break;
        case 1:
          v18 = MEMORY[0x277D3B8F8];
          goto LABEL_30;
        case 2:
          v18 = MEMORY[0x277D3B9B0];
          goto LABEL_30;
      }
    }

    else
    {
      if (type <= 4)
      {
        if (type != 3)
        {
          v17 = MEMORY[0x277D3B610];
LABEL_24:
          v19 = [[v17 alloc] initWithPredicate:v16 featureExtractor:extractorCopy featureExtractorType:extractorType featureName:v14];
LABEL_31:
          self = v19;
          goto LABEL_32;
        }

        v18 = MEMORY[0x277D3B6C0];
LABEL_30:
        v19 = [[v18 alloc] initWithPredicate:v16 featureExtractor:extractorCopy featureName:v14];
        goto LABEL_31;
      }

      if (type == 5)
      {
        v18 = MEMORY[0x277D3B628];
        goto LABEL_30;
      }

      if (type == 6)
      {
        v17 = MEMORY[0x277D3BB48];
        goto LABEL_24;
      }
    }

LABEL_32:

LABEL_33:
LABEL_34:

    goto LABEL_35;
  }

  if (error)
  {
    [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filter config format: filter configuration is not dictionary."];
    *error = self = 0;
  }

  else
  {
    self = 0;
  }

LABEL_35:

  return self;
}

- (id)featureValidatorsForFilterConfigList:(id)list featureExtractor:(id)extractor featureValidatorType:(int64_t)type featureExtractorType:(int64_t)extractorType error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  listCopy = list;
  extractorCopy = extractor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v23 = listCopy;
    obj = listCopy;
    v15 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = [(PHAPrivateFederatedLearningFiltersDecoder *)self featureValidatorForFilterConfig:*(*(&v25 + 1) + 8 * i) featureExtractor:extractorCopy featureValidatorType:type featureExtractorType:extractorType error:error, v23];
          if (!v19)
          {

            v21 = 0;
            goto LABEL_14;
          }

          v20 = v19;
          [v14 addObject:v19];
        }

        v16 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v21 = v14;
LABEL_14:

    listCopy = v23;
  }

  else if (error)
  {
    [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filters format: value for filter config is not an array."];
    *error = v21 = 0;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (id)filtersFromDictionary:(id)dictionary error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = dictionaryCopy;
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v22 = dictionaryCopy;
      v23 = *v25;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v23)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v24 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              *error = [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filters format: value for feature extractor name is not a string."];
            }

            goto LABEL_19;
          }

          v13 = [(PHAPrivateFederatedLearningFiltersDecoder *)self featureExtractorFromName:v12 error:error];
          v14 = [(PHAPrivateFederatedLearningFiltersDecoder *)self featureValidatorTypeForFeatureExtractorName:v12];
          v15 = [(PHAPrivateFederatedLearningFiltersDecoder *)self featureExtractorTypeForFeatureExtractorName:v12];
          if (!v13)
          {
            goto LABEL_19;
          }

          v16 = v15;
          v17 = [v8 objectForKeyedSubscript:v12];
          v18 = [(PHAPrivateFederatedLearningFiltersDecoder *)self featureValidatorsForFilterConfigList:v17 featureExtractor:v13 featureValidatorType:v14 featureExtractorType:v16 error:error];
          if (!v18)
          {

LABEL_19:
            v20 = 0;
            dictionaryCopy = v22;
            goto LABEL_20;
          }

          v19 = v18;
          [v7 addObjectsFromArray:v18];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
        dictionaryCopy = v22;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v20 = v7;
LABEL_20:
  }

  else if (error)
  {
    [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filters format: value for feature extractor config is not a dictionary."];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)filtersByDatasetNameFromDictionary:(id)dictionary error:(id *)error
{
  v30[2] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v29[0] = @"positive";
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v29[1] = @"negative";
  v30[0] = v6;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = dictionaryCopy;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v12 = *v25;
  errorCopy = error;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        if (error)
        {
          *errorCopy = [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid filters format: value for dataset name is not a string."];
        }

        goto LABEL_22;
      }

      if (([(__CFString *)v15 isEqualToString:@"all"]& 1) == 0 && ([(__CFString *)v15 isEqualToString:@"positive"]& 1) == 0 && ([(__CFString *)v15 isEqualToString:@"negative"]& 1) == 0)
      {
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"Dataset name %@ is not a supported.", v15];
        if (error)
        {
          *error = [(PHAPrivateFederatedLearningFiltersDecoder *)self _generateErrorWithErrorCode:2 errorMessage:v21];
        }

LABEL_22:
        goto LABEL_23;
      }

      v16 = [v9 objectForKeyedSubscript:v15];
      v17 = [(PHAPrivateFederatedLearningFiltersDecoder *)self filtersFromDictionary:v16 error:error];

      if (!v17)
      {
        goto LABEL_22;
      }

      if ([(__CFString *)v15 isEqualToString:@"all"])
      {
        v18 = [v8 objectForKeyedSubscript:@"positive"];
        [v18 addObjectsFromArray:v17];

        v15 = @"negative";
      }

      v19 = [v8 objectForKeyedSubscript:v15];
      [v19 addObjectsFromArray:v17];

      error = errorCopy;
    }

    v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_15:

  if ([(PHAPrivateFederatedLearningFiltersDecoder *)self validateFiltersForDatasetName:v8 error:error])
  {
    v20 = v8;
  }

  else
  {
LABEL_23:
    v20 = 0;
  }

  return v20;
}

- (PHAPrivateFederatedLearningFiltersDecoder)initWithFingeprintVersionString:(id)string
{
  v25[55] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v17.receiver = self;
  v17.super_class = PHAPrivateFederatedLearningFiltersDecoder;
  v6 = [(PHAPrivateFederatedLearningFiltersDecoder *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fingerprintVersionString, string);
    v24[0] = *MEMORY[0x277D3BD98];
    v25[0] = objc_opt_class();
    v24[1] = *MEMORY[0x277D3BDF8];
    v25[1] = objc_opt_class();
    v24[2] = *MEMORY[0x277D3BCE0];
    v25[2] = objc_opt_class();
    v24[3] = *MEMORY[0x277D3BCE8];
    v25[3] = objc_opt_class();
    v24[4] = *MEMORY[0x277D3BCF8];
    v25[4] = objc_opt_class();
    v24[5] = *MEMORY[0x277D3BD08];
    v25[5] = objc_opt_class();
    v24[6] = *MEMORY[0x277D3BC78];
    v25[6] = objc_opt_class();
    v24[7] = *MEMORY[0x277D3BE28];
    v25[7] = objc_opt_class();
    v24[8] = *MEMORY[0x277D3BCD8];
    v25[8] = objc_opt_class();
    v24[9] = *MEMORY[0x277D3BCC8];
    v25[9] = objc_opt_class();
    v24[10] = *MEMORY[0x277D3BD68];
    v25[10] = objc_opt_class();
    v24[11] = *MEMORY[0x277D3BD40];
    v25[11] = objc_opt_class();
    v24[12] = *MEMORY[0x277D3BCF0];
    v25[12] = objc_opt_class();
    v24[13] = *MEMORY[0x277D3BD48];
    v25[13] = objc_opt_class();
    v24[14] = *MEMORY[0x277D3BD70];
    v25[14] = objc_opt_class();
    v24[15] = *MEMORY[0x277D3BDA8];
    v25[15] = objc_opt_class();
    v24[16] = *MEMORY[0x277D3BE00];
    v25[16] = objc_opt_class();
    v24[17] = *MEMORY[0x277D3BE30];
    v25[17] = objc_opt_class();
    v24[18] = *MEMORY[0x277D3BCD0];
    v25[18] = objc_opt_class();
    v24[19] = *MEMORY[0x277D3BE20];
    v25[19] = objc_opt_class();
    v24[20] = *MEMORY[0x277D3BD30];
    v25[20] = objc_opt_class();
    v24[21] = *MEMORY[0x277D3BC80];
    v25[21] = objc_opt_class();
    v24[22] = *MEMORY[0x277D3BDC0];
    v25[22] = objc_opt_class();
    v24[23] = *MEMORY[0x277D3BE40];
    v25[23] = objc_opt_class();
    v24[24] = *MEMORY[0x277D3BE38];
    v25[24] = objc_opt_class();
    v24[25] = *MEMORY[0x277D3BE48];
    v25[25] = objc_opt_class();
    v24[26] = *MEMORY[0x277D3BE08];
    v25[26] = objc_opt_class();
    v24[27] = *MEMORY[0x277D3BD38];
    v25[27] = objc_opt_class();
    v24[28] = *MEMORY[0x277D3BDE0];
    v25[28] = objc_opt_class();
    v24[29] = *MEMORY[0x277D3BD78];
    v25[29] = objc_opt_class();
    v24[30] = *MEMORY[0x277D3BDE8];
    v25[30] = objc_opt_class();
    v24[31] = *MEMORY[0x277D3BDC8];
    v25[31] = objc_opt_class();
    v24[32] = *MEMORY[0x277D3BD50];
    v25[32] = objc_opt_class();
    v24[33] = *MEMORY[0x277D3BDD0];
    v25[33] = objc_opt_class();
    v24[34] = *MEMORY[0x277D3BDD8];
    v25[34] = objc_opt_class();
    v24[35] = *MEMORY[0x277D3BD90];
    v25[35] = objc_opt_class();
    v24[36] = *MEMORY[0x277D3BDB8];
    v25[36] = objc_opt_class();
    v24[37] = *MEMORY[0x277D3BD58];
    v25[37] = objc_opt_class();
    v24[38] = *MEMORY[0x277D3BD60];
    v25[38] = objc_opt_class();
    v24[39] = *MEMORY[0x277D3BDB0];
    v25[39] = objc_opt_class();
    v24[40] = *MEMORY[0x277D3BD88];
    v25[40] = objc_opt_class();
    v24[41] = *MEMORY[0x277D3BCB0];
    v25[41] = objc_opt_class();
    v24[42] = *MEMORY[0x277D3BCA8];
    v25[42] = objc_opt_class();
    v24[43] = *MEMORY[0x277D3BCA0];
    v25[43] = objc_opt_class();
    v24[44] = *MEMORY[0x277D3BC88];
    v25[44] = objc_opt_class();
    v24[45] = *MEMORY[0x277D3BCC0];
    v25[45] = objc_opt_class();
    v24[46] = *MEMORY[0x277D3BCB8];
    v25[46] = objc_opt_class();
    v24[47] = *MEMORY[0x277D3BC90];
    v25[47] = objc_opt_class();
    v24[48] = *MEMORY[0x277D3BC98];
    v25[48] = objc_opt_class();
    v24[49] = *MEMORY[0x277D3BE10];
    v25[49] = objc_opt_class();
    v24[50] = *MEMORY[0x277D3BD80];
    v25[50] = objc_opt_class();
    v24[51] = *MEMORY[0x277D3BE18];
    v25[51] = objc_opt_class();
    v24[52] = *MEMORY[0x277D3BDF0];
    v25[52] = objc_opt_class();
    v24[53] = @"AssetPropertiesFilter";
    v25[53] = objc_opt_class();
    v24[54] = @"AssetInternalPropertiesFilter";
    v25[54] = objc_opt_class();
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:55];
    assetFeatureExtractorNameToClass = v7->_assetFeatureExtractorNameToClass;
    v7->_assetFeatureExtractorNameToClass = v8;

    v22[0] = @"Meaning";
    v23[0] = objc_opt_class();
    v22[1] = @"InvariantFamily";
    v23[1] = objc_opt_class();
    v22[2] = @"InvariantCoworker";
    v23[2] = objc_opt_class();
    v22[3] = @"InvariantPartner";
    v23[3] = objc_opt_class();
    v22[4] = @"PublicEventCategory";
    v23[4] = objc_opt_class();
    v22[5] = @"BusinessCategory";
    v23[5] = objc_opt_class();
    v22[6] = @"InvariantPet";
    v23[6] = objc_opt_class();
    v22[7] = @"InvariantBaby";
    v23[7] = objc_opt_class();
    v22[8] = @"Scene";
    v23[8] = objc_opt_class();
    v22[9] = @"MyHome";
    v23[9] = objc_opt_class();
    v22[10] = @"MyWork";
    v23[10] = objc_opt_class();
    v22[11] = @"Mobility";
    v23[11] = objc_opt_class();
    v22[12] = @"PartOfDay";
    v23[12] = objc_opt_class();
    v22[13] = @"Season";
    v23[13] = objc_opt_class();
    v22[14] = @"Weekend";
    v23[14] = objc_opt_class();
    v22[15] = @"Weekday";
    v23[15] = objc_opt_class();
    v22[16] = @"POI";
    v23[16] = objc_opt_class();
    v22[17] = @"ROI";
    v23[17] = objc_opt_class();
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:18];
    graphFeatureExtractorNameToClass = v7->_graphFeatureExtractorNameToClass;
    v7->_graphFeatureExtractorNameToClass = v10;

    v20[0] = *MEMORY[0x277D3BD20];
    v21[0] = objc_opt_class();
    v20[1] = *MEMORY[0x277D3BD18];
    v21[1] = objc_opt_class();
    v20[2] = *MEMORY[0x277D3BD28];
    v21[2] = objc_opt_class();
    v20[3] = *MEMORY[0x277D3BD10];
    v21[3] = objc_opt_class();
    v20[4] = *MEMORY[0x277D3BD00];
    v21[4] = objc_opt_class();
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:5];
    facesFeatureExtractorNameToClass = v7->_facesFeatureExtractorNameToClass;
    v7->_facesFeatureExtractorNameToClass = v12;

    v18 = *MEMORY[0x277D3BDA0];
    v19 = objc_opt_class();
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    assetPhotoLibraryFeatureExtractorNameToClass = v7->_assetPhotoLibraryFeatureExtractorNameToClass;
    v7->_assetPhotoLibraryFeatureExtractorNameToClass = v14;
  }

  return v7;
}

@end