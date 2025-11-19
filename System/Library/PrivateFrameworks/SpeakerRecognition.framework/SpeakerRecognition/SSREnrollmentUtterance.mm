@interface SSREnrollmentUtterance
- (SSREnrollmentUtterance)initWithEnrollmentUtteranceUrl:(id)a3;
- (id)description;
- (void)parseMetadataFromDictionary:(id)a3;
@end

@implementation SSREnrollmentUtterance

- (id)description
{
  v3 = [(SSREnrollmentUtterance *)self approximateGenerationDate];
  if (v3)
  {
    v4 = [(SSREnrollmentUtterance *)self approximateGenerationDate];
    v5 = [v4 description];
  }

  else
  {
    v5 = @"nil";
  }

  v6 = MEMORY[0x277CCACA8];
  v7 = [(SSREnrollmentUtterance *)self enrollmentUtteranceUrl];
  if ([(SSREnrollmentUtterance *)self isExplicit])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = [(SSREnrollmentUtterance *)self triggerPhrase];
  v10 = [(SSREnrollmentUtterance *)self productType];
  v11 = [(SSREnrollmentUtterance *)self productVersion];
  v12 = [v6 stringWithFormat:@"SSREnrollmentUtterance: URL=%@, isExplicit=%@, triggerPhrase=%lu, productType=%@, productVersion=%@, approximateGenerationDate=%@", v7, v8, v9, v10, v11, v5];

  return v12;
}

- (void)parseMetadataFromDictionary:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  self->_isExplicit = ![SSRVoiceProfileMetadataManager isUtteranceImplicitlyTrainedFromMetaDict:v4];
  v5 = [SSRVoiceProfileMetadataManager getUtterancePhIdFromMetaDict:v4];
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
  v9 = [v4 objectForKeyedSubscript:@"productType"];
  productType = self->_productType;
  self->_productType = v9;

  v11 = [v4 objectForKeyedSubscript:@"productVersion"];
  productVersion = self->_productVersion;
  self->_productVersion = v11;

  v13 = [v4 objectForKeyedSubscript:@"grainedDate"];
  if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    p_approximateGenerationDate = &self->_approximateGenerationDate;
LABEL_12:
    v19 = *p_approximateGenerationDate;
    *p_approximateGenerationDate = 0;

    goto LABEL_13;
  }

  v14 = [MEMORY[0x277D018F8] defaultDateFormatter];
  v15 = [v14 dateFromString:v13];
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

- (SSREnrollmentUtterance)initWithEnrollmentUtteranceUrl:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v22.receiver = self;
  v22.super_class = SSREnrollmentUtterance;
  v6 = [(SSREnrollmentUtterance *)&v22 init];
  if (!v6)
  {
    goto LABEL_6;
  }

  if (!v5)
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

  v7 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v5 path];
  v9 = [v7 fileExistsAtPath:v8];

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
    v17 = [v5 path];
    *buf = 136315394;
    v24 = "[SSREnrollmentUtterance initWithEnrollmentUtteranceUrl:]";
    v25 = 2112;
    v26 = v17;
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, "%s Audio file does not exist at path: %@", buf, 0x16u);
    goto LABEL_16;
  }

  objc_storeStrong(&v6->_enrollmentUtteranceUrl, a3);
  v10 = [v5 URLByDeletingPathExtension];
  v11 = [v10 URLByAppendingPathExtension:@"json"];

  v12 = [v11 path];
  v13 = [SSRVoiceProfileMetadataManager loadMetadataJsonObjectFromMetadataFile:v12];

  if (!v13)
  {
    v18 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
LABEL_12:

      goto LABEL_13;
    }

    v17 = v18;
    v21 = [v11 path];
    *buf = 136315394;
    v24 = "[SSREnrollmentUtterance initWithEnrollmentUtteranceUrl:]";
    v25 = 2112;
    v26 = v21;
    _os_log_error_impl(&dword_225E12000, v17, OS_LOG_TYPE_ERROR, "%s metadatafile cannot be loaded into Dictionary: %@", buf, 0x16u);

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