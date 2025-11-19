@interface OPTTSTTSPrompts
- (NSArray)prompts;
- (OPTTSTTSPrompts)initWithFlatbuffData:(id)a3 root:(const TTSPrompts *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::TTSPrompts>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)prompts_objectAtIndex:(unint64_t)a3;
- (unint64_t)prompts_count;
- (void)prompts_enumerateObjectsUsingBlock:(id)a3;
- (void)prompts_v2:(id)a3;
@end

@implementation OPTTSTTSPrompts

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_1B1C416F0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTTSPrompts *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__31__OPTTSTTSPrompts_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TTSPrompts>)addObjectToBuffer:(void *)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v5 = [(OPTTSTTSPrompts *)self prompts];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v33, [v5 count]);

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v6 = [(OPTTSTTSPrompts *)self prompts];
  v7 = [v6 countByEnumeratingWithState:&v29 objects:v36 count:16];
  if (v7)
  {
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v29 + 1) + 8 * i) UTF8String];
        v11 = strlen(v10);
        LODWORD(v22) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v10, v11);
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v33, &v22);
      }

      v7 = [v6 countByEnumeratingWithState:&v29 objects:v36 count:16];
    }

    while (v7);
  }

  v12 = v33;
  if (v34 == v33)
  {
    v13 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>,std::allocator<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(std::vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>> const&)::t;
  }

  else
  {
    v13 = v33;
  }

  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v13, (v34 - v33) >> 2);
  v22 = 0;
  v23 = &v22;
  v24 = 0x3812000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = "";
  v28 = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __37__OPTTSTTSPrompts_addObjectToBuffer___block_invoke;
  v21[3] = &unk_1E7AF38B0;
  v21[4] = &v22;
  v21[5] = a3;
  [(OPTTSTTSPrompts *)self prompts_v2:v21];
  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v15 = *(a3 + 8);
  v16 = *(a3 + 12);
  v17 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<apple::aiml::flatbuffers2::Offset<apple::aiml::flatbuffers2::String>>>(a3, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 6, *(v23 + 12));
  v18.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v15 - v16 + v17);
  _Block_object_dispose(&v22, 8);
  if (v12)
  {
    operator delete(v12);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t __37__OPTTSTTSPrompts_addObjectToBuffer___block_invoke(uint64_t a1, const void *a2, unsigned int a3)
{
  result = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<unsigned char>(*(a1 + 40), a2, a3);
  *(*(*(a1 + 32) + 8) + 48) = result;
  return result;
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
        v18 = 0;
        v10 = *root[v9].var0;
        v11 = *root[v9 + v10].var0;
        if (v11)
        {
          v12 = 0;
          v13 = 4 * v11 - 4;
          v14 = &root[v10 + 4 + v9];
          do
          {
            v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v14[*v14->var0 + 4] length:*v14[*v14->var0].var0 encoding:4];
            v4[2](v4, v15, v12, &v18);
            v16 = v18;

            if (v16)
            {
              break;
            }

            ++v12;
            v17 = v13;
            v13 -= 4;
            v14 += 4;
          }

          while (v17);
        }
      }
    }
  }
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

- (id)prompts_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:a3];
LABEL_3:
    v8 = v7;
    goto LABEL_9;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 5u)
  {
    v11 = *v10[4].var0;
    if (v11)
    {
      v12 = &root[v11 + *root[v11].var0];
      if (*v12->var0 <= a3)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      var0 = v12[4 * a3 + 4 + *v12[4 * a3 + 4].var0].var0;
      v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:var0 + 1 length:*var0 encoding:4];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)prompts
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prompts"];
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __26__OPTTSTTSPrompts_prompts__block_invoke;
    v6[3] = &unk_1E7AF3888;
    v3 = v4;
    v7 = v3;
    [(OPTTSTTSPrompts *)self prompts_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prompts"];
  }

  return v3;
}

- (OPTTSTTSPrompts)initWithFlatbuffData:(id)a3 root:(const TTSPrompts *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = OPTTSTTSPrompts;
  v10 = [(OPTTSTTSPrompts *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!v9 || ![v9 length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  v12 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < v12 || root > v12 + v13)
  {
    goto LABEL_15;
  }

  v16 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = v16;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::TTSPrompts::Verify(v18, v21))
  {
LABEL_15:
    v19 = 0;
  }

  else
  {
LABEL_14:
    v19 = v10;
  }

  return v19;
}

@end