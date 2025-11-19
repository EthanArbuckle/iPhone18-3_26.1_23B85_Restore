@interface PHAPrivateFederatedLearningAugmentersDecoder
- (PHAPrivateFederatedLearningAugmentersDecoder)init;
- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4;
- (id)augmentersFromArray:(id)a3 error:(id *)a4;
- (id)instanceForAugmenterConfig:(id)a3 error:(id *)a4;
@end

@implementation PHAPrivateFederatedLearningAugmentersDecoder

- (id)_generateErrorWithErrorCode:(int64_t)a3 errorMessage:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v11 = *MEMORY[0x277CCA450];
  v12[0] = a4;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = [v6 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [v5 errorWithDomain:@"com.apple.PhotoAnalysis.PHAPrivateFederatedLearningAugmentersDecoder" code:a3 userInfo:v8];

  return v9;
}

- (id)instanceForAugmenterConfig:(id)a3 error:(id *)a4
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 objectForKeyedSubscript:@"name"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(PHAPrivateFederatedLearningAugmentersDecoder *)self augmenterNameToClass];
      v9 = [v8 objectForKeyedSubscript:v7];

      if (v9)
      {
        v10 = [v6 objectForKeyedSubscript:@"params"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = [v9 instanceWithParameters:v10 error:a4];
        }

        else if (a4)
        {
          [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid augmenter format: augmenter parameters is not an array."];
          *a4 = v11 = 0;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_18;
      }

      if (a4)
      {
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Augmenter not supported: %@", v7];
        *a4 = [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:0 errorMessage:v12];
      }
    }

    else if (a4)
    {
      [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid augmenter format: augmenter name is not a string."];
      *a4 = v11 = 0;
LABEL_18:

      goto LABEL_19;
    }

    v11 = 0;
    goto LABEL_18;
  }

  if (a4)
  {
    [(PHAPrivateFederatedLearningAugmentersDecoder *)self _generateErrorWithErrorCode:1 errorMessage:@"Invalid transformers format: transformer configuration is not dictionary."];
    *a4 = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_19:

  return v11;
}

- (id)augmentersFromArray:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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

        v13 = [(PHAPrivateFederatedLearningAugmentersDecoder *)self instanceForAugmenterConfig:*(*(&v17 + 1) + 8 * i) error:a4, v17];
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
    v3 = [MEMORY[0x277D3B6D0] name];
    v9[0] = v3;
    v10[0] = objc_opt_class();
    v4 = [MEMORY[0x277D3B6D8] name];
    v9[1] = v4;
    v10[1] = objc_opt_class();
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
    augmenterNameToClass = v2->_augmenterNameToClass;
    v2->_augmenterNameToClass = v5;
  }

  return v2;
}

@end