@interface FTBatchTranslationResponse_TranslatedSentence
- (BOOL)contains_masked_profanity;
- (FTBatchTranslationResponse_TranslatedSentence)initWithFlatbuffData:(id)data root:(const TranslatedSentence *)root verify:(BOOL)verify;
- (FTSpan)source_span;
- (FTSpan)target_span;
- (NSArray)alternative_descriptions;
- (NSArray)n_best_choices;
- (NSString)engine_input;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>)addObjectToBuffer:(void *)buffer;
- (id)alternative_descriptions_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)n_best_choices_objectAtIndex:(unint64_t)index;
- (unint64_t)alternative_descriptions_count;
- (unint64_t)n_best_choices_count;
- (void)alternative_descriptions_enumerateObjectsUsingBlock:(id)block;
- (void)n_best_choices_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTBatchTranslationResponse_TranslatedSentence

- (FTBatchTranslationResponse_TranslatedSentence)initWithFlatbuffData:(id)data root:(const TranslatedSentence *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationResponse_TranslatedSentence;
  v10 = [(FTBatchTranslationResponse_TranslatedSentence *)&v25 init];
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

  if (!siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence::Verify(v18, v21))
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

- (FTSpan)source_span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"source_span"];
  if (!v3)
  {
    v4 = [FTSpan alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 5u && (v7 = *v6[4].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTSpan *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"source_span"];
  }

  return v3;
}

- (NSString)engine_input
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

- (FTSpan)target_span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"target_span"];
  if (!v3)
  {
    v4 = [FTSpan alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 9u && (v7 = *v6[8].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTSpan *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"target_span"];
  }

  return v3;
}

- (NSArray)n_best_choices
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_choices"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__FTBatchTranslationResponse_TranslatedSentence_n_best_choices__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTBatchTranslationResponse_TranslatedSentence *)self n_best_choices_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"n_best_choices"];
  }

  return v3;
}

- (id)n_best_choices_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_choices"];
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
      v7 = [[FTBatchTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)n_best_choices_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_choices"];
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

- (void)n_best_choices_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_choices"];
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
            v15 = [[FTBatchTranslationResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSArray)alternative_descriptions
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_descriptions"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __73__FTBatchTranslationResponse_TranslatedSentence_alternative_descriptions__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTBatchTranslationResponse_TranslatedSentence *)self alternative_descriptions_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"alternative_descriptions"];
  }

  return v3;
}

- (id)alternative_descriptions_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_descriptions"];
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
  if (*v10->var0 >= 0xDu)
  {
    v11 = *v10[12].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTMTAlternativeDescription alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)alternative_descriptions_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_descriptions"];
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

- (void)alternative_descriptions_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_descriptions"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
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
            v15 = [[FTMTAlternativeDescription alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (BOOL)contains_masked_profanity
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>)addObjectToBuffer:(void *)buffer
{
  v60 = *MEMORY[0x277D85DE8];
  source_span = [(FTBatchTranslationResponse_TranslatedSentence *)self source_span];
  v45 = [source_span addObjectToBuffer:buffer];

  engine_input = [(FTBatchTranslationResponse_TranslatedSentence *)self engine_input];
  v7 = engine_input;
  if (!engine_input)
  {
    engine_input = &stru_284834138;
  }

  uTF8String = [(__CFString *)engine_input UTF8String];
  v9 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v9);

  target_span = [(FTBatchTranslationResponse_TranslatedSentence *)self target_span];
  v43 = [target_span addObjectToBuffer:buffer];

  memset(&v57, 0, sizeof(v57));
  n_best_choices = [(FTBatchTranslationResponse_TranslatedSentence *)self n_best_choices];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v57, [n_best_choices count]);

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  n_best_choices2 = [(FTBatchTranslationResponse_TranslatedSentence *)self n_best_choices];
  selfCopy = self;
  v13 = [n_best_choices2 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v13)
  {
    v14 = *v54;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(n_best_choices2);
        }

        v16 = [*(*(&v53 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v57.__end_;
        if (v57.__end_ >= v57.__end_cap_.__value_)
        {
          begin = v57.__begin_;
          v20 = v57.__end_ - v57.__begin_;
          v21 = v57.__end_ - v57.__begin_;
          v22 = v21 + 1;
          if ((v21 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v23 = v57.__end_cap_.__value_ - v57.__begin_;
          if ((v57.__end_cap_.__value_ - v57.__begin_) >> 1 > v22)
          {
            v22 = v23 >> 1;
          }

          v24 = v23 >= 0x7FFFFFFFFFFFFFFCLL;
          v25 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v24)
          {
            v25 = v22;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v57, v25);
          }

          *(4 * v21) = v16;
          v18 = (4 * v21 + 4);
          memcpy(0, begin, v20);
          v26 = v57.__begin_;
          v57.__begin_ = 0;
          v57.__end_ = v18;
          v57.__end_cap_.__value_ = 0;
          if (v26)
          {
            operator delete(v26);
          }
        }

        else
        {
          *v57.__end_ = v16;
          v18 = end + 1;
        }

        v57.__end_ = v18;
      }

      v13 = [n_best_choices2 countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v13);
  }

  if (v57.__end_ == v57.__begin_)
  {
    v27 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslationPhrase>> const&)::t;
  }

  else
  {
    v27 = v57.__begin_;
  }

  v28 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v27, v57.__end_ - v57.__begin_);
  memset(&v52, 0, sizeof(v52));
  alternative_descriptions = [(FTBatchTranslationResponse_TranslatedSentence *)selfCopy alternative_descriptions];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v52, [alternative_descriptions count]);

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  alternative_descriptions2 = [(FTBatchTranslationResponse_TranslatedSentence *)selfCopy alternative_descriptions];
  v31 = [alternative_descriptions2 countByEnumeratingWithState:&v48 objects:v58 count:16];
  if (v31)
  {
    v32 = *v49;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v49 != v32)
        {
          objc_enumerationMutation(alternative_descriptions2);
        }

        v47 = [*(*(&v48 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v52.__begin_, &v47);
      }

      v31 = [alternative_descriptions2 countByEnumeratingWithState:&v48 objects:v58 count:16];
    }

    while (v31);
  }

  if (v52.__end_ == v52.__begin_)
  {
    v34 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::MTAlternativeDescription>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::MTAlternativeDescription>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::MTAlternativeDescription>> const&)::t;
  }

  else
  {
    v34 = v52.__begin_;
  }

  v35 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v34, v52.__end_ - v52.__begin_);
  contains_masked_profanity = [(FTBatchTranslationResponse_TranslatedSentence *)selfCopy contains_masked_profanity];
  *(buffer + 70) = 1;
  v37 = *(buffer + 8);
  v38 = *(buffer + 12);
  v39 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v28);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, contains_masked_profanity, 0);
  v40.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v37 - v38 + v39);
  if (v52.__begin_)
  {
    v52.__end_ = v52.__begin_;
    operator delete(v52.__begin_);
  }

  if (v57.__begin_)
  {
    v57.__end_ = v57.__begin_;
    operator delete(v57.__begin_);
  }

  v41 = *MEMORY[0x277D85DE8];
  return v40;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationResponse_TranslatedSentence *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

@end