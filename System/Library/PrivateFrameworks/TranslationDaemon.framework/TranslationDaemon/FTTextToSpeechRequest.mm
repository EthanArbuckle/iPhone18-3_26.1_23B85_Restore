@interface FTTextToSpeechRequest
- (BOOL)enable_word_timing_info;
- (FTTTSRequestFeatureFlags)feature_flags;
- (FTTextToSpeechRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRequest *)root verify:(BOOL)verify;
- (FTTextToSpeechRequestContext)context;
- (FTTextToSpeechRequestDebug)debug;
- (FTTextToSpeechRequestDevConfig)dev_config;
- (FTTextToSpeechRequestExperiment)experiment;
- (FTTextToSpeechRequestMeta)meta_info;
- (FTTextToSpeechRequestProsodyControlConfig)prosody_control_config;
- (FTTextToSpeechRequestProsodyTransferConfig)prosody_config;
- (FTTextToSpeechUserProfile)profile;
- (NSArray)context_info;
- (NSString)gender;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)text;
- (NSString)voice_name;
- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (id)context_info_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTTextToSpeechRequest

- (FTTextToSpeechRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTTextToSpeechRequest;
  v10 = [(FTTextToSpeechRequest *)&v25 init];
  if (!v10)
  {
    goto LABEL_13;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v10->_data, data);
  if (!root)
  {
    bytes = [(NSData *)v10->_data bytes];
    root = bytes + *bytes;
  }

  v10->_root = root;
  if (!verifyCopy)
  {
    goto LABEL_13;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_14;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_233005E20;
  v23 = 0;
  v24 = 1;
  v18 = v10->_root;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (!siri::speech::schema_fb::TextToSpeechRequest::Verify(v18, v21))
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

- (NSString)language
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

- (NSString)gender
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

- (NSString)text
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

- (int64_t)audio_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)voice_name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 18].var0;
  if (*root[-v3 + 18].var0)
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
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __37__FTTextToSpeechRequest_context_info__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTTextToSpeechRequest *)self context_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_info"];
  }

  return v3;
}

- (id)context_info_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
LABEL_3:
    v8 = v7;
    goto LABEL_8;
  }

  root = self->_root;
  v10 = &root[-*root->var0];
  if (*v10->var0 >= 0x15u)
  {
    v11 = *v10[20].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
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
    if (*v7->var0 >= 0x15u && (v8 = *v7[20].var0) != 0)
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

- (void)context_info_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x15u)
    {
      v9 = *v8[20].var0;
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
            v15 = [[FTTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (int64_t)preferred_voice_type
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (FTTextToSpeechRequestMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestMeta alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x19u && (v7 = *v6[24].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechRequestMeta *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"meta_info"];
  }

  return v3;
}

- (FTTextToSpeechRequestContext)context
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestContext alloc];
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

    v3 = [(FTTextToSpeechRequestContext *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context"];
  }

  return v3;
}

- (FTTextToSpeechRequestExperiment)experiment
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"experiment"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestExperiment alloc];
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

    v3 = [(FTTextToSpeechRequestExperiment *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"experiment"];
  }

  return v3;
}

- (FTTTSRequestFeatureFlags)feature_flags
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature_flags"];
  if (!v3)
  {
    v4 = [FTTTSRequestFeatureFlags alloc];
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

    v3 = [(FTTTSRequestFeatureFlags *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"feature_flags"];
  }

  return v3;
}

- (FTTextToSpeechRequestDebug)debug
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"debug"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestDebug alloc];
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

    v3 = [(FTTextToSpeechRequestDebug *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"debug"];
  }

  return v3;
}

- (FTTextToSpeechUserProfile)profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"profile"];
  if (!v3)
  {
    v4 = [FTTextToSpeechUserProfile alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x23u && (v7 = *v6[34].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechUserProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"profile"];
  }

  return v3;
}

- (FTTextToSpeechRequestDevConfig)dev_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"dev_config"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestDevConfig alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x25u && (v7 = *v6[36].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechRequestDevConfig *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"dev_config"];
  }

  return v3;
}

- (FTTextToSpeechRequestProsodyTransferConfig)prosody_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prosody_config"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestProsodyTransferConfig alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x27u && (v7 = *v6[38].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechRequestProsodyTransferConfig *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prosody_config"];
  }

  return v3;
}

- (FTTextToSpeechRequestProsodyControlConfig)prosody_control_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prosody_control_config"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestProsodyControlConfig alloc];
    root = self->_root;
    v6 = &root[-*root->var0];
    if (*v6->var0 >= 0x29u && (v7 = *v6[40].var0) != 0)
    {
      v8 = &root[v7 + *root[v7].var0];
    }

    else
    {
      v8 = 0;
    }

    v3 = [(FTTextToSpeechRequestProsodyControlConfig *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prosody_control_config"];
  }

  return v3;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  v84 = *MEMORY[0x277D85DE8];
  speech_id = [(FTTextToSpeechRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTTextToSpeechRequest *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v74 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  language = [(FTTextToSpeechRequest *)self language];
  v14 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v16 = strlen(uTF8String3);
  v73 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  gender = [(FTTextToSpeechRequest *)self gender];
  v18 = gender;
  if (!gender)
  {
    gender = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)gender UTF8String];
  v20 = strlen(uTF8String4);
  v72 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  text = [(FTTextToSpeechRequest *)self text];
  v22 = text;
  if (!text)
  {
    text = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)text UTF8String];
  v24 = strlen(uTF8String5);
  v71 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v24);

  audio_type = [(FTTextToSpeechRequest *)self audio_type];
  enable_word_timing_info = [(FTTextToSpeechRequest *)self enable_word_timing_info];
  voice_name = [(FTTextToSpeechRequest *)self voice_name];
  v26 = voice_name;
  if (!voice_name)
  {
    voice_name = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)voice_name UTF8String];
  v28 = strlen(uTF8String6);
  v68 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v28);

  memset(&v82, 0, sizeof(v82));
  context_info = [(FTTextToSpeechRequest *)self context_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v82, [context_info count]);

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  context_info2 = [(FTTextToSpeechRequest *)self context_info];
  selfCopy = self;
  v31 = [context_info2 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v31)
  {
    v32 = *v79;
    bufferCopy = buffer;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v79 != v32)
        {
          objc_enumerationMutation(context_info2);
        }

        v35 = [*(*(&v78 + 1) + 8 * i) addObjectToBuffer:buffer];
        end = v82.__end_;
        if (v82.__end_ >= v82.__end_cap_.__value_)
        {
          begin = v82.__begin_;
          v39 = v82.__end_ - v82.__begin_;
          v40 = v82.__end_ - v82.__begin_;
          v41 = v40 + 1;
          if ((v40 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v42 = v82.__end_cap_.__value_ - v82.__begin_;
          if ((v82.__end_cap_.__value_ - v82.__begin_) >> 1 > v41)
          {
            v41 = v42 >> 1;
          }

          if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v43 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v43 = v41;
          }

          if (v43)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v82, v43);
          }

          *(4 * v40) = v35;
          v37 = (4 * v40 + 4);
          memcpy(0, begin, v39);
          v44 = v82.__begin_;
          v82.__begin_ = 0;
          v82.__end_ = v37;
          v82.__end_cap_.__value_ = 0;
          if (v44)
          {
            operator delete(v44);
          }

          buffer = bufferCopy;
        }

        else
        {
          *v82.__end_ = v35;
          v37 = end + 1;
        }

        v82.__end_ = v37;
      }

      v31 = [context_info2 countByEnumeratingWithState:&v78 objects:v83 count:16];
    }

    while (v31);
  }

  if (v82.__end_ == v82.__begin_)
  {
    v45 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v45 = v82.__begin_;
  }

  v46 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v45, v82.__end_ - v82.__begin_);
  preferred_voice_type = [(FTTextToSpeechRequest *)selfCopy preferred_voice_type];
  meta_info = [(FTTextToSpeechRequest *)selfCopy meta_info];
  v49 = [meta_info addObjectToBuffer:buffer];

  context = [(FTTextToSpeechRequest *)selfCopy context];
  v51 = [context addObjectToBuffer:buffer];

  experiment = [(FTTextToSpeechRequest *)selfCopy experiment];
  v53 = [experiment addObjectToBuffer:buffer];

  feature_flags = [(FTTextToSpeechRequest *)selfCopy feature_flags];
  v67 = [feature_flags addObjectToBuffer:buffer];

  debug = [(FTTextToSpeechRequest *)selfCopy debug];
  v66 = [debug addObjectToBuffer:buffer];

  profile = [(FTTextToSpeechRequest *)selfCopy profile];
  v65 = [profile addObjectToBuffer:buffer];

  dev_config = [(FTTextToSpeechRequest *)selfCopy dev_config];
  LODWORD(profile) = [dev_config addObjectToBuffer:buffer];

  prosody_config = [(FTTextToSpeechRequest *)selfCopy prosody_config];
  LODWORD(dev_config) = [prosody_config addObjectToBuffer:buffer];

  prosody_control_config = [(FTTextToSpeechRequest *)selfCopy prosody_control_config];
  v60 = [prosody_control_config addObjectToBuffer:buffer];

  *(buffer + 70) = 1;
  v64 = *(buffer + 8);
  LODWORD(prosody_control_config) = *(buffer + 12);
  v77 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v74);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v73);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v72);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 12, v71);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, audio_type, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, enable_word_timing_info, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v68);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 20, v46);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, preferred_voice_type, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 24, v49);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 26, v51);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 28, v53);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 30, v67);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 32, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 34, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 36, profile);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 38, dev_config);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 40, v60);
  v61.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v64 - prosody_control_config + v77);
  if (v82.__begin_)
  {
    v82.__end_ = v82.__begin_;
    operator delete(v82.__begin_);
  }

  v62 = *MEMORY[0x277D85DE8];
  return v61;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTTextToSpeechRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__37__FTTextToSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__54__FTTextToSpeechRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
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