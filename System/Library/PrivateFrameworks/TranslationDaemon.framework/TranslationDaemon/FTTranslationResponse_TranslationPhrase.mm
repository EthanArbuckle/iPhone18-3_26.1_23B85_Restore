@interface FTTranslationResponse_TranslationPhrase
- (BOOL)low_confidence;
- (FTTranslationPhraseMetaInfo)meta_info_data;
- (FTTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify;
- (NSArray)spans;
- (NSArray)translated_tokens;
- (NSString)lt_formattedString;
- (NSString)meta_info;
- (Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer;
- (float)confidence;
- (id)flatbuffData;
- (id)spans_objectAtIndex:(unint64_t)index;
- (id)translated_tokens_objectAtIndex:(unint64_t)index;
- (unint64_t)spans_count;
- (unint64_t)translated_tokens_count;
- (void)spans_enumerateObjectsUsingBlock:(id)block;
- (void)translated_tokens_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTranslationResponse_TranslationPhrase

- (NSString)lt_formattedString
{
  translated_tokens = [(FTTranslationResponse_TranslationPhrase *)self translated_tokens];
  v3 = [translated_tokens _ltCompactMap:&__block_literal_global_24];
  v4 = [v3 componentsJoinedByString:&stru_284834138];

  return v4;
}

- (FTTranslationResponse_TranslationPhrase)initWithFlatbuffData:(id)data root:(const TranslationPhrase *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTranslationResponse_TranslationPhrase;
  v10 = [(FTTranslationResponse_TranslationPhrase *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::TranslationResponse_::TranslationPhrase::Verify(v18, v21))
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

- (NSArray)translated_tokens
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_tokens"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __60__FTTranslationResponse_TranslationPhrase_translated_tokens__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTranslationResponse_TranslationPhrase *)self translated_tokens_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translated_tokens"];
  }

  return v3;
}

- (id)translated_tokens_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_tokens"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTranslationResponse_TranslationToken alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)translated_tokens_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_tokens"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 7u && (v8 = *v7[6].var0) != 0)
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

- (void)translated_tokens_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_tokens"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 7u)
    {
      v9 = *v8[6].var0;
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
            v15 = [[FTTranslationResponse_TranslationToken alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (NSArray)spans
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __48__FTTranslationResponse_TranslationPhrase_spans__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTranslationResponse_TranslationPhrase *)self spans_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"spans"];
  }

  return v3;
}

- (id)spans_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0xBu)
  {
    v11 = *v10[10].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTRepeatedSpan alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)spans_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xBu && (v8 = *v7[10].var0) != 0)
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

- (void)spans_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"spans"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xBu)
    {
      v9 = *v8[10].var0;
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
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (BOOL)low_confidence
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0 && root[v4].var0[0] != 0;
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

- (Offset<siri::speech::schema_fb::TranslationResponse_::TranslationPhrase>)addObjectToBuffer:(void *)buffer
{
  v59 = *MEMORY[0x277D85DE8];
  [(FTTranslationResponse_TranslationPhrase *)self confidence];
  v6 = v5;
  memset(&v56, 0, sizeof(v56));
  translated_tokens = [(FTTranslationResponse_TranslationPhrase *)self translated_tokens];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v56, [translated_tokens count]);

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  translated_tokens2 = [(FTTranslationResponse_TranslationPhrase *)self translated_tokens];
  selfCopy = self;
  v9 = [translated_tokens2 countByEnumeratingWithState:&v52 objects:v58 count:16];
  if (v9)
  {
    v10 = *v53;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v53 != v10)
        {
          objc_enumerationMutation(translated_tokens2);
        }

        v12 = [*(*(&v52 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v56.__end_;
        if (v56.__end_ >= v56.__end_cap_.__value_)
        {
          begin = v56.__begin_;
          v16 = v56.__end_ - v56.__begin_;
          v17 = v56.__end_ - v56.__begin_;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v19 = v56.__end_cap_.__value_ - v56.__begin_;
          if ((v56.__end_cap_.__value_ - v56.__begin_) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
          v21 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v20)
          {
            v21 = v18;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v56, v21);
          }

          *(4 * v17) = v12;
          v14 = (4 * v17 + 4);
          memcpy(0, begin, v16);
          v22 = v56.__begin_;
          v56.__begin_ = 0;
          v56.__end_ = v14;
          v56.__end_cap_.__value_ = 0;
          if (v22)
          {
            operator delete(v22);
          }
        }

        else
        {
          *v56.__end_ = v12;
          v14 = end + 1;
        }

        v56.__end_ = v14;
      }

      v9 = [translated_tokens2 countByEnumeratingWithState:&v52 objects:v58 count:16];
    }

    while (v9);
  }

  if (v56.__end_ == v56.__begin_)
  {
    v23 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationToken>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationToken>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TranslationResponse_::TranslationToken>> const&)::t;
  }

  else
  {
    v23 = v56.__begin_;
  }

  v24 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v23, v56.__end_ - v56.__begin_);
  meta_info = [(FTTranslationResponse_TranslationPhrase *)selfCopy meta_info];
  v26 = meta_info;
  if (!meta_info)
  {
    meta_info = &stru_284834138;
  }

  uTF8String = [(__CFString *)meta_info UTF8String];
  v28 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v28);

  memset(&v51, 0, sizeof(v51));
  spans = [(FTTranslationResponse_TranslationPhrase *)selfCopy spans];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v51, [spans count]);

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  spans2 = [(FTTranslationResponse_TranslationPhrase *)selfCopy spans];
  v32 = [spans2 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v32)
  {
    v33 = *v48;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v48 != v33)
        {
          objc_enumerationMutation(spans2);
        }

        v46 = [*(*(&v47 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v51.__begin_, &v46);
      }

      v32 = [spans2 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v32);
  }

  if (v51.__end_ == v51.__begin_)
  {
    v35 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    v35 = v51.__begin_;
  }

  v36 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v35, v51.__end_ - v51.__begin_);
  low_confidence = [(FTTranslationResponse_TranslationPhrase *)selfCopy low_confidence];
  meta_info_data = [(FTTranslationResponse_TranslationPhrase *)selfCopy meta_info_data];
  v39 = [meta_info_data addObjectToBuffer:buffer];

  *(buffer + 70) = 1;
  v40 = *(buffer + 8);
  v41 = *(buffer + 12);
  LODWORD(meta_info_data) = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<float>(buffer, 4, v6, 0.0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v24);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v36);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 12, low_confidence, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v39);
  v42.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v40 - v41 + meta_info_data);
  if (v51.__begin_)
  {
    v51.__end_ = v51.__begin_;
    operator delete(v51.__begin_);
  }

  if (v56.__begin_)
  {
    v56.__end_ = v56.__begin_;
    operator delete(v56.__begin_);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v42;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTranslationResponse_TranslationPhrase *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end