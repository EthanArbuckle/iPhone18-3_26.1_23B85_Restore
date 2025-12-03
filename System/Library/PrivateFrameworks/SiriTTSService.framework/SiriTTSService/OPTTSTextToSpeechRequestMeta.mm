@interface OPTTSTextToSpeechRequestMeta
- (NSString)app_id;
- (OPTTSTextToSpeechRequestMeta)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestMeta *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestMeta>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)channel_type;
@end

@implementation OPTTSTextToSpeechRequestMeta

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
  v2.var0 = [(OPTTSTextToSpeechRequestMeta *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__44__OPTTSTextToSpeechRequestMeta_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestMeta>)addObjectToBuffer:(void *)buffer
{
  channel_type = [(OPTTSTextToSpeechRequestMeta *)self channel_type];
  app_id = [(OPTTSTextToSpeechRequestMeta *)self app_id];
  v7 = app_id;
  if (!app_id)
  {
    app_id = &stru_1F28C4E90;
  }

  uTF8String = [(__CFString *)app_id UTF8String];
  v9 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v10 = *(buffer + 10);
  v11 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, channel_type);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 6, uTF8String);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v11 + v10);
}

- (NSString)app_id
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

- (int64_t)channel_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (OPTTSTextToSpeechRequestMeta)initWithFlatbuffData:(id)data root:(const TextToSpeechRequestMeta *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestMeta;
  v10 = [(OPTTSTextToSpeechRequestMeta *)&v25 init];
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
  if (v18 && !siri::speech::schema_fb::TextToSpeechRequestMeta::Verify(v18, v21))
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