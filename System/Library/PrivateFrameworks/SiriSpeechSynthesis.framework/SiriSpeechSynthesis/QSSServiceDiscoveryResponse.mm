@interface QSSServiceDiscoveryResponse
- (NSArray)zk_node;
- (NSString)error_str;
- (NSString)session_id;
- (Offset<siri::speech::schema_fb::ServiceDiscoveryResponse>)addObjectToBuffer:(void *)buffer;
- (QSSServiceDiscoveryResponse)initWithFlatbuffData:(id)data root:(const ServiceDiscoveryResponse *)root verify:(BOOL)verify;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSServiceDiscoveryResponse

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
  v2.var0 = [(QSSServiceDiscoveryResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__43__QSSServiceDiscoveryResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::ServiceDiscoveryResponse>)addObjectToBuffer:(void *)buffer
{
  v39 = *MEMORY[0x277D85DE8];
  session_id = [(QSSServiceDiscoveryResponse *)self session_id];
  v6 = session_id;
  if (!session_id)
  {
    session_id = &stru_2879AE8E0;
  }

  uTF8String = [(__CFString *)session_id UTF8String];
  v8 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  error_code = [(QSSServiceDiscoveryResponse *)self error_code];
  error_str = [(QSSServiceDiscoveryResponse *)self error_str];
  v12 = error_str;
  if (!error_str)
  {
    error_str = &stru_2879AE8E0;
  }

  uTF8String2 = [(__CFString *)error_str UTF8String];
  v14 = strlen(uTF8String2);
  v15 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v14);

  memset(&v37, 0, sizeof(v37));
  zk_node = [(QSSServiceDiscoveryResponse *)self zk_node];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v37, [zk_node count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  zk_node2 = [(QSSServiceDiscoveryResponse *)self zk_node];
  v18 = [zk_node2 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v18)
  {
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(zk_node2);
        }

        uTF8String3 = [*(*(&v33 + 1) + 8 * i) UTF8String];
        v22 = strlen(uTF8String3);
        v32 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v22);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v37, &v32);
      }

      v18 = [zk_node2 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v18);
  }

  begin = v37.__begin_;
  if (v37.__end_ == v37.__begin_)
  {
    v24 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v24 = v37.__begin_;
  }

  v25 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(buffer, v24, v37.__end_ - v37.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v26 = *(buffer + 8);
  v27 = *(buffer + 12);
  v28 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, error_code);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 8, v15);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(buffer, 10, v25);
  v29.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v26 - v27 + v28);
  if (begin)
  {
    operator delete(begin);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (NSArray)zk_node
{
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"zk_node"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xBu)
    {
      v6 = *v5[10].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v10[*v10->var0 + 4] length:*v10[*v10->var0].var0 encoding:4];
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"zk_node"];
  }

  return array;
}

- (NSString)error_str
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

- (int)error_code
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

- (QSSServiceDiscoveryResponse)initWithFlatbuffData:(id)data root:(const ServiceDiscoveryResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v38.receiver = self;
  v38.super_class = QSSServiceDiscoveryResponse;
  v10 = [(QSSServiceDiscoveryResponse *)&v38 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_40;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_41;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_39;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v14)
  {
    goto LABEL_41;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v33 = bytes3;
  v34 = v18;
  v35 = xmmword_26914CD70;
  v36 = 0;
  v37 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_39;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v33, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v33, 4u))
  {
    goto LABEL_41;
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

  if (!flatbuffers::Verifier::VerifyString(&v33, v22))
  {
    goto LABEL_41;
  }

  v23 = (v19 - *v19);
  v24 = *v23;
  if (v24 >= 7 && v23[3] && (v34 < 5 || v34 - 4 < v19 + v23[3] - v33))
  {
    goto LABEL_41;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v33, 8u))
  {
    goto LABEL_41;
  }

  v25 = v24 >= 9 && v23[4] ? v19 + v23[4] + *(v19 + v23[4]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v33, v25) || !flatbuffers::Table::VerifyOffset(v19, &v33, 0xAu))
  {
    goto LABEL_41;
  }

  v26 = *v19;
  if (*(v19 - v26) < 0xBu)
  {
    goto LABEL_37;
  }

  if (*(v19 - v26 + 10))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v33, v19 + *(v19 - v26 + 10) + *(v19 + *(v19 - v26 + 10)), 4uLL, 0))
    {
      v26 = *v19;
      if (*(v19 - v26) < 0xBu)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

LABEL_41:
    v31 = 0;
    goto LABEL_42;
  }

LABEL_35:
  v27 = *(v19 - v26 + 10);
  if (v27)
  {
    v28 = (v19 + v27 + *(v19 + v27));
    goto LABEL_38;
  }

LABEL_37:
  v28 = 0;
LABEL_38:
  if (!flatbuffers::Verifier::VerifyVectorOfStrings(&v33, v28))
  {
    goto LABEL_41;
  }

LABEL_39:
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = dictionary;

LABEL_40:
  v31 = v11;
LABEL_42:

  return v31;
}

@end