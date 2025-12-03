@interface _PSFeaturePreprocessor
+ (id)encodeFeatureVectors:(id)vectors;
+ (id)getNumberFromVirtualFeatureValue:(id)value;
+ (id)oneHotEncodedFeatureNameForFeatureName:(id)name featureValue:(id)value;
+ (id)rawDataToCandidateFeatureDict:(id)dict;
@end

@implementation _PSFeaturePreprocessor

+ (id)rawDataToCandidateFeatureDict:(id)dict
{
  dictCopy = dict;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56___PSFeaturePreprocessor_rawDataToCandidateFeatureDict___block_invoke;
  v7[3] = &unk_1E7C260F0;
  v5 = v4;
  v8 = v5;
  [dictCopy enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

+ (id)oneHotEncodedFeatureNameForFeatureName:(id)name featureValue:(id)value
{
  nameCopy = name;
  valueCopy = value;
  stringValue = [valueCopy stringValue];
  if (stringValue)
  {
  }

  else if ([valueCopy timeBucketValue])
  {
    [valueCopy timeBucketValue];
    stringValue3 = BMMLSEVirtualFeatureStoreFeatureFeatureValuetimeBucketAsString();
    goto LABEL_7;
  }

  stringValue2 = [valueCopy stringValue];

  if (!stringValue2)
  {
    goto LABEL_8;
  }

  stringValue3 = [valueCopy stringValue];
LABEL_7:
  v10 = stringValue3;
  stringValue2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@_%@", nameCopy, stringValue3];

LABEL_8:
  v11 = +[_PSLogging generalChannel];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(_PSFeaturePreprocessor *)nameCopy oneHotEncodedFeatureNameForFeatureName:stringValue2 featureValue:v11];
  }

  return stringValue2;
}

+ (id)getNumberFromVirtualFeatureValue:(id)value
{
  valueCopy = value;
  if ([valueCopy hasIntValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(valueCopy, "intValue")}];
LABEL_7:
    v6 = v4;
    goto LABEL_8;
  }

  if ([valueCopy hasDoubleValue])
  {
    v5 = MEMORY[0x1E696AD98];
    [valueCopy doubleValue];
    v4 = [v5 numberWithDouble:?];
    goto LABEL_7;
  }

  if ([valueCopy hasBoolValue])
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(valueCopy, "BOOLValue")}];
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

+ (id)encodeFeatureVectors:(id)vectors
{
  vectorsCopy = vectors;
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
  selfCopy = self;
  v7 = v6;
  v14 = v7;
  [vectorsCopy enumerateKeysAndObjectsUsingBlock:&v10];

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