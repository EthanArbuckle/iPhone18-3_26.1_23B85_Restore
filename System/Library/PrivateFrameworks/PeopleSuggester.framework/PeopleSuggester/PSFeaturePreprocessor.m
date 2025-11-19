@interface PSFeaturePreprocessor
@end

@implementation PSFeaturePreprocessor

void __56___PSFeaturePreprocessor_rawDataToCandidateFeatureDict___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = objc_opt_new();
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56___PSFeaturePreprocessor_rawDataToCandidateFeatureDict___block_invoke_2;
  v9[3] = &unk_1E7C260C8;
  v10 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  [*(a1 + 32) setObject:v8 forKeyedSubscript:v6];
}

void __56___PSFeaturePreprocessor_rawDataToCandidateFeatureDict___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = objc_alloc(MEMORY[0x1E698ECC0]);
    v7 = v13;
LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x1E698ECC0]);
    v7 = 0;
    goto LABEL_8;
  }

  v8 = [@"true" compare:v13 options:3];
  if (v8 && [@"false" compare:v13 options:3])
  {
    v6 = objc_alloc(MEMORY[0x1E698ECC0]);
    v7 = 0;
    v9 = v13;
LABEL_9:
    v10 = [v6 initWithIntValue:0 doubleValue:v7 stringValue:v9 BOOLValue:0 timeBucketValue:0];
    goto LABEL_10;
  }

  v11 = objc_alloc(MEMORY[0x1E698ECC0]);
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v8 == 0];
  v10 = [v11 initWithIntValue:0 doubleValue:0 stringValue:0 BOOLValue:v12 timeBucketValue:0];

LABEL_10:
  [*(a1 + 32) setObject:v10 forKeyedSubscript:v5];
}

void __47___PSFeaturePreprocessor_encodeFeatureVectors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47___PSFeaturePreprocessor_encodeFeatureVectors___block_invoke_2;
  v11[3] = &unk_1E7C26118;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v12 = v7;
  v9 = v5;
  v10 = v7;
  [v6 enumerateKeysAndObjectsUsingBlock:v11];

  [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
}

void __47___PSFeaturePreprocessor_encodeFeatureVectors___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 48) oneHotEncodedFeatureNameForFeatureName:v5 featureValue:v6];
  if (v7)
  {
    [*(a1 + 32) setObject:&unk_1F2D8B850 forKeyedSubscript:v7];
  }

  else
  {
    v8 = [*(a1 + 48) getNumberFromVirtualFeatureValue:v6];
    v9 = +[_PSLogging generalChannel];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 40);
        v13 = 138412803;
        v14 = v6;
        v15 = 2112;
        v16 = v8;
        v17 = 2113;
        v18 = v12;
        _os_log_debug_impl(&dword_1B5ED1000, v10, OS_LOG_TYPE_DEBUG, "Feature value %@ produced encoded value %@ for candidate %{private}@", &v13, 0x20u);
      }

      [*(a1 + 32) setObject:v8 forKeyedSubscript:v5];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __47___PSFeaturePreprocessor_encodeFeatureVectors___block_invoke_2_cold_1(v5, v10);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __47___PSFeaturePreprocessor_encodeFeatureVectors___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B5ED1000, a2, OS_LOG_TYPE_ERROR, "Feature %@ unexpectedly produced a nil value", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end