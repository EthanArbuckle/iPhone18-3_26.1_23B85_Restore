@interface PHAPrivateFederatedLearningTransformersDecoder
- (PHAPrivateFederatedLearningTransformersDecoder)init;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message;
- (id)instanceForTransformerConfig:(id)config error:(id *)error;
- (id)instancesForTransformerConfigList:(id)list error:(id *)error;
- (id)transformersForFeatureExtractorsFromDictionary:(id)dictionary error:(id *)error;
@end

@implementation PHAPrivateFederatedLearningTransformersDecoder

- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningTransformersDecoder" code:code userInfo:v8];

  return v9;
}

- (id)instanceForTransformerConfig:(id)config error:(id *)error
{
  configCopy = config;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [configCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      transformerNameToClass = [(PHAPrivateFederatedLearningTransformersDecoder *)self transformerNameToClass];
      v9 = [transformerNameToClass objectForKeyedSubscript:v7];

      if (v9)
      {
        v10 = [configCopy objectForKeyedSubscript:@"params"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 instanceWithParameters:v10 error:error];
        }

        else if (error)
        {
          [(PHAPrivateFederatedLearningTransformersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid transformers format: transformer parameters is not an array."];
          *error = v11 = 0;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_18;
      }

      if (error)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Transformer not supported: %@", v7];
        *error = [(PHAPrivateFederatedLearningTransformersDecoder *)self _generateErrorWithErrorCode:0 errorMessage:v12];
      }
    }

    else if (error)
    {
      [(PHAPrivateFederatedLearningTransformersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid transformers format: transformer name is not a string."];
      *error = v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v11 = 0;
    goto LABEL_18;
  }

  if (error)
  {
    [(PHAPrivateFederatedLearningTransformersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid transformers format: transformer configuration is not dictionary."];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)instancesForTransformerConfigList:(id)list error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  listCopy = list;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = listCopy;
    v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [(PHAPrivateFederatedLearningTransformersDecoder *)self instanceForTransformerConfig:*(*(&v17 + 1) + 8 * i) error:error, v17];
          if (!v13)
          {

            v15 = 0;
            goto LABEL_14;
          }

          v14 = v13;
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = v7;
LABEL_14:
  }

  else if (error)
  {
    [(PHAPrivateFederatedLearningTransformersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid transformers format: value for transformer name is not an array."];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)transformersForFeatureExtractorsFromDictionary:(id)dictionary error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(MEMORY[0x277D3B8F0]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = dictionaryCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v8 objectForKeyedSubscript:{v13, v19}];
        v15 = [(PHAPrivateFederatedLearningTransformersDecoder *)self instancesForTransformerConfigList:v14 error:error];
        if (!v15)
        {

          v17 = 0;
          goto LABEL_11;
        }

        v16 = v15;
        [v7 addFeatureTransformers:v15 forFeatureExtractorName:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v17 = v7;
LABEL_11:

  return v17;
}

- (PHAPrivateFederatedLearningTransformersDecoder)init
{
  v14[6] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = PHAPrivateFederatedLearningTransformersDecoder;
  v2 = [(PHAPrivateFederatedLearningTransformersDecoder *)&v12 init];
  if (v2)
  {
    name = [MEMORY[0x277D3B8E0] name];
    v13[0] = name;
    v14[0] = objc_opt_class();
    name2 = [MEMORY[0x277D3B8E8] name];
    v13[1] = name2;
    v14[1] = objc_opt_class();
    name3 = [MEMORY[0x277D3B8D0] name];
    v13[2] = name3;
    v14[2] = objc_opt_class();
    name4 = [MEMORY[0x277D3B8C0] name];
    v13[3] = name4;
    v14[3] = objc_opt_class();
    name5 = [MEMORY[0x277D3B8C8] name];
    v13[4] = name5;
    v14[4] = objc_opt_class();
    name6 = [MEMORY[0x277D3B8D8] name];
    v13[5] = name6;
    v14[5] = objc_opt_class();
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:6];
    transformerNameToClass = v2->_transformerNameToClass;
    v2->_transformerNameToClass = v9;
  }

  return v2;
}

@end