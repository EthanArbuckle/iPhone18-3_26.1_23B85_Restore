@interface QSSTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (NSArray)spans;
- (NSArray)translated_tokens;
- (NSString)meta_info;
- (Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)a3;
- (QSSTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)a3 root:(const TranslationPhrase *)a4 verify:(BOOL)a5;
- (float)confidence;
- (id)flatbuffData;
@end

@implementation QSSTranslationResponse_TranslationPhrase

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
  v2.var0 = [(QSSTranslationResponse_TranslationPhrase *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)a3
{
  v45 = *MEMORY[0x277D85DE8];
  [(QSSTranslationResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  v7 = [(QSSTranslationResponse_TranslationPhrase *)self translated_tokens];
  v8 = [v7 count];
  if (v8)
  {
    if (!(v8 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v8);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(QSSTranslationResponse_TranslationPhrase *)self translated_tokens];
  v31 = self;
  if ([obj countByEnumeratingWithState:&v39 objects:v44 count:16])
  {
    *v40;
    *v40;
    [**(&v39 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v9 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v10 = [(QSSTranslationResponse_TranslationPhrase *)self meta_info];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_2879AE8E0;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v12, v13);

  memset(&v38, 0, sizeof(v38));
  v15 = [(QSSTranslationResponse_TranslationPhrase *)v31 spans];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v38, [v15 count]);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v16 = [(QSSTranslationResponse_TranslationPhrase *)v31 spans];
  v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v17)
  {
    v18 = *v35;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v33 = [*(*(&v34 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v38, &v33);
      }

      v17 = [v16 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v17);
  }

  begin = v38.__begin_;
  if (v38.__end_ == v38.__begin_)
  {
    v21 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    v21 = v38.__begin_;
  }

  v22 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v21, v38.__end_ - v38.__begin_);
  v23 = [(QSSTranslationResponse_TranslationPhrase *)v31 low_confidence];
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v24 = *(a3 + 8);
  v25 = *(a3 + 12);
  v26 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 4, v6);
  if (v9)
  {
    v27 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v9);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v27);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 10, v22);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 12, v23);
  v28.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v24 - v25 + v26);
  if (begin)
  {
    operator delete(begin);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)spans
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
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
            v11 = [[QSSRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"spans"];
  }

  return v3;
}

- (NSString)meta_info
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

- (NSArray)translated_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_tokens"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
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
            v11 = [[QSSTranslationResponse_TranslationToken alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translated_tokens"];
  }

  return v3;
}

- (float)confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  result = 0.0;
  if (*v3->var0 >= 5u)
  {
    v5 = *v3[4].var0;
    if (v5)
    {
      return *root[v5].var0;
    }
  }

  return result;
}

- (QSSTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)a3 root:(const TranslationPhrase *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTranslationResponse_TranslationPhrase;
  v10 = [(QSSTranslationResponse_TranslationPhrase *)&v29 init];
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
        if (!siri::speech::schema_fb::TranslationResponse_::TranslationPhrase::Verify(v19, &v24))
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