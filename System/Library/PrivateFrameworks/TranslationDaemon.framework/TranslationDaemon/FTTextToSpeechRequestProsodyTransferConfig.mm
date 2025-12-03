@interface FTTextToSpeechRequestProsodyTransferConfig
- (FTTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyTransferConfig *)root verify:(BOOL)verify;
- (FTTextToSpeechSpeechFeatureInputWave)wave_data;
- (FTTextToSpeechUserVoiceProfile)user_voice_profile;
- (NSString)user_voice_profile_url;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation FTTextToSpeechRequestProsodyTransferConfig

- (FTTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyTransferConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechRequestProsodyTransferConfig;
  v10 = [(FTTextToSpeechRequestProsodyTransferConfig *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
}

- (FTTextToSpeechSpeechFeatureInputWave)wave_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"wave_data"];
  if (!v3)
  {
    v4 = [FTTextToSpeechSpeechFeatureInputWave alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechSpeechFeatureInputWave *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"wave_data"];
  }

  return v3;
}

- (FTTextToSpeechUserVoiceProfile)user_voice_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_voice_profile"];
  if (!v3)
  {
    v4 = [FTTextToSpeechUserVoiceProfile alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 7u && (v7 = *v6[6].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechUserVoiceProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_voice_profile"];
  }

  return v3;
}

- (NSString)user_voice_profile_url
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 8].var0;
  if (*root[-v3 + 8].var0)
  {
    v3 = *root[v4].var0;
    v5 = &root[v4 + v3];
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v3 = v3;
  }

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)buffer
{
  wave_data = [(FTTextToSpeechRequestProsodyTransferConfig *)self wave_data];
  v6 = [wave_data addObjectToBuffer:buffer];

  user_voice_profile = [(FTTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile];
  v8 = [user_voice_profile addObjectToBuffer:buffer];

  user_voice_profile_url = [(FTTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile_url];
  v10 = user_voice_profile_url;
  if (!user_voice_profile_url)
  {
    user_voice_profile_url = &stru_284834138;
  }

  uTF8String = [(__CFString *)user_voice_profile_url UTF8String];
  v12 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v12);

  *(buffer + 70) = 1;
  v13 = *(buffer + 10);
  v14 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v6);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v8);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, uTF8String);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v14 + v13);
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechRequestProsodyTransferConfig *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__58__FTTextToSpeechRequestProsodyTransferConfig_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end