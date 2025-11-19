@interface QSSStartMultilingualSpeechRequest
- (NSArray)language_parameters_by_id;
- (Offset<siri::speech::schema_fb::StartMultilingualSpeechRequest>)addObjectToBuffer:(void *)a3;
- (QSSStartMultilingualSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartMultilingualSpeechRequest *)a4 verify:(BOOL)a5;
- (QSSStartSpeechRequest)start_speech_request;
- (id)flatbuffData;
@end

@implementation QSSStartMultilingualSpeechRequest

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
  v2.var0 = [(QSSStartMultilingualSpeechRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__49__QSSStartMultilingualSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x26D631190);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartMultilingualSpeechRequest>)addObjectToBuffer:(void *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [(QSSStartMultilingualSpeechRequest *)self start_speech_request];
  v16 = [v5 addObjectToBuffer:a3];

  v6 = [(QSSStartMultilingualSpeechRequest *)self language_parameters_by_id];
  v7 = [v6 count];
  if (v7)
  {
    if (!(v7 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(v7);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>::__throw_length_error[abi:ne200100]();
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = [(QSSStartMultilingualSpeechRequest *)self language_parameters_by_id];
  if ([obj countByEnumeratingWithState:&v18 objects:v22 count:16])
  {
    *v19;
    *v19;
    [**(&v18 + 1) addObjectToBuffer:a3];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::RecognitionToken>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v8 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v9 = *(a3 + 8);
  v10 = *(a3 + 12);
  v11 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::Vector<unsigned char>>(a3, 4, v16);
  if (v8)
  {
    v12 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v8);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 6, v12);
  }

  v13.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v9 - v10 + v11);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (NSArray)language_parameters_by_id
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"language_parameters_by_id"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 7u)
    {
      v6 = *v5[6].var0;
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
            v11 = [[QSSLanguageParameters alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
            [v3 addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"language_parameters_by_id"];
  }

  return v3;
}

- (QSSStartSpeechRequest)start_speech_request
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"start_speech_request"];
  if (!v3)
  {
    v4 = [QSSStartSpeechRequest alloc];
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

    v3 = [(QSSStartSpeechRequest *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"start_speech_request"];
  }

  return v3;
}

- (QSSStartMultilingualSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartMultilingualSpeechRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = QSSStartMultilingualSpeechRequest;
  v10 = [(QSSStartMultilingualSpeechRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartMultilingualSpeechRequest::Verify(v19, &v24))
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