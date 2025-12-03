@interface QSSErrorBlamerResponse
- (NSString)blamer_report;
- (NSString)return_str;
- (Offset<siri::speech::schema_fb::ErrorBlamerResponse>)addObjectToBuffer:(void *)buffer;
- (QSSErrorBlamerResponse)initWithFlatbuffData:(id)data root:(const ErrorBlamerResponse *)root verify:(BOOL)verify;
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

- (Offset<siri::speech::schema_fb::ErrorBlamerResponse>)addObjectToBuffer:(void *)buffer
{
  return_code = [(QSSErrorBlamerResponse *)self return_code];
  return_str = [(QSSErrorBlamerResponse *)self return_str];
  v7 = return_str;
  if (!return_str)
  {
    return_str = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)return_str UTF8String];
  v9 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  blamer_report = [(QSSErrorBlamerResponse *)self blamer_report];
  v12 = blamer_report;
  if (!blamer_report)
  {
    blamer_report = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)blamer_report UTF8String];
  v14 = strlen(uTF8String2);
  LODWORD(uTF8String2) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v14);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v15 = *(buffer + 10);
  v16 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 4, return_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, uTF8String2);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v16 + v15);
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

- (QSSErrorBlamerResponse)initWithFlatbuffData:(id)data root:(const ErrorBlamerResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v35.receiver = self;
  v35.super_class = QSSErrorBlamerResponse;
  v10 = [(QSSErrorBlamerResponse *)&v35 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_32;
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
        goto LABEL_32;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v30 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = dictionary;
  }

  v28 = v11;
LABEL_33:

  return v28;
}

@end