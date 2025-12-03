@interface FTSpeechTranslationMtResponse
- (BOOL)contains_masked_profanity;
- (BOOL)is_final;
- (FTSpeechTranslationMtResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationMtResponse *)root verify:(BOOL)verify;
- (FTTranslationLocalePair)translation_locale_pair;
- (NSArray)alternative_descriptions;
- (NSArray)n_best_translated_phrases;
- (NSString)conversation_id;
- (NSString)request_id;
- (NSString)return_str;
- (Offset<siri::speech::schema_fb::SpeechTranslationMtResponse>)addObjectToBuffer:(void *)buffer;
- (id)alternative_descriptions_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (id)n_best_translated_phrases_objectAtIndex:(unint64_t)index;
- (int)return_code;
- (unint64_t)alternative_descriptions_count;
- (unint64_t)n_best_translated_phrases_count;
- (void)alternative_descriptions_enumerateObjectsUsingBlock:(id)block;
- (void)n_best_translated_phrases_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTSpeechTranslationMtResponse

- (FTSpeechTranslationMtResponse)initWithFlatbuffData:(id)data root:(const SpeechTranslationMtResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTSpeechTranslationMtResponse;
  v10 = [(FTSpeechTranslationMtResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::SpeechTranslationMtResponse::Verify(v18, v21))
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

- (NSString)conversation_id
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

- (NSString)return_str
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

- (FTTranslationLocalePair)translation_locale_pair
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translation_locale_pair"];
  if (!v3)
  {
    v4 = [FTTranslationLocalePair alloc];
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

    v3 = [(FTTranslationLocalePair *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translation_locale_pair"];
  }

  return v3;
}

- (NSArray)n_best_translated_phrases
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__FTSpeechTranslationMtResponse_n_best_translated_phrases__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSpeechTranslationMtResponse *)self n_best_translated_phrases_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"n_best_translated_phrases"];
  }

  return v3;
}

- (id)n_best_translated_phrases_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
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
  if (*v10->var0 >= 0xFu)
  {
    v11 = *v10[14].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTSpeechTranslationMtResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)n_best_translated_phrases_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0xFu && (v8 = *v7[14].var0) != 0)
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

- (void)n_best_translated_phrases_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"n_best_translated_phrases"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0xFu)
    {
      v9 = *v8[14].var0;
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
            v15 = [[FTSpeechTranslationMtResponse_TranslationPhrase alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (BOOL)is_final
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSArray)alternative_descriptions
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"alternative_descriptions"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __57__FTSpeechTranslationMtResponse_alternative_descriptions__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTSpeechTranslationMtResponse *)self alternative_descriptions_enumerateObjectsUsingBlock:v6];
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
  if (*v10->var0 >= 0x13u)
  {
    v11 = *v10[18].var0;
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
    if (*v7->var0 >= 0x13u && (v8 = *v7[18].var0) != 0)
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
    if (*v8->var0 >= 0x13u)
    {
      v9 = *v8[18].var0;
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
  return *v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::SpeechTranslationMtResponse>)addObjectToBuffer:(void *)buffer
{
  v70 = *MEMORY[0x277D85DE8];
  conversation_id = [(FTSpeechTranslationMtResponse *)self conversation_id];
  v6 = conversation_id;
  if (!conversation_id)
  {
    conversation_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)conversation_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  request_id = [(FTSpeechTranslationMtResponse *)self request_id];
  v10 = request_id;
  if (!request_id)
  {
    request_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)request_id UTF8String];
  v12 = strlen(uTF8String2);
  v54 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  return_code = [(FTSpeechTranslationMtResponse *)self return_code];
  return_str = [(FTSpeechTranslationMtResponse *)self return_str];
  v14 = return_str;
  if (!return_str)
  {
    return_str = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)return_str UTF8String];
  v16 = strlen(uTF8String3);
  v52 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  translation_locale_pair = [(FTSpeechTranslationMtResponse *)self translation_locale_pair];
  v51 = [translation_locale_pair addObjectToBuffer:buffer];

  memset(&v67, 0, sizeof(v67));
  n_best_translated_phrases = [(FTSpeechTranslationMtResponse *)self n_best_translated_phrases];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v67, [n_best_translated_phrases count]);

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  n_best_translated_phrases2 = [(FTSpeechTranslationMtResponse *)self n_best_translated_phrases];
  selfCopy = self;
  v20 = [n_best_translated_phrases2 countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v20)
  {
    v21 = *v64;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v64 != v21)
        {
          objc_enumerationMutation(n_best_translated_phrases2);
        }

        v23 = [*(*(&v63 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v67.__end_;
        if (v67.__end_ >= v67.__end_cap_.__value_)
        {
          begin = v67.__begin_;
          v27 = v67.__end_ - v67.__begin_;
          v28 = v67.__end_ - v67.__begin_;
          v29 = v28 + 1;
          if ((v28 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v30 = v67.__end_cap_.__value_ - v67.__begin_;
          if ((v67.__end_cap_.__value_ - v67.__begin_) >> 1 > v29)
          {
            v29 = v30 >> 1;
          }

          v31 = v30 >= 0x7FFFFFFFFFFFFFFCLL;
          v32 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v31)
          {
            v32 = v29;
          }

          if (v32)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v67, v32);
          }

          *(4 * v28) = v23;
          v25 = (4 * v28 + 4);
          memcpy(0, begin, v27);
          v33 = v67.__begin_;
          v67.__begin_ = 0;
          v67.__end_ = v25;
          v67.__end_cap_.__value_ = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v67.__end_ = v23;
          v25 = end + 1;
        }

        v67.__end_ = v25;
      }

      v20 = [n_best_translated_phrases2 countByEnumeratingWithState:&v63 objects:v69 count:16];
    }

    while (v20);
  }

  if (v67.__end_ == v67.__begin_)
  {
    v34 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::SpeechTranslationMtResponse_::TranslationPhrase>> const&)::t;
  }

  else
  {
    v34 = v67.__begin_;
  }

  v35 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v34, v67.__end_ - v67.__begin_);
  is_final = [(FTSpeechTranslationMtResponse *)selfCopy is_final];
  memset(&v62, 0, sizeof(v62));
  alternative_descriptions = [(FTSpeechTranslationMtResponse *)selfCopy alternative_descriptions];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v62, [alternative_descriptions count]);

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  alternative_descriptions2 = [(FTSpeechTranslationMtResponse *)selfCopy alternative_descriptions];
  v39 = [alternative_descriptions2 countByEnumeratingWithState:&v58 objects:v68 count:16];
  if (v39)
  {
    v40 = *v59;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(alternative_descriptions2);
        }

        v57 = [*(*(&v58 + 1) + 8 * j) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v62.__begin_, &v57);
      }

      v39 = [alternative_descriptions2 countByEnumeratingWithState:&v58 objects:v68 count:16];
    }

    while (v39);
  }

  if (v62.__end_ == v62.__begin_)
  {
    v42 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::MTAlternativeDescription>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::MTAlternativeDescription>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::MTAlternativeDescription>> const&)::t;
  }

  else
  {
    v42 = v62.__begin_;
  }

  v43 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v42, v62.__end_ - v62.__begin_);
  contains_masked_profanity = [(FTSpeechTranslationMtResponse *)selfCopy contains_masked_profanity];
  *(buffer + 70) = 1;
  v45 = *(buffer + 8);
  v46 = *(buffer + 12);
  v47 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 8, return_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v52);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v51);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v35);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, is_final, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 20, contains_masked_profanity, 0);
  v48.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v45 - v46 + v47);
  if (v62.__begin_)
  {
    v62.__end_ = v62.__begin_;
    operator delete(v62.__begin_);
  }

  if (v67.__begin_)
  {
    v67.__end_ = v67.__begin_;
    operator delete(v67.__begin_);
  }

  v49 = *MEMORY[0x277D85DE8];
  return v48;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTSpeechTranslationMtResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__45__FTSpeechTranslationMtResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__63__FTSpeechTranslationMtResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

@end