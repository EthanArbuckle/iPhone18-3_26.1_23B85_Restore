@interface SNLPITFMModelBundle
+ (SNLPITFMModelBundle)bundleWithEspressoModelURL:(id)l configURL:(id)rL contextVocabularyURL:(id)uRL spanVocabularyURL:(id)vocabularyURL spanMappingURL:(id)mappingURL targetVocabularyURL:(id)targetVocabularyURL versionURL:(id)versionURL errorDomain:(id)self0 error:(id *)self1;
+ (id)_errorForMissingResourceURL:(id)l errorDomain:(id)domain;
+ (id)_existErrorForEspressoModelURL:(id)l configURL:(id)rL contextVocabularyURL:(id)uRL spanVocabularyURL:(id)vocabularyURL spanMappingURL:(id)mappingURL targetVocabularyURL:(id)targetVocabularyURL versionURL:(id)versionURL errorDomain:(id)self0;
- (id)_initWithEspressoModelURL:(id)l configURL:(id)rL contextVocabularyURL:(id)uRL spanVocabularyURL:(id)vocabularyURL spanMappingURL:(id)mappingURL targetVocabularyURL:(id)targetVocabularyURL versionURL:(id)versionURL;
@end

@implementation SNLPITFMModelBundle

- (id)_initWithEspressoModelURL:(id)l configURL:(id)rL contextVocabularyURL:(id)uRL spanVocabularyURL:(id)vocabularyURL spanMappingURL:(id)mappingURL targetVocabularyURL:(id)targetVocabularyURL versionURL:(id)versionURL
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  vocabularyURLCopy = vocabularyURL;
  mappingURLCopy = mappingURL;
  targetVocabularyURLCopy = targetVocabularyURL;
  versionURLCopy = versionURL;
  v26.receiver = self;
  v26.super_class = SNLPITFMModelBundle;
  v18 = [(SNLPITFMModelBundle *)&v26 init];
  p_isa = &v18->super.isa;
  if (v18)
  {
    objc_storeStrong(&v18->_espressoModelURL, l);
    objc_storeStrong(p_isa + 2, rL);
    objc_storeStrong(p_isa + 3, uRL);
    objc_storeStrong(p_isa + 4, vocabularyURL);
    objc_storeStrong(p_isa + 5, mappingURL);
    objc_storeStrong(p_isa + 6, targetVocabularyURL);
    objc_storeStrong(p_isa + 7, versionURL);
  }

  return p_isa;
}

+ (id)_errorForMissingResourceURL:(id)l errorDomain:(id)domain
{
  v26[3] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA8D8];
  domainCopy = domain;
  lCopy = l;
  mainBundle = [v5 mainBundle];
  v9 = [mainBundle localizedStringForKey:@"Missing resource: %@" value:&stru_2835E9330 table:0];

  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle2 localizedStringForKey:@"Check that resource is available: %@" value:&stru_2835E9330 table:0];

  v25[0] = *MEMORY[0x277CCA450];
  v12 = MEMORY[0x277CCACA8];
  path = [lCopy path];
  v14 = [v12 stringWithFormat:v9, path];
  v26[0] = v14;
  v25[1] = *MEMORY[0x277CCA470];
  v15 = MEMORY[0x277CCACA8];
  path2 = [lCopy path];
  v17 = [v15 stringWithFormat:v9, path2];
  v26[1] = v17;
  v25[2] = *MEMORY[0x277CCA498];
  v18 = MEMORY[0x277CCACA8];
  path3 = [lCopy path];

  v20 = [v18 stringWithFormat:v11, path3];
  v26[2] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];

  v22 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:2 userInfo:v21];

  v23 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)_existErrorForEspressoModelURL:(id)l configURL:(id)rL contextVocabularyURL:(id)uRL spanVocabularyURL:(id)vocabularyURL spanMappingURL:(id)mappingURL targetVocabularyURL:(id)targetVocabularyURL versionURL:(id)versionURL errorDomain:(id)self0
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  vocabularyURLCopy = vocabularyURL;
  targetVocabularyURLCopy = targetVocabularyURL;
  versionURLCopy = versionURL;
  domainCopy = domain;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v37 = 0;
  path = [lCopy path];
  LODWORD(uRL) = [defaultManager fileExistsAtPath:path isDirectory:&v37];

  if (!uRL || (v37 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:lCopy errorDomain:domainCopy];
    if (v21)
    {
      goto LABEL_19;
    }
  }

  path2 = [rLCopy path];
  v23 = [defaultManager isReadableFileAtPath:path2];

  if ((v23 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:rLCopy errorDomain:domainCopy];
    if (v21)
    {
      goto LABEL_19;
    }
  }

  path3 = [vocabularyURLCopy path];
  v25 = [defaultManager isReadableFileAtPath:path3];

  if ((v25 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:vocabularyURLCopy errorDomain:domainCopy];
    if (v21)
    {
      goto LABEL_19;
    }
  }

  v26 = uRLCopy;
  path4 = [uRLCopy path];
  v28 = [defaultManager isReadableFileAtPath:path4];

  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = [objc_opt_class() _errorForMissingResourceURL:uRLCopy errorDomain:domainCopy];
  }

  if (targetVocabularyURLCopy && !v29)
  {
    path5 = [targetVocabularyURLCopy path];
    v31 = [defaultManager isReadableFileAtPath:path5];

    v26 = uRLCopy;
    if (v31)
    {
      goto LABEL_16;
    }

    v29 = [objc_opt_class() _errorForMissingResourceURL:targetVocabularyURLCopy errorDomain:domainCopy];
  }

  if (v29)
  {
    goto LABEL_21;
  }

LABEL_16:
  path6 = [versionURLCopy path];
  v33 = [defaultManager isReadableFileAtPath:path6];

  if ((v33 & 1) == 0)
  {
    v21 = [objc_opt_class() _errorForMissingResourceURL:versionURLCopy errorDomain:domainCopy];
LABEL_19:
    v29 = v21;
    goto LABEL_20;
  }

  v29 = 0;
LABEL_20:
  v26 = uRLCopy;
LABEL_21:

  return v29;
}

+ (SNLPITFMModelBundle)bundleWithEspressoModelURL:(id)l configURL:(id)rL contextVocabularyURL:(id)uRL spanVocabularyURL:(id)vocabularyURL spanMappingURL:(id)mappingURL targetVocabularyURL:(id)targetVocabularyURL versionURL:(id)versionURL errorDomain:(id)self0 error:(id *)self1
{
  lCopy = l;
  rLCopy = rL;
  uRLCopy = uRL;
  vocabularyURLCopy = vocabularyURL;
  mappingURLCopy = mappingURL;
  targetVocabularyURLCopy = targetVocabularyURL;
  versionURLCopy = versionURL;
  domainCopy = domain;
  v24 = [objc_opt_class() _existErrorForEspressoModelURL:lCopy configURL:rLCopy contextVocabularyURL:uRLCopy spanVocabularyURL:vocabularyURLCopy spanMappingURL:mappingURLCopy targetVocabularyURL:targetVocabularyURLCopy versionURL:versionURLCopy errorDomain:domainCopy];

  if (v24)
  {
    if (error)
    {
      v25 = v24;
      v26 = 0;
      *error = v24;
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = [[SNLPITFMModelBundle alloc] _initWithEspressoModelURL:lCopy configURL:rLCopy contextVocabularyURL:uRLCopy spanVocabularyURL:vocabularyURLCopy spanMappingURL:mappingURLCopy targetVocabularyURL:targetVocabularyURLCopy versionURL:versionURLCopy];
  }

  return v26;
}

@end