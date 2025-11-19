@interface OPTTSStartTextToSpeechStreamingRequest
- (BOOL)enable_word_timing_info;
- (NSArray)context_info;
- (NSString)gender;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)stream_id;
- (NSString)text;
- (NSString)voice_name;
- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)a3 root:(const StartTextToSpeechStreamingRequest *)a4 verify:(BOOL)a5;
- (OPTTSTTSRequestFeatureFlags)feature_flags;
- (OPTTSTextToSpeechRequestContext)context;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
@end

@implementation OPTTSStartTextToSpeechStreamingRequest

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
  v2.var0 = [(OPTTSStartTextToSpeechStreamingRequest *)self addObjectToBuffer:&v5];
  flatbuffers::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

flatbuffers::DetachedBuffer *__54__OPTTSStartTextToSpeechStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v66 = *MEMORY[0x277D85DE8];
  v4 = [(OPTTSStartTextToSpeechStreamingRequest *)self speech_id];
  v5 = v4;
  if (!v4)
  {
    v4 = &stru_2881CBD18;
  }

  v6 = [(__CFString *)v4 UTF8String];
  v7 = strlen(v6);
  String = flatbuffers::FlatBufferBuilder::CreateString(a3, v6, v7);

  v8 = [(OPTTSStartTextToSpeechStreamingRequest *)self session_id];
  v9 = v8;
  if (!v8)
  {
    v8 = &stru_2881CBD18;
  }

  v10 = [(__CFString *)v8 UTF8String];
  v11 = strlen(v10);
  v58 = flatbuffers::FlatBufferBuilder::CreateString(a3, v10, v11);

  v12 = [(OPTTSStartTextToSpeechStreamingRequest *)self stream_id];
  v13 = v12;
  if (!v12)
  {
    v12 = &stru_2881CBD18;
  }

  v14 = [(__CFString *)v12 UTF8String];
  v15 = strlen(v14);
  v57 = flatbuffers::FlatBufferBuilder::CreateString(a3, v14, v15);

  v16 = [(OPTTSStartTextToSpeechStreamingRequest *)self language];
  v17 = v16;
  if (!v16)
  {
    v16 = &stru_2881CBD18;
  }

  v18 = [(__CFString *)v16 UTF8String];
  v19 = strlen(v18);
  v55 = flatbuffers::FlatBufferBuilder::CreateString(a3, v18, v19);

  v20 = [(OPTTSStartTextToSpeechStreamingRequest *)self gender];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_2881CBD18;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(a3, v22, v23);

  v24 = [(OPTTSStartTextToSpeechStreamingRequest *)self text];
  v25 = v24;
  if (!v24)
  {
    v24 = &stru_2881CBD18;
  }

  v26 = [(__CFString *)v24 UTF8String];
  v27 = strlen(v26);
  v53 = flatbuffers::FlatBufferBuilder::CreateString(a3, v26, v27);

  v52 = [(OPTTSStartTextToSpeechStreamingRequest *)self audio_type];
  HIDWORD(v51) = [(OPTTSStartTextToSpeechStreamingRequest *)self enable_word_timing_info];
  v28 = [(OPTTSStartTextToSpeechStreamingRequest *)self voice_name];
  v29 = v28;
  if (!v28)
  {
    v28 = &stru_2881CBD18;
  }

  v30 = [(__CFString *)v28 UTF8String];
  v31 = strlen(v30);
  LODWORD(v51) = flatbuffers::FlatBufferBuilder::CreateString(a3, v30, v31);

  v32 = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  v33 = [v32 count];
  if (v33)
  {
    if (!(v33 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(v33);
    }

    std::vector<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::__throw_length_error[abi:ne200100]();
  }

  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v34 = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  if ([v34 countByEnumeratingWithState:&v61 objects:v65 count:16])
  {
    *v62;
    *v62;
    [**(&v61 + 1) addObjectToBuffer:{a3, v51}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(a3, 0, 4uLL);
  v35 = flatbuffers::FlatBufferBuilder::EndVector(a3, 0);
  v36 = [(OPTTSStartTextToSpeechStreamingRequest *)self preferred_voice_type];
  v37 = [(OPTTSStartTextToSpeechStreamingRequest *)self meta_info];
  v38 = [v37 addObjectToBuffer:a3];

  v39 = [(OPTTSStartTextToSpeechStreamingRequest *)self context];
  v40 = [v39 addObjectToBuffer:a3];

  v41 = [(OPTTSStartTextToSpeechStreamingRequest *)self experiment];
  v42 = [v41 addObjectToBuffer:a3];

  v43 = [(OPTTSStartTextToSpeechStreamingRequest *)self feature_flags];
  v56 = [v43 addObjectToBuffer:a3];

  flatbuffers::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v44 = *(a3 + 8);
  v45 = *(a3 + 12);
  v46 = *(a3 + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 6, v58);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 8, v57);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 10, v55);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 12, v54);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 14, v53);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v52);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a3, 18, SHIDWORD(v51));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 20, v51);
  if (v35)
  {
    v47 = flatbuffers::FlatBufferBuilder::ReferTo(a3, v35);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 22, v47);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a3, 24, v36);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 26, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 28, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 30, v42);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(a3, 32, v56);
  v48.var0 = flatbuffers::FlatBufferBuilder::EndTable(a3, v44 - v45 + v46);
  v49 = *MEMORY[0x277D85DE8];
  return v48;
}

- (OPTTSTTSRequestFeatureFlags)feature_flags
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature_flags"];
  if (!v3)
  {
    v4 = [OPTTSTTSRequestFeatureFlags alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x21u && (v7 = *v6[32].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(OPTTSTTSRequestFeatureFlags *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature_flags"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestExperiment)experiment
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"experiment"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestExperiment alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Fu && (v7 = *v6[30].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(OPTTSTextToSpeechRequestExperiment *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"experiment"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestContext)context
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestContext alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Du && (v7 = *v6[28].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(OPTTSTextToSpeechRequestContext *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestMeta alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x1Bu && (v7 = *v6[26].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(OPTTSTextToSpeechRequestMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info"];
  }

  return v3;
}

- (int64_t)preferred_voice_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x19u && (v4 = *v3[24].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSArray)context_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    root = self->_root;
    v5 = &root[-*root->var0];
    if (*v5->var0 >= 0x17u)
    {
      v6 = *v5[22].var0;
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
            v11 = [[OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v10[*v10->var0] verify:0];
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

flatbuffers::DetachedBuffer *__71__OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    flatbuffers::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x2743CD2F0);
  }

  return result;
}

- (NSString)voice_name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 20].var0;
  if (*root[-v3 + 20].var0)
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

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && root[v4].var0[0] != 0;
}

- (int64_t)audio_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)text
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 14].var0;
  if (*root[-v3 + 14].var0)
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

- (NSString)gender
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

- (NSString)language
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

- (NSString)stream_id
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

- (NSString)session_id
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

- (NSString)speech_id
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

- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)a3 root:(const StartTextToSpeechStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v29.receiver = self;
  v29.super_class = OPTTSStartTextToSpeechStreamingRequest;
  v10 = [(OPTTSStartTextToSpeechStreamingRequest *)&v29 init];
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
        if (!siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v19, &v24))
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