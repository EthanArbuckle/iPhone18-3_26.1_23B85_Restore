@interface QSSRecoverPronsRequest
- (NSArray)apg_ids;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RecoverPronsRequest>)addObjectToBuffer:(void *)a3;
- (QSSRecoverPronsRequest)initWithFlatbuffData:(id)a3 root:(const RecoverPronsRequest *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSRecoverPronsRequest

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
  v2.var0 = [(QSSRecoverPronsRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__38__QSSRecoverPronsRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::RecoverPronsRequest>)addObjectToBuffer:(void *)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = [(QSSRecoverPronsRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSRecoverPronsRequest *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(QSSRecoverPronsRequest *)self language];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_2879AE8E0;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = flatbuffers::FlatBufferBuilder::CreateString(a3, v17, v18);

  memset(&v41, 0, sizeof(v41));
  v20 = [(QSSRecoverPronsRequest *)self apg_ids];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v41, [v20 count]);

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = [(QSSRecoverPronsRequest *)self apg_ids];
  v22 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v22)
  {
    v23 = *v38;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v38 != v23)
        {
          objc_enumerationMutation(v21);
        }

        v25 = [*(*(&v37 + 1) + 8 * i) UTF8String];
        v26 = strlen(v25);
        v36 = flatbuffers::FlatBufferBuilder::CreateString(a3, v25, v26);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v41, &v36);
      }

      v22 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v22);
  }

  begin = v41.__begin_;
  if (v41.__end_ == v41.__begin_)
  {
    v28 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v28 = v41.__begin_;
  }

  v29 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v28, v41.__end_ - v41.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v30 = *(a3 + 8);
  v31 = *(a3 + 12);
  v32 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v14);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v29);
  v33.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v30 - v31 + v32);
  if (begin)
  {
    operator delete(begin);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v33;
}

- (NSArray)apg_ids
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"apg_ids"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
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
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"apg_ids"];
  }

  return v3;
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

- (QSSRecoverPronsRequest)initWithFlatbuffData:(id)a3 root:(const RecoverPronsRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v41.receiver = self;
  v41.super_class = QSSRecoverPronsRequest;
  v10 = [(QSSRecoverPronsRequest *)&v41 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_42;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_43;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v12 = [(NSData *)v10->_data bytes];
    a4 = v12 + *v12;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_41;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_43;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v36 = v17;
  v37 = v18;
  v38 = xmmword_26914CD70;
  v39 = 0;
  LOBYTE(v40) = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_41;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v36, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v36, 4u))
  {
    goto LABEL_43;
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v22) || !flatbuffers::Table::VerifyOffset(v19, &v36, 6u))
  {
    goto LABEL_43;
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v25) || !flatbuffers::Table::VerifyOffset(v19, &v36, 8u))
  {
    goto LABEL_43;
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

  if (!flatbuffers::Verifier::VerifyString(&v36, v28) || !flatbuffers::Table::VerifyOffset(v19, &v36, 0xAu))
  {
    goto LABEL_43;
  }

  v29 = *v19;
  if (*(v19 - v29) < 0xBu)
  {
    goto LABEL_39;
  }

  if (*(v19 - v29 + 10))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v36, v19 + *(v19 - v29 + 10) + *(v19 + *(v19 - v29 + 10)), 4uLL, 0))
    {
      v29 = *v19;
      if (*(v19 - v29) < 0xBu)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

LABEL_43:
    v34 = 0;
    goto LABEL_44;
  }

LABEL_37:
  v30 = *(v19 - v29 + 10);
  if (v30)
  {
    v31 = (v19 + v30 + *(v19 + v30));
    goto LABEL_40;
  }

LABEL_39:
  v31 = 0;
LABEL_40:
  if (!flatbuffers::Verifier::VerifyVectorOfStrings(&v36, v31))
  {
    goto LABEL_43;
  }

LABEL_41:
  v32 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v32;

LABEL_42:
  v34 = v11;
LABEL_44:

  return v34;
}

@end