@interface SNLPServerNLClassifier
+ (id)_classifierWithModelURL:(id)l configURL:(id)rL spanVocabularyURL:(id)uRL spanMappingURL:(id)mappingURL contextVocabularyURL:(id)vocabularyURL versionURL:(id)versionURL error:(id *)error;
+ (id)_convertITFMResponse:(id)response;
+ (id)_convertSNLCRequest:(id)request;
+ (id)classifierWithPathURL:(id)l error:(id *)error;
- (id)inferenceResponseForRequest:(id)request;
- (id)inferenceResponseForRequest:(id)request error:(id *)error;
- (id)responseForRequest:(id)request error:(id *)error;
@end

@implementation SNLPServerNLClassifier

void __46__SNLPServerNLClassifier__initializationBlock__block_invoke(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a1;
  a2;
  *a3 = 0;
  v6 = [v5 configURL];
  v7 = [v6 path];
  std::string::basic_string[abi:ne200100]<0>(&v11, [v7 UTF8String]);

  [v5 versionURL];
  v8 = [objc_claimAutoreleasedReturnValue() path];
  v9 = v8;
  v12 = [v8 UTF8String];
  v10 = std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&v13, &v12);
  getAssetDirectoryNCV(v10);
}

+ (id)_convertITFMResponse:(id)response
{
  responseCopy = response;
  v4 = objc_alloc_init(MEMORY[0x277D5DE78]);
  [v4 setClassificationLabel:{objc_msgSend(responseCopy, "classificationLabel")}];
  [responseCopy classificationProbability];
  [v4 setClassificationProbability:?];

  return v4;
}

+ (id)_convertSNLCRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(MEMORY[0x277D5DE08]);
  embeddings = [requestCopy embeddings];
  [v4 setEmbeddings:embeddings];

  matchingSpans = [requestCopy matchingSpans];
  [v4 setMatchingSpans:matchingSpans];

  tokenisedUtterance = [requestCopy tokenisedUtterance];
  [v4 setTokenisedUtterance:tokenisedUtterance];

  requestId = [requestCopy requestId];
  [v4 setRequestId:requestId];

  nluRequestId = [requestCopy nluRequestId];
  [v4 setNluRequestId:nluRequestId];

  turnInput = [requestCopy turnInput];
  [v4 setTurnInput:turnInput];

  return v4;
}

+ (id)_classifierWithModelURL:(id)l configURL:(id)rL spanVocabularyURL:(id)uRL spanMappingURL:(id)mappingURL contextVocabularyURL:(id)vocabularyURL versionURL:(id)versionURL error:(id *)error
{
  v24 = 0;
  v10 = [SNLPITFMModelBundle bundleWithEspressoModelURL:l configURL:rL contextVocabularyURL:vocabularyURL spanVocabularyURL:uRL spanMappingURL:mappingURL targetVocabularyURL:0 versionURL:versionURL errorDomain:@"SNLPServerNLClassifierErrorDomain" error:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = [[SNLPITFMModelInfo alloc] initWithType:1 loggingComponent:1 errorDomain:@"SNLPServerNLClassifierErrorDomain"];
    v23.receiver = self;
    v23.super_class = &OBJC_METACLASS___SNLPServerNLClassifier;
    v14 = objc_msgSendSuper2(&v23, sel_alloc);
    _initializationBlock = [objc_opt_class() _initializationBlock];
    v22 = 0;
    v16 = [v14 initWithModelBundle:v10 modelInfo:v13 initializationBlock:_initializationBlock error:&v22];
    v17 = v22;

    if (v16)
    {
      v18 = v16;
    }

    else if (error)
    {
      v20 = v17;
      *error = v17;
    }
  }

  else if (error)
  {
    v19 = v11;
    v16 = 0;
    *error = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)classifierWithPathURL:(id)l error:(id *)error
{
  v37[3] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v35 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v9 = [defaultManager fileExistsAtPath:path isDirectory:&v35];

  if (v9 && v35 == 1)
  {
    v10 = MEMORY[0x277CCACA8];
    std::string::basic_string[abi:ne200100]<0>(__p, "config.json");
    if (v34 >= 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    v12 = [v10 stringWithUTF8String:v11];
    v32 = [lCopy URLByAppendingPathComponent:v12];

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v31 = [lCopy URLByAppendingPathComponent:@"SNLC/SNLC.mlmodelc"];
    path2 = [lCopy URLByAppendingPathComponent:@"SNLC/spans_pad.txt"];
    v14 = [lCopy URLByAppendingPathComponent:@"SNLC/span_label_mapping.txt"];
    path3 = [lCopy URLByAppendingPathComponent:@"SNLC/context_pad.txt"];
    v16 = MEMORY[0x277CCACA8];
    std::string::basic_string[abi:ne200100]<0>(__p, "version.yaml");
    if (v34 >= 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    v18 = [v16 stringWithUTF8String:v17];
    v19 = [lCopy URLByAppendingPathComponent:v18];

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    error = [self _classifierWithModelURL:v31 configURL:v32 spanVocabularyURL:path2 spanMappingURL:v14 contextVocabularyURL:path3 versionURL:v19 error:error];
  }

  else
  {
    if (!error)
    {
      goto LABEL_17;
    }

    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = [mainBundle localizedStringForKey:@"An error occured when attempting to read the SNLC model bundle at: %@" value:&stru_2835E9330 table:0];

    mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [mainBundle2 localizedStringForKey:@"Check that the path contains a valid model bundle: %@" value:&stru_2835E9330 table:0];

    v22 = MEMORY[0x277CCA9B8];
    v36[0] = *MEMORY[0x277CCA450];
    v23 = MEMORY[0x277CCACA8];
    path2 = [lCopy path];
    v14 = [v23 stringWithFormat:v32, path2];
    v37[0] = v14;
    v36[1] = *MEMORY[0x277CCA470];
    v24 = MEMORY[0x277CCACA8];
    path3 = [lCopy path];
    v19 = [v24 stringWithFormat:v32, path3];
    v37[1] = v19;
    v36[2] = *MEMORY[0x277CCA498];
    v25 = MEMORY[0x277CCACA8];
    path4 = [lCopy path];
    v27 = [v25 stringWithFormat:v31, path4];
    v37[2] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    *error = [v22 errorWithDomain:@"SNLPServerNLClassifierErrorDomain" code:1 userInfo:v28];

    error = 0;
  }

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)inferenceResponseForRequest:(id)request
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = [(SNLPServerNLClassifier *)self inferenceResponseForRequest:request error:&v10];
  v4 = v10;
  if (!v3)
  {
    v5 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v4 localizedDescription];
      *buf = 136315394;
      v12 = "SNLC";
      v13 = 2112;
      v14 = localizedDescription;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] Encountered error in deprecated version of inferenceResponseForRequest: %@ (returning SERVER parser response)", buf, 0x16u);
    }

    v3 = objc_alloc_init(MEMORY[0x277D5DE78]);
    [v3 setClassificationLabel:0];
    LODWORD(v7) = 1.0;
    [v3 setClassificationProbability:v7];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)inferenceResponseForRequest:(id)request error:(id *)error
{
  requestCopy = request;
  v7 = [objc_opt_class() _convertSNLCRequest:requestCopy];
  v8 = [(SNLPServerNLClassifier *)self responseForRequest:v7 error:error];
  if (v8)
  {
    v9 = [objc_opt_class() _convertITFMResponse:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)responseForRequest:(id)request error:(id *)error
{
  v6.receiver = self;
  v6.super_class = SNLPServerNLClassifier;
  v4 = [(SNLPITFMClassifier *)&v6 responseForRequest:request error:error];

  return v4;
}

@end