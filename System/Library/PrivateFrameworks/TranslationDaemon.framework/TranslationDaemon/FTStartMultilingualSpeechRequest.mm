@interface FTStartMultilingualSpeechRequest
- (FTStartMultilingualSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartMultilingualSpeechRequest *)a4 verify:(BOOL)a5;
- (FTStartSpeechRequest)start_speech_request;
- (NSArray)language_parameters_by_id;
- (Offset<siri::speech::schema_fb::StartMultilingualSpeechRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)language_parameters_by_id_objectAtIndex:(unint64_t)a3;
- (unint64_t)language_parameters_by_id_count;
- (void)language_parameters_by_id_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTStartMultilingualSpeechRequest

- (FTStartMultilingualSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartMultilingualSpeechRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTStartMultilingualSpeechRequest;
  v10 = [(FTStartMultilingualSpeechRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(v18, v21))
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

- (FTStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [FTStartSpeechRequest alloc];
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

    v3 = [(FTStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (NSArray)language_parameters_by_id
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_parameters_by_id"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__FTStartMultilingualSpeechRequest_language_parameters_by_id__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTStartMultilingualSpeechRequest *)self language_parameters_by_id_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"language_parameters_by_id"];
  }

  return v3;
}

- (id)language_parameters_by_id_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_parameters_by_id"];
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
  if (*v10->var0 >= 7u)
  {
    v11 = *v10[6].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTLanguageParameters alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)language_parameters_by_id_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_parameters_by_id"];
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

- (void)language_parameters_by_id_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_parameters_by_id"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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
            v15 = [[FTLanguageParameters alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (Offset<siri::speech::schema_fb::StartMultilingualSpeechRequest>)addObjectToBuffer:(void *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [(FTStartMultilingualSpeechRequest *)self start_speech_request];
  v6 = [v5 addObjectToBuffer:a3];

  memset(&v35, 0, sizeof(v35));
  v7 = [(FTStartMultilingualSpeechRequest *)self language_parameters_by_id];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v35, [v7 count]);

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v8 = [(FTStartMultilingualSpeechRequest *)self language_parameters_by_id];
  v30 = v6;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = *v32;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = [*(*(&v31 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v35.__end_;
        if (v35.__end_ >= v35.__end_cap_.__value_)
        {
          begin = v35.__begin_;
          v16 = v35.__end_ - v35.__begin_;
          v17 = v35.__end_ - v35.__begin_;
          v18 = v17 + 1;
          if ((v17 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v19 = v35.__end_cap_.__value_ - v35.__begin_;
          if ((v35.__end_cap_.__value_ - v35.__begin_) >> 1 > v18)
          {
            v18 = v19 >> 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v20 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v35, v20);
          }

          *(4 * v17) = v12;
          v14 = (4 * v17 + 4);
          memcpy(0, begin, v16);
          v21 = v35.__begin_;
          v35.__begin_ = 0;
          v35.__end_ = v14;
          v35.__end_cap_.__value_ = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v35.__end_ = v12;
          v14 = end + 1;
        }

        v35.__end_ = v14;
      }

      v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  if (v35.__end_ == v35.__begin_)
  {
    v22 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LanguageParameters>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LanguageParameters>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::LanguageParameters>> const&)::t;
  }

  else
  {
    v22 = v35.__begin_;
  }

  v23 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v22, v35.__end_ - v35.__begin_);
  *(a3 + 70) = 1;
  v24 = *(a3 + 8);
  v25 = *(a3 + 12);
  v26 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v30);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v23);
  v27.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v24 - v25 + v26);
  if (v35.__begin_)
  {
    v35.__end_ = v35.__begin_;
    operator delete(v35.__begin_);
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTStartMultilingualSpeechRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__48__FTStartMultilingualSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
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