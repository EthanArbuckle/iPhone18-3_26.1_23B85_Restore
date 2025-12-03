@interface QSSTTSRequestFeatureFlags
- (BOOL)cache_only;
- (BOOL)disable_prompts;
- (BOOL)fe_feature;
- (BOOL)fe_feature_only;
- (Offset<siri::speech::schema_fb::TTSRequestFeatureFlags>)addObjectToBuffer:(void *)buffer;
- (QSSTTSRequestFeatureFlags)initWithFlatbuffData:(id)data root:(const TTSRequestFeatureFlags *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int64_t)phoneset_type;
@end

@implementation QSSTTSRequestFeatureFlags

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
  v2.var0 = [(QSSTTSRequestFeatureFlags *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__41__QSSTTSRequestFeatureFlags_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TTSRequestFeatureFlags>)addObjectToBuffer:(void *)buffer
{
  selfCopy = self;
  fe_feature = [(QSSTTSRequestFeatureFlags *)self fe_feature];
  fe_feature_only = [(QSSTTSRequestFeatureFlags *)selfCopy fe_feature_only];
  disable_prompts = [(QSSTTSRequestFeatureFlags *)selfCopy disable_prompts];
  cache_only = [(QSSTTSRequestFeatureFlags *)selfCopy cache_only];
  LODWORD(selfCopy) = [(QSSTTSRequestFeatureFlags *)selfCopy phoneset_type];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v9 = *(buffer + 10);
  v10 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 4, fe_feature);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 6, fe_feature_only);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 8, disable_prompts);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 10, cache_only);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, selfCopy);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v10 + v9);
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

- (BOOL)cache_only
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)disable_prompts
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 9u && (v4 = *v3[8].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)fe_feature_only
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 7u && (v4 = *v3[6].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)fe_feature
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 5u && (v4 = *v3[4].var0) != 0 && root[v4].var0[0] != 0;
}

- (QSSTTSRequestFeatureFlags)initWithFlatbuffData:(id)data root:(const TTSRequestFeatureFlags *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSTTSRequestFeatureFlags;
  v10 = [(QSSTTSRequestFeatureFlags *)&v29 init];
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
        if (!siri::speech::schema_fb::TTSRequestFeatureFlags::Verify(v19, &v24))
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