@interface QSSKeywordFinderResponse
- (NSArray)n_best_list;
- (NSString)language;
- (NSString)return_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::KeywordFinderResponse>)addObjectToBuffer:(void *)a3;
- (QSSKeywordFinderResponse)initWithFlatbuffData:(id)a3 root:(const KeywordFinderResponse *)a4 verify:(BOOL)a5;
- (QSSRecognitionSausage)corrected_sausage;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSKeywordFinderResponse

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
  v2.var0 = [(QSSKeywordFinderResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__40__QSSKeywordFinderResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::KeywordFinderResponse>)addObjectToBuffer:(void *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = [(QSSKeywordFinderResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(QSSKeywordFinderResponse *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v42 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v14 = [(QSSKeywordFinderResponse *)self language];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_2879AE8E0;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  v18 = flatbuffers::FlatBufferBuilder::CreateString(a3, v16, v17);

  v19 = [(QSSKeywordFinderResponse *)self return_code];
  v20 = [(QSSKeywordFinderResponse *)self return_str];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_2879AE8E0;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v24 = flatbuffers::FlatBufferBuilder::CreateString(a3, v22, v23);

  v25 = [(QSSKeywordFinderResponse *)self corrected_sausage];
  v26 = [v25 addObjectToBuffer:a3];

  memset(&v48, 0, sizeof(v48));
  v27 = [(QSSKeywordFinderResponse *)self n_best_list];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v48, [v27 count]);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v28 = [(QSSKeywordFinderResponse *)self n_best_list];
  v29 = [v28 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v29)
  {
    v30 = *v45;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v45 != v30)
        {
          objc_enumerationMutation(v28);
        }

        v43 = [*(*(&v44 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v48, &v43);
      }

      v29 = [v28 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v29);
  }

  v41 = v26;
  begin = v48.__begin_;
  if (v48.__end_ == v48.__begin_)
  {
    v33 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionChoice>> const&)::t;
  }

  else
  {
    v33 = v48.__begin_;
  }

  v34 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v33, v48.__end_ - v48.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v35 = *(a3 + 8);
  v36 = *(a3 + 12);
  v37 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v42);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v18);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v19);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v24);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, v34);
  v38.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v35 - v36 + v37);
  if (begin)
  {
    operator delete(begin);
  }

  v39 = *MEMORY[0x277D85DE8];
  return v38;
}

- (NSArray)n_best_list
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_list"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x11u)
    {
      v6 = *v5[16].var0;
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
            v11 = [[QSSRecognitionChoice alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"n_best_list"];
  }

  return v3;
}

- (QSSRecognitionSausage)corrected_sausage
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"corrected_sausage"];
  if (!v3)
  {
    v4 = [QSSRecognitionSausage alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xFu && (v7 = *v6[14].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSRecognitionSausage *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"corrected_sausage"];
  }

  return v3;
}

- (NSString)return_str
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 12].var0;
  if (*root[-v3 + 12].var0)
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
  if (*v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
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

- (QSSKeywordFinderResponse)initWithFlatbuffData:(id)a3 root:(const KeywordFinderResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v46.receiver = self;
  v46.super_class = QSSKeywordFinderResponse;
  v10 = [(QSSKeywordFinderResponse *)&v46 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_57;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_58;
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
    goto LABEL_56;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_58;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v41 = v17;
  v42 = v18;
  v43 = xmmword_26914CD70;
  v44 = 0;
  v45 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_56;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v41, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v41, 4u))
  {
    goto LABEL_58;
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

  if (!flatbuffers::Verifier::VerifyString(&v41, v22) || !flatbuffers::Table::VerifyOffset(v19, &v41, 6u))
  {
    goto LABEL_58;
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

  if (!flatbuffers::Verifier::VerifyString(&v41, v25) || !flatbuffers::Table::VerifyOffset(v19, &v41, 8u))
  {
    goto LABEL_58;
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

  if (!flatbuffers::Verifier::VerifyString(&v41, v28))
  {
    goto LABEL_58;
  }

  v29 = (v19 - *v19);
  v30 = *v29;
  if (v30 >= 0xB && v29[5] && (v42 < 5 || v42 - 4 < v19 + v29[5] - v41))
  {
    goto LABEL_58;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v41, 0xCu))
  {
    goto LABEL_58;
  }

  v31 = v30 >= 0xD && v29[6] ? v19 + v29[6] + *(v19 + v29[6]) : 0;
  if (!flatbuffers::Verifier::VerifyString(&v41, v31))
  {
    goto LABEL_58;
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v41, 0xEu))
  {
    goto LABEL_58;
  }

  v32 = (v19 - *v19);
  if (*v32 >= 0xFu)
  {
    v33 = v32[7];
    if (v33)
    {
      if (!siri::speech::schema_fb::RecognitionSausage::Verify((v19 + v33 + *(v19 + v33)), &v41))
      {
        goto LABEL_58;
      }
    }
  }

  if (!flatbuffers::Table::VerifyOffset(v19, &v41, 0x10u))
  {
    goto LABEL_58;
  }

  v34 = *v19;
  if (*(v19 - v34) < 0x11u)
  {
    goto LABEL_54;
  }

  if (*(v19 - v34 + 16))
  {
    if (flatbuffers::Verifier::VerifyVectorOrString(&v41, v19 + *(v19 - v34 + 16) + *(v19 + *(v19 - v34 + 16)), 4uLL, 0))
    {
      v34 = *v19;
      if (*(v19 - v34) < 0x11u)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

LABEL_58:
    v39 = 0;
    goto LABEL_59;
  }

LABEL_51:
  v35 = *(v19 - v34 + 16);
  if (v35)
  {
    v36 = (v19 + v35 + *(v19 + v35));
    goto LABEL_55;
  }

LABEL_54:
  v36 = 0;
LABEL_55:
  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RecognitionChoice>(&v41, v36))
  {
    goto LABEL_58;
  }

LABEL_56:
  v37 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v37;

LABEL_57:
  v39 = v11;
LABEL_59:

  return v39;
}

@end