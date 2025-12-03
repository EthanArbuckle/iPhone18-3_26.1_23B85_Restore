@interface FTTTSRequestFeatureFlags
- (BOOL)cache_only;
- (BOOL)disable_prompts;
- (BOOL)fe_feature;
- (BOOL)fe_feature_only;
- (FTTTSRequestFeatureFlags)initWithFlatbuffData:(id)data root:(const TTSRequestFeatureFlags *)root verify:(BOOL)verify;
- (Offset<siri::speech::schema_fb::TTSRequestFeatureFlags>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (int64_t)phoneset_type;
@end

@implementation FTTTSRequestFeatureFlags

- (FTTTSRequestFeatureFlags)initWithFlatbuffData:(id)data root:(const TTSRequestFeatureFlags *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTTSRequestFeatureFlags;
  v10 = [(FTTTSRequestFeatureFlags *)&v25 init];
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

  if (!siri::speech::schema_fb::TTSRequestFeatureFlags::Verify(v18, v21))
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

- (BOOL)fe_feature
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 5u && (v4 = *v3[4].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)fe_feature_only
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 7u && (v4 = *v3[6].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)disable_prompts
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 9u && (v4 = *v3[8].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)cache_only
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (int64_t)phoneset_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (Offset<siri::speech::schema_fb::TTSRequestFeatureFlags>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  fe_feature = [(FTTTSRequestFeatureFlags *)self fe_feature];
  fe_feature_only = [(FTTTSRequestFeatureFlags *)selfCopy fe_feature_only];
  disable_prompts = [(FTTTSRequestFeatureFlags *)selfCopy disable_prompts];
  cache_only = [(FTTTSRequestFeatureFlags *)selfCopy cache_only];
  LODWORD(selfCopy) = [(FTTTSRequestFeatureFlags *)selfCopy phoneset_type];
  *(buffer + 70) = 1;
  v9 = *(buffer + 10);
  v10 = *(buffer + 8) - *(buffer + 12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, fe_feature, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 6, fe_feature_only, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 8, disable_prompts, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 10, cache_only, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, selfCopy, 0);

  return apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v10 + v9);
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTTSRequestFeatureFlags *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__40__FTTTSRequestFeatureFlags_flatbuffData__block_invoke(uint64_t a1)
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