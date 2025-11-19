@interface SNLPServerNLClassifier
+ (id)_classifierWithModelURL:(id)a3 configURL:(id)a4 spanVocabularyURL:(id)a5 spanMappingURL:(id)a6 contextVocabularyURL:(id)a7 versionURL:(id)a8 error:(id *)a9;
+ (id)_convertITFMResponse:(id)a3;
+ (id)_convertSNLCRequest:(id)a3;
+ (id)classifierWithPathURL:(id)a3 error:(id *)a4;
- (id)inferenceResponseForRequest:(id)a3;
- (id)inferenceResponseForRequest:(id)a3 error:(id *)a4;
- (id)responseForRequest:(id)a3 error:(id *)a4;
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

+ (id)_convertITFMResponse:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D5DE78]);
  [v4 setClassificationLabel:{objc_msgSend(v3, "classificationLabel")}];
  [v3 classificationProbability];
  [v4 setClassificationProbability:?];

  return v4;
}

+ (id)_convertSNLCRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277D5DE08]);
  v5 = [v3 embeddings];
  [v4 setEmbeddings:v5];

  v6 = [v3 matchingSpans];
  [v4 setMatchingSpans:v6];

  v7 = [v3 tokenisedUtterance];
  [v4 setTokenisedUtterance:v7];

  v8 = [v3 requestId];
  [v4 setRequestId:v8];

  v9 = [v3 nluRequestId];
  [v4 setNluRequestId:v9];

  v10 = [v3 turnInput];
  [v4 setTurnInput:v10];

  return v4;
}

+ (id)_classifierWithModelURL:(id)a3 configURL:(id)a4 spanVocabularyURL:(id)a5 spanMappingURL:(id)a6 contextVocabularyURL:(id)a7 versionURL:(id)a8 error:(id *)a9
{
  v24 = 0;
  v10 = [SNLPITFMModelBundle bundleWithEspressoModelURL:a3 configURL:a4 contextVocabularyURL:a7 spanVocabularyURL:a5 spanMappingURL:a6 targetVocabularyURL:0 versionURL:a8 errorDomain:@"SNLPServerNLClassifierErrorDomain" error:&v24];
  v11 = v24;
  v12 = v11;
  if (v10)
  {
    v13 = [[SNLPITFMModelInfo alloc] initWithType:1 loggingComponent:1 errorDomain:@"SNLPServerNLClassifierErrorDomain"];
    v23.receiver = a1;
    v23.super_class = &OBJC_METACLASS___SNLPServerNLClassifier;
    v14 = objc_msgSendSuper2(&v23, sel_alloc);
    v15 = [objc_opt_class() _initializationBlock];
    v22 = 0;
    v16 = [v14 initWithModelBundle:v10 modelInfo:v13 initializationBlock:v15 error:&v22];
    v17 = v22;

    if (v16)
    {
      v18 = v16;
    }

    else if (a9)
    {
      v20 = v17;
      *a9 = v17;
    }
  }

  else if (a9)
  {
    v19 = v11;
    v16 = 0;
    *a9 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)classifierWithPathURL:(id)a3 error:(id *)a4
{
  v37[3] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = 0;
  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:&v35];

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
    v32 = [v6 URLByAppendingPathComponent:v12];

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v31 = [v6 URLByAppendingPathComponent:@"SNLC/SNLC.mlmodelc"];
    v13 = [v6 URLByAppendingPathComponent:@"SNLC/spans_pad.txt"];
    v14 = [v6 URLByAppendingPathComponent:@"SNLC/span_label_mapping.txt"];
    v15 = [v6 URLByAppendingPathComponent:@"SNLC/context_pad.txt"];
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
    v19 = [v6 URLByAppendingPathComponent:v18];

    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    a4 = [a1 _classifierWithModelURL:v31 configURL:v32 spanVocabularyURL:v13 spanMappingURL:v14 contextVocabularyURL:v15 versionURL:v19 error:a4];
  }

  else
  {
    if (!a4)
    {
      goto LABEL_17;
    }

    v20 = [MEMORY[0x277CCA8D8] mainBundle];
    v32 = [v20 localizedStringForKey:@"An error occured when attempting to read the SNLC model bundle at: %@" value:&stru_2835E9330 table:0];

    v21 = [MEMORY[0x277CCA8D8] mainBundle];
    v31 = [v21 localizedStringForKey:@"Check that the path contains a valid model bundle: %@" value:&stru_2835E9330 table:0];

    v22 = MEMORY[0x277CCA9B8];
    v36[0] = *MEMORY[0x277CCA450];
    v23 = MEMORY[0x277CCACA8];
    v13 = [v6 path];
    v14 = [v23 stringWithFormat:v32, v13];
    v37[0] = v14;
    v36[1] = *MEMORY[0x277CCA470];
    v24 = MEMORY[0x277CCACA8];
    v15 = [v6 path];
    v19 = [v24 stringWithFormat:v32, v15];
    v37[1] = v19;
    v36[2] = *MEMORY[0x277CCA498];
    v25 = MEMORY[0x277CCACA8];
    v26 = [v6 path];
    v27 = [v25 stringWithFormat:v31, v26];
    v37[2] = v27;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:3];
    *a4 = [v22 errorWithDomain:@"SNLPServerNLClassifierErrorDomain" code:1 userInfo:v28];

    a4 = 0;
  }

LABEL_17:
  v29 = *MEMORY[0x277D85DE8];

  return a4;
}

- (id)inferenceResponseForRequest:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = [(SNLPServerNLClassifier *)self inferenceResponseForRequest:a3 error:&v10];
  v4 = v10;
  if (!v3)
  {
    v5 = SNLPOSLoggerForCategory(2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 localizedDescription];
      *buf = 136315394;
      v12 = "SNLC";
      v13 = 2112;
      v14 = v6;
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

- (id)inferenceResponseForRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [objc_opt_class() _convertSNLCRequest:v6];
  v8 = [(SNLPServerNLClassifier *)self responseForRequest:v7 error:a4];
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

- (id)responseForRequest:(id)a3 error:(id *)a4
{
  v6.receiver = self;
  v6.super_class = SNLPServerNLClassifier;
  v4 = [(SNLPITFMClassifier *)&v6 responseForRequest:a3 error:a4];

  return v4;
}

@end