@interface QSSServiceDiscoveryRequest
- (NSString)app_id;
- (NSString)session_id;
- (NSString)zk_path;
- (Offset<siri::speech::schema_fb::ServiceDiscoveryRequest>)addObjectToBuffer:(void *)buffer;
- (QSSServiceDiscoveryRequest)initWithFlatbuffData:(id)data root:(const ServiceDiscoveryRequest *)root verify:(BOOL)verify;
- (id)flatbuffData;
@end

@implementation QSSServiceDiscoveryRequest

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
  v2.var0 = [(QSSServiceDiscoveryRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__42__QSSServiceDiscoveryRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ServiceDiscoveryRequest>)addObjectToBuffer:(void *)buffer
{
  session_id = [(QSSServiceDiscoveryRequest *)self session_id];
  v6 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)session_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  app_id = [(QSSServiceDiscoveryRequest *)self app_id];
  v11 = app_id;
  if (!app_id)
  {
    app_id = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)app_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  zk_path = [(QSSServiceDiscoveryRequest *)self zk_path];
  v16 = zk_path;
  if (!zk_path)
  {
    zk_path = &stru_2879AE8E0;
  }

  uTF8String3 = [(__CFString *)zk_path UTF8String];
  v18 = strlen(uTF8String3);
  LODWORD(uTF8String3) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v19 = *(buffer + 10);
  v20 = *(buffer + 8) - *(buffer + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, uTF8String3);

  return flatbuffers::FlatBufferBuilder::EndTable(buffer, v20 + v19);
}

- (NSString)zk_path
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

- (NSString)app_id
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

- (NSString)session_id
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

- (QSSServiceDiscoveryRequest)initWithFlatbuffData:(id)data root:(const ServiceDiscoveryRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = QSSServiceDiscoveryRequest;
  v10 = [(QSSServiceDiscoveryRequest *)&v38 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_34;
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
        goto LABEL_34;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v33 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v11->_storage;
    v11->_storage = dictionary;
  }

  v31 = v11;
LABEL_35:

  return v31;
}

@end