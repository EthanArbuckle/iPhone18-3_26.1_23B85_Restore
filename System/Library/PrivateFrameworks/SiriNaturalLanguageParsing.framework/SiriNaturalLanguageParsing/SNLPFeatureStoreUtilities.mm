@interface SNLPFeatureStoreUtilities
+ (BOOL)_insertToFeatureStoreWithJSONString:(id)a3 interactionIdentifier:(id)a4 streamIdentifier:(id)a5;
+ (BOOL)_insertToFeatureStoreWithProtobufObject:(id)a3 interactionIdentifier:(id)a4 streamIdentifier:(id)a5;
+ (BOOL)insertToFeatureStoreWithITFMAssertVersion:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5;
+ (BOOL)insertToFeatureStoreWithITFMContextResponse:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5;
+ (BOOL)insertToFeatureStoreWithITFMExecutedHandcraftedRules:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5;
+ (BOOL)insertToFeatureStoreWithITFMSpanResponse:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5;
+ (BOOL)insertToFeatureStoreWithNLv4AssertVersion:(id)a3 interactionIdentifier:(id)a4;
+ (BOOL)insertToFeatureStoreWithNLv4ContextResponse:(id)a3 interactionIdentifier:(id)a4;
+ (BOOL)insertToFeatureStoreWithNLv4ExecutedHandcraftedRules:(id)a3 interactionIdentifier:(id)a4;
+ (BOOL)insertToFeatureStoreWithNLv4SpanResponse:(id)a3 interactionIdentifier:(id)a4;
+ (BOOL)insertToFeatureStoreWithSSUEncodingResult:(id)a3 interactionIdentifier:(id)a4;
+ (id)_jsonStringFromProtobufObject:(id)a3;
+ (unint64_t)itfmModelTypeForSNLPComponent:(const int *)a3;
@end

@implementation SNLPFeatureStoreUtilities

+ (unint64_t)itfmModelTypeForSNLPComponent:(const int *)a3
{
  v13 = *MEMORY[0x277D85DE8];
  result = *a3;
  if (result != 1)
  {
    if (result == 4)
    {
      result = 2;
    }

    else
    {
      v5 = SNLPOSLoggerForCategory(0);
      v6 = *a3;
      if (v6 >= 8)
      {
        v7 = SNLPOSLoggerForCategory(4);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v9 = 136315394;
          v10 = "<UNDEFINED_COMPONENT>";
          v11 = 2048;
          v12 = v6;
          _os_log_impl(&dword_22284A000, v7, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", &v9, 0x16u);
        }
      }

      result = 0;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

+ (BOOL)_insertToFeatureStoreWithJSONString:(id)a3 interactionIdentifier:(id)a4 streamIdentifier:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (+[SNLPFeatureFlagUtilities isSNLPFeatureStoreEnabled])
  {
    v10 = SNLPOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = v8;
      v23 = 2112;
      v24 = v9;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "Inserting FeatureStore entry with interactionIdentifier=%@, streamIdentifier=%@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277D08440] getWithStreamId:v9];
    v12 = [objc_alloc(MEMORY[0x277D08438]) initWithJsonStr:v7 interactionId:v8 dataVersion:1];
    v20 = 0;
    v13 = [v11 insert:v12 error:&v20];
    v14 = v20;
    if ((v13 & 1) == 0)
    {
      v15 = SNLPOSLoggerForCategory(0);
      v16 = [v14 localizedDescription];
    }
  }

  else
  {
    v17 = SNLPOSLoggerForCategory(0);
    v13 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (BOOL)_insertToFeatureStoreWithProtobufObject:(id)a3 interactionIdentifier:(id)a4 streamIdentifier:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [objc_opt_class() _jsonStringFromProtobufObject:v7];
  v11 = [objc_opt_class() _insertToFeatureStoreWithJSONString:v10 interactionIdentifier:v8 streamIdentifier:v9];

  return v11;
}

+ (id)_jsonStringFromProtobufObject:(id)a3
{
  v3 = [a3 dictionaryRepresentation];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v3 options:1 error:&v10];
  v5 = v10;
  if (!v4)
  {
    v6 = SNLPOSLoggerForCategory(0);
    v7 = [v5 localizedDescription];
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v8;
}

+ (BOOL)insertToFeatureStoreWithSSUEncodingResult:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v5 interactionIdentifier:v6 streamIdentifier:@"SSUEncodingResultAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithITFMExecutedHandcraftedRules:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [SNLPITFMModelInfo stringForModelType:a5];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMExecutedHandcraftedRulesAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v7 interactionIdentifier:v8 streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithITFMAssertVersion:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [SNLPITFMModelInfo stringForModelType:a5];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMAssetVersionAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v7 interactionIdentifier:v8 streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithITFMContextResponse:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [SNLPITFMModelInfo stringForModelType:a5];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMContextResponseAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v7 interactionIdentifier:v8 streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithITFMSpanResponse:(id)a3 interactionIdentifier:(id)a4 itfmModelType:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [SNLPITFMModelInfo stringForModelType:a5];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMSpanResponseAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v7 interactionIdentifier:v8 streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithNLv4ExecutedHandcraftedRules:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v5 interactionIdentifier:v6 streamIdentifier:@"NLv4ExecutedHandcraftedRulesAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithNLv4AssertVersion:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v5 interactionIdentifier:v6 streamIdentifier:@"NLv4AssetVersionAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithNLv4ContextResponse:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v5 interactionIdentifier:v6 streamIdentifier:@"NLv4ContextResponseAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithNLv4SpanResponse:(id)a3 interactionIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:v5 interactionIdentifier:v6 streamIdentifier:@"NLv4SpanResponseAsJSON"];

  return v7;
}

@end