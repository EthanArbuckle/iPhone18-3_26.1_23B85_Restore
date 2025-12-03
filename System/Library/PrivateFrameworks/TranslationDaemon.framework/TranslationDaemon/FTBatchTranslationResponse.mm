@interface FTBatchTranslationResponse
- (BOOL)contains_masked_profanity;
- (FTBatchTranslationResponse)initWithFlatbuffData:(id)data root:(const BatchTranslationResponse *)root verify:(BOOL)verify;
- (NSArray)span;
- (NSArray)translated_sentences;
- (NSString)paragraph_id;
- (NSString)request_id;
- (NSString)return_string;
- (NSString)translated_text;
- (NSString)translated_text_romanized;
- (Offset<siri::speech::schema_fb::BatchTranslationResponse>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)span_objectAtIndex:(unint64_t)index;
- (id)translated_sentences_objectAtIndex:(unint64_t)index;
- (int)return_code;
- (unint64_t)span_count;
- (unint64_t)translated_sentences_count;
- (void)span_enumerateObjectsUsingBlock:(id)block;
- (void)translated_sentences_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTBatchTranslationResponse

- (FTBatchTranslationResponse)initWithFlatbuffData:(id)data root:(const BatchTranslationResponse *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTBatchTranslationResponse;
  v10 = [(FTBatchTranslationResponse *)&v25 init];
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

  if (!siri::speech::schema_fb::BatchTranslationResponse::Verify(v18, v21))
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

- (NSArray)span
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __34__FTBatchTranslationResponse_span__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTBatchTranslationResponse *)self span_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"span"];
  }

  return v3;
}

- (id)span_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
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
      v7 = [[FTRepeatedSpan alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)span_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
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

- (void)span_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"span"];
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

- (NSArray)translated_sentences
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_sentences"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __50__FTBatchTranslationResponse_translated_sentences__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTBatchTranslationResponse *)self translated_sentences_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"translated_sentences"];
  }

  return v3;
}

- (id)translated_sentences_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_sentences"];
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
  if (*v10->var0 >= 0x11u)
  {
    v11 = *v10[16].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTBatchTranslationResponse_TranslatedSentence alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)translated_sentences_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_sentences"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x11u && (v8 = *v7[16].var0) != 0)
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

- (void)translated_sentences_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"translated_sentences"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x11u)
    {
      v9 = *v8[16].var0;
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
            v15 = [[FTBatchTranslationResponse_TranslatedSentence alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSString)translated_text_romanized
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

- (BOOL)contains_masked_profanity
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x15u && (v4 = *v3[20].var0) != 0 && root[v4].var0[0] != 0;
}

- (Offset<siri::speech::schema_fb::BatchTranslationResponse>)addObjectToBuffer:(void *)buffer
{
  v74 = *MEMORY[0x277D85DE8];
  request_id = [(FTBatchTranslationResponse *)self request_id];
  v6 = request_id;
  if (!request_id)
  {
    request_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)request_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  return_code = [(FTBatchTranslationResponse *)self return_code];
  return_string = [(FTBatchTranslationResponse *)self return_string];
  v10 = return_string;
  if (!return_string)
  {
    return_string = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)return_string UTF8String];
  v12 = strlen(uTF8String2);
  v58 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  paragraph_id = [(FTBatchTranslationResponse *)self paragraph_id];
  v14 = paragraph_id;
  if (!paragraph_id)
  {
    paragraph_id = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)paragraph_id UTF8String];
  v16 = strlen(uTF8String3);
  v57 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  translated_text = [(FTBatchTranslationResponse *)self translated_text];
  v18 = translated_text;
  selfCopy = self;
  if (!translated_text)
  {
    translated_text = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)translated_text UTF8String];
  v20 = strlen(uTF8String4);
  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  memset(&v71, 0, sizeof(v71));
  span = [(FTBatchTranslationResponse *)self span];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v71, [span count]);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  span2 = [(FTBatchTranslationResponse *)self span];
  v24 = [span2 countByEnumeratingWithState:&v67 objects:v73 count:16];
  if (v24)
  {
    v25 = *v68;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v68 != v25)
        {
          objc_enumerationMutation(span2);
        }

        LODWORD(v66.__begin_) = [*(*(&v67 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v71.__begin_, &v66);
      }

      v24 = [span2 countByEnumeratingWithState:&v67 objects:v73 count:16];
    }

    while (v24);
  }

  if (v71.__end_ == v71.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RepeatedSpan>> const&)::t;
  }

  else
  {
    begin = v71.__begin_;
  }

  v56 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v71.__end_ - v71.__begin_);
  memset(&v66, 0, sizeof(v66));
  translated_sentences = [(FTBatchTranslationResponse *)self translated_sentences];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v66, [translated_sentences count]);

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  translated_sentences2 = [(FTBatchTranslationResponse *)self translated_sentences];
  v30 = [translated_sentences2 countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v30)
  {
    v31 = *v63;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(translated_sentences2);
        }

        v33 = [*(*(&v62 + 1) + 8 * j) addObjectToBuffer:buffer];
        end = v66.__end_;
        if (v66.__end_ >= v66.__end_cap_.__value_)
        {
          v36 = v66.__begin_;
          v37 = v66.__end_ - v66.__begin_;
          v38 = v66.__end_ - v66.__begin_;
          v39 = v38 + 1;
          if ((v38 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v40 = v66.__end_cap_.__value_ - v66.__begin_;
          if ((v66.__end_cap_.__value_ - v66.__begin_) >> 1 > v39)
          {
            v39 = v40 >> 1;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v41 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v66, v41);
          }

          *(4 * v38) = v33;
          v35 = (4 * v38 + 4);
          memcpy(0, v36, v37);
          v42 = v66.__begin_;
          v66.__begin_ = 0;
          v66.__end_ = v35;
          v66.__end_cap_.__value_ = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        else
        {
          *v66.__end_ = v33;
          v35 = end + 1;
        }

        v66.__end_ = v35;
      }

      v30 = [translated_sentences2 countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v30);
  }

  if (v66.__end_ == v66.__begin_)
  {
    v43 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::BatchTranslationResponse_::TranslatedSentence>> const&)::t;
  }

  else
  {
    v43 = v66.__begin_;
  }

  v44 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v43, v66.__end_ - v66.__begin_);
  translated_text_romanized = [(FTBatchTranslationResponse *)selfCopy translated_text_romanized];
  v46 = translated_text_romanized;
  if (!translated_text_romanized)
  {
    translated_text_romanized = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)translated_text_romanized UTF8String];
  v48 = strlen(uTF8String5);
  LODWORD(uTF8String5) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v48);

  contains_masked_profanity = [(FTBatchTranslationResponse *)selfCopy contains_masked_profanity];
  *(buffer + 70) = 1;
  v50 = *(buffer + 8);
  v51 = *(buffer + 12);
  v52 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 6, return_code, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v21);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 14, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 16, v44);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, uTF8String5);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 20, contains_masked_profanity, 0);
  v53.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v50 - v51 + v52);
  if (v66.__begin_)
  {
    v66.__end_ = v66.__begin_;
    operator delete(v66.__begin_);
  }

  if (v71.__begin_)
  {
    v71.__end_ = v71.__begin_;
    operator delete(v71.__begin_);
  }

  v54 = *MEMORY[0x277D85DE8];
  return v53;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTBatchTranslationResponse *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__42__FTBatchTranslationResponse_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__60__FTBatchTranslationResponse_TranslationPhrase_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__61__FTBatchTranslationResponse_TranslatedSentence_flatbuffData__block_invoke(uint64_t a1)
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