@interface SiriNLUInternalTypesConverter
+ (id)convertToSubwordEmbeddingResponse:(id)a3;
@end

@implementation SiriNLUInternalTypesConverter

+ (id)convertToSubwordEmbeddingResponse:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse);
    v5 = [v3 subwordTokenChain];
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)v4 setSubwordTokenChain:v5];

    v6 = [v3 subwordEmbeddingTensorOutputs];
    v7 = [v6 firstObject];
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)v4 setSubwordTokenEmbedding:v7];
  }

  else
  {
    v8 = loggerContext(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v11 = 136315138;
      v12 = "+[SiriNLUInternalTypesConverter convertToSubwordEmbeddingResponse:]";
      _os_log_impl(&dword_1C8774000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: Input EmbeddingResponse to convertToSubwordEmbeddingResponse function is nil, and therefore returning nil", &v11, 0xCu);
    }

    v4 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

@end