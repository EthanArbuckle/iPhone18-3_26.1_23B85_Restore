@interface FTTextToSpeechRequestDevConfig
- (BOOL)return_log;
- (BOOL)return_server_info;
- (FTTextToSpeechRequestDevConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestDevConfig *)root verify:(BOOL)verify;
- (NSString)resource_asset_path;
- (NSString)voice_asset_path;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestDevConfig>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation FTTextToSpeechRequestDevConfig

- (FTTextToSpeechRequestDevConfig)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestDevConfig *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechRequestDevConfig;
  v10 = [(FTTextToSpeechRequestDevConfig *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify(v18, v21))
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

- (BOOL)return_log
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 5u && (v4 = *v3[4].var0) != 0 && root[v4].var0[0] != 0;
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (BOOL)return_server_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestDevConfig>)addObjectToBuffer:(void *)buffer
{
  return_log = [(FTTextToSpeechRequestDevConfig *)self return_log];
  voice_asset_path = [(FTTextToSpeechRequestDevConfig *)self voice_asset_path];
  v7 = voice_asset_path;
  if (!voice_asset_path)
  {
    voice_asset_path = &stru_284834138;
  }

  uTF8String = [(__CFString *)voice_asset_path UTF8String];
  v9 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  resource_asset_path = [(FTTextToSpeechRequestDevConfig *)self resource_asset_path];
  v12 = resource_asset_path;
  if (!resource_asset_path)
  {
    resource_asset_path = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)resource_asset_path UTF8String];
  v14 = strlen(uTF8String2);
  LODWORD(uTF8String2) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v14);

  return_server_info = [(FTTextToSpeechRequestDevConfig *)self return_server_info];
  *(buffer + 70) = 1;
  v16 = *(buffer + 10);
  v17 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, return_log, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, uTF8String2);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 10, return_server_info, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v17 + v16);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechRequestDevConfig *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__46__FTTextToSpeechRequestDevConfig_flatbuffData__block_invoke(uint64_t a1)
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