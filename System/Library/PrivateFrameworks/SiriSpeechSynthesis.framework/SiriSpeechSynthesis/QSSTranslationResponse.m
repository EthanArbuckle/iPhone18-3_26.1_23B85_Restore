@interface QSSTranslationResponse
- (BOOL)final_message;
- (NSArray)engine_output;
- (NSArray)n_best_translated_phrases;
- (NSString)engine_input;
- (NSString)request_id;
- (NSString)return_string;
- (NSString)sequence_id;
- (NSString)speech_id;
- (Offset<siri::speech::schema_fb::TranslationResponse>)addObjectToBuffer:(void *)a3;
- (QSSTranslationResponse)initWithFlatbuffData:(id)a3 root:(const TranslationResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSTranslationResponse

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
  v2.var0 = [(QSSTranslationResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__38__QSSTranslationResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TranslationResponse>)addObjectToBuffer:(void *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = [(QSSTranslationResponse *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSTranslationResponse *)self request_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_2879AE8E0;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v51 = flatbuffers::FlatBufferBuilder::CreateString(a3, v11, v12);

  v50 = [(QSSTranslationResponse *)self return_code];
  v13 = [(QSSTranslationResponse *)self return_string];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2879AE8E0;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v49 = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  memset(&v63, 0, sizeof(v63));
  v17 = [(QSSTranslationResponse *)self n_best_translated_phrases];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v63, [v17 count]);

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v18 = [(QSSTranslationResponse *)self n_best_translated_phrases];
  v19 = [v18 countByEnumeratingWithState:&v59 objects:v65 count:16];
  if (v19)
  {
    v20 = *v60;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v18);
        }

        LODWORD(v58.__begin_) = [*(*(&v59 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v63, &v58);
      }

      v19 = [v18 countByEnumeratingWithState:&v59 objects:v65 count:16];
    }

    while (v19);
  }

  begin = v63.__begin_;
  if (v63.__end_ == v63.__begin_)
  {
    v23 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>> const&)::t;
  }

  else
  {
    v23 = v63.__begin_;
  }

  v48 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v23, v63.__end_ - v63.__begin_);
  v24 = [(QSSTranslationResponse *)self engine_input];
  v25 = v24;
  if (!v24)
  {
    v24 = &stru_2879AE8E0;
  }

  v26 = [(__CFString *)v24 UTF8String];
  v27 = strlen(v26);
  v28 = flatbuffers::FlatBufferBuilder::CreateString(a3, v26, v27);

  memset(&v58, 0, sizeof(v58));
  v29 = [(QSSTranslationResponse *)self engine_output];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v58, [v29 count]);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v30 = [(QSSTranslationResponse *)self engine_output];
  v31 = [v30 countByEnumeratingWithState:&v54 objects:v64 count:16];
  if (v31)
  {
    v32 = *v55;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v55 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v53 = [*(*(&v54 + 1) + 8 * j) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v58, &v53);
      }

      v31 = [v30 countByEnumeratingWithState:&v54 objects:v64 count:16];
    }

    while (v31);
  }

  v34 = v58.__begin_;
  if (v58.__end_ == v58.__begin_)
  {
    v35 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>> const&)::t;
  }

  else
  {
    v35 = v58.__begin_;
  }

  v36 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v35, v58.__end_ - v58.__begin_);
  v37 = [(QSSTranslationResponse *)self sequence_id];
  v38 = v37;
  if (!v37)
  {
    v37 = &stru_2879AE8E0;
  }

  v39 = [(__CFString *)v37 UTF8String];
  v40 = strlen(v39);
  LODWORD(v39) = flatbuffers::FlatBufferBuilder::CreateString(a3, v39, v40);

  v41 = [(QSSTranslationResponse *)self final_message];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v42 = *(a3 + 8);
  v43 = *(a3 + 12);
  v44 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, v51);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 8, v50);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v49);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v48);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v28);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 16, v36);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 18, v39);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 20, v41);
  v45.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v42 - v43 + v44);
  if (v34)
  {
    operator delete(v34);
  }

  if (begin)
  {
    operator delete(begin);
  }

  v46 = *MEMORY[0x277D85DE8];
  return v45;
}

- (BOOL)final_message
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)sequence_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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

- (NSArray)engine_output
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"engine_output"];
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
            v11 = [[QSSTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"engine_output"];
  }

  return v3;
}

flatbuffers::DetachedBuffer *__56__QSSTranslationResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

flatbuffers::DetachedBuffer *__55__QSSTranslationResponse_TranslationToken_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSString)engine_input
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 14].var0;
  if (*root[-v3 + 14].var0)
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

- (NSArray)n_best_translated_phrases
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
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
            v11 = [[QSSTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"n_best_translated_phrases"];
  }

  return v3;
}

- (NSString)return_string
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

- (int)return_code
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

- (NSString)request_id
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

- (QSSTranslationResponse)initWithFlatbuffData:(id)a3 root:(const TranslationResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTranslationResponse;
  v10 = [(QSSTranslationResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::TranslationResponse::Verify(v19, &v24))
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