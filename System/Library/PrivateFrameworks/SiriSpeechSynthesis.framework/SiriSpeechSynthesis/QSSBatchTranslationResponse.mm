@interface QSSBatchTranslationResponse
- (NSArray)span;
- (NSArray)translated_sentences;
- (NSString)paragraph_id;
- (NSString)request_id;
- (NSString)return_string;
- (NSString)translated_text;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse>)addObjectToBuffer:(void *)a3;
- (QSSBatchTranslationResponse)initWithFlatbuffData:(id)a3 root:(const BatchTranslationResponse *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
- (int)return_code;
@end

@implementation QSSBatchTranslationResponse

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
  v2.var0 = [(QSSBatchTranslationResponse *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__43__QSSBatchTranslationResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse>)addObjectToBuffer:(void *)a3
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [(QSSBatchTranslationResponse *)self request_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_2879AE8E0;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(QSSBatchTranslationResponse *)self return_code];
  v10 = [(QSSBatchTranslationResponse *)self return_string];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v41 = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  v14 = [(QSSBatchTranslationResponse *)self paragraph_id];
  v15 = v14;
  if (!v14)
  {
    v14 = &stru_2879AE8E0;
  }

  v16 = [(__CFString *)v14 UTF8String];
  v17 = strlen(v16);
  v40 = flatbuffers::FlatBufferBuilder::CreateString(a3, v16, v17);

  v18 = [(QSSBatchTranslationResponse *)self translated_text];
  v19 = v18;
  if (!v18)
  {
    v18 = &stru_2879AE8E0;
  }

  v20 = [(__CFString *)v18 UTF8String];
  v21 = strlen(v20);
  v39 = flatbuffers::FlatBufferBuilder::CreateString(a3, v20, v21);

  memset(&v53, 0, sizeof(v53));
  v22 = [(QSSBatchTranslationResponse *)self span];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v53, [v22 count]);

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v23 = [(QSSBatchTranslationResponse *)self span];
  v24 = [v23 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v24)
  {
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v48 = [*(*(&v49 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v53, &v48);
      }

      v24 = [v23 countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v24);
  }

  if (v53.__end_ == v53.__begin_)
  {
    begin = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    begin = v53.__begin_;
  }

  v38 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, begin, v53.__end_ - v53.__begin_);
  v28 = [(QSSBatchTranslationResponse *)self translated_sentences];
  v29 = [v28 count];
  if (v29)
  {
    if (!(v29 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v29);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [(QSSBatchTranslationResponse *)self translated_sentences];
  if ([obj countByEnumeratingWithState:&v44 objects:v54 count:16])
  {
    *v45;
    *v45;
    [**(&v44 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v30 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v31 = *(a3 + 8);
  v32 = *(a3 + 12);
  v33 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v9);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v41);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v39);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 14, v38);
  if (v30)
  {
    v34 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v30);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v34);
  }

  v35.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v31 - v32 + v33);
  if (v53.__begin_)
  {
    operator delete(v53.__begin_);
  }

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (NSArray)translated_sentences
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_sentences"];
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
            v11 = [[QSSBatchTranslationResponse_TranslatedSentence alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translated_sentences"];
  }

  return v3;
}

flatbuffers::DetachedBuffer *__62__QSSBatchTranslationResponse_TranslatedSentence_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

flatbuffers::DetachedBuffer *__61__QSSBatchTranslationResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (NSArray)span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
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
            v11 = [[QSSRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"span"];
  }

  return v3;
}

- (NSString)translated_text
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

- (NSString)paragraph_id
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

- (NSString)return_string
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

- (int)return_code
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

- (NSString)request_id
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

- (QSSBatchTranslationResponse)initWithFlatbuffData:(id)a3 root:(const BatchTranslationResponse *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationResponse;
  v10 = [(QSSBatchTranslationResponse *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationResponse::Verify(v19, &v24))
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