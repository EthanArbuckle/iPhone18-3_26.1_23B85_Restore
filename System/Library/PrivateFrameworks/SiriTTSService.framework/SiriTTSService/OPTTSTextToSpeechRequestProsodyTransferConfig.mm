@interface OPTTSTextToSpeechRequestProsodyTransferConfig
- (NSString)user_voice_profile_url;
- (OPTTSTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestProsodyTransferConfig *)a4 verify:(BOOL)a5;
- (OPTTSTextToSpeechSpeechFeatureInputWave)wave_data;
- (OPTTSTextToSpeechUserVoiceProfile)user_voice_profile;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)a3;
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

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)a3
{
  v5 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self wave_data];
  v6 = [v5 addObjectToBuffer:a3];

  v7 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile];
  v8 = [v7 addObjectToBuffer:a3];

  v9 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile_url];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_1F28C4E90;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v14 = *(a3 + 5);
  v15 = *(a3 + 6);
  v16 = *(a3 + 4);
  if (v6)
  {
    v17 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a3, v6);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 4, v17);
  }

  if (v8)
  {
    v18 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(a3, v8);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v18);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 8, String);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v16 - v15 + v14);
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

- (OPTTSTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestProsodyTransferConfig *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestProsodyTransferConfig;
  v10 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_15;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_14;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_15;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
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