@interface OPTTSTextToSpeechRequestProsodyTransferConfig
- (NSString)user_voice_profile_url;
- (OPTTSTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyTransferConfig *)root verify:(BOOL)verify;
- (OPTTSTextToSpeechSpeechFeatureInputWave)wave_data;
- (OPTTSTextToSpeechUserVoiceProfile)user_voice_profile;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequestProsodyTransferConfig

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__61__OPTTSTextToSpeechRequestProsodyTransferConfig_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)buffer
{
  wave_data = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self wave_data];
  v6 = [wave_data addObjectToBuffer:buffer];

  user_voice_profile = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile];
  v8 = [user_voice_profile addObjectToBuffer:buffer];

  user_voice_profile_url = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile_url];
  v10 = user_voice_profile_url;
  if (!user_voice_profile_url)
  {
    user_voice_profile_url = &stru_1F28C4E90;
  }

  uTF8String = [(__CFString *)user_voice_profile_url UTF8String];
  v12 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v12);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 5);
  v15 = *(buffer + 6);
  v16 = *(buffer + 4);
  if (v6)
  {
    v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v6);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, v17);
  }

  if (v8)
  {
    v18 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v8);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v18);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 8, String);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v16 - v15 + v14);
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (OPTTSTextToSpeechUserVoiceProfile)user_voice_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_voice_profile"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechUserVoiceProfile alloc];
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

    v3 = [(OPTTSTextToSpeechUserVoiceProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_voice_profile"];
  }

  return v3;
}

- (OPTTSTextToSpeechSpeechFeatureInputWave)wave_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"wave_data"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechSpeechFeatureInputWave alloc];
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

    v3 = [(OPTTSTextToSpeechSpeechFeatureInputWave *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"wave_data"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyTransferConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestProsodyTransferConfig;
  v10 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_15;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end