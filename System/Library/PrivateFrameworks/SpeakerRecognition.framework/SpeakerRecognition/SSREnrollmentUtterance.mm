@interface SSREnrollmentUtterance
- (SSREnrollmentUtterance)initWithEnrollmentUtteranceUrl:(id)url;
- (id)description;
- (void)parseMetadataFromDictionary:(id)dictionary;
@end

@implementation SSREnrollmentUtterance

- (id)description
{
  approximateGenerationDate = [(SSREnrollmentUtterance *)self approximateGenerationDate];
  if (approximateGenerationDate)
  {
    approximateGenerationDate2 = [(SSREnrollmentUtterance *)self approximateGenerationDate];
    v5 = [approximateGenerationDate2 description];
  }

  else
  {
    v5 = @"nil";
  }

  v6 = MEMORY[0x277CCACA8];
  enrollmentUtteranceUrl = [(SSREnrollmentUtterance *)self enrollmentUtteranceUrl];
  if ([(SSREnrollmentUtterance *)self isExplicit])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  triggerPhrase = [(SSREnrollmentUtterance *)self triggerPhrase];
  productType = [(SSREnrollmentUtterance *)self productType];
  productVersion = [(SSREnrollmentUtterance *)self productVersion];
  v12 = [v6 stringWithFormat:@"SSREnrollmentUtterance: URL=%@, isExplicit=%@, triggerPhrase=%lu, productType=%@, productVersion=%@, approximateGenerationDate=%@", enrollmentUtteranceUrl, v8, triggerPhrase, productType, productVersion, v5];

  return v12;
}

- (void)parseMetadataFromDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  self->_isExplicit = ![SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrainedFromMetaDict:dictionaryCopy];
  v5 = [SSRVoiceProfileMetadataManager getUtterancePhIdFromMetaDict:dictionaryCopy];
  v6 = v5;
  if (v5)
  {
    v7 = +[SSRUtils convertToEnrollmentTriggerPhraseWithPhId:](SSRUtils, "convertToEnrollmentTriggerPhraseWithPhId:", [v5 unsignedIntegerValue]);
  }

  else
  {
    v8 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315138;
      v22 = "[SSREnrollmentUtterance parseMetadataFromDictionary:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s Failed to extract phId from metadata, using default trigger phrase", &v21, 0xCu);
    }

    v7 = 0;
  }

  self->_triggerPhrase = v7;
  v9 = [dictionaryCopy objectForKeyedSubscript:@"productType"];
  productType = self->_productType;
  self->_productType = v9;

  v11 = [dictionaryCopy objectForKeyedSubscript:@"productVersion"];
  productVersion = self->_productVersion;
  self->_productVersion = v11;

  v13 = [dictionaryCopy objectForKeyedSubscript:@"grainedDate"];
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    p_approximateGenerationDate = &self->_approximateGenerationDate;
LABEL_12:
    v19 = *p_approximateGenerationDate;
    *p_approximateGenerationDate = 0;

    goto LABEL_13;
  }

  defaultDateFormatter = [MEMORY[0x277D018F8] defaultDateFormatter];
  v15 = [defaultDateFormatter dateFromString:v13];
  approximateGenerationDate = self->_approximateGenerationDate;
  p_approximateGenerationDate = &self->_approximateGenerationDate;
  *p_approximateGenerationDate = v15;

  if (!*p_approximateGenerationDate)
  {
    v18 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v21 = 136315394;
      v22 = "[SSREnrollmentUtterance parseMetadataFromDictionary:]";
      v23 = 2112;
      v24 = v13;
      _os_log_error_impl(&dword_225E12000, v18, OS_LOG_TYPE_ERROR, "%s Failed to parse grainedDate string: %@, setting to nil", &v21, 0x16u);
    }

    goto LABEL_12;
  }

LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
}

- (SSREnrollmentUtterance)initWithEnrollmentUtteranceUrl:(id)url
{
  v27 = *MEMORY[0x277D85DE8];
  urlCopy = url;
  v22.receiver = self;
  v22.super_class = SSREnrollmentUtterance;
  v6 = [(SSREnrollmentUtterance *)&v22 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!urlCopy)
  {
    v15 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[SSREnrollmentUtterance initWithEnrollmentUtteranceUrl:]";
      _os_log_error_impl(&dword_225E12000, v15, OS_LOG_TYPE_ERROR, "%s enrollmentUtteranceUrl cannot be nil", buf, 0xCu);
    }

    goto LABEL_13;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [urlCopy path];
  v9 = [defaultManager fileExistsAtPath:path];

  if ((v9 & 1) == 0)
  {
    v16 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v14 = 0;
      goto LABEL_14;
    }

    v11 = v16;
    path2 = [urlCopy path];
    *buf = 136315394;
    v24 = "[SSREnrollmentUtterance initWithEnrollmentUtteranceUrl:]";
    v25 = 2112;
    v26 = path2;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Audio file does not exist at path: %@", buf, 0x16u);
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_enrollmentUtteranceUrl, url);
  uRLByDeletingPathExtension = [urlCopy URLByDeletingPathExtension];
  v11 = [uRLByDeletingPathExtension URLByAppendingPathExtension:@"json"];

  path3 = [v11 path];
  v13 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:path3];

  if (!v13)
  {
    v18 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    path2 = v18;
    path4 = [v11 path];
    *buf = 136315394;
    v24 = "[SSREnrollmentUtterance initWithEnrollmentUtteranceUrl:]";
    v25 = 2112;
    v26 = path4;
    _os_log_error_impl(&dword_225E12000, path2, OS_LOG_TYPE_ERROR, "%s metadatafile cannot be loaded into Dictionary: %@", buf, 0x16u);

LABEL_16:
    goto LABEL_12;
  }

  [(SSREnrollmentUtterance *)v6 parseMetadataFromDictionary:v13];

LABEL_6:
  v14 = v6;
LABEL_14:

  v19 = *MEMORY[0x277D85DE8];
  return v14;
}

@end