@interface SNLPFeatureStoreUtilities
+ (BOOL)_insertToFeatureStoreWithJSONString:(id)string interactionIdentifier:(id)identifier streamIdentifier:(id)streamIdentifier;
+ (BOOL)_insertToFeatureStoreWithProtobufObject:(id)object interactionIdentifier:(id)identifier streamIdentifier:(id)streamIdentifier;
+ (BOOL)insertToFeatureStoreWithITFMAssertVersion:(id)version interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type;
+ (BOOL)insertToFeatureStoreWithITFMContextResponse:(id)response interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type;
+ (BOOL)insertToFeatureStoreWithITFMExecutedHandcraftedRules:(id)rules interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type;
+ (BOOL)insertToFeatureStoreWithITFMSpanResponse:(id)response interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type;
+ (BOOL)insertToFeatureStoreWithNLv4AssertVersion:(id)version interactionIdentifier:(id)identifier;
+ (BOOL)insertToFeatureStoreWithNLv4ContextResponse:(id)response interactionIdentifier:(id)identifier;
+ (BOOL)insertToFeatureStoreWithNLv4ExecutedHandcraftedRules:(id)rules interactionIdentifier:(id)identifier;
+ (BOOL)insertToFeatureStoreWithNLv4SpanResponse:(id)response interactionIdentifier:(id)identifier;
+ (BOOL)insertToFeatureStoreWithSSUEncodingResult:(id)result interactionIdentifier:(id)identifier;
+ (id)_jsonStringFromProtobufObject:(id)object;
+ (unint64_t)itfmModelTypeForSNLPComponent:(const int *)component;
@end

@implementation SNLPFeatureStoreUtilities

+ (unint64_t)itfmModelTypeForSNLPComponent:(const int *)component
{
  v13 = *MEMORY[0x277D85DE8];
  result = *component;
  if (result != 1)
  {
    if (result == 4)
    {
      result = 2;
    }

    else
    {
      v5 = SNLPOSLoggerForCategory(0);
      v6 = *component;
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

+ (BOOL)_insertToFeatureStoreWithJSONString:(id)string interactionIdentifier:(id)identifier streamIdentifier:(id)streamIdentifier
{
  v25 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  identifierCopy = identifier;
  streamIdentifierCopy = streamIdentifier;
  if (+[SNLPFeatureFlagUtilities isSNLPFeatureStoreEnabled])
  {
    v10 = SNLPOSLoggerForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = streamIdentifierCopy;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "Inserting FeatureStore entry with interactionIdentifier=%@, streamIdentifier=%@", buf, 0x16u);
    }

    v11 = [MEMORY[0x277D08440] getWithStreamId:streamIdentifierCopy];
    v12 = [objc_alloc(MEMORY[0x277D08438]) initWithJsonStr:stringCopy interactionId:identifierCopy dataVersion:1];
    v20 = 0;
    v13 = [v11 insert:v12 error:&v20];
    v14 = v20;
    if ((v13 & 1) == 0)
    {
      v15 = SNLPOSLoggerForCategory(0);
      localizedDescription = [v14 localizedDescription];
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

+ (BOOL)_insertToFeatureStoreWithProtobufObject:(id)object interactionIdentifier:(id)identifier streamIdentifier:(id)streamIdentifier
{
  objectCopy = object;
  identifierCopy = identifier;
  streamIdentifierCopy = streamIdentifier;
  v10 = [objc_opt_class() _jsonStringFromProtobufObject:objectCopy];
  v11 = [objc_opt_class() _insertToFeatureStoreWithJSONString:v10 interactionIdentifier:identifierCopy streamIdentifier:streamIdentifierCopy];

  return v11;
}

+ (id)_jsonStringFromProtobufObject:(id)object
{
  dictionaryRepresentation = [object dictionaryRepresentation];
  v10 = 0;
  v4 = [MEMORY[0x277CCAAA0] dataWithJSONObject:dictionaryRepresentation options:1 error:&v10];
  v5 = v10;
  if (!v4)
  {
    v6 = SNLPOSLoggerForCategory(0);
    localizedDescription = [v5 localizedDescription];
  }

  v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];

  return v8;
}

+ (BOOL)insertToFeatureStoreWithSSUEncodingResult:(id)result interactionIdentifier:(id)identifier
{
  resultCopy = result;
  identifierCopy = identifier;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:resultCopy interactionIdentifier:identifierCopy streamIdentifier:@"SSUEncodingResultAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithITFMExecutedHandcraftedRules:(id)rules interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type
{
  rulesCopy = rules;
  identifierCopy = identifier;
  v9 = [SNLPITFMModelInfo stringForModelType:type];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMExecutedHandcraftedRulesAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:rulesCopy interactionIdentifier:identifierCopy streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithITFMAssertVersion:(id)version interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type
{
  versionCopy = version;
  identifierCopy = identifier;
  v9 = [SNLPITFMModelInfo stringForModelType:type];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMAssetVersionAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:versionCopy interactionIdentifier:identifierCopy streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithITFMContextResponse:(id)response interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type
{
  responseCopy = response;
  identifierCopy = identifier;
  v9 = [SNLPITFMModelInfo stringForModelType:type];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMContextResponseAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:responseCopy interactionIdentifier:identifierCopy streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithITFMSpanResponse:(id)response interactionIdentifier:(id)identifier itfmModelType:(unint64_t)type
{
  responseCopy = response;
  identifierCopy = identifier;
  v9 = [SNLPITFMModelInfo stringForModelType:type];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-ITFMSpanResponseAsJSON", v9];
  v11 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:responseCopy interactionIdentifier:identifierCopy streamIdentifier:v10];

  return v11;
}

+ (BOOL)insertToFeatureStoreWithNLv4ExecutedHandcraftedRules:(id)rules interactionIdentifier:(id)identifier
{
  rulesCopy = rules;
  identifierCopy = identifier;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:rulesCopy interactionIdentifier:identifierCopy streamIdentifier:@"NLv4ExecutedHandcraftedRulesAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithNLv4AssertVersion:(id)version interactionIdentifier:(id)identifier
{
  versionCopy = version;
  identifierCopy = identifier;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:versionCopy interactionIdentifier:identifierCopy streamIdentifier:@"NLv4AssetVersionAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithNLv4ContextResponse:(id)response interactionIdentifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:responseCopy interactionIdentifier:identifierCopy streamIdentifier:@"NLv4ContextResponseAsJSON"];

  return v7;
}

+ (BOOL)insertToFeatureStoreWithNLv4SpanResponse:(id)response interactionIdentifier:(id)identifier
{
  responseCopy = response;
  identifierCopy = identifier;
  v7 = [objc_opt_class() _insertToFeatureStoreWithProtobufObject:responseCopy interactionIdentifier:identifierCopy streamIdentifier:@"NLv4SpanResponseAsJSON"];

  return v7;
}

@end