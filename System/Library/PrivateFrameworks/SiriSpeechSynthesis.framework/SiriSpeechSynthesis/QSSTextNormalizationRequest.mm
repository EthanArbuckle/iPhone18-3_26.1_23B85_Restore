@interface QSSTextNormalizationRequest
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)text;
- (Offset<siri::speech::schema_fb::TextNormalizationRequest>)addObjectToBuffer:(void *)buffer;
- (QSSTextNormalizationRequest)initWithFlatbuffData:(id)data root:(const TextNormalizationRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)nbest_variants_max;
@end

@implementation QSSTextNormalizationRequest

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
  v2.var0 = [(QSSTextNormalizationRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__43__QSSTextNormalizationRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextNormalizationRequest>)addObjectToBuffer:(void *)buffer
{
  speech_id = [(QSSTextNormalizationRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(QSSTextNormalizationRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(QSSTextNormalizationRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  text = [(QSSTextNormalizationRequest *)self text];
  v21 = text;
  if (!text)
  {
    text = &stru_2879AE8E0;
  }

  uTF8String4 = [(__CFString *)text UTF8String];
  v23 = strlen(uTF8String4);
  LODWORD(uTF8String4) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  nbest_variants_max = [(QSSTextNormalizationRequest *)self nbest_variants_max];
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v25 = *(buffer + 10);
  v26 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, uTF8String4);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, nbest_variants_max);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v26 + v25);
}

- (int)nbest_variants_max
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

- (NSString)text
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

- (NSString)language
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

- (NSString)session_id
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

- (NSString)speech_id
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

- (QSSTextNormalizationRequest)initWithFlatbuffData:(id)data root:(const TextNormalizationRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v43.receiver = self;
  v43.super_class = QSSTextNormalizationRequest;
  v10 = [(QSSTextNormalizationRequest *)&v43 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_44;
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
        goto LABEL_44;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v38 = bytes3;
      v39 = v18;
      v40 = xmmword_26914CD70;
      v41 = 0;
      v42 = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!flatbuffers::Verifier::VerifyTableStart(&v38, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v38, 4u))
        {
          goto LABEL_44;
        }

        v20 = (v19 - *v19);
        if (*v20 >= 5u && (v21 = v20[2]) != 0)
        {
          v22 = v19 + v21 + *(v19 + v21);
        }

        else
        {
          v22 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v38, v22) || !flatbuffers::Table::VerifyOffset(v19, &v38, 6u))
        {
          goto LABEL_44;
        }

        v23 = (v19 - *v19);
        if (*v23 >= 7u && (v24 = v23[3]) != 0)
        {
          v25 = v19 + v24 + *(v19 + v24);
        }

        else
        {
          v25 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v38, v25) || !flatbuffers::Table::VerifyOffset(v19, &v38, 8u))
        {
          goto LABEL_44;
        }

        v26 = (v19 - *v19);
        if (*v26 >= 9u && (v27 = v26[4]) != 0)
        {
          v28 = v19 + v27 + *(v19 + v27);
        }

        else
        {
          v28 = 0;
        }

        if (!flatbuffers::Verifier::VerifyString(&v38, v28) || !flatbuffers::Table::VerifyOffset(v19, &v38, 0xAu) || ((v29 = (v19 - *v19), *v29 < 0xBu) || (v30 = v29[5]) == 0 ? (v31 = 0) : (v31 = v19 + v30 + *(v19 + v30)), !flatbuffers::Verifier::VerifyString(&v38, v31) || (v32 = (v19 - *v19), *v32 >= 0xDu) && (v33 = v32[6]) != 0 && (v39 < 5 || v39 - 4 < v19 + v33 - v38)))
        {
LABEL_44:
          v36 = 0;
          goto LABEL_45;
        }
      }
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = dictionary;
  }

  v36 = v11;
LABEL_45:

  return v36;
}

@end