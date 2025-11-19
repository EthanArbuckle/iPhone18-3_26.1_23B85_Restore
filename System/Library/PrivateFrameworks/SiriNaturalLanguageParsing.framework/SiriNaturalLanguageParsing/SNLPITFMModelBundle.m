@interface SNLPITFMModelBundle
+ (SNLPITFMModelBundle)bundleWithEspressoModelURL:(id)a3 configURL:(id)a4 contextVocabularyURL:(id)a5 spanVocabularyURL:(id)a6 spanMappingURL:(id)a7 targetVocabularyURL:(id)a8 versionURL:(id)a9 errorDomain:(id)a10 error:(id *)a11;
+ (id)_errorForMissingResourceURL:(id)a3 errorDomain:(id)a4;
+ (id)_existErrorForEspressoModelURL:(id)a3 configURL:(id)a4 contextVocabularyURL:(id)a5 spanVocabularyURL:(id)a6 spanMappingURL:(id)a7 targetVocabularyURL:(id)a8 versionURL:(id)a9 errorDomain:(id)a10;
- (id)_initWithEspressoModelURL:(id)a3 configURL:(id)a4 contextVocabularyURL:(id)a5 spanVocabularyURL:(id)a6 spanMappingURL:(id)a7 targetVocabularyURL:(id)a8 versionURL:(id)a9;
@end

@implementation SNLPITFMModelBundle

- (id)_initWithEspressoModelURL:(id)a3 configURL:(id)a4 contextVocabularyURL:(id)a5 spanVocabularyURL:(id)a6 spanMappingURL:(id)a7 targetVocabularyURL:(id)a8 versionURL:(id)a9
{
  v25 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v16 = a8;
  v17 = a9;
  v26.receiver = self;
  v26.super_class = SNLPITFMModelBundle;
  v18 = [(SNLPITFMModelBundle *)&v26 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_espressoModelURL, a3);
    objc_storeStrong(p_isa + 2, a4);
    objc_storeStrong(p_isa + 3, a5);
    objc_storeStrong(p_isa + 4, a6);
    objc_storeStrong(p_isa + 5, a7);
    objc_storeStrong(p_isa + 6, a8);
    objc_storeStrong(p_isa + 7, a9);
  }

  return p_isa;
}

+ (id)_errorForMissingResourceURL:(id)a3 errorDomain:(id)a4
{
  v26[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 mainBundle];
  v9 = [v8 localizedStringForKey:@"Missing resource: %@" value:&stru_2835E9330 table:0];

  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"Check that resource is available: %@" value:&stru_2835E9330 table:0];

  v25[0] = *MEMORY[0x277CCA450];
  v12 = MEMORY[0x277CCACA8];
  v13 = [v7 path];
  v14 = [v12 stringWithFormat:v9, v13];
  v26[0] = v14;
  v25[1] = *MEMORY[0x277CCA470];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v7 path];
  v17 = [v15 stringWithFormat:v9, v16];
  v26[1] = v17;
  v25[2] = *MEMORY[0x277CCA498];
  v18 = MEMORY[0x277CCACA8];
  v19 = [v7 path];

  v20 = [v18 stringWithFormat:v11, v19];
  v26[2] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:v6 code:2 userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_existErrorForEspressoModelURL:(id)a3 configURL:(id)a4 contextVocabularyURL:(id)a5 spanVocabularyURL:(id)a6 spanMappingURL:(id)a7 targetVocabularyURL:(id)a8 versionURL:(id)a9 errorDomain:(id)a10
{
  v14 = a3;
  v15 = a4;
  v35 = a5;
  v16 = a6;
  v36 = a8;
  v17 = a9;
  v18 = a10;
  v19 = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  v20 = [v14 path];
  LODWORD(a5) = [v19 fileExistsAtPath:v20 isDirectory:&v37];

  if (!a5 || (v37 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:v14 errorDomain:v18];
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v22 = [v15 path];
  v23 = [v19 isReadableFileAtPath:v22];

  if ((v23 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:v15 errorDomain:v18];
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v24 = [v16 path];
  v25 = [v19 isReadableFileAtPath:v24];

  if ((v25 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:v16 errorDomain:v18];
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v26 = v35;
  v27 = [v35 path];
  v28 = [v19 isReadableFileAtPath:v27];

  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = [objc_opt_class() _errorForMissingResourceURL:v35 errorDomain:v18];
  }

  if (v36 && !v29)
  {
    v30 = [v36 path];
    v31 = [v19 isReadableFileAtPath:v30];

    v26 = v35;
    if (v31)
    {
      goto LABEL_16;
    }

    v29 = [objc_opt_class() _errorForMissingResourceURL:v36 errorDomain:v18];
  }

  if (v29)
  {
    goto LABEL_21;
  }

LABEL_16:
  v32 = [v17 path];
  v33 = [v19 isReadableFileAtPath:v32];

  if ((v33 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:v17 errorDomain:v18];
LABEL_19:
    v29 = v21;
    goto LABEL_20;
  }

  v29 = 0;
LABEL_20:
  v26 = v35;
LABEL_21:

  return v29;
}

+ (SNLPITFMModelBundle)bundleWithEspressoModelURL:(id)a3 configURL:(id)a4 contextVocabularyURL:(id)a5 spanVocabularyURL:(id)a6 spanMappingURL:(id)a7 targetVocabularyURL:(id)a8 versionURL:(id)a9 errorDomain:(id)a10 error:(id *)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = [objc_opt_class() _existErrorForEspressoModelURL:v16 configURL:v17 contextVocabularyURL:v18 spanVocabularyURL:v19 spanMappingURL:v20 targetVocabularyURL:v21 versionURL:v22 errorDomain:v23];

  if (v24)
  {
    if (a11)
    {
      v25 = v24;
      v26 = 0;
      *a11 = v24;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = [[SNLPITFMModelBundle alloc] _initWithEspressoModelURL:v16 configURL:v17 contextVocabularyURL:v18 spanVocabularyURL:v19 spanMappingURL:v20 targetVocabularyURL:v21 versionURL:v22];
  }

  return v26;
}

@end