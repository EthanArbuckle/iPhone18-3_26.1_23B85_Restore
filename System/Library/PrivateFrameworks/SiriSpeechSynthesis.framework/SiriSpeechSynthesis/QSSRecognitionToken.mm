@interface QSSRecognitionToken
- (BOOL)add_space_after;
- (NSString)ipa_phone_seq;
- (NSString)phone_seq;
- (NSString)token_text;
- (Offset<siri::speech::schema_fb::RecognitionToken>)addObjectToBuffer:(void *)buffer;
- (QSSRecognitionToken)initWithFlatbuffData:(id)data root:(const RecognitionToken *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::RecognitionToken>)addObjectToBuffer:(void *)buffer
{
  token_text = [(QSSRecognitionToken *)self token_text];
  v6 = token_text;
  if (!token_text)
  {
    token_text = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)token_text UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  start_milli_seconds = [(QSSRecognitionToken *)self start_milli_seconds];
  end_milli_seconds = [(QSSRecognitionToken *)self end_milli_seconds];
  silence_start_milli_seconds = [(QSSRecognitionToken *)self silence_start_milli_seconds];
  confidence = [(QSSRecognitionToken *)self confidence];
  add_space_after = [(QSSRecognitionToken *)self add_space_after];
  phone_seq = [(QSSRecognitionToken *)self phone_seq];
  v15 = phone_seq;
  if (!phone_seq)
  {
    phone_seq = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)phone_seq UTF8String];
  v17 = strlen(uTF8String2);
  v18 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v17);

  ipa_phone_seq = [(QSSRecognitionToken *)self ipa_phone_seq];
  v20 = ipa_phone_seq;
  if (!ipa_phone_seq)
  {
    ipa_phone_seq = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)ipa_phone_seq UTF8String];
  v22 = strlen(uTF8String3);
  LODWORD(uTF8String3) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v22);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v23 = *(buffer + 10);
  v24 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, start_milli_seconds);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, end_milli_seconds);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 10, silence_start_milli_seconds);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, confidence);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, add_space_after);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 16, v18);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 18, uTF8String3);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v24 + v23);
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

- (QSSRecognitionToken)initWithFlatbuffData:(id)data root:(const RecognitionToken *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = QSSRecognitionToken;
  v10 = [(QSSRecognitionToken *)&v29 init];
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
        if (!siri::speech::schema_fb::RecognitionToken::Verify(v19, &v24))
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