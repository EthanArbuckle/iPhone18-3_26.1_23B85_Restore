@interface OPTTSTextToSpeechRequestContext
- (NSArray)context_info;
- (NSString)dialog_identifier;
- (OPTTSTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3;
- (id)context_info_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation OPTTSTextToSpeechRequestContext

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
  v2.var0 = [(OPTTSTextToSpeechRequestContext *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__47__OPTTSTextToSpeechRequestContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = [(OPTTSTextToSpeechRequestContext *)self context_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v28, [v5 count]);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [(OPTTSTextToSpeechRequestContext *)self context_info];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v7)
  {
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v23 = [*(*(&v24 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v28, &v23);
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v7);
  }

  v10 = v28;
  if (v29 == v28)
  {
    v11 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v11 = v28;
  }

  v12 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v11, (v29 - v28) >> 2);
  v13 = [(OPTTSTextToSpeechRequestContext *)self dialog_identifier];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_1F28C4E90;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  LODWORD(v15) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v17 = *(a3 + 8);
  v18 = *(a3 + 12);
  v19 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 4, v12);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 6, v15);
  v20.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v17 - v18 + v19);
  if (v10)
  {
    operator delete(v10);
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
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
          v13 = 4 * v11 - 4;
          v14 = &root[v10 + 4 + v9];
          do
          {
            v15 = [[OPTTSTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
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

- (id)context_info_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
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

      v7 = [[OPTTSTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v12[4 * a3 + 4 + *v12[4 * a3 + 4].var0] verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_9:

  return v8;
}

- (NSArray)context_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!v3)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __47__OPTTSTextToSpeechRequestContext_context_info__block_invoke;
    v6[3] = &unk_1E7AF3888;
    v3 = v4;
    v7 = v3;
    [(OPTTSTextToSpeechRequestContext *)self context_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_info"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = OPTTSTextToSpeechRequestContext;
  v10 = [(OPTTSTextToSpeechRequestContext *)&v25 init];
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
  if (v18 && !siri::speech::schema_fb::TextToSpeechRequestContext::Verify(v18, v21))
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