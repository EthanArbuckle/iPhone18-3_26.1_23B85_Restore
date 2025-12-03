@interface SSRSpeakerProfileEmbedding
- (SSRSpeakerProfileEmbedding)initWithCoder:(id)coder;
- (SSRSpeakerProfileEmbedding)initWithSiriSharedUserId:(id)id embeddings:(id)embeddings numEmbedding:(unsigned int)embedding dimension:(unsigned int)dimension speakerRecognizerType:(unint64_t)type;
- (SSRSpeakerProfileEmbedding)initWithVoiceProfileId:(id)id embeddings:(id)embeddings numEmbedding:(unsigned int)embedding dimension:(unsigned int)dimension speakerRecognizerType:(unint64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SSRSpeakerProfileEmbedding

- (id)description
{
  string = [MEMORY[0x277CCAB68] string];
  [string appendFormat:@"[siriSharedUserId = %@]", self->_siriSharedUserId];
  [string appendFormat:@"[voiceProfileId = %@]", self->_voiceProfileId];
  [string appendFormat:@"[embeddings = %@]", self->_embeddings];
  [string appendFormat:@"[numEmbedding = %u]", self->_numEmbedding];
  [string appendFormat:@"[dimension = %u]", self->_dimension];
  [string appendFormat:@"[speakerRecognizerType = %lu]", self->_speakerRecognizerType];

  return string;
}

- (SSRSpeakerProfileEmbedding)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = MEMORY[0x277D015D8];
  v6 = *MEMORY[0x277D015D8];
  if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    _os_log_impl(&dword_225E12000, v6, OS_LOG_TYPE_DEFAULT, "%s init with coder:", &v27, 0xCu);
  }

  if ([coderCopy containsValueForKey:@"siriSharedUserId"])
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"siriSharedUserId"];
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

  if ([coderCopy containsValueForKey:@"voiceProfileId"])
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"voiceProfileId"];
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

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"numEmbeddings"];
  unsignedIntValue = [v11 unsignedIntValue];

  v13 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    v29 = 1024;
    LODWORD(v30) = unsignedIntValue;
    _os_log_impl(&dword_225E12000, v13, OS_LOG_TYPE_DEFAULT, "%s Num Embeddings = %d", &v27, 0x12u);
  }

  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dimension"];
  unsignedIntValue2 = [v14 unsignedIntValue];

  v16 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315394;
    v28 = "[SSRSpeakerProfileEmbedding initWithCoder:]";
    v29 = 1024;
    LODWORD(v30) = unsignedIntValue2;
    _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s dimensions = %d", &v27, 0x12u);
  }

  if ([coderCopy containsValueForKey:@"embeddings"])
  {
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddings"];
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

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recognitionType"];
  unsignedIntValue3 = [v21 unsignedIntValue];

  if (v7)
  {
    v23 = [(SSRSpeakerProfileEmbedding *)self initWithSiriSharedUserId:v7 embeddings:v17 numEmbedding:unsignedIntValue dimension:unsignedIntValue2 speakerRecognizerType:unsignedIntValue3];
  }

  else
  {
    if (!v9)
    {
      selfCopy = 0;
      goto LABEL_25;
    }

    v23 = [(SSRSpeakerProfileEmbedding *)self initWithVoiceProfileId:v9 embeddings:v17 numEmbedding:unsignedIntValue dimension:unsignedIntValue2 speakerRecognizerType:unsignedIntValue3];
  }

  self = v23;
  selfCopy = self;
LABEL_25:

  v25 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
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

    [coderCopy encodeObject:siriSharedUserId forKey:@"siriSharedUserId"];
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

    [coderCopy encodeObject:voiceProfileId forKey:@"voiceProfileId"];
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

    [coderCopy encodeObject:embeddings forKey:@"embeddings"];
  }

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numEmbedding];
  [coderCopy encodeObject:v15 forKey:@"numEmbeddings"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_dimension];
  [coderCopy encodeObject:v16 forKey:@"dimension"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_speakerRecognizerType];
  [coderCopy encodeObject:v17 forKey:@"recognitionType"];

  v18 = *MEMORY[0x277D85DE8];
}

- (SSRSpeakerProfileEmbedding)initWithVoiceProfileId:(id)id embeddings:(id)embeddings numEmbedding:(unsigned int)embedding dimension:(unsigned int)dimension speakerRecognizerType:(unint64_t)type
{
  idCopy = id;
  embeddingsCopy = embeddings;
  v18.receiver = self;
  v18.super_class = SSRSpeakerProfileEmbedding;
  v15 = [(SSRSpeakerProfileEmbedding *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_voiceProfileId, id);
    objc_storeStrong(&v16->_embeddings, embeddings);
    v16->_numEmbedding = embedding;
    v16->_dimension = dimension;
    v16->_speakerRecognizerType = type;
  }

  return v16;
}

- (SSRSpeakerProfileEmbedding)initWithSiriSharedUserId:(id)id embeddings:(id)embeddings numEmbedding:(unsigned int)embedding dimension:(unsigned int)dimension speakerRecognizerType:(unint64_t)type
{
  idCopy = id;
  embeddingsCopy = embeddings;
  v18.receiver = self;
  v18.super_class = SSRSpeakerProfileEmbedding;
  v15 = [(SSRSpeakerProfileEmbedding *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_siriSharedUserId, id);
    objc_storeStrong(&v16->_embeddings, embeddings);
    v16->_numEmbedding = embedding;
    v16->_dimension = dimension;
    v16->_speakerRecognizerType = type;
  }

  return v16;
}

@end