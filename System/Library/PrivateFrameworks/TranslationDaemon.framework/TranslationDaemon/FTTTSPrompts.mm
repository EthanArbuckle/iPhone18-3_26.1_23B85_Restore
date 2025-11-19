@interface FTTTSPrompts
- (FTTTSPrompts)initWithFlatbuffData:(id)a3 root:(const TTSPrompts *)a4 verify:(BOOL)a5;
- (NSArray)prompts;
- (Offset<siri::speech::schema_fb::TTSPrompts>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)prompts_objectAtIndex:(unint64_t)a3;
- (unint64_t)prompts_count;
- (void)prompts_enumerateObjectsUsingBlock:(id)a3;
- (void)prompts_v2:(id)a3;
@end

@implementation FTTTSPrompts

- (FTTTSPrompts)initWithFlatbuffData:(id)a3 root:(const TTSPrompts *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTTTSPrompts;
  v10 = [(FTTTSPrompts *)&v25 init];
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

  if (!siri::speech::schema_fb::TTSPrompts::Verify(v18, v21))
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

- (NSArray)prompts
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __23__FTTTSPrompts_prompts__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTTTSPrompts *)self prompts_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prompts"];
  }

  return v3;
}

- (id)prompts_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
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
      v13 = (v12 + 4 + *(v12 + 4));
      v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v13 + 1 length:*v13 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)prompts_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
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

- (void)prompts_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
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
        v19 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = &root[v9 + v10];
          v14 = v13 + 8;
          v15 = 4 * v11 - 4;
          do
          {
            v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v14[*v14[-4].var0] length:*v13[4 * v12 + 4 + *v14[-4].var0].var0 encoding:4];
            v4[2](v4, v16, v12, &v19);
            v17 = v19;

            if (v17)
            {
              break;
            }

            ++v12;
            v14 += 4;
            v18 = v15;
            v15 -= 4;
          }

          while (v18);
        }
      }
    }
  }
}

- (void)prompts_v2:(id)a3
{
  root = self->_root;
  v5 = &root[-*root->var0];
  v6 = a3;
  v7 = *root[*v5[6].var0 + *root[*v5[6].var0].var0].var0;
  v8 = v6;
  (*(a3 + 2))();
}

- (Offset<siri::speech::schema_fb::TTSPrompts>)addObjectToBuffer:(void *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  memset(&v32, 0, sizeof(v32));
  v5 = [(FTTTSPrompts *)self prompts];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v32, [v5 count]);

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [(FTTTSPrompts *)self prompts];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v28 + 1) + 8 * i) UTF8String];
        v11 = strlen(v10);
        LODWORD(v21) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v10, v11);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v32.__begin_, &v21);
      }

      v7 = [v6 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  if (v32.__end_ == v32.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    begin = v32.__begin_;
  }

  v13 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v32.__end_ - v32.__begin_);
  v21 = 0;
  v22 = &v21;
  v23 = 0x3812000000;
  v24 = __Block_byref_object_copy__15;
  v25 = __Block_byref_object_dispose__15;
  v26 = &unk_233042D43;
  v27 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __34__FTTTSPrompts_addObjectToBuffer___block_invoke;
  v20[3] = &unk_2789B8AB0;
  v20[4] = &v21;
  v20[5] = a3;
  [(FTTTSPrompts *)self prompts_v2:v20];
  *(a3 + 70) = 1;
  v14 = *(a3 + 8);
  v15 = *(a3 + 12);
  v16 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, v13);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, *(v22 + 12));
  v17.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v14 - v15 + v16);
  _Block_object_dispose(&v21, 8);
  if (v32.__begin_)
  {
    v32.__end_ = v32.__begin_;
    operator delete(v32.__begin_);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

uint64_t __34__FTTTSPrompts_addObjectToBuffer___block_invoke(uint64_t a1, const unsigned __int8 *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTTSPrompts *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__28__FTTTSPrompts_flatbuffData__block_invoke(uint64_t a1)
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