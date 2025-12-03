@interface QSSVocToken
- (NSString)orthography;
- (Offset<siri::speech::schema_fb::VocToken>)addObjectToBuffer:(void *)buffer;
- (QSSVocToken)initWithFlatbuffData:(id)data root:(const VocToken *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (void)blob:(id)blob;
@end

@implementation QSSVocToken

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
  v2.var0 = [(QSSVocToken *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__27__QSSVocToken_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::VocToken>)addObjectToBuffer:(void *)buffer
{
  orthography = [(QSSVocToken *)self orthography];
  v6 = orthography;
  if (!orthography)
  {
    orthography = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)orthography UTF8String];
  v8 = strlen(uTF8String);
  LODWORD(uTF8String) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  v15 = 0;
  v16 = &v15;
  v17 = 0x3812000000;
  v18 = __Block_byref_object_copy__645;
  v19 = __Block_byref_object_dispose__646;
  v20 = &unk_26916BD4D;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __33__QSSVocToken_addObjectToBuffer___block_invoke;
  v14[3] = &unk_279C4C2C8;
  v14[4] = &v15;
  v14[5] = buffer;
  [(QSSVocToken *)self blob:v14];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v9 = *(buffer + 8);
  v10 = *(buffer + 12);
  v11 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, uTF8String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, *(v16 + 12));
  v12.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v9 - v10 + v11);
  _Block_object_dispose(&v15, 8);
  return v12;
}

uint64_t __33__QSSVocToken_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = flatbuffers::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
}

- (void)blob:(id)blob
{
  root = self->_root;
  v5 = &root[-*root->var0];
  blobCopy = blob;
  v7 = *root[*v5[6].var0 + *root[*v5[6].var0].var0].var0;
  v8 = blobCopy;
  (*(blob + 2))();
}

- (NSString)orthography
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

- (QSSVocToken)initWithFlatbuffData:(id)data root:(const VocToken *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSVocToken;
  v10 = [(QSSVocToken *)&v29 init];
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
        if (!siri::speech::schema_fb::VocToken::Verify(v19, &v24))
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