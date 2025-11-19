@interface QSSTextToSpeechSpeechFeatureOutputFeature
- (NSString)phone_name;
- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>)addObjectToBuffer:(void *)a3;
- (QSSTextToSpeechSpeechFeatureOutputFeature)initWithFlatbuffData:(id)a3 root:(const TextToSpeechSpeechFeatureOutputFeature *)a4 verify:(BOOL)a5;
- (float)begin_time;
- (float)duration;
- (float)end_time;
- (float)energy;
- (float)pitch;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechSpeechFeatureOutputFeature

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
  v2.var0 = [(QSSTextToSpeechSpeechFeatureOutputFeature *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__57__QSSTextToSpeechSpeechFeatureOutputFeature_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSTextToSpeechSpeechFeatureOutputFeature *)self phone_name];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  LODWORD(v7) = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  [(QSSTextToSpeechSpeechFeatureOutputFeature *)self begin_time];
  v10 = v9;
  [(QSSTextToSpeechSpeechFeatureOutputFeature *)self end_time];
  v12 = v11;
  [(QSSTextToSpeechSpeechFeatureOutputFeature *)self duration];
  v14 = v13;
  [(QSSTextToSpeechSpeechFeatureOutputFeature *)self pitch];
  v16 = v15;
  [(QSSTextToSpeechSpeechFeatureOutputFeature *)self energy];
  v18 = v17;
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v19 = *(a3 + 10);
  v20 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, v7);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 6, v10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 8, v12);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 10, v14);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 12, v16);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 14, v18);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v20 + v19);
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

- (QSSTextToSpeechSpeechFeatureOutputFeature)initWithFlatbuffData:(id)a3 root:(const TextToSpeechSpeechFeatureOutputFeature *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechSpeechFeatureOutputFeature;
  v10 = [(QSSTextToSpeechSpeechFeatureOutputFeature *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
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
        if (!siri::speech::schema_fb::TextToSpeechSpeechFeatureOutputFeature::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end