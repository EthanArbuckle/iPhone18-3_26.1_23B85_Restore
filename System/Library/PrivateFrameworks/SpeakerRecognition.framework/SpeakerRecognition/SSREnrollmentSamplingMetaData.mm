@interface SSREnrollmentSamplingMetaData
- (SSREnrollmentSamplingMetaData)initWithDictionary:(id)a3;
- (SSREnrollmentSamplingMetaData)initWithSelectionStatus:(id)a3 voiceProfileId:(id)a4;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation SSREnrollmentSamplingMetaData

- (id)dictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = v3;
  selectionStatus = self->_selectionStatus;
  if (selectionStatus)
  {
    [v3 setObject:selectionStatus forKeyedSubscript:@"SSRSamplingSelectionState"];
  }

  voiceProfileId = self->_voiceProfileId;
  if (voiceProfileId)
  {
    [v4 setObject:voiceProfileId forKeyedSubscript:@"SSRSamplingVoiceProfileId"];
  }

  return v4;
}

- (id)description
{
  v2 = [(SSREnrollmentSamplingMetaData *)self dictionaryRepresentation];
  v3 = [v2 description];

  return v3;
}

- (SSREnrollmentSamplingMetaData)initWithDictionary:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v15 = 136315138;
    v16 = "[SSREnrollmentSamplingMetaData initWithDictionary:]";
    v12 = "%s invalid input from dictionary";
LABEL_11:
    _os_log_error_impl(&dword_225E12000, v11, OS_LOG_TYPE_ERROR, v12, &v15, 0xCu);
    goto LABEL_12;
  }

  v6 = [v4 objectForKeyedSubscript:@"SSRSamplingVoiceProfileId"];

  if (!v6)
  {
    v11 = *MEMORY[0x277D01970];
    if (!os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    v15 = 136315138;
    v16 = "[SSREnrollmentSamplingMetaData initWithDictionary:]";
    v12 = "%s invalid voiceProfileIdKey";
    goto LABEL_11;
  }

  v7 = [v5 objectForKeyedSubscript:@"SSRSamplingSelectionState"];

  if (!v7)
  {
    v11 = *MEMORY[0x277D01970];
    if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
    {
      v15 = 136315138;
      v16 = "[SSREnrollmentSamplingMetaData initWithDictionary:]";
      v12 = "%s invalid selection state";
      goto LABEL_11;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v8 = [v5 objectForKeyedSubscript:@"SSRSamplingSelectionState"];
  v9 = [v5 objectForKeyedSubscript:@"SSRSamplingVoiceProfileId"];
  self = [(SSREnrollmentSamplingMetaData *)self initWithSelectionStatus:v8 voiceProfileId:v9];

  v10 = self;
LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
  return v10;
}

- (SSREnrollmentSamplingMetaData)initWithSelectionStatus:(id)a3 voiceProfileId:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = SSREnrollmentSamplingMetaData;
  v9 = [(SSREnrollmentSamplingMetaData *)&v15 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    goto LABEL_5;
  }

  if (v7 && v8)
  {
    objc_storeStrong(&v9->_selectionStatus, a3);
    objc_storeStrong(p_isa + 2, a4);
LABEL_5:
    v11 = p_isa;
    goto LABEL_9;
  }

  v12 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v17 = "[SSREnrollmentSamplingMetaData initWithSelectionStatus:voiceProfileId:]";
    v18 = 2112;
    v19 = v7;
    v20 = 2112;
    v21 = v8;
    _os_log_error_impl(&dword_225E12000, v12, OS_LOG_TYPE_ERROR, "%s initializing samplingMetaData with nil inputs: %@, %@", buf, 0x20u);
  }

  v11 = 0;
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

@end