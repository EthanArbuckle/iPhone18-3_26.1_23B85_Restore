@interface FTTextToSpeechSpeechFeatureOutputFeature
- (FTTextToSpeechSpeechFeatureOutputFeature)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureOutputFeature *)root verify:(BOOL)verify;
- (NSString)phone_name;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>)addObjectToBuffer:(void *)buffer;
- (float)begin_time;
- (float)duration;
- (float)end_time;
- (float)energy;
- (float)pitch;
- (id)flatbuffData;
- (int)word_id;
@end

@implementation FTTextToSpeechSpeechFeatureOutputFeature

- (FTTextToSpeechSpeechFeatureOutputFeature)initWithFlatbuffData:(id)data root:(const TextToSpeechSpeechFeatureOutputFeature *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechSpeechFeatureOutputFeature;
  v10 = [(FTTextToSpeechSpeechFeatureOutputFeature *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature::Verify(v18, v21))
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

- (NSString)phone_name
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

- (float)begin_time
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 7u)
  {
    v5 = *v3[6].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)end_time
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 9u)
  {
    v5 = *v3[8].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)duration
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xBu)
  {
    v5 = *v3[10].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)pitch
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xDu)
  {
    v5 = *v3[12].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (float)energy
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 0xFu)
  {
    v5 = *v3[14].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (int)word_id
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>)addObjectToBuffer:(void *)buffer
{
  phone_name = [(FTTextToSpeechSpeechFeatureOutputFeature *)self phone_name];
  v6 = phone_name;
  if (!phone_name)
  {
    phone_name = &stru_284834138;
  }

  uTF8String = [(__CFString *)phone_name UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  [(FTTextToSpeechSpeechFeatureOutputFeature *)self begin_time];
  v10 = v9;
  [(FTTextToSpeechSpeechFeatureOutputFeature *)self end_time];
  v12 = v11;
  [(FTTextToSpeechSpeechFeatureOutputFeature *)self duration];
  v14 = v13;
  [(FTTextToSpeechSpeechFeatureOutputFeature *)self pitch];
  v16 = v15;
  [(FTTextToSpeechSpeechFeatureOutputFeature *)self energy];
  v18 = v17;
  word_id = [(FTTextToSpeechSpeechFeatureOutputFeature *)self word_id];
  *(buffer + 70) = 1;
  v20 = *(buffer + 10);
  v21 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, uTF8String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 6, v10, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 8, v12, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 10, v14, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 12, v16, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 14, v18, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, word_id, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v21 + v20);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechSpeechFeatureOutputFeature *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__56__FTTextToSpeechSpeechFeatureOutputFeature_flatbuffData__block_invoke(uint64_t a1)
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