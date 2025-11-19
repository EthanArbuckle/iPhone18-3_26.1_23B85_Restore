@interface QSSTextToSpeechRequestContext
- (NSArray)context_info;
- (NSString)dialog_identifier;
- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3;
- (QSSTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5;
- (id)flatbuffData;
@end

@implementation QSSTextToSpeechRequestContext

- (id)flatbuffData
{
  v5 = 0;
  v6 = 0;
  v7 = xmmword_26914CD60;
  v8 = 0u;
  v9 = 0u;
  v10 = 0;
  v11 = 1;
  v12 = 256;
  v13 = 0;
  v2.var0 = [(QSSTextToSpeechRequestContext *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__45__QSSTextToSpeechRequestContext_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequestContext>)addObjectToBuffer:(void *)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [(QSSTextToSpeechRequestContext *)self context_info];
  v6 = [v5 count];
  if (v6)
  {
    if (!(v6 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v6);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(QSSTextToSpeechRequestContext *)self context_info];
  if ([obj countByEnumeratingWithState:&v21 objects:v25 count:16])
  {
    *v22;
    *v22;
    [**(&v21 + 1) addObjectToBuffer:{a3, self}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v7 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v8 = [(QSSTextToSpeechRequestContext *)self dialog_identifier];
  v9 = v8;
  if (!v8)
  {
    v8 = &stru_2879AE8E0;
  }

  v10 = [(__CFString *)v8 UTF8String];
  v11 = strlen(v10);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v10, v11);

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v13 = *(a3 + 8);
  v14 = *(a3 + 12);
  v15 = *(a3 + 10);
  if (v7)
  {
    v16 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v7);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 4, v16);
  }

  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 6, String);
  v17.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v13 - v14 + v15);
  v18 = *MEMORY[0x277D85DE8];
  return v17;
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
            v11 = [[QSSTextToSpeechRequestContext_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
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

flatbuffers::DetachedBuffer *__62__QSSTextToSpeechRequestContext_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (QSSTextToSpeechRequestContext)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequestContext *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSTextToSpeechRequestContext;
  v10 = [(QSSTextToSpeechRequestContext *)&v29 init];
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
      v26 = xmmword_26914CD70;
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