@interface FTBatchTranslationResponse_TranslationPhrase
- (BOOL)contains_masked_profanity;
- (BOOL)low_confidence;
- (FTBatchTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)a3 root:(const TranslationPhrase *)a4 verify:(BOOL)a5;
- (FTTranslationPhraseMetaInfo)meta_info_data;
- (NSArray)repeated_spans;
- (NSString)meta_info;
- (NSString)translation_phrase;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)a3;
- (float)confidence;
- (id)flatbuffData;
- (id)repeated_spans_objectAtIndex:(unint64_t)a3;
- (unint64_t)repeated_spans_count;
- (void)repeated_spans_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTBatchTranslationResponse_TranslationPhrase

- (FTBatchTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)a3 root:(const TranslationPhrase *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationResponse_TranslationPhrase;
  v10 = [(FTBatchTranslationResponse_TranslationPhrase *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, a3);
  if (!a4)
  {
    v11 = [(NSData *)v10->_data bytes];
    a4 = v11 + *v11;
  }

  v10->_root = a4;
  if (!v5)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_14;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase::Verify(v18, v21))
  {
LABEL_14:
    v19 = 0;
  }

  else
  {
LABEL_13:
    v19 = v10;
  }

  return v19;
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

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xBu && (v4 = *v3[10].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)repeated_spans
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"repeated_spans"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__FTBatchTranslationResponse_TranslationPhrase_repeated_spans__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTBatchTranslationResponse_TranslationPhrase *)self repeated_spans_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"repeated_spans"];
  }

  return v3;
}

- (id)repeated_spans_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"repeated_spans"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0xDu)
  {
    v11 = *v10[12].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTRepeatedSpan alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)repeated_spans_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"repeated_spans"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xDu && (v8 = *v7[12].var0) != 0)
    {
      v5 = *root[v8 + *root[v8].var0].var0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)repeated_spans_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"repeated_spans"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xDu)
    {
      v9 = *v8[12].var0;
      if (v9)
      {
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v10 + 4 + v9];
          v14 = 4 * v11 - 4;
          do
          {
            v15 = [[FTRepeatedSpan alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            v4[2](v4, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v13 += 4;
            v17 = v14;
            v14 -= 4;
          }

          while (v17);
        }
      }
    }
  }
}

- (FTTranslationPhraseMetaInfo)meta_info_data
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info_data"];
  if (!v3)
  {
    v4 = [FTTranslationPhraseMetaInfo alloc];
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

    v3 = [(FTTranslationPhraseMetaInfo *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info_data"];
  }

  return v3;
}

- (BOOL)contains_masked_profanity
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)a3
{
  v40 = *MEMORY[0x277D85DE8];
  [(FTBatchTranslationResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  v7 = [(FTBatchTranslationResponse_TranslationPhrase *)self translation_phrase];
  v8 = v7;
  if (!v7)
  {
    v7 = &stru_284834138;
  }

  v9 = [(__CFString *)v7 UTF8String];
  v10 = strlen(v9);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v9, v10);

  v12 = [(FTBatchTranslationResponse_TranslationPhrase *)self meta_info];
  v13 = v12;
  if (!v12)
  {
    v12 = &stru_284834138;
  }

  v14 = [(__CFString *)v12 UTF8String];
  v15 = strlen(v14);
  v16 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v14, v15);

  v17 = [(FTBatchTranslationResponse_TranslationPhrase *)self low_confidence];
  memset(&v38, 0, sizeof(v38));
  v18 = [(FTBatchTranslationResponse_TranslationPhrase *)self repeated_spans];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v38, [v18 count]);

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = [(FTBatchTranslationResponse_TranslationPhrase *)self repeated_spans];
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v20)
  {
    v21 = *v35;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v35 != v21)
        {
          objc_enumerationMutation(v19);
        }

        v33 = [*(*(&v34 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v38.__begin_, &v33);
      }

      v20 = [v19 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v20);
  }

  if (v38.__end_ == v38.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    begin = v38.__begin_;
  }

  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v38.__end_ - v38.__begin_);
  v25 = [(FTBatchTranslationResponse_TranslationPhrase *)self meta_info_data];
  v26 = [v25 addObjectToBuffer:a3];

  v27 = [(FTBatchTranslationResponse_TranslationPhrase *)self contains_masked_profanity];
  *(a3 + 70) = 1;
  v28 = *(a3 + 8);
  v29 = *(a3 + 12);
  LODWORD(v25) = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(a3, 4, v6, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v16);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 10, v17, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v26);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v27, 0);
  v30.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v28 - v29 + v25);
  if (v38.__begin_)
  {
    v38.__end_ = v38.__begin_;
    operator delete(v38.__begin_);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)flatbuffData
{
  v3 = 0;
  v4 = 0;
  v5 = xmmword_233005E30;
  v6 = 0u;
  v7 = 0u;
  v8 = 0;
  v9 = 1;
  v10 = 256;
  v11 = 0;
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationResponse_TranslationPhrase *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end