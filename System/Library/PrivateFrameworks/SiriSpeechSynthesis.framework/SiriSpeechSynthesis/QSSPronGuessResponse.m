@interface QSSPronGuessResponse
- (NSArray)human_readable_prons;
- (NSArray)tts_pronunciations;
- (NSString)apg_id;
- (NSString)error_str;
- (NSString)session_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::PronGuessResponse>)addObjectToBuffer:(void *)a3;
- (QSSPronGuessResponse)initWithFlatbuffData:(id)a3 root:(const PronGuessResponse *)a4 verify:(BOOL)a5;
- (QSSVocToken)voc_token;
- (id)flatbuffData;
- (int)error_code;
@end

@implementation QSSPronGuessResponse

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
  v2.var0 = [(QSSPronGuessResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__36__QSSPronGuessResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::PronGuessResponse>)addObjectToBuffer:(void *)a3
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = [(QSSPronGuessResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSPronGuessResponse *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v47 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v46 = [(QSSPronGuessResponse *)self error_code];
  v13 = [(QSSPronGuessResponse *)self error_str];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v45 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(QSSPronGuessResponse *)self apg_id];
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_2879AE8E0;
  }

  v19 = [(__CFString *)v17 UTF8String];
  v20 = strlen(v19);
  v44 = flatbuffers::FlatBufferBuilder::CreateString(a3, v19, v20);

  v21 = [(QSSPronGuessResponse *)self voc_token];
  v22 = [v21 addObjectToBuffer:a3];

  v23 = [(QSSPronGuessResponse *)self tts_pronunciations];
  v24 = [v23 count];
  if (v24)
  {
    if (!(v24 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v24);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = [(QSSPronGuessResponse *)self tts_pronunciations];
  v49 = v22;
  if ([obj countByEnumeratingWithState:&v57 objects:v62 count:16])
  {
    *v58;
    *v58;
    [**(&v57 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v25 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  memset(&v56, 0, sizeof(v56));
  v26 = [(QSSPronGuessResponse *)self human_readable_prons];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v56, [v26 count]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = [(QSSPronGuessResponse *)self human_readable_prons];
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
  if (v28)
  {
    v29 = *v53;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v53 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v31 = [*(*(&v52 + 1) + 8 * i) UTF8String];
        v32 = strlen(v31);
        v51 = flatbuffers::FlatBufferBuilder::CreateString(a3, v31, v32);
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v56, &v51);
      }

      v28 = [v27 countByEnumeratingWithState:&v52 objects:v61 count:16];
    }

    while (v28);
  }

  begin = v56.__begin_;
  if (v56.__end_ == v56.__begin_)
  {
    v34 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  else
  {
    v34 = v56.__begin_;
  }

  v35 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v34, v56.__end_ - v56.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v36 = *(a3 + 8);
  v37 = *(a3 + 12);
  v38 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v47);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v46);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v45);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v44);
  if (v49)
  {
    v39 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v49);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v39);
  }

  if (v25)
  {
    v40 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v25);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v40);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v35);
  v41.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v36 - v37 + v38);
  if (begin)
  {
    operator delete(begin);
  }

  v42 = *MEMORY[0x277D85DE8];
  return v41;
}

- (NSArray)human_readable_prons
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"human_readable_prons"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x13u)
    {
      v6 = *v5[18].var0;
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

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"human_readable_prons"];
  }

  return v3;
}

- (NSArray)tts_pronunciations
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"tts_pronunciations"];
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
            v11 = [[QSSPronunciation alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"tts_pronunciations"];
  }

  return v3;
}

- (QSSVocToken)voc_token
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"voc_token"];
  if (!v3)
  {
    v4 = [QSSVocToken alloc];
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

    v3 = [(QSSVocToken *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"voc_token"];
  }

  return v3;
}

- (NSString)apg_id
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

- (QSSPronGuessResponse)initWithFlatbuffData:(id)a3 root:(const PronGuessResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSPronGuessResponse;
  v10 = [(QSSPronGuessResponse *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
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
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
      v25 = v18;
      v26 = xmmword_26914CD70;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::PronGuessResponse::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end