@interface QSSKeywordFinderRequest
- (BOOL)enable_sanitization;
- (NSArray)keywords;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::KeywordFinderRequest>)addObjectToBuffer:(void *)a3;
- (QSSKeywordFinderRequest)initWithFlatbuffData:(id)a3 root:(const KeywordFinderRequest *)a4 verify:(BOOL)a5;
- (QSSRecognitionResult)recognition_result;
- (id)flatbuffData;
@end

@implementation QSSKeywordFinderRequest

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
  v2.var0 = [(QSSKeywordFinderRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__39__QSSKeywordFinderRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::KeywordFinderRequest>)addObjectToBuffer:(void *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = [(QSSKeywordFinderRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSKeywordFinderRequest *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v31 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(QSSKeywordFinderRequest *)self language];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v30 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(QSSKeywordFinderRequest *)self keywords];
  v18 = [v17 count];
  if (v18)
  {
    if (!(v18 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v18);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [(QSSKeywordFinderRequest *)self keywords];
  if ([obj countByEnumeratingWithState:&v34 objects:v38 count:16])
  {
    *v35;
    *v35;
    [**(&v34 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v19 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v20 = [(QSSKeywordFinderRequest *)self recognition_result];
  v21 = [v20 addObjectToBuffer:a3];

  v22 = [(QSSKeywordFinderRequest *)self enable_sanitization];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v23 = *(a3 + 8);
  v24 = *(a3 + 12);
  v25 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v31);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v30);
  if (v19)
  {
    v26 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v19);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 10, v26);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v21);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v22);
  v27.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v23 - v24 + v25);
  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)enable_sanitization
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (QSSRecognitionResult)recognition_result
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"recognition_result"];
  if (!v3)
  {
    v4 = [QSSRecognitionResult alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0xDu && (v7 = *v6[12].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(QSSRecognitionResult *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"recognition_result"];
  }

  return v3;
}

- (NSArray)keywords
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"keywords"];
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
            v11 = [[QSSKeyword alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"keywords"];
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

- (QSSKeywordFinderRequest)initWithFlatbuffData:(id)a3 root:(const KeywordFinderRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v45.receiver = self;
  v45.super_class = QSSKeywordFinderRequest;
  v10 = [(QSSKeywordFinderRequest *)&v45 init];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_53;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_54;
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
    goto LABEL_52;
  }

  v13 = [(NSData *)v10->_data bytes];
  v14 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v13 || root > v13 + v14)
  {
    goto LABEL_54;
  }

  v17 = [(NSData *)v10->_data bytes];
  v18 = [(NSData *)v10->_data length];
  v40 = v17;
  v41 = v18;
  v42 = xmmword_26914CD70;
  v43 = 0;
  v44 = 1;
  if (v18 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v19 = v10->_root;
  if (!v19)
  {
    goto LABEL_52;
  }

  if (!flatbuffers::Verifier::VerifyTableStart(&v40, v11->_root->var0) || !flatbuffers::Table::VerifyOffset(v19, &v40, 4u))
  {
    goto LABEL_54;
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

  if (!flatbuffers::Verifier::VerifyString(&v40, v22) || !flatbuffers::Table::VerifyOffset(v19, &v40, 6u))
  {
    goto LABEL_54;
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

  if (!flatbuffers::Verifier::VerifyString(&v40, v25) || !flatbuffers::Table::VerifyOffset(v19, &v40, 8u))
  {
    goto LABEL_54;
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

  if (!flatbuffers::Verifier::VerifyString(&v40, v28) || !flatbuffers::Table::VerifyOffset(v19, &v40, 0xAu))
  {
    goto LABEL_54;
  }

  v29 = *v19;
  if (*(v19 - v29) < 0xBu)
  {
    goto LABEL_39;
  }

  if (*(v19 - v29 + 10))
  {
    if (!flatbuffers::Verifier::VerifyVectorOrString(&v40, v19 + *(v19 - v29 + 10) + *(v19 + *(v19 - v29 + 10)), 4uLL, 0))
    {
      goto LABEL_54;
    }

    v29 = *v19;
    if (*(v19 - v29) < 0xBu)
    {
      goto LABEL_39;
    }
  }

  v30 = *(v19 - v29 + 10);
  if (!v30)
  {
LABEL_39:
    v31 = 0;
  }

  else
  {
    v31 = (v19 + v30 + *(v19 + v30));
  }

  if (!flatbuffers::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::RequestStatsResponse_::DoubleStat>(&v40, v31) || !flatbuffers::Table::VerifyOffset(v19, &v40, 0xCu))
  {
    goto LABEL_54;
  }

  v32 = *v19;
  v33 = *(v19 - v32);
  if (v33 >= 0xD)
  {
    if (*(v19 - v32 + 12))
    {
      if (!siri::speech::schema_fb::RecognitionResult::Verify((v19 + *(v19 - v32 + 12) + *(v19 + *(v19 - v32 + 12))), &v40))
      {
        goto LABEL_54;
      }

      v34 = *v19;
      v35 = -v34;
      v33 = *(v19 - v34);
    }

    else
    {
      v35 = -v32;
    }

    if (v33 < 0xF || !*(v19 + v35 + 14) || v41 >= 2 && v41 - 1 >= v19 + *(v19 + v35 + 14) - v40)
    {
      goto LABEL_52;
    }

LABEL_54:
    v38 = 0;
    goto LABEL_55;
  }

LABEL_52:
  v36 = [MEMORY[0x277CBEB38] dictionary];
  storage = v11->_storage;
  v11->_storage = v36;

LABEL_53:
  v38 = v11;
LABEL_55:

  return v38;
}

@end