@interface FTTextToSpeechVoice
- (FTTextToSpeechVoice)initWithFlatbuffData:(id)data root:(const TextToSpeechVoice *)root verify:(BOOL)verify;
- (NSString)gender;
- (NSString)identifier;
- (NSString)language;
- (NSString)name;
- (NSString)quality;
- (NSString)type;
- (NSString)version;
- (Offset<siri::speech::schema_fb::TextToSpeechVoice>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
@end

@implementation FTTextToSpeechVoice

- (FTTextToSpeechVoice)initWithFlatbuffData:(id)data root:(const TextToSpeechVoice *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechVoice;
  v10 = [(FTTextToSpeechVoice *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechVoice::Verify(v18, v21))
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSString)identifier
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 16].var0;
  if (*root[-v3 + 16].var0)
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

- (Offset<siri::speech::schema_fb::TextToSpeechVoice>)addObjectToBuffer:(void *)buffer
{
  language = [(FTTextToSpeechVoice *)self language];
  v6 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String = [(__CFString *)language UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  gender = [(FTTextToSpeechVoice *)self gender];
  v11 = gender;
  if (!gender)
  {
    gender = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)gender UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  name = [(FTTextToSpeechVoice *)self name];
  v16 = name;
  if (!name)
  {
    name = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)name UTF8String];
  v18 = strlen(uTF8String3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  version = [(FTTextToSpeechVoice *)self version];
  v21 = version;
  if (!version)
  {
    version = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)version UTF8String];
  v23 = strlen(uTF8String4);
  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  quality = [(FTTextToSpeechVoice *)self quality];
  v26 = quality;
  if (!quality)
  {
    quality = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)quality UTF8String];
  v28 = strlen(uTF8String5);
  v29 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v28);

  type = [(FTTextToSpeechVoice *)self type];
  v31 = type;
  if (!type)
  {
    type = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)type UTF8String];
  v33 = strlen(uTF8String6);
  v34 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v33);

  identifier = [(FTTextToSpeechVoice *)self identifier];
  v36 = identifier;
  if (!identifier)
  {
    identifier = &stru_284834138;
  }

  uTF8String7 = [(__CFString *)identifier UTF8String];
  v38 = strlen(uTF8String7);
  LODWORD(uTF8String7) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String7, v38);

  *(buffer + 70) = 1;
  v39 = *(buffer + 10);
  v40 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v29);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v34);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, uTF8String7);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v40 + v39);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechVoice *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__35__FTTextToSpeechVoice_flatbuffData__block_invoke(uint64_t a1)
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