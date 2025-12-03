@interface PHAPrivateFederatedLearningAugmentersDecoder
- (PHAPrivateFederatedLearningAugmentersDecoder)init;
- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message;
- (id)augmentersFromArray:(id)array error:(id *)error;
- (id)instanceForAugmenterConfig:(id)config error:(id *)error;
@end

@implementation PHAPrivateFederatedLearningAugmentersDecoder

- (id)_generateErrorWithErrorCode:(int64_t)code errorMessage:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = message;
  v6 = MEMORY[0x277CBEAC0];
  messageCopy = message;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningAugmentersDecoder" code:code userInfo:v8];

  return v9;
}

- (id)instanceForAugmenterConfig:(id)config error:(id *)error
{
  configCopy = config;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [configCopy objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      augmenterNameToClass = [(PHAPrivateFederatedLearningAugmentersDecoder *)self augmenterNameToClass];
      v9 = [augmenterNameToClass objectForKeyedSubscript:v7];

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
          [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid augmenter format: augmenter parameters is not an array."];
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
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Augmenter not supported: %@", v7];
        *error = [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:0 errorMessage:v12];
      }
    }

    else if (error)
    {
      [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid augmenter format: augmenter name is not a string."];
      *error = v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v11 = 0;
    goto LABEL_18;
  }

  if (error)
  {
    [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid transformers format: transformer configuration is not dictionary."];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)augmentersFromArray:(id)array error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = arrayCopy;
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

        v13 = [(PHAPrivateFederatedLearningAugmentersDecoder *)self instanceForAugmenterConfig:*(*(&v17 + 1) + 8 * i) error:error, v17];
        if (!v13)
        {

          v15 = 0;
          goto LABEL_11;
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
LABEL_11:

  return v15;
}

- (PHAPrivateFederatedLearningAugmentersDecoder)init
{
  v10[2] = *MEMORY[0x277D85DE8];
  v8.receiver = self;
  v8.super_class = PHAPrivateFederatedLearningAugmentersDecoder;
  v2 = [(PHAPrivateFederatedLearningAugmentersDecoder *)&v8 init];
  if (v2)
  {
    name = [MEMORY[0x277D3B6D0] name];
    v9[0] = name;
    v10[0] = objc_opt_class();
    name2 = [MEMORY[0x277D3B6D8] name];
    v9[1] = name2;
    v10[1] = objc_opt_class();
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    augmenterNameToClass = v2->_augmenterNameToClass;
    v2->_augmenterNameToClass = v5;
  }

  return v2;
}

@end