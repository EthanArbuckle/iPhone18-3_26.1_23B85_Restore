@interface _PSFeaturePreprocessor
+ (id)encodeFeatureVectors:(id)a3;
+ (id)getNumberFromVirtualFeatureValue:(id)a3;
+ (id)oneHotEncodedFeatureNameForFeatureName:(id)a3 featureValue:(id)a4;
+ (id)rawDataToCandidateFeatureDict:(id)a3;
@end

@implementation _PSFeaturePreprocessor

+ (id)rawDataToCandidateFeatureDict:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___PSFeaturePreprocessor_rawDataToCandidateFeatureDict___block_invoke;
  v7[3] = &unk_1E7C260F0;
  v5 = v4;
  v8 = v5;
  [v3 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

+ (id)oneHotEncodedFeatureNameForFeatureName:(id)a3 featureValue:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 stringValue];
  if (v7)
  {
  }

  else if ([v6 timeBucketValue])
  {
    [v6 timeBucketValue];
    v9 = BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketAsString();
    goto LABEL_7;
  }

  v8 = [v6 stringValue];

  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = [v6 stringValue];
LABEL_7:
  v10 = v9;
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", v5, v9];

LABEL_8:
  v11 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(_PSFeaturePreprocessor *)v5 oneHotEncodedFeatureNameForFeatureName:v8 featureValue:v11];
  }

  return v8;
}

+ (id)getNumberFromVirtualFeatureValue:(id)a3
{
  v3 = a3;
  if ([v3 hasIntValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v3, "intValue")}];
LABEL_7:
    v6 = v4;
    goto LABEL_8;
  }

  if ([v3 hasDoubleValue])
  {
    v5 = MEMORY[0x1E696AD98];
    [v3 doubleValue];
    v4 = [v5 numberWithDouble:?];
    goto LABEL_7;
  }

  if ([v3 hasBoolValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "BOOLValue")}];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)encodeFeatureVectors:(id)a3
{
  v4 = a3;
  v5 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v5, OS_LOG_TYPE_DEFAULT, "Encoding feature dictionary", buf, 2u);
  }

  v6 = objc_opt_new();
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __47___PSFeaturePreprocessor_encodeFeatureVectors___block_invoke;
  v13 = &unk_1E7C26140;
  v15 = a1;
  v7 = v6;
  v14 = v7;
  [v4 enumerateKeysAndObjectsUsingBlock:&v10];

  v8 = [_PSLogging generalChannel:v10];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B5ED1000, v8, OS_LOG_TYPE_DEFAULT, "Finished encoding feature dictionary", buf, 2u);
  }

  return v7;
}

+ (void)oneHotEncodedFeatureNameForFeatureName:(os_log_t)log featureValue:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_debug_impl(&dword_1B5ED1000, log, OS_LOG_TYPE_DEBUG, "Feature name %@ produced one-hot feature name %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end