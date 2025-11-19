@interface FTTextToSpeechRequestContext
- (FTTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5;
- (NSArray)context_info;
- (NSString)dialog_identifier;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3;
- (id)context_info_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTTextToSpeechRequestContext

- (FTTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechRequestContext;
  v10 = [(FTTextToSpeechRequestContext *)&v25 init];
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

  if (!siri::speech::schema_fb::TextToSpeechRequestContext::Verify(v18, v21))
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

- (NSArray)context_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __44__FTTextToSpeechRequestContext_context_info__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTextToSpeechRequestContext *)self context_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_info"];
  }

  return v3;
}

- (id)context_info_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
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
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTTextToSpeechRequestContext_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)context_info_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 5u && (v8 = *v7[4].var0) != 0)
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

- (void)context_info_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 5u)
    {
      v9 = *v8[4].var0;
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
            v15 = [[FTTextToSpeechRequestContext_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (NSString)dialog_identifier
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

- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3
{
  v39 = *MEMORY[0x277D85DE8];
  memset(&v37, 0, sizeof(v37));
  v5 = [(FTTextToSpeechRequestContext *)self context_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v37, [v5 count]);

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v6 = [(FTTextToSpeechRequestContext *)self context_info];
  v32 = self;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v7)
  {
    v8 = *v34;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v33 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v37.__end_;
        if (v37.__end_ >= v37.__end_cap_.__value_)
        {
          begin = v37.__begin_;
          v14 = v37.__end_ - v37.__begin_;
          v15 = v37.__end_ - v37.__begin_;
          v16 = v15 + 1;
          if ((v15 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v17 = v37.__end_cap_.__value_ - v37.__begin_;
          if ((v37.__end_cap_.__value_ - v37.__begin_) >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v37, v18);
          }

          *(4 * v15) = v10;
          v12 = (4 * v15 + 4);
          memcpy(0, begin, v14);
          v19 = v37.__begin_;
          v37.__begin_ = 0;
          v37.__end_ = v12;
          v37.__end_cap_.__value_ = 0;
          if (v19)
          {
            operator delete(v19);
          }
        }

        else
        {
          *v37.__end_ = v10;
          v12 = end + 1;
        }

        v37.__end_ = v12;
      }

      v7 = [v6 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v7);
  }

  if (v37.__end_ == v37.__begin_)
  {
    v20 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequestContext_::ContextInfoEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequestContext_::ContextInfoEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequestContext_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v20 = v37.__begin_;
  }

  v21 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v20, v37.__end_ - v37.__begin_);
  v22 = [(FTTextToSpeechRequestContext *)v32 dialog_identifier];
  v23 = v22;
  if (!v22)
  {
    v22 = &stru_284834138;
  }

  v24 = [(__CFString *)v22 UTF8String];
  v25 = strlen(v24);
  LODWORD(v24) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v24, v25);

  *(a3 + 70) = 1;
  v26 = *(a3 + 8);
  v27 = *(a3 + 12);
  v28 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v21);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v24);
  v29.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v26 - v27 + v28);
  if (v37.__begin_)
  {
    v37.__end_ = v37.__begin_;
    operator delete(v37.__begin_);
  }

  v30 = *MEMORY[0x277D85DE8];
  return v29;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechRequestContext *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__44__FTTextToSpeechRequestContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__61__FTTextToSpeechRequestContext_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
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