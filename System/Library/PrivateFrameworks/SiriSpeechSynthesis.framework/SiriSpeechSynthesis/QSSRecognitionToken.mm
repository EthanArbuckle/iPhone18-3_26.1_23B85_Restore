@interface QSSRecognitionToken
- (BOOL)add_space_after;
- (NSString)ipa_phone_seq;
- (NSString)phone_seq;
- (NSString)token_text;
- (Offset<siri::speech::schema_fb::RecognitionToken>)addObjectToBuffer:(void *)a3;
- (QSSRecognitionToken)initWithFlatbuffData:(id)a3 root:(const RecognitionToken *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)confidence;
- (int)end_milli_seconds;
- (int)silence_start_milli_seconds;
- (int)start_milli_seconds;
@end

@implementation QSSRecognitionToken

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
  v2.var0 = [(QSSRecognitionToken *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__35__QSSRecognitionToken_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::RecognitionToken>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSRecognitionToken *)self token_text];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSRecognitionToken *)self start_milli_seconds];
  v11 = [(QSSRecognitionToken *)self end_milli_seconds];
  v12 = [(QSSRecognitionToken *)self silence_start_milli_seconds];
  v13 = [(QSSRecognitionToken *)self confidence];
  v26 = [(QSSRecognitionToken *)self add_space_after];
  v14 = [(QSSRecognitionToken *)self phone_seq];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_2879AE8E0;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  v18 = flatbuffers::FlatBufferBuilder::CreateString(a3, v16, v17);

  v19 = [(QSSRecognitionToken *)self ipa_phone_seq];
  v20 = v19;
  if (!v19)
  {
    v19 = &stru_2879AE8E0;
  }

  v21 = [(__CFString *)v19 UTF8String];
  v22 = strlen(v21);
  LODWORD(v21) = flatbuffers::FlatBufferBuilder::CreateString(a3, v21, v22);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v23 = *(a3 + 10);
  v24 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v10);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v11);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v12);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v13);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v26);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v21);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v24 + v23);
}

- (NSString)ipa_phone_seq
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (NSString)phone_seq
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

- (BOOL)add_space_after
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (int)confidence
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

- (int)silence_start_milli_seconds
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)end_milli_seconds
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

- (int)start_milli_seconds
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 7u && (v4 = *v3[6].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)token_text
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

- (QSSRecognitionToken)initWithFlatbuffData:(id)a3 root:(const RecognitionToken *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSRecognitionToken;
  v10 = [(QSSRecognitionToken *)&v29 init];
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
        if (!siri::speech::schema_fb::RecognitionToken::Verify(v19, &v24))
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