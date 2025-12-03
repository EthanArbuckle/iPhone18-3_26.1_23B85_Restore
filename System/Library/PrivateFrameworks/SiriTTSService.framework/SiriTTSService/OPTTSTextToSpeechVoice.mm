@interface OPTTSTextToSpeechVoice
- (NSString)gender;
- (NSString)language;
- (NSString)name;
- (NSString)quality;
- (NSString)type;
- (NSString)version;
- (OPTTSTextToSpeechVoice)initWithFlatbuffData:(id)data root:(const TextToSpeechVoice *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TextToSpeechVoice>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechVoice

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
  v2.var0 = [(OPTTSTextToSpeechVoice *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__38__OPTTSTextToSpeechVoice_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechVoice>)addObjectToBuffer:(void *)buffer
{
  language = [(OPTTSTextToSpeechVoice *)self language];
  v6 = language;
  if (!language)
  {
    language = &stru_1F28C4E90;
  }

  uTF8String = [(__CFString *)language UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  gender = [(OPTTSTextToSpeechVoice *)self gender];
  v11 = gender;
  if (!gender)
  {
    gender = &stru_1F28C4E90;
  }

  uTF8String2 = [(__CFString *)gender UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  name = [(OPTTSTextToSpeechVoice *)self name];
  v16 = name;
  if (!name)
  {
    name = &stru_1F28C4E90;
  }

  uTF8String3 = [(__CFString *)name UTF8String];
  v18 = strlen(uTF8String3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  version = [(OPTTSTextToSpeechVoice *)self version];
  v21 = version;
  if (!version)
  {
    version = &stru_1F28C4E90;
  }

  uTF8String4 = [(__CFString *)version UTF8String];
  v23 = strlen(uTF8String4);
  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  quality = [(OPTTSTextToSpeechVoice *)self quality];
  v26 = quality;
  if (!quality)
  {
    quality = &stru_1F28C4E90;
  }

  uTF8String5 = [(__CFString *)quality UTF8String];
  v28 = strlen(uTF8String5);
  v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v28);

  type = [(OPTTSTextToSpeechVoice *)self type];
  v31 = type;
  if (!type)
  {
    type = &stru_1F28C4E90;
  }

  uTF8String6 = [(__CFString *)type UTF8String];
  v33 = strlen(uTF8String6);
  LODWORD(uTF8String6) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v34 = *(buffer + 10);
  v35 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 8, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 10, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 12, v29);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 14, uTF8String6);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v35 + v34);
}

- (NSString)type
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 14].var0;
  if (*root[-v3 + 14].var0)
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

- (NSString)quality
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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

- (NSString)version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 10].var0;
  if (*root[-v3 + 10].var0)
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

- (NSString)name
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

- (NSString)gender
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

- (NSString)language
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 4].var0;
  if (*root[-v3 + 4].var0)
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

- (OPTTSTextToSpeechVoice)initWithFlatbuffData:(id)data root:(const TextToSpeechVoice *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechVoice;
  v10 = [(OPTTSTextToSpeechVoice *)&v25 init];
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
  if (v18 && !siri::speech::schema_fb::TextToSpeechVoice::Verify(v18, v21))
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