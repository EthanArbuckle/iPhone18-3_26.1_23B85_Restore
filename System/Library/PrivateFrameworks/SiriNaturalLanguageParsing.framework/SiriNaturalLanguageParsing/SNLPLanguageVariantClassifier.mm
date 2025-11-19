@interface SNLPLanguageVariantClassifier
+ (id)classifierWithPathURL:(id)a3 error:(id *)a4;
@end

@implementation SNLPLanguageVariantClassifier

+ (id)classifierWithPathURL:(id)a3 error:(id *)a4
{
  v59[3] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v57 = 0;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v5 path];
  v8 = [v6 fileExistsAtPath:v7 isDirectory:&v57];

  if (!v8 || v57 != 1)
  {
    if (a4)
    {
      v28 = [MEMORY[0x277CCA8D8] mainBundle];
      v29 = [v28 localizedStringForKey:@"An error occured when attempting to read the LVC model bundle at: %@" value:&stru_2835E9330 table:0];

      v30 = [MEMORY[0x277CCA8D8] mainBundle];
      v50 = [v30 localizedStringForKey:@"Check that the path contains a valid model bundle: %@" value:&stru_2835E9330 table:0];

      v31 = MEMORY[0x277CCA9B8];
      v58[0] = *MEMORY[0x277CCA450];
      v32 = MEMORY[0x277CCACA8];
      v33 = [v5 path];
      v34 = [v32 stringWithFormat:v29, v33];
      v59[0] = v34;
      v58[1] = *MEMORY[0x277CCA470];
      v35 = MEMORY[0x277CCACA8];
      v36 = [v5 path];
      v37 = [v35 stringWithFormat:v29, v36];
      v59[1] = v37;
      v58[2] = *MEMORY[0x277CCA498];
      v38 = MEMORY[0x277CCACA8];
      v39 = [v5 path];
      v40 = [v38 stringWithFormat:v50, v39];
      v59[2] = v40;
      v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:3];
      *a4 = [v31 errorWithDomain:@"SNLPLanguageVariantClassifierErrorDomain" code:1 userInfo:v41];
    }

    v24 = 0;
    goto LABEL_21;
  }

  v9 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(__p, "config.json");
  if (v56 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  v11 = [v9 stringWithUTF8String:v10];
  v49 = [v5 URLByAppendingPathComponent:v11];

  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  v46 = [v5 URLByAppendingPathComponent:@"LVC/LVC.mlmodelc"];
  v48 = [v5 URLByAppendingPathComponent:@"LVC/spans_pad.txt"];
  v47 = [v5 URLByAppendingPathComponent:@"LVC/span_label_mapping.txt"];
  v12 = [v5 URLByAppendingPathComponent:@"LVC/context_pad.txt"];
  v13 = [v5 URLByAppendingPathComponent:@"LVC/targets.txt"];
  v14 = MEMORY[0x277CCACA8];
  std::string::basic_string[abi:ne200100]<0>(__p, "version.yaml");
  if (v56 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  v16 = [v14 stringWithUTF8String:v15];
  v17 = [v5 URLByAppendingPathComponent:v16];

  if (v56 < 0)
  {
    operator delete(__p[0]);
  }

  v54 = 0;
  v18 = [SNLPITFMModelBundle bundleWithEspressoModelURL:v46 configURL:v49 contextVocabularyURL:v12 spanVocabularyURL:v48 spanMappingURL:v47 targetVocabularyURL:v13 versionURL:v17 errorDomain:@"SNLPLanguageVariantClassifierErrorDomain" error:&v54];
  v19 = v54;
  v20 = v19;
  if (v18)
  {
    v21 = [[SNLPITFMModelInfo alloc] initWithType:3 loggingComponent:5 errorDomain:@"SNLPLanguageVariantClassifierErrorDomain"];
    v22 = [a1 alloc];
    v53.receiver = a1;
    v53.super_class = &OBJC_METACLASS___SNLPLanguageVariantClassifier;
    v23 = objc_msgSendSuper2(&v53, sel__initializationBlock);
    v52 = 0;
    v24 = [v22 initWithModelBundle:v18 modelInfo:v21 initializationBlock:v23 error:&v52];
    v25 = v52;

    v26 = v24 != 0;
    if (a4 && !v24)
    {
      v27 = v25;
      *a4 = v25;
    }
  }

  else if (a4)
  {
    v45 = v19;
    v26 = 0;
    v24 = 0;
    *a4 = v20;
  }

  else
  {
    v26 = 0;
    v24 = 0;
  }

  if (v26)
  {
LABEL_21:
    v24 = v24;
    v42 = v24;
    goto LABEL_22;
  }

  v42 = 0;
LABEL_22:

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

@end