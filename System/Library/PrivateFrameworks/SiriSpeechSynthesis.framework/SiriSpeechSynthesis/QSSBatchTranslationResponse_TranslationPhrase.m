@interface QSSBatchTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (NSArray)repeated_spans;
- (NSString)meta_info;
- (NSString)translation_phrase;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)a3;
- (QSSBatchTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)a3 root:(const TranslationPhrase *)a4 verify:(BOOL)a5;
- (float)confidence;
- (id)flatbuffData;
@end

@implementation QSSBatchTranslationResponse_TranslationPhrase

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
  v2.var0 = [(QSSBatchTranslationResponse_TranslationPhrase *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  [(QSSBatchTranslationResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  v7 = [(QSSBatchTranslationResponse_TranslationPhrase *)self translation_phrase];
  v8 = v7;
  if (!v7)
  {
    v7 = &stru_2879AE8E0;
  }

  v9 = [(__CFString *)v7 UTF8String];
  v10 = strlen(v9);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v9, v10);

  v12 = [(QSSBatchTranslationResponse_TranslationPhrase *)self meta_info];
  v13 = v12;
  if (!v12)
  {
    v12 = &stru_2879AE8E0;
  }

  v14 = [(__CFString *)v12 UTF8String];
  v15 = strlen(v14);
  v16 = flatbuffers::FlatBufferBuilder::CreateString(a3, v14, v15);

  v17 = [(QSSBatchTranslationResponse_TranslationPhrase *)self low_confidence];
  memset(&v37, 0, sizeof(v37));
  v18 = [(QSSBatchTranslationResponse_TranslationPhrase *)self repeated_spans];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v37, [v18 count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [(QSSBatchTranslationResponse_TranslationPhrase *)self repeated_spans];
  v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v20)
  {
    v21 = *v34;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v32 = [*(*(&v33 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v37, &v32);
      }

      v20 = [v19 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v20);
  }

  begin = v37.__begin_;
  if (v37.__end_ == v37.__begin_)
  {
    v24 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    v24 = v37.__begin_;
  }

  v25 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a3, v24, v37.__end_ - v37.__begin_);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v26 = *(a3 + 8);
  v27 = *(a3 + 12);
  v28 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a3, 4, v6);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 8, v16);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 10, v17);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 12, v25);
  v29.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v26 - v27 + v28);
  if (begin)
  {
    operator delete(begin);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
}

- (NSArray)repeated_spans
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"repeated_spans"];
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
            v11 = [[QSSRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"repeated_spans"];
  }

  return v3;
}

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
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

- (NSString)translation_phrase
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

- (QSSBatchTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)a3 root:(const TranslationPhrase *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSBatchTranslationResponse_TranslationPhrase;
  v10 = [(QSSBatchTranslationResponse_TranslationPhrase *)&v29 init];
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
        if (!siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase::Verify(v19, &v24))
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