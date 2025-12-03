@interface PHAPrivateFederatedLearningModelValidator
- (BOOL)_isFingerprintVersionSupported:(int64_t)supported;
- (BOOL)isValidWithFingerprintVersionName:(id)name modelInputName:(id)inputName modelOutputName:(id)outputName labelName:(id)labelName labelPolicyName:(id)policyName lossName:(id)lossName layersToTrain:(id)train error:(id *)self0;
- (PHAPrivateFederatedLearningModelValidator)initWithEspressoModelURL:(id)l espressoModelShapeURL:(id)rL;
- (id)_dictionaryForJSONFileURL:(id)l error:(id *)error;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message underlyingError:(id)error;
- (id)_layerConfigForLayerName:(id)name modelConfig:(id)config error:(id *)error;
- (id)_layerConfigForName:(id)name modelConfig:(id)config attributeName:(id)attributeName useEquality:(BOOL)equality error:(id *)error;
- (id)_sizeForLayerName:(id)name modelShape:(id)shape error:(id *)error;
- (int64_t)_featureVectorSizeForFingerprintVersionName:(id)name error:(id *)error;
@end

@implementation PHAPrivateFederatedLearningModelValidator

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

  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningModelValidator" code:code userInfo:v10];

  return v11;
}

- (BOOL)_isFingerprintVersionSupported:(int64_t)supported
{
  if ((supported - 201) <= 0x1B && ((1 << (supported + 55)) & 0xF003F79) != 0)
  {
    return 0;
  }

  if (supported <= 0x19 && ((1 << supported) & 0x200F6F3) != 0)
  {
    return 0;
  }

  result = 1;
  if ((supported - 101) <= 0x18 && ((1 << (supported - 101)) & 0x1003F29) != 0)
  {
    return 0;
  }

  return result;
}

- (id)_sizeForLayerName:(id)name modelShape:(id)shape error:(id *)error
{
  nameCopy = name;
  v9 = [shape objectForKeyedSubscript:@"layer_shapes"];
  v10 = [v9 objectForKeyedSubscript:nameCopy];

  if (v10)
  {
    nameCopy2 = [v10 objectForKeyedSubscript:@"k"];
    if ([nameCopy2 integerValue] <= 0)
    {
      if (error)
      {
        nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Layer size not found or invalid (%@) for layer name '%@'", nameCopy2, nameCopy];
        *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:9 errorMessage:nameCopy underlyingError:0];
      }

      v12 = 0;
    }

    else
    {
      nameCopy2 = nameCopy2;
      v12 = nameCopy2;
    }

    goto LABEL_9;
  }

  if (error)
  {
    nameCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shape not found for layer name '%@'", nameCopy];
    [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:8 errorMessage:nameCopy2 underlyingError:0];
    *error = v12 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_layerConfigForName:(id)name modelConfig:(id)config attributeName:(id)attributeName useEquality:(BOOL)equality error:(id *)error
{
  equalityCopy = equality;
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributeNameCopy = attributeName;
  v14 = [config objectForKeyedSubscript:@"layers"];
  v15 = v14;
  if (v14)
  {
    selfCopy = self;
    errorCopy = error;
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
          v22 = [v21 objectForKeyedSubscript:attributeNameCopy];
          v23 = v22;
          if (equalityCopy)
          {
            v24 = [v22 isEqualToString:nameCopy];
          }

          else
          {
            v24 = [v22 containsString:nameCopy];
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

    if (errorCopy)
    {
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to find a layer with attribute '%@' == '%@'", attributeNameCopy, nameCopy];
      *errorCopy = [(PHAPrivateFederatedLearningModelValidator *)selfCopy _generateErrorWithErrorCode:7 errorMessage:nameCopy underlyingError:0];
    }

    v27 = 0;
LABEL_17:
    v15 = v31;
  }

  else if (error)
  {
    [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:6 errorMessage:@"Model config does not have layers key" underlyingError:0];
    *error = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

- (id)_layerConfigForLayerName:(id)name modelConfig:(id)config error:(id *)error
{
  nameCopy = name;
  configCopy = config;
  v10 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForName:nameCopy modelConfig:configCopy attributeName:@"name" useEquality:1 error:error];
  if (!v10)
  {
    v11 = [nameCopy stringByReplacingOccurrencesOfString:@"/" withString:@"\\/"];
    v10 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForName:v11 modelConfig:configCopy attributeName:@"name" useEquality:1 error:error];
  }

  return v10;
}

- (id)_dictionaryForJSONFileURL:(id)l error:(id *)error
{
  lCopy = l;
  if (lCopy)
  {
    v7 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:lCopy];
    if (v7)
    {
      v14 = 0;
      v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v14];
      v9 = v14;
      if (v8)
      {
        v10 = v8;
      }

      else if (error)
      {
        lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Error parsing file %@", lCopy];
        *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:5 errorMessage:lCopy underlyingError:v9];
      }
    }

    else
    {
      if (error)
      {
        lCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error reading file %@", lCopy];
        *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:4 errorMessage:lCopy2 underlyingError:0];
      }

      v8 = 0;
    }
  }

  else if (error)
  {
    [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:3 errorMessage:@"JSON file url is nil." underlyingError:0];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_featureVectorSizeForFingerprintVersionName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = [MEMORY[0x277D3B908] fingerprintVersionForName:nameCopy];
  if ([(PHAPrivateFederatedLearningModelValidator *)self _isFingerprintVersionSupported:v7])
  {
    v8 = MEMORY[0x277D3B908];
    v9 = objc_alloc_init(MEMORY[0x277D82BB8]);
    v19 = 0;
    v10 = [v8 featureExtractorForFingerprintVersion:v7 withGraph:v9 withTransformers:0 error:&v19];
    v11 = v19;

    if (v10)
    {
      featureNames = [v10 featureNames];
      v13 = [featureNames count];

      if (v13)
      {
LABEL_13:

        goto LABEL_14;
      }

      if (error)
      {
        v14 = @"Feature vector has size 0 for fingerprint version %lu";
        v15 = 2;
LABEL_11:
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:v14, v7];
        *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:v15 errorMessage:v17 underlyingError:v11];
      }
    }

    else if (error)
    {
      v14 = @"Error getting feature extractor for fingerprint version %lu";
      v15 = 1;
      goto LABEL_11;
    }

    v13 = 0;
    goto LABEL_13;
  }

  if (error)
  {
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Fingerprint version %@ is not supported by PFL. If you really want to use it, please disable validation.", nameCopy];
    *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:15 errorMessage:nameCopy underlyingError:0];
  }

  v13 = 0;
LABEL_14:

  return v13;
}

- (BOOL)isValidWithFingerprintVersionName:(id)name modelInputName:(id)inputName modelOutputName:(id)outputName labelName:(id)labelName labelPolicyName:(id)policyName lossName:(id)lossName layersToTrain:(id)train error:(id *)self0
{
  v79 = *MEMORY[0x277D85DE8];
  inputNameCopy = inputName;
  outputNameCopy = outputName;
  labelNameCopy = labelName;
  policyNameCopy = policyName;
  lossNameCopy = lossName;
  trainCopy = train;
  v22 = [(PHAPrivateFederatedLearningModelValidator *)self _featureVectorSizeForFingerprintVersionName:name error:error];
  if (v22)
  {
    v23 = v22;
    v73 = labelNameCopy;
    espressoModelURL = [(PHAPrivateFederatedLearningModelValidator *)self espressoModelURL];
    v25 = [(PHAPrivateFederatedLearningModelValidator *)self _dictionaryForJSONFileURL:espressoModelURL error:error];

    if (!v25)
    {
      v46 = 0;
      labelNameCopy = v73;
LABEL_75:

      goto LABEL_76;
    }

    v70 = trainCopy;
    v71 = inputNameCopy;
    v26 = lossNameCopy;
    v27 = outputNameCopy;
    v28 = policyNameCopy;
    espressoModelShapeURL = [(PHAPrivateFederatedLearningModelValidator *)self espressoModelShapeURL];
    v30 = [(PHAPrivateFederatedLearningModelValidator *)self _dictionaryForJSONFileURL:espressoModelShapeURL error:error];

    v72 = v30;
    if (!v30)
    {
      v46 = 0;
      labelNameCopy = v73;
      policyNameCopy = v28;
      outputNameCopy = v27;
      lossNameCopy = v26;
      trainCopy = v70;
LABEL_74:

      goto LABEL_75;
    }

    v31 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForModelInputName:inputNameCopy modelConfig:v25 error:error];
    if (!v31)
    {
      v46 = 0;
      labelNameCopy = v73;
      policyNameCopy = v28;
      outputNameCopy = v27;
      lossNameCopy = v26;
      trainCopy = v70;
LABEL_73:

      goto LABEL_74;
    }

    v69 = v31;
    v32 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:inputNameCopy modelShape:v30 error:error];
    if (v32)
    {
      v68 = v32;
      if ([v32 integerValue] == v23)
      {
        v33 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForModelOutputName:v27 modelConfig:v25 error:error];
        v34 = v33;
        policyNameCopy = v28;
        if (!v33)
        {
          v46 = 0;
          labelNameCopy = v73;
          outputNameCopy = v27;
          lossNameCopy = v26;
          trainCopy = v70;
LABEL_70:

          goto LABEL_71;
        }

        v35 = [v33 objectForKeyedSubscript:@"attributes"];
        v36 = [v35 objectForKeyedSubscript:@"is_output"];

        v60 = v36;
        if ([v36 integerValue] != 1)
        {
          outputNameCopy = v27;
          if (error)
          {
            v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Output layer is not set as an output of the model (%@)", v36];
            *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:11 errorMessage:v48 underlyingError:0];
          }

          v46 = 0;
          labelNameCopy = v73;
          lossNameCopy = v26;
          trainCopy = v70;
          inputNameCopy = v71;
          goto LABEL_69;
        }

        outputNameCopy = v27;
        v37 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:v27 modelShape:v72 error:error];
        if (!v37)
        {
          v46 = 0;
          labelNameCopy = v73;
          lossNameCopy = v26;
          trainCopy = v70;
          inputNameCopy = v71;
LABEL_68:

LABEL_69:
          goto LABEL_70;
        }

        v59 = v37;
        lossNameCopy = v26;
        v38 = [v26 isEqualToString:@"mse"];
        trainCopy = v70;
        inputNameCopy = v71;
        if (v38 & 1) != 0 || ([lossNameCopy isEqualToString:@"cross_entropy"])
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

                v40 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForLayerName:*(*(&v74 + 1) + 8 * i) modelConfig:v25 error:error];

                if (!v40)
                {

                  v46 = 0;
                  labelNameCopy = v73;
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

          labelNameCopy = v73;
          v41 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForLabelName:v73 modelConfig:v25 error:0];
          if (!v41)
          {
            v46 = 1;
            v34 = v58;
LABEL_66:

            goto LABEL_67;
          }

          v66 = v41;
          v42 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:v73 modelShape:v72 error:error];
          v43 = v42;
          if (v42)
          {
            v63 = v42;
            v44 = [PHAPrivateFederatedLearningRecipeOptions labelPolicyForLabelPolicyName:policyNameCopy];
            if (v44 == 1)
            {
              v34 = v58;
              if ([v63 integerValue] != 2)
              {
                if (error)
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
                if (error)
                {
                  v45 = @"Indexed label policy requires label size to be 1 (%@)";
LABEL_62:
                  v56 = [MEMORY[0x277CCACA8] stringWithFormat:v45, v63];
                  *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:14 errorMessage:v56 underlyingError:0];

                  v43 = v63;
                  v46 = 0;
                  labelNameCopy = v73;
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

        v49 = [(PHAPrivateFederatedLearningModelValidator *)self _layerConfigForModelOutputName:lossNameCopy modelConfig:v25 error:error];
        if (v49)
        {
          v64 = v49;
          v50 = [v49 objectForKeyedSubscript:@"attributes"];
          v67 = [v50 objectForKeyedSubscript:@"is_output"];

          v51 = v67;
          if ([v67 integerValue] == 1)
          {
            v58 = v34;
            v52 = [(PHAPrivateFederatedLearningModelValidator *)self _sizeForLayerName:lossNameCopy modelShape:v72 error:error];
            v53 = v52;
            labelNameCopy = v73;
            if (v52)
            {
              if ([v52 integerValue] == 1)
              {

                v34 = v58;
                goto LABEL_12;
              }

              if (error)
              {
                v55 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loss size (%@) is different than 1", v53];
                *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:12 errorMessage:v55 underlyingError:0];

                labelNameCopy = v73;
              }
            }

            v46 = 0;
LABEL_42:
            v34 = v58;
            goto LABEL_67;
          }

          if (error)
          {
            v54 = [MEMORY[0x277CCACA8] stringWithFormat:@"Loss layer is not set as an output of the model (%@)", v67];
            *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:13 errorMessage:v54 underlyingError:0];

            v51 = v67;
          }
        }

        v46 = 0;
        labelNameCopy = v73;
LABEL_67:
        v37 = v59;
        goto LABEL_68;
      }

      policyNameCopy = v28;
      if (!error)
      {
        v46 = 0;
        labelNameCopy = v73;
        outputNameCopy = v27;
        lossNameCopy = v26;
        trainCopy = v70;
LABEL_71:
        v32 = v68;
        goto LABEL_72;
      }

      v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Input size (%@) does not match feature vector size (%lu)", v68, v23];
      *error = [(PHAPrivateFederatedLearningModelValidator *)self _generateErrorWithErrorCode:10 errorMessage:v47 underlyingError:0];

      v32 = v68;
      v46 = 0;
      labelNameCopy = v73;
    }

    else
    {
      v46 = 0;
      labelNameCopy = v73;
      policyNameCopy = v28;
    }

    outputNameCopy = v27;
    lossNameCopy = v26;
    trainCopy = v70;
LABEL_72:

    v31 = v69;
    goto LABEL_73;
  }

  v46 = 0;
LABEL_76:

  return v46;
}

- (PHAPrivateFederatedLearningModelValidator)initWithEspressoModelURL:(id)l espressoModelShapeURL:(id)rL
{
  lCopy = l;
  rLCopy = rL;
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningModelValidator;
  v9 = [(PHAPrivateFederatedLearningModelValidator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_espressoModelURL, l);
    objc_storeStrong(&v10->_espressoModelShapeURL, rL);
  }

  return v10;
}

@end