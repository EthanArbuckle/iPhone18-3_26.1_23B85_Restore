@interface SNLPPommesServerClassifier
+ (id)classifierWithPathURL:(id)l error:(id *)error;
- (id)responseForRequest:(id)request error:(id *)error;
@end

@implementation SNLPPommesServerClassifier

void __50__SNLPPommesServerClassifier__initializationBlock__block_invoke(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
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

- (id)responseForRequest:(id)request error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  v26.receiver = self;
  v26.super_class = SNLPPommesServerClassifier;
  v5 = [(SNLPITFMClassifier *)&v26 responseForRequest:request error:error];
  v6 = v5;
  if (v5)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    hypotheses = [v5 hypotheses];
    v8 = [hypotheses countByEnumeratingWithState:&v22 objects:v37 count:16];
    if (v8)
    {
      v9 = *v23;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(hypotheses);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([v11 label] == 1)
          {
            [v11 probability];
            v13 = v12;
            [(SNLPPommesServerClassifier *)self confidenceThreshold];
            if (v13 < v14)
            {
              v15 = SNLPOSLoggerForCategory(2);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                stringLabel = [v11 stringLabel];
                [v11 probability];
                v18 = v17;
                [(SNLPPommesServerClassifier *)self confidenceThreshold];
                *buf = 136316162;
                v28 = "PSC";
                v29 = 2080;
                v30 = "[insights-snlp-psc]: ";
                v31 = 2112;
                v32 = stringLabel;
                v33 = 2048;
                v34 = v18;
                v35 = 2048;
                v36 = v19;
                _os_log_impl(&dword_22284A000, v15, OS_LOG_TYPE_DEBUG, "[%s] %sPSC %@ probability (%1.2f) is below the 'confidence_threshold: (%1.2f)', setting to -0.0", buf, 0x34u);
              }

              [v11 setProbability:COERCE_DOUBLE(0x8000000080000000)];
              [v6 setClassificationProbability:COERCE_DOUBLE(0x8000000080000000)];
            }

            goto LABEL_15;
          }
        }

        v8 = [hypotheses countByEnumeratingWithState:&v22 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_15:
  }

  v20 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)classifierWithPathURL:(id)l error:(id *)error
{
  v72 = *MEMORY[0x277D85DE8];
  v65 = 0;
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path isDirectory:&v65];

  if (!v6 || v65 != 1)
  {
    if (error)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v34 = [mainBundle localizedStringForKey:@"An error occured when attempting to read the LVC model bundle at: %@" value:&stru_2835E9330 table:0];

      mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
      v36 = [mainBundle2 localizedStringForKey:@"Check that the path contains a valid model bundle: %@" value:&stru_2835E9330 table:0];

      v37 = MEMORY[0x277CCA9B8];
      v66[0] = *MEMORY[0x277CCA450];
      v38 = MEMORY[0x277CCACA8];
      path2 = [lCopy path];
      v40 = [v38 stringWithFormat:v34, path2];
      v67[0] = v40;
      v66[1] = *MEMORY[0x277CCA470];
      v41 = MEMORY[0x277CCACA8];
      path3 = [lCopy path];
      v43 = [v41 stringWithFormat:v34, path3];
      v67[1] = v43;
      v66[2] = *MEMORY[0x277CCA498];
      v44 = MEMORY[0x277CCACA8];
      path4 = [lCopy path];
      v46 = [v44 stringWithFormat:v36, path4];
      v67[2] = v46;
      v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v67 forKeys:v66 count:3];
      *error = [v37 errorWithDomain:@"SNLPPommesServerClassifierErrorDomain" code:1 userInfo:v47];
    }

    v21 = 0;
    goto LABEL_25;
  }

  v7 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(buf, "config.json");
  if (v71 >= 0)
  {
    v8 = buf;
  }

  else
  {
    v8 = *buf;
  }

  v9 = [v7 stringWithUTF8String:v8];
  v59 = [lCopy URLByAppendingPathComponent:v9];

  if (v71 < 0)
  {
    operator delete(*buf);
  }

  v55 = [lCopy URLByAppendingPathComponent:@"PSC/PSC.mlmodelc"];
  v56 = [lCopy URLByAppendingPathComponent:@"PSC/spans_pad.txt"];
  v57 = [lCopy URLByAppendingPathComponent:@"PSC/span_label_mapping.txt"];
  v58 = [lCopy URLByAppendingPathComponent:@"PSC/context_pad.txt"];
  v10 = [lCopy URLByAppendingPathComponent:@"PSC/targets.txt"];
  v11 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(buf, "version.yaml");
  if (v71 >= 0)
  {
    v12 = buf;
  }

  else
  {
    v12 = *buf;
  }

  v13 = [v11 stringWithUTF8String:v12];
  v54 = [lCopy URLByAppendingPathComponent:v13];

  if (v71 < 0)
  {
    operator delete(*buf);
  }

  path5 = [v10 path];
  v15 = [defaultManager isReadableFileAtPath:path5];

  if ((v15 & 1) == 0)
  {

    v10 = 0;
  }

  v64 = 0;
  v16 = [SNLPITFMModelBundle bundleWithEspressoModelURL:v55 configURL:v59 contextVocabularyURL:v58 spanVocabularyURL:v56 spanMappingURL:v57 targetVocabularyURL:v10 versionURL:v54 errorDomain:@"SNLPPommesServerClassifierErrorDomain" error:&v64];
  v17 = v64;
  v18 = v17;
  if (v16)
  {
    v53 = [[SNLPITFMModelInfo alloc] initWithType:2 loggingComponent:4 errorDomain:@"SNLPPommesServerClassifierErrorDomain"];
    v19 = [self alloc];
    _initializationBlock = [self _initializationBlock];
    v63 = 0;
    v21 = [v19 initWithModelBundle:v16 modelInfo:v53 initializationBlock:_initializationBlock error:&v63];
    v22 = v63;

    v23 = v21 != 0;
    if (v21)
    {
      v24 = MEMORY[0x277CCAAA0];
      v25 = MEMORY[0x277CBEA90];
      configURL = [v16 configURL];
      v27 = [v25 dataWithContentsOfURL:configURL];
      v28 = [v24 JSONObjectWithData:v27 options:0 error:0];

      v29 = [v28 objectForKey:@"confidence_threshold"];
      [v29 floatValue];
      [v21 setConfidenceThreshold:?];

      [v21 confidenceThreshold];
      if (v30 > 0.0)
      {
        v31 = SNLPOSLoggerForCategory(2);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
        {
          [v21 confidenceThreshold];
          *buf = 136315394;
          *&buf[4] = "PSC";
          v69 = 2048;
          v70 = v32;
          _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] Loaded config confidence_threshold: %1.2f", buf, 0x16u);
        }
      }
    }

    else if (error)
    {
      v52 = v22;
      *error = v22;
    }
  }

  else if (error)
  {
    v51 = v17;
    v23 = 0;
    v21 = 0;
    *error = v18;
  }

  else
  {
    v23 = 0;
    v21 = 0;
  }

  if (v23)
  {
LABEL_25:
    v21 = v21;
    v48 = v21;
    goto LABEL_26;
  }

  v48 = 0;
LABEL_26:

  v49 = *MEMORY[0x277D85DE8];

  return v48;
}

@end