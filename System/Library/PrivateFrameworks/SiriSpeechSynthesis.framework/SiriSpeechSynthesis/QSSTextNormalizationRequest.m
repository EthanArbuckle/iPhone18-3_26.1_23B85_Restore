@interface QSSTextNormalizationRequest
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)text;
- (Offset<siri::speech::schema_fb::TextNormalizationRequest>)addObjectToBuffer:(void *)a3;
- (QSSTextNormalizationRequest)initWithFlatbuffData:(id)a3 root:(const TextNormalizationRequest *)a4 verify:(BOOL)a5;
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

- (Offset<siri::speech::schema_fb::TextNormalizationRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSTextNormalizationRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSTextNormalizationRequest *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSTextNormalizationRequest *)self language];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  v20 = [(QSSTextNormalizationRequest *)self text];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_2879AE8E0;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  LODWORD(v22) = flatbuffers::FlatBufferBuilder::CreateString(a3, v22, v23);

  v24 = [(QSSTextNormalizationRequest *)self nbest_variants_max];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v25 = *(a3 + 10);
  v26 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v22);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v24);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v26 + v25);
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

- (QSSTextNormalizationRequest)initWithFlatbuffData:(id)a3 root:(const TextNormalizationRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v43.receiver = self;
  v43.super_class = QSSTextNormalizationRequest;
  v10 = [(QSSTextNormalizationRequest *)&v43 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_44;
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
        goto LABEL_44;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v38 = v17;
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

    v34 = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = v34;
  }

  v36 = v11;
LABEL_45:

  return v36;
}

@end