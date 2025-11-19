@interface QSSErrorBlamerResponse
- (NSString)blamer_report;
- (NSString)return_str;
- (Offset<siri::speech::schema_fb::ErrorBlamerResponse>)addObjectToBuffer:(void *)a3;
- (QSSErrorBlamerResponse)initWithFlatbuffData:(id)a3 root:(const ErrorBlamerResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSErrorBlamerResponse

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
  v2.var0 = [(QSSErrorBlamerResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__38__QSSErrorBlamerResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ErrorBlamerResponse>)addObjectToBuffer:(void *)a3
{
  v5 = [(QSSErrorBlamerResponse *)self return_code];
  v6 = [(QSSErrorBlamerResponse *)self return_str];
  v7 = v6;
  if (!v6)
  {
    v6 = &stru_2879AE8E0;
  }

  v8 = [(__CFString *)v6 UTF8String];
  v9 = strlen(v8);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v8, v9);

  v11 = [(QSSErrorBlamerResponse *)self blamer_report];
  v12 = v11;
  if (!v11)
  {
    v11 = &stru_2879AE8E0;
  }

  v13 = [(__CFString *)v11 UTF8String];
  v14 = strlen(v13);
  LODWORD(v13) = flatbuffers::FlatBufferBuilder::CreateString(a3, v13, v14);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v15 = *(a3 + 10);
  v16 = *(a3 + 8) - *(a3 + 12);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 4, v5);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v13);

  return flatbuffers::FlatBufferBuilder::EndTable(a3, v16 + v15);
}

- (NSString)blamer_report
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

- (NSString)return_str
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

- (int)return_code
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 5u && (v4 = *v3[4].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (QSSErrorBlamerResponse)initWithFlatbuffData:(id)a3 root:(const ErrorBlamerResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v35.receiver = self;
  v35.super_class = QSSErrorBlamerResponse;
  v10 = [(QSSErrorBlamerResponse *)&v35 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_32;
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
        goto LABEL_32;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v30 = v17;
      v31 = v18;
      v32 = xmmword_26914CD70;
      v33 = 0;
      v34 = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!flatbuffers::Verifier::VerifyTableStart(&v30, v11->_root->var0) || (v20 = (v19 - *v19), v21 = *v20, v21 >= 5) && v20[2] && (v31 < 5 || v31 - 4 < v19 + v20[2] - v30) || !flatbuffers::Table::VerifyOffset(v19, &v30, 6u) || (v21 < 7 || !v20[3] ? (v22 = 0) : (v22 = v19 + v20[3] + *(v19 + v20[3])), !flatbuffers::Verifier::VerifyString(&v30, v22) || !flatbuffers::Table::VerifyOffset(v19, &v30, 8u) || ((v23 = (v19 - *v19), *v23 < 9u) || (v24 = v23[4]) == 0 ? (v25 = 0) : (v25 = v19 + v24 + *(v19 + v24)), !flatbuffers::Verifier::VerifyString(&v30, v25))))
        {
LABEL_32:
          v28 = 0;
          goto LABEL_33;
        }
      }
    }

    v26 = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = v26;
  }

  v28 = v11;
LABEL_33:

  return v28;
}

@end