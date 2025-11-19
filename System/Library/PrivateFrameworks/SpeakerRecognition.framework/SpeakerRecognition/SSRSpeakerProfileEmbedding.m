@interface SSRSpeakerProfileEmbedding
- (SSRSpeakerProfileEmbedding)initWithCoder:(id)a3;
- (SSRSpeakerProfileEmbedding)initWithSiriSharedUserId:(id)a3 embeddings:(id)a4 numEmbedding:(unsigned int)a5 dimension:(unsigned int)a6 speakerRecognizerType:(unint64_t)a7;
- (SSRSpeakerProfileEmbedding)initWithVoiceProfileId:(id)a3 embeddings:(id)a4 numEmbedding:(unsigned int)a5 dimension:(unsigned int)a6 speakerRecognizerType:(unint64_t)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SSRSpeakerProfileEmbedding

- (id)description
{
  v3 = [MEMORY[0x277CCAB68] string];
  [v3 appendFormat:@"[siriSharedUserId = %@]", self->_siriSharedUserId];
  [v3 appendFormat:@"[voiceProfileId = %@]", self->_voiceProfileId];
  [v3 appendFormat:@"[embeddings = %@]", self->_embeddings];
  [v3 appendFormat:@"[numEmbedding = %u]", self->_numEmbedding];
  [v3 appendFormat:@"[dimension = %u]", self->_dimension];
  [v3 appendFormat:@"[speakerRecognizerType = %lu]", self->_speakerRecognizerType];

  return v3;
}

- (SSRSpeakerProfileEmbedding)initWithCoder:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D015D8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s init with coder:", &v27, 0xCu);
  }

  if ([v4 containsValueForKey:@"siriSharedUserId"])
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"siriSharedUserId"];
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315394;
      v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
      v29 = 2112;
      v30 = v7;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s sharedUserId = %@", &v27, 0x16u);
    }
  }

  else
  {
    v7 = 0;
  }

  if ([v4 containsValueForKey:@"voiceProfileId"])
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"voiceProfileId"];
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315394;
      v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
      v29 = 2112;
      v30 = v9;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s voiceProfileId = %@", &v27, 0x16u);
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"numEmbeddings"];
  v12 = [v11 unsignedIntValue];

  v13 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    v29 = 1024;
    LODWORD(v30) = v12;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Num Embeddings = %d", &v27, 0x12u);
  }

  v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dimension"];
  v15 = [v14 unsignedIntValue];

  v16 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    v29 = 1024;
    LODWORD(v30) = v15;
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s dimensions = %d", &v27, 0x12u);
  }

  if ([v4 containsValueForKey:@"embeddings"])
  {
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"embeddings"];
  }

  else
  {
    v17 = 0;
  }

  v18 = *v5;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v18;
    v20 = [v17 length];
    v27 = 136315394;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    v29 = 1024;
    LODWORD(v30) = v20;
    _os_log_impl(&dword_225E12000, v19, OS_LOG_TYPE_DEFAULT, "%s Embeddings = %d", &v27, 0x12u);
  }

  v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recognitionType"];
  v22 = [v21 unsignedIntValue];

  if (v7)
  {
    v23 = [(SSRSpeakerProfileEmbedding *)self initWithSiriSharedUserId:v7 embeddings:v17 numEmbedding:v12 dimension:v15 speakerRecognizerType:v22];
  }

  else
  {
    if (!v9)
    {
      v24 = 0;
      goto LABEL_25;
    }

    v23 = [(SSRSpeakerProfileEmbedding *)self initWithVoiceProfileId:v9 embeddings:v17 numEmbedding:v12 dimension:v15 speakerRecognizerType:v22];
  }

  self = v23;
  v24 = self;
LABEL_25:

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)encodeWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D015D8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315138;
    v20 = "[SSRSpeakerProfileEmbedding encodeWithCoder:]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s Encode with coder:", &v19, 0xCu);
  }

  siriSharedUserId = self->_siriSharedUserId;
  if (siriSharedUserId)
  {
    v8 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SSRSpeakerProfileEmbedding encodeWithCoder:]";
      v21 = 2112;
      v22 = siriSharedUserId;
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s SharedUserId = %@", &v19, 0x16u);
      siriSharedUserId = self->_siriSharedUserId;
    }

    [v4 encodeObject:siriSharedUserId forKey:@"siriSharedUserId"];
  }

  voiceProfileId = self->_voiceProfileId;
  if (voiceProfileId)
  {
    v10 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315394;
      v20 = "[SSRSpeakerProfileEmbedding encodeWithCoder:]";
      v21 = 2112;
      v22 = voiceProfileId;
      _os_log_impl(&dword_225E12000, v10, OS_LOG_TYPE_DEFAULT, "%s VoiceProfileId = %@", &v19, 0x16u);
      voiceProfileId = self->_voiceProfileId;
    }

    [v4 encodeObject:voiceProfileId forKey:@"voiceProfileId"];
  }

  embeddings = self->_embeddings;
  if (embeddings)
  {
    v12 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [(NSData *)embeddings length];
      v19 = 136315394;
      v20 = "[SSRSpeakerProfileEmbedding encodeWithCoder:]";
      v21 = 1024;
      LODWORD(v22) = v14;
      _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Embeddings = %d", &v19, 0x12u);

      embeddings = self->_embeddings;
    }

    [v4 encodeObject:embeddings forKey:@"embeddings"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEmbedding];
  [v4 encodeObject:v15 forKey:@"numEmbeddings"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dimension];
  [v4 encodeObject:v16 forKey:@"dimension"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_speakerRecognizerType];
  [v4 encodeObject:v17 forKey:@"recognitionType"];

  v18 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerProfileEmbedding)initWithVoiceProfileId:(id)a3 embeddings:(id)a4 numEmbedding:(unsigned int)a5 dimension:(unsigned int)a6 speakerRecognizerType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = SSRSpeakerProfileEmbedding;
  v15 = [(SSRSpeakerProfileEmbedding *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_voiceProfileId, a3);
    objc_storeStrong(&v16->_embeddings, a4);
    v16->_numEmbedding = a5;
    v16->_dimension = a6;
    v16->_speakerRecognizerType = a7;
  }

  return v16;
}

- (SSRSpeakerProfileEmbedding)initWithSiriSharedUserId:(id)a3 embeddings:(id)a4 numEmbedding:(unsigned int)a5 dimension:(unsigned int)a6 speakerRecognizerType:(unint64_t)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = SSRSpeakerProfileEmbedding;
  v15 = [(SSRSpeakerProfileEmbedding *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_siriSharedUserId, a3);
    objc_storeStrong(&v16->_embeddings, a4);
    v16->_numEmbedding = a5;
    v16->_dimension = a6;
    v16->_speakerRecognizerType = a7;
  }

  return v16;
}

@end