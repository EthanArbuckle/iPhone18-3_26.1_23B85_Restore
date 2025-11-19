@interface OPTTSTextToSpeechRequestContext
- (NSArray)context_info;
- (NSString)dialog_identifier;
- (OPTTSTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
@end

@implementation OPTTSTextToSpeechRequestContext

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_2728326A0;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(OPTTSTextToSpeechRequestContext *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__47__OPTTSTextToSpeechRequestContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = [(OPTTSTextToSpeechRequestContext *)self context_info];
  std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v28, [v5 count]);

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
        std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v28, &v23);
      }

      v7 = [v6 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v7);
  }

  v10 = v28;
  if (v29 == v28)
  {
    v11 = &flatbuffers::data<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>,std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v11 = v28;
  }

  v12 = flatbuffers::FlatBufferBuilder::CreateVector<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(a3, v11, (v29 - v28) >> 2);
  v13 = [(OPTTSTextToSpeechRequestContext *)self dialog_identifier];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_2881CBD18;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  LODWORD(v15) = flatbuffers::FlatBufferBuilder::CreateString(a3, v15, v16);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v17 = *(a3 + 8);
  v18 = *(a3 + 12);
  v19 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 4, v12);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 6, v15);
  v20.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v17 - v18 + v19);
  if (v10)
  {
    operator delete(v10);
  }

  v21 = *MEMORY[0x277D85DE8];
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

  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (NSArray)context_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 5u)
    {
      v6 = *v5[4].var0;
      if (v6)
      {
        v7 = *root[v6].var0;
        v8 = *root[v6 + v7].var0;
        if (v8)
        {
          v9 = 4 * v8;
          v10 = &root[v7 + 4 + v6];
          do
          {
            v11 = [[OPTTSTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_info"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = OPTTSTextToSpeechRequestContext;
  v10 = [(OPTTSTextToSpeechRequestContext *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!v9 || ![v9 length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, a3);
    if (!a4)
    {
      v12 = [(NSData *)v10->_data bytes];
      a4 = v12 + *v12;
    }

    v10->_root = a4;
    if (v5)
    {
      v13 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < v13 || root > v13 + v14)
      {
        goto LABEL_16;
      }

      v17 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = v17;
      v25 = v18;
      v26 = xmmword_2728326B0;
      v27 = 0;
      LOBYTE(v28) = 1;
      if (v18 >= 0x7FFFFFFF)
      {
        __assert_rtn("Verifier", "flatbuffers.h", 2141, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
      }

      v19 = v10->_root;
      if (v19)
      {
        if (!siri::speech::schema_fb::TextToSpeechRequestContext::Verify(v19, &v24))
        {
LABEL_16:
          v22 = 0;
          goto LABEL_17;
        }
      }
    }

    v20 = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = v20;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end