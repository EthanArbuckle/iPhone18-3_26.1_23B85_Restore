@interface QSSRecoverPronsResponse
- (NSArray)recovery_return_codes;
- (NSArray)voc_tokens;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::RecoverPronsResponse>)addObjectToBuffer:(void *)a3;
- (QSSRecoverPronsResponse)initWithFlatbuffData:(id)a3 root:(const RecoverPronsResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSRecoverPronsResponse

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
  v2.var0 = [(QSSRecoverPronsResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__39__QSSRecoverPronsResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::RecoverPronsResponse>)addObjectToBuffer:(void *)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = [(QSSRecoverPronsResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSRecoverPronsResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v38 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v37 = [(QSSRecoverPronsResponse *)self error_code];
  v14 = [(QSSRecoverPronsResponse *)self error_str];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_2879AE8E0;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  v18 = flatbuffers::FlatBufferBuilder::CreateString(a3, v16, v17);

  memset(&v49, 0, sizeof(v49));
  v19 = [(QSSRecoverPronsResponse *)self recovery_return_codes];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v49, [v19 count]);

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v20 = [(QSSRecoverPronsResponse *)self recovery_return_codes];
  v36 = v18;
  v21 = [v20 countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (v21)
  {
    v22 = *v46;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v20);
        }

        v44 = [*(*(&v45 + 1) + 8 * i) intValue];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v49, &v44);
      }

      v21 = [v20 countByEnumeratingWithState:&v45 objects:v51 count:16];
    }

    while (v21);
  }

  if (v49.__end_ == v49.__begin_)
  {
    begin = &flatbuffers::data<int,std::allocator<int>>(std::vector<int> const&)::t;
  }

  else
  {
    begin = v49.__begin_;
  }

  v35 = flatbuffers::FlatBufferBuilder::CreateVector<int>(a3, begin, v49.__end_ - v49.__begin_);
  v25 = [(QSSRecoverPronsResponse *)self voc_tokens];
  v26 = [v25 count];
  if (v26)
  {
    if (!(v26 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v26);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(QSSRecoverPronsResponse *)self voc_tokens];
  if ([obj countByEnumeratingWithState:&v40 objects:v50 count:16])
  {
    *v41;
    *v41;
    [**(&v40 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v27 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v28 = *(a3 + 8);
  v29 = *(a3 + 12);
  v30 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v38);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v37);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v36);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v35);
  if (v27)
  {
    v31 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v27);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v31);
  }

  v32.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v28 - v29 + v30);
  if (v49.__begin_)
  {
    operator delete(v49.__begin_);
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

- (NSArray)voc_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_tokens"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xFu)
    {
      v6 = *v5[14].var0;
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
            v11 = [[QSSVocToken alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voc_tokens"];
  }

  return v3;
}

- (NSArray)recovery_return_codes
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recovery_return_codes"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0xDu)
    {
      v6 = *v5[12].var0;
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
            v11 = *v10->var0;
            v10 += 4;
            v12 = [MEMORY[0x277CCABB0] numberWithInt:v11];
            [v3 addObject:v12];

            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recovery_return_codes"];
  }

  return v3;
}

- (NSString)error_str
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

- (int)error_code
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

- (QSSRecoverPronsResponse)initWithFlatbuffData:(id)a3 root:(const RecoverPronsResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v43.receiver = self;
  v43.super_class = QSSRecoverPronsResponse;
  v10 = [(QSSRecoverPronsResponse *)&v43 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_50;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_51;
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
    goto LABEL_49;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_51;
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
  if (!v19)
  {
    goto LABEL_49;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v38, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v38, 4u))
  {
    goto LABEL_51;
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
    goto LABEL_51;
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

  if (!flatbuffers::Verifier::VerifyString(&v38, v25))
  {
    goto LABEL_51;
  }

  v26 = (v19 - *v19);
  v27 = *v26;
  if (v27 >= 9 && v26[4] && (v39 < 5 || v39 - 4 < v19 + v26[4] - v38))
  {
    goto LABEL_51;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v38, 0xAu))
  {
    goto LABEL_51;
  }

  v28 = v27 >= 0xB && v26[5] ? v19 + v26[5] + *(v19 + v26[5]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v38, v28))
  {
    goto LABEL_51;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v38, 0xCu))
  {
    goto LABEL_51;
  }

  v29 = (v19 - *v19);
  if (*v29 >= 0xDu)
  {
    v30 = v29[6];
    if (v30)
    {
      if (!flatbuffers::Verifier::VerifyVectorOrString(&v38, v19 + v30 + *(v19 + v30), 4uLL, 0))
      {
        goto LABEL_51;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v38, 0xEu))
  {
    goto LABEL_51;
  }

  v31 = *v19;
  if (*(v19 - v31) < 0xFu)
  {
    goto LABEL_47;
  }

  if (*(v19 - v31 + 14))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v38, v19 + *(v19 - v31 + 14) + *(v19 + *(v19 - v31 + 14)), 4uLL, 0))
    {
      v31 = *v19;
      if (*(v19 - v31) < 0xFu)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

LABEL_51:
    v36 = 0;
    goto LABEL_52;
  }

LABEL_45:
  v32 = *(v19 - v31 + 14);
  if (v32)
  {
    v33 = (v19 + v32 + *(v19 + v32));
    goto LABEL_48;
  }

LABEL_47:
  v33 = 0;
LABEL_48:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::VocToken>(&v38, v33))
  {
    goto LABEL_51;
  }

LABEL_49:
  v34 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v34;

LABEL_50:
  v36 = v11;
LABEL_52:

  return v36;
}

@end