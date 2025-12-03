@interface OPTTSTextToSpeechRequestDevConfig
- (BOOL)return_log;
- (BOOL)return_server_info;
- (NSString)resource_asset_path;
- (NSString)voice_asset_path;
- (OPTTSTextToSpeechRequestDevConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestDevConfig *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestDevConfig>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequestDevConfig

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
  v2.var0 = [(OPTTSTextToSpeechRequestDevConfig *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__49__OPTTSTextToSpeechRequestDevConfig_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestDevConfig>)addObjectToBuffer:(void *)buffer
{
  return_log = [(OPTTSTextToSpeechRequestDevConfig *)self return_log];
  voice_asset_path = [(OPTTSTextToSpeechRequestDevConfig *)self voice_asset_path];
  v7 = voice_asset_path;
  if (!voice_asset_path)
  {
    voice_asset_path = &stru_1F28C4E90;
  }

  uTF8String = [(__CFString *)voice_asset_path UTF8String];
  v9 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  resource_asset_path = [(OPTTSTextToSpeechRequestDevConfig *)self resource_asset_path];
  v12 = resource_asset_path;
  if (!resource_asset_path)
  {
    resource_asset_path = &stru_1F28C4E90;
  }

  uTF8String2 = [(__CFString *)resource_asset_path UTF8String];
  v14 = strlen(uTF8String2);
  LODWORD(uTF8String2) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v14);

  return_server_info = [(OPTTSTextToSpeechRequestDevConfig *)self return_server_info];
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v16 = *(buffer + 10);
  v17 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, return_log);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 6, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 8, uTF8String2);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 10, return_server_info);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v17 + v16);
}

- (BOOL)return_server_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)resource_asset_path
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

- (NSString)voice_asset_path
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 6].var0;
  if (*root[-v3 + 6].var0)
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

- (BOOL)return_log
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 5u && (v4 = *v3[4].var0) != 0 && root[v4].var0[0] != 0;
}

- (OPTTSTextToSpeechRequestDevConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestDevConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestDevConfig;
  v10 = [(OPTTSTextToSpeechRequestDevConfig *)&v25 init];
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
  if (v18 && !siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify(v18, v21))
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