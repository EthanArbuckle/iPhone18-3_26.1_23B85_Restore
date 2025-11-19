@interface FTLanguageDetectionPrediction
- (BOOL)is_low_confidence;
- (FTLanguageDetectionPrediction)initWithFlatbuffData:(id)a3 root:(const LanguageDetectionPrediction *)a4 verify:(BOOL)a5;
- (NSString)locale;
- (Offset<siri::speech::schema_fb::LanguageDetectionPrediction>)addObjectToBuffer:(void *)a3;
- (float)confidence;
- (float)threshold;
- (id)flatbuffData;
@end

@implementation FTLanguageDetectionPrediction

- (FTLanguageDetectionPrediction)initWithFlatbuffData:(id)a3 root:(const LanguageDetectionPrediction *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTLanguageDetectionPrediction;
  v10 = [(FTLanguageDetectionPrediction *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
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
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::LanguageDetectionPrediction::Verify(v18, v21))
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

- (NSString)locale
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

- (float)confidence
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

- (float)threshold
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

- (BOOL)is_low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::LanguageDetectionPrediction>)addObjectToBuffer:(void *)a3
{
  v5 = [(FTLanguageDetectionPrediction *)self locale];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  LODWORD(v7) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  [(FTLanguageDetectionPrediction *)self confidence];
  v10 = v9;
  [(FTLanguageDetectionPrediction *)self threshold];
  v12 = v11;
  v13 = [(FTLanguageDetectionPrediction *)self is_low_confidence];
  *(a3 + 70) = 1;
  v14 = *(a3 + 10);
  v15 = *(a3 + 8) - *(a3 + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v7);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 6, v10, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 8, v12, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 10, v13, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v15 + v14);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTLanguageDetectionPrediction *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__45__FTLanguageDetectionPrediction_flatbuffData__block_invoke(uint64_t a1)
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