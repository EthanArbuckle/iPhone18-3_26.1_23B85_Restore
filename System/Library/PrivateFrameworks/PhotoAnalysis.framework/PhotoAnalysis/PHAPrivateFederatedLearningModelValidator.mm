@interface PHAPrivateFederatedLearningModelValidator
- (BOOL)_isFingerprintVersionSupported:(int64_t)a3;
- (BOOL)isValidWithFingerprintVersionName:(id)a3 modelInputName:(id)a4 modelOutputName:(id)a5 labelName:(id)a6 labelPolicyName:(id)a7 lossName:(id)a8 layersToTrain:(id)a9 error:(id *)a10;
- (PHAPrivateFederatedLearningModelValidator)initWithEspressoModelURL:(id)a3 espressoModelShapeURL:(id)a4;
- (id)_dictionaryForJSONFileURL:(id)a3 error:(id *)a4;
- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4 underlyingError:(id)a5;
- (id)_layerConfigForLayerName:(id)a3 modelConfig:(id)a4 error:(id *)a5;
- (id)_layerConfigForName:(id)a3 modelConfig:(id)a4 attributeName:(id)a5 useEquality:(BOOL)a6 error:(id *)a7;
- (id)_sizeForLayerName:(id)a3 modelShape:(id)a4 error:(id *)a5;
- (int64_t)_featureVectorSizeForFingerprintVersionName:(id)a3 error:(id *)a4;
@end

@implementation PHAPrivateFederatedLearningModelValidator

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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningModelValidator" code:a3 userInfo:v10];

  return v11;
}

- (BOOL)_isFingerprintVersionSupported:(int64_t)a3
{
  if ((a3 - 201) <= 0x1B && ((1 << (a3 + 55)) & 0xF003F79) != 0)
  {
    return 0;
  }

  if (a3 <= 0x19 && ((1 << a3) & 0x200F6F3) != 0)
  {
    return 0;
  }

  result = 1;
  if ((a3 - 101) <= 0x18 && ((1 << (a3 - 101)) & 0x1003F29) != 0)
  {
    return 0;
  }

  return result;
}

- (id)_sizeForLayerName:(id)a3 modelShape:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [a4 objectForKeyedSubscript:@"layer_shapes"];
  v10 = [v9 objectForKeyedSubscript:v8];

  if (v10)
  {
    v11 = [v10 objectForKeyedSubscript:@"k"];
    if ([v11 integerValue] <= 0)
    {
      if (a5)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Layer size not found or invalid (%@) for layer name '%@'", v11, v8];
        *a5 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:9 errorMessage:v13 underlyingError:0];
      }

      v12 = 0;
    }

    else
    {
      v11 = v11;
      v12 = v11;
    }

    goto LABEL_9;
  }

  if (a5)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shape not found for layer name '%@'", v8];
    [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:8 errorMessage:v11 underlyingError:0];
    *a5 = v12 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_layerConfigForName:(id)a3 modelConfig:(id)a4 attributeName:(id)a5 useEquality:(BOOL)a6 error:(id *)a7
{
  v8 = a6;
  v37 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = [a4 objectForKeyedSubscript:@"layers"];
  v15 = v14;
  if (v14)
  {
    v29 = self;
    v30 = a7;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v31 = v14;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [v21 objectForKeyedSubscript:v13];
          v23 = v22;
          if (v8)
          {
            v24 = [v22 isEqualToString:v12];
          }

          else
          {
            v24 = [v22 containsString:v12];
          }

          v25 = v24;

          if (v25)
          {
            v27 = v21;

            goto LABEL_17;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    if (v30)
    {
      v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find a layer with attribute '%@' == '%@'", v13, v12];
      *v30 = [(PHAPrivateFederatedLearningModelValidator *)v29 _generateErrorWithErrorCode:7 errorMessage:v26 underlyingError:0];
    }

    v27 = 0;
LABEL_17:
    v15 = v31;
  }

  else if (a7)
  {
    [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:6 errorMessage:@"Model config does not have layers key" underlyingError:0];
    *a7 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)_layerConfigForLayerName:(id)a3 modelConfig:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForName:v8 modelConfig:v9 attributeName:@"name" useEquality:1 error:a5];
  if (!v10)
  {
    v11 = [v8 stringByReplacingOccurrencesOfString:@"/" withString:@"\\/"];
    v10 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForName:v11 modelConfig:v9 attributeName:@"name" useEquality:1 error:a5];
  }

  return v10;
}

- (id)_dictionaryForJSONFileURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v6];
    if (v7)
    {
      v14 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v14];
      v9 = v14;
      if (v8)
      {
        v10 = v8;
      }

      else if (a4)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error parsing file %@", v6];
        *a4 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:5 errorMessage:v12 underlyingError:v9];
      }
    }

    else
    {
      if (a4)
      {
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading file %@", v6];
        *a4 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:4 errorMessage:v11 underlyingError:0];
      }

      v8 = 0;
    }
  }

  else if (a4)
  {
    [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:3 errorMessage:@"JSON file url is nil." underlyingError:0];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_featureVectorSizeForFingerprintVersionName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x277D3B908] fingerprintVersionForName:v6];
  if ([(PHAPrivateFederatedLearningModelValidator *)self _isFingerprintVersionSupported:v7])
  {
    v8 = MEMORY[0x277D3B908];
    v9 = objc_alloc_init(MEMORY[0x277D82BB8]);
    v19 = 0;
    v10 = [v8 featureExtractorForFingerprintVersion:v7 withGraph:v9 withTransformers:0 error:&v19];
    v11 = v19;

    if (v10)
    {
      v12 = [v10 featureNames];
      v13 = [v12 count];

      if (v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      if (a4)
      {
        v14 = @"Feature vector has size 0 for fingerprint version %lu";
        v15 = 2;
LABEL_11:
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v7];
        *a4 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:v15 errorMessage:v17 underlyingError:v11];
      }
    }

    else if (a4)
    {
      v14 = @"Error getting feature extractor for fingerprint version %lu";
      v15 = 1;
      goto LABEL_11;
    }

    v13 = 0;
    goto LABEL_13;
  }

  if (a4)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version %@ is not supported by PFL. If you really want to use it, please disable validation.", v6];
    *a4 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:15 errorMessage:v16 underlyingError:0];
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)isValidWithFingerprintVersionName:(id)a3 modelInputName:(id)a4 modelOutputName:(id)a5 labelName:(id)a6 labelPolicyName:(id)a7 lossName:(id)a8 layersToTrain:(id)a9 error:(id *)a10
{
  v79 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = [(PHAPrivateFederatedLearningModelValidator *)self _featureVectorSizeForFingerprintVersionName:a3 error:a10];
  if (v22)
  {
    v23 = v22;
    v73 = v18;
    v24 = [(PHAPrivateFederatedLearningModelValidator *)self espressoModelURL];
    v25 = [(PHAPrivateFederatedLearningModelValidator *)self _dictionaryForJSONFileURL:v24 error:a10];

    if (!v25)
    {
      v46 = 0;
      v18 = v73;
LABEL_75:

      goto LABEL_76;
    }

    v70 = v21;
    v71 = v16;
    v26 = v20;
    v27 = v17;
    v28 = v19;
    v29 = [(PHAPrivateFederatedLearningModelValidator *)self espressoModelShapeURL];
    v30 = [(PHAPrivateFederatedLearningModelValidator *)self _dictionaryForJSONFileURL:v29 error:a10];

    v72 = v30;
    if (!v30)
    {
      v46 = 0;
      v18 = v73;
      v19 = v28;
      v17 = v27;
      v20 = v26;
      v21 = v70;
LABEL_74:

      goto LABEL_75;
    }

    v31 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForModelInputName:v16 modelConfig:v25 error:a10];
    if (!v31)
    {
      v46 = 0;
      v18 = v73;
      v19 = v28;
      v17 = v27;
      v20 = v26;
      v21 = v70;
LABEL_73:

      goto LABEL_74;
    }

    v69 = v31;
    v32 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:v16 modelShape:v30 error:a10];
    if (v32)
    {
      v68 = v32;
      if ([v32 integerValue] == v23)
      {
        v33 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForModelOutputName:v27 modelConfig:v25 error:a10];
        v34 = v33;
        v19 = v28;
        if (!v33)
        {
          v46 = 0;
          v18 = v73;
          v17 = v27;
          v20 = v26;
          v21 = v70;
LABEL_70:

          goto LABEL_71;
        }

        v35 = [v33 objectForKeyedSubscript:@"attributes"];
        v36 = [v35 objectForKeyedSubscript:@"is_output"];

        v60 = v36;
        if ([v36 integerValue] != 1)
        {
          v17 = v27;
          if (a10)
          {
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output layer is not set as an output of the model (%@)", v36];
            *a10 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:11 errorMessage:v48 underlyingError:0];
          }

          v46 = 0;
          v18 = v73;
          v20 = v26;
          v21 = v70;
          v16 = v71;
          goto LABEL_69;
        }

        v17 = v27;
        v37 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:v27 modelShape:v72 error:a10];
        if (!v37)
        {
          v46 = 0;
          v18 = v73;
          v20 = v26;
          v21 = v70;
          v16 = v71;
LABEL_68:

LABEL_69:
          goto LABEL_70;
        }

        v59 = v37;
        v20 = v26;
        v38 = [v26 isEqualToString:@"mse"];
        v21 = v70;
        v16 = v71;
        if (v38 & 1) != 0 || ([v20 isEqualToString:@"cross_entropy"])
        {
LABEL_12:
          v58 = v34;
          v76 = 0u;
          v77 = 0u;
          v74 = 0u;
          v75 = 0u;
          obj = v70;
          v65 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
          if (v65)
          {
            v62 = *v75;
            while (2)
            {
              for (i = 0; i != v65; i = i + 1)
              {
                if (*v75 != v62)
                {
                  objc_enumerationMutation(obj);
                }

                v40 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForLayerName:*(*(&v74 + 1) + 8 * i) modelConfig:v25 error:a10];

                if (!v40)
                {

                  v46 = 0;
                  v18 = v73;
                  goto LABEL_42;
                }
              }

              v65 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
              if (v65)
              {
                continue;
              }

              break;
            }
          }

          v18 = v73;
          v41 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForLabelName:v73 modelConfig:v25 error:0];
          if (!v41)
          {
            v46 = 1;
            v34 = v58;
LABEL_66:

            goto LABEL_67;
          }

          v66 = v41;
          v42 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:v73 modelShape:v72 error:a10];
          v43 = v42;
          if (v42)
          {
            v63 = v42;
            v44 = [PHAPrivateFederatedLearningRecipeOptions labelPolicyForLabelPolicyName:v19];
            if (v44 == 1)
            {
              v34 = v58;
              if ([v63 integerValue] != 2)
              {
                if (a10)
                {
                  v45 = @"One-hot label policy requires label size to be 2 (%@)";
                  goto LABEL_62;
                }

                goto LABEL_63;
              }

LABEL_55:
              v46 = 1;
LABEL_64:
              v43 = v63;
              goto LABEL_65;
            }

            v34 = v58;
            v43 = v63;
            if (!v44)
            {
              if ([v63 integerValue] != 1)
              {
                if (a10)
                {
                  v45 = @"Indexed label policy requires label size to be 1 (%@)";
LABEL_62:
                  v56 = [MEMORY[0x277CCACA8] stringWithFormat:v45, v63];
                  *a10 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:14 errorMessage:v56 underlyingError:0];

                  v43 = v63;
                  v46 = 0;
                  v18 = v73;
                  goto LABEL_65;
                }

LABEL_63:
                v46 = 0;
                goto LABEL_64;
              }

              goto LABEL_55;
            }

            v46 = 1;
          }

          else
          {
            v46 = 0;
            v34 = v58;
          }

LABEL_65:

          v41 = v66;
          goto LABEL_66;
        }

        v49 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForModelOutputName:v20 modelConfig:v25 error:a10];
        if (v49)
        {
          v64 = v49;
          v50 = [v49 objectForKeyedSubscript:@"attributes"];
          v67 = [v50 objectForKeyedSubscript:@"is_output"];

          v51 = v67;
          if ([v67 integerValue] == 1)
          {
            v58 = v34;
            v52 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:v20 modelShape:v72 error:a10];
            v53 = v52;
            v18 = v73;
            if (v52)
            {
              if ([v52 integerValue] == 1)
              {

                v34 = v58;
                goto LABEL_12;
              }

              if (a10)
              {
                v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loss size (%@) is different than 1", v53];
                *a10 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:12 errorMessage:v55 underlyingError:0];

                v18 = v73;
              }
            }

            v46 = 0;
LABEL_42:
            v34 = v58;
            goto LABEL_67;
          }

          if (a10)
          {
            v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loss layer is not set as an output of the model (%@)", v67];
            *a10 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:13 errorMessage:v54 underlyingError:0];

            v51 = v67;
          }
        }

        v46 = 0;
        v18 = v73;
LABEL_67:
        v37 = v59;
        goto LABEL_68;
      }

      v19 = v28;
      if (!a10)
      {
        v46 = 0;
        v18 = v73;
        v17 = v27;
        v20 = v26;
        v21 = v70;
LABEL_71:
        v32 = v68;
        goto LABEL_72;
      }

      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Input size (%@) does not match feature vector size (%lu)", v68, v23];
      *a10 = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:10 errorMessage:v47 underlyingError:0];

      v32 = v68;
      v46 = 0;
      v18 = v73;
    }

    else
    {
      v46 = 0;
      v18 = v73;
      v19 = v28;
    }

    v17 = v27;
    v20 = v26;
    v21 = v70;
LABEL_72:

    v31 = v69;
    goto LABEL_73;
  }

  v46 = 0;
LABEL_76:

  return v46;
}

- (PHAPrivateFederatedLearningModelValidator)initWithEspressoModelURL:(id)a3 espressoModelShapeURL:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningModelValidator;
  v9 = [(PHAPrivateFederatedLearningModelValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_espressoModelURL, a3);
    objc_storeStrong(&v10->_espressoModelShapeURL, a4);
  }

  return v10;
}

@end