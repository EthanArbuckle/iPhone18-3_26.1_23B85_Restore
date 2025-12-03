@interface QSSTextToSpeechRequestProsodyTransferConfig
- (NSString)user_voice_profile_url;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)buffer;
- (QSSTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyTransferConfig *)root verify:(BOOL)verify;
- (QSSTextToSpeechSpeechFeatureInputWave)wave_data;
- (QSSTextToSpeechUserVoiceProfile)user_voice_profile;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechRequestProsodyTransferConfig

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSTextToSpeechRequestProsodyTransferConfig *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__59__QSSTextToSpeechRequestProsodyTransferConfig_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig>)addObjectToBuffer:(void *)buffer
{
  wave_data = [(QSSTextToSpeechRequestProsodyTransferConfig *)self wave_data];
  v6 = [wave_data addObjectToBuffer:buffer];

  user_voice_profile = [(QSSTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile];
  v8 = [user_voice_profile addObjectToBuffer:buffer];

  user_voice_profile_url = [(QSSTextToSpeechRequestProsodyTransferConfig *)self user_voice_profile_url];
  v10 = user_voice_profile_url;
  if (!user_voice_profile_url)
  {
    user_voice_profile_url = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)user_voice_profile_url UTF8String];
  v12 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v12);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v14 = *(buffer + 5);
  v15 = *(buffer + 6);
  v16 = *(buffer + 4);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, v6);
  if (v8)
  {
    v17 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, v17);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, String);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v16 - v15 + v14);
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

- (QSSTextToSpeechUserVoiceProfile)user_voice_profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"user_voice_profile"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechUserVoiceProfile alloc];
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

    v3 = [(QSSTextToSpeechUserVoiceProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"user_voice_profile"];
  }

  return v3;
}

- (QSSTextToSpeechSpeechFeatureInputWave)wave_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"wave_data"];
  if (!v3)
  {
    v4 = [QSSTextToSpeechSpeechFeatureInputWave alloc];
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

    v3 = [(QSSTextToSpeechSpeechFeatureInputWave *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"wave_data"];
  }

  return v3;
}

- (QSSTextToSpeechRequestProsodyTransferConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestProsodyTransferConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechRequestProsodyTransferConfig;
  v10 = [(QSSTextToSpeechRequestProsodyTransferConfig *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
      v25 = v18;
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end