@interface QSSLmScorerToken
- (NSString)token_str;
- (Offset<siri::speech::schema_fb::LmScorerToken>)addObjectToBuffer:(void *)buffer;
- (QSSLmScorerToken)initWithFlatbuffData:(id)data root:(const LmScorerToken *)root verify:(BOOL)verify;
- (double)log10_score;
- (id)flatbuffData;
- (int)ngram_used;
@end

@implementation QSSLmScorerToken

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
  v2.var0 = [(QSSLmScorerToken *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__32__QSSLmScorerToken_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::LmScorerToken>)addObjectToBuffer:(void *)buffer
{
  token_str = [(QSSLmScorerToken *)self token_str];
  v6 = token_str;
  if (!token_str)
  {
    token_str = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)token_str UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  [(QSSLmScorerToken *)self log10_score];
  v10 = v9;
  ngram_used = [(QSSLmScorerToken *)self ngram_used];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v12 = *(buffer + 10);
  v13 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, uTF8String);
  flatbuffers::FlatBufferBuilder::AddElement<double>(buffer, 6, v10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, ngram_used);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v13 + v12);
}

- (int)ngram_used
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 9u && (v4 = *v3[8].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (double)log10_score
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

- (NSString)token_str
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

- (QSSLmScorerToken)initWithFlatbuffData:(id)data root:(const LmScorerToken *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSLmScorerToken;
  v10 = [(QSSLmScorerToken *)&v29 init];
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
        if (!siri::speech::schema_fb::LmScorerToken::Verify(v19, &v24))
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