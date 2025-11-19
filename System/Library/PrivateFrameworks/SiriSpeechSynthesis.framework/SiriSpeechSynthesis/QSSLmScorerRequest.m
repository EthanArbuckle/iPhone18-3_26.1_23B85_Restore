@interface QSSLmScorerRequest
- (NSString)language;
- (NSString)task_name;
- (NSString)transcript;
- (Offset<siri::speech::schema_fb::LmScorerRequest>)addObjectToBuffer:(void *)a3;
- (QSSLmScorerRequest)initWithFlatbuffData:(id)a3 root:(const LmScorerRequest *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSLmScorerRequest

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
  v2.var0 = [(QSSLmScorerRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__34__QSSLmScorerRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::LmScorerRequest>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSLmScorerRequest *)self language];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSLmScorerRequest *)self task_name];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSLmScorerRequest *)self transcript];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  LODWORD(v17) = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v19 = *(a3 + 10);
  v20 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v17);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v20 + v19);
}

- (NSString)transcript
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

- (NSString)task_name
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

- (NSString)language
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

- (QSSLmScorerRequest)initWithFlatbuffData:(id)a3 root:(const LmScorerRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v38.receiver = self;
  v38.super_class = QSSLmScorerRequest;
  v10 = [(QSSLmScorerRequest *)&v38 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_34;
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
        goto LABEL_34;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v33 = v17;
      v34 = v18;
      v35 = xmmword_26914CD70;
      v36 = 0;
      LOBYTE(v37) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!flatbuffers::Verifier::VerifyTableStart(&v33, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v33, 4u))
        {
          goto LABEL_34;
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

        if (!flatbuffers::Verifier::VerifyString(&v33, v22) || !flatbuffers::Table::VerifyOffset(v19, &v33, 6u) || ((v23 = (v19 - *v19), *v23 < 7u) || (v24 = v23[3]) == 0 ? (v25 = 0) : (v25 = v19 + v24 + *(v19 + v24)), !flatbuffers::Verifier::VerifyString(&v33, v25) || !flatbuffers::Table::VerifyOffset(v19, &v33, 8u) || ((v26 = (v19 - *v19), *v26 < 9u) || (v27 = v26[4]) == 0 ? (v28 = 0) : (v28 = v19 + v27 + *(v19 + v27)), !flatbuffers::Verifier::VerifyString(&v33, v28))))
        {
LABEL_34:
          v31 = 0;
          goto LABEL_35;
        }
      }
    }

    v29 = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = v29;
  }

  v31 = v11;
LABEL_35:

  return v31;
}

@end