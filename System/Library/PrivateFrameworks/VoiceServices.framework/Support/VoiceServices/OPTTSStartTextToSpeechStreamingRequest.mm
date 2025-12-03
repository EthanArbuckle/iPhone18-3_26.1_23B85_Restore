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
- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)data root:(const StartTextToSpeechStreamingRequest *)root verify:(BOOL)verify;
- (OPTTSTTSRequestFeatureFlags)feature_flags;
- (OPTTSTextToSpeechRequestContext)context;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)buffer;
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

- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  v66 = *MEMORY[0x277D85DE8];
  speech_id = [(OPTTSStartTextToSpeechStreamingRequest *)self speech_id];
  v5 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_2881CBD18;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v7 = strlen(uTF8String);
  String = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String, v7);

  session_id = [(OPTTSStartTextToSpeechStreamingRequest *)self session_id];
  v9 = session_id;
  if (!session_id)
  {
    session_id = &stru_2881CBD18;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v11 = strlen(uTF8String2);
  v58 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String2, v11);

  stream_id = [(OPTTSStartTextToSpeechStreamingRequest *)self stream_id];
  v13 = stream_id;
  if (!stream_id)
  {
    stream_id = &stru_2881CBD18;
  }

  uTF8String3 = [(__CFString *)stream_id UTF8String];
  v15 = strlen(uTF8String3);
  v57 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String3, v15);

  language = [(OPTTSStartTextToSpeechStreamingRequest *)self language];
  v17 = language;
  if (!language)
  {
    language = &stru_2881CBD18;
  }

  uTF8String4 = [(__CFString *)language UTF8String];
  v19 = strlen(uTF8String4);
  v55 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String4, v19);

  gender = [(OPTTSStartTextToSpeechStreamingRequest *)self gender];
  v21 = gender;
  if (!gender)
  {
    gender = &stru_2881CBD18;
  }

  uTF8String5 = [(__CFString *)gender UTF8String];
  v23 = strlen(uTF8String5);
  v54 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String5, v23);

  text = [(OPTTSStartTextToSpeechStreamingRequest *)self text];
  v25 = text;
  if (!text)
  {
    text = &stru_2881CBD18;
  }

  uTF8String6 = [(__CFString *)text UTF8String];
  v27 = strlen(uTF8String6);
  v53 = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String6, v27);

  audio_type = [(OPTTSStartTextToSpeechStreamingRequest *)self audio_type];
  HIDWORD(v51) = [(OPTTSStartTextToSpeechStreamingRequest *)self enable_word_timing_info];
  voice_name = [(OPTTSStartTextToSpeechStreamingRequest *)self voice_name];
  v29 = voice_name;
  if (!voice_name)
  {
    voice_name = &stru_2881CBD18;
  }

  uTF8String7 = [(__CFString *)voice_name UTF8String];
  v31 = strlen(uTF8String7);
  LODWORD(v51) = flatbuffers::FlatBufferBuilder::CreateString(buffer, uTF8String7, v31);

  context_info = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  v33 = [context_info count];
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
  context_info2 = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  if ([context_info2 countByEnumeratingWithState:&v61 objects:v65 count:16])
  {
    *v62;
    *v62;
    [**(&v61 + 1) addObjectToBuffer:{buffer, v51}];
    std::__allocate_at_least[abi:ne200100]<std::allocator<flatbuffers::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(1uLL);
  }

  flatbuffers::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v35 = flatbuffers::FlatBufferBuilder::EndVector(buffer, 0);
  preferred_voice_type = [(OPTTSStartTextToSpeechStreamingRequest *)self preferred_voice_type];
  meta_info = [(OPTTSStartTextToSpeechStreamingRequest *)self meta_info];
  v38 = [meta_info addObjectToBuffer:buffer];

  context = [(OPTTSStartTextToSpeechStreamingRequest *)self context];
  v40 = [context addObjectToBuffer:buffer];

  experiment = [(OPTTSStartTextToSpeechStreamingRequest *)self experiment];
  v42 = [experiment addObjectToBuffer:buffer];

  feature_flags = [(OPTTSStartTextToSpeechStreamingRequest *)self feature_flags];
  v56 = [feature_flags addObjectToBuffer:buffer];

  flatbuffers::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v44 = *(buffer + 8);
  v45 = *(buffer + 12);
  v46 = *(buffer + 10);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 6, v58);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 8, v57);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 10, v55);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 12, v54);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 14, v53);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, audio_type);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(buffer, 18, SHIDWORD(v51));
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 20, v51);
  if (v35)
  {
    v47 = flatbuffers::FlatBufferBuilder::ReferTo(buffer, v35);
    flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, v47);
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(buffer, 24, preferred_voice_type);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 26, v38);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 28, v40);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 30, v42);
  flatbuffers::FlatBufferBuilder::AddOffset<flatbuffers::String>(buffer, 32, v56);
  v48.var0 = flatbuffers::FlatBufferBuilder::EndTable(buffer, v44 - v45 + v46);
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
  array = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!array)
  {
    array = [MEMORY[0x277CBEB18] array];
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
            [array addObject:v11];

            v10 += 4;
            v9 -= 4;
          }

          while (v9);
        }
      }
    }

    [(NSMutableDictionary *)self->_storage setObject:array forKeyedSubscript:@"context_info"];
  }

  return array;
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

- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)data root:(const StartTextToSpeechStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v29.receiver = self;
  v29.super_class = OPTTSStartTextToSpeechStreamingRequest;
  v10 = [(OPTTSStartTextToSpeechStreamingRequest *)&v29 init];
  v11 = v10;
  if (v10)
  {
    if (!dataCopy || ![dataCopy length])
    {
      goto LABEL_16;
    }

    objc_storeStrong(&v10->_data, data);
    if (!root)
    {
      bytes = [(NSData *)v10->_data bytes];
      root = bytes + *bytes;
    }

    v10->_root = root;
    if (verifyCopy)
    {
      bytes2 = [(NSData *)v10->_data bytes];
      v14 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root < bytes2 || root > bytes2 + v14)
      {
        goto LABEL_16;
      }

      bytes3 = [(NSData *)v10->_data bytes];
      v18 = [(NSData *)v10->_data length];
      v24 = bytes3;
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

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v10->_storage;
    v10->_storage = dictionary;
  }

  v22 = v10;
LABEL_17:

  return v22;
}

@end