@interface FTStartTextToSpeechStreamingRequest
- (BOOL)enable_word_timing_info;
- (FTStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)a3 root:(const StartTextToSpeechStreamingRequest *)a4 verify:(BOOL)a5;
- (FTTTSRequestFeatureFlags)feature_flags;
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
- (NSString)stream_id;
- (NSString)text;
- (NSString)voice_name;
- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)a3;
- (id)context_info_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTStartTextToSpeechStreamingRequest

- (FTStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)a3 root:(const StartTextToSpeechStreamingRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTStartTextToSpeechStreamingRequest;
  v10 = [(FTStartTextToSpeechStreamingRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v18, v21))
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

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x13u && (v4 = *v3[18].var0) != 0 && root[v4].var0[0] != 0;
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

- (NSArray)context_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  if (!v3)
  {
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__FTStartTextToSpeechStreamingRequest_context_info__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTStartTextToSpeechStreamingRequest *)self context_info_enumerateObjectsUsingBlock:v6];
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
  if (*v10->var0 >= 0x17u)
  {
    v11 = *v10[22].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
      v7 = [[FTStartTextToSpeechStreamingRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
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
    if (*v7->var0 >= 0x17u && (v8 = *v7[22].var0) != 0)
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
    if (*v8->var0 >= 0x17u)
    {
      v9 = *v8[22].var0;
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
            v15 = [[FTStartTextToSpeechStreamingRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (FTTextToSpeechRequestMeta)meta_info
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"meta_info"];
  if (!v3)
  {
    v4 = [FTTextToSpeechRequestMeta alloc];
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
    if (*v6->var0 >= 0x1Du && (v7 = *v6[28].var0) != 0)
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
    if (*v6->var0 >= 0x1Fu && (v7 = *v6[30].var0) != 0)
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
    if (*v6->var0 >= 0x21u && (v7 = *v6[32].var0) != 0)
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
    if (*v6->var0 >= 0x23u && (v7 = *v6[34].var0) != 0)
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
    if (*v6->var0 >= 0x25u && (v7 = *v6[36].var0) != 0)
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
    if (*v6->var0 >= 0x27u && (v7 = *v6[38].var0) != 0)
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
    if (*v6->var0 >= 0x29u && (v7 = *v6[40].var0) != 0)
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
    if (*v6->var0 >= 0x2Bu && (v7 = *v6[42].var0) != 0)
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

- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)a3
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = [(FTStartTextToSpeechStreamingRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTStartTextToSpeechStreamingRequest *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_284834138;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v78 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(FTStartTextToSpeechStreamingRequest *)self stream_id];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_284834138;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v77 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(FTStartTextToSpeechStreamingRequest *)self language];
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_284834138;
  }

  v19 = [(__CFString *)v17 UTF8String];
  v20 = strlen(v19);
  v76 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v19, v20);

  v21 = [(FTStartTextToSpeechStreamingRequest *)self gender];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_284834138;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v75 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v23, v24);

  v25 = [(FTStartTextToSpeechStreamingRequest *)self text];
  v26 = v25;
  if (!v25)
  {
    v25 = &stru_284834138;
  }

  v27 = [(__CFString *)v25 UTF8String];
  v28 = strlen(v27);
  v74 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v27, v28);

  v73 = [(FTStartTextToSpeechStreamingRequest *)self audio_type];
  v72 = [(FTStartTextToSpeechStreamingRequest *)self enable_word_timing_info];
  v29 = [(FTStartTextToSpeechStreamingRequest *)self voice_name];
  v30 = v29;
  if (!v29)
  {
    v29 = &stru_284834138;
  }

  v31 = [(__CFString *)v29 UTF8String];
  v32 = strlen(v31);
  v71 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v31, v32);

  memset(&v86, 0, sizeof(v86));
  v33 = [(FTStartTextToSpeechStreamingRequest *)self context_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v86, [v33 count]);

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v34 = [(FTStartTextToSpeechStreamingRequest *)self context_info];
  v80 = self;
  v35 = [v34 countByEnumeratingWithState:&v82 objects:v87 count:16];
  if (v35)
  {
    v36 = *v83;
    v37 = a3;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v83 != v36)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v82 + 1) + 8 * i) addObjectToBuffer:a3];
        end = v86.__end_;
        if (v86.__end_ >= v86.__end_cap_.__value_)
        {
          begin = v86.__begin_;
          v43 = v86.__end_ - v86.__begin_;
          v44 = v86.__end_ - v86.__begin_;
          v45 = v44 + 1;
          if ((v44 + 1) >> 62)
          {
            std::vector<unsigned short>::__throw_length_error[abi:ne200100]();
          }

          v46 = v86.__end_cap_.__value_ - v86.__begin_;
          if ((v86.__end_cap_.__value_ - v86.__begin_) >> 1 > v45)
          {
            v45 = v46 >> 1;
          }

          if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v47 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>>(&v86, v47);
          }

          *(4 * v44) = v39;
          v41 = (4 * v44 + 4);
          memcpy(0, begin, v43);
          v48 = v86.__begin_;
          v86.__begin_ = 0;
          v86.__end_ = v41;
          v86.__end_cap_.__value_ = 0;
          if (v48)
          {
            operator delete(v48);
          }

          a3 = v37;
        }

        else
        {
          *v86.__end_ = v39;
          v41 = end + 1;
        }

        v86.__end_ = v41;
      }

      v35 = [v34 countByEnumeratingWithState:&v82 objects:v87 count:16];
    }

    while (v35);
  }

  if (v86.__end_ == v86.__begin_)
  {
    v49 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest_::ContextInfoEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest_::ContextInfoEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v49 = v86.__begin_;
  }

  v50 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v49, v86.__end_ - v86.__begin_);
  v51 = [(FTStartTextToSpeechStreamingRequest *)v80 preferred_voice_type];
  v52 = [(FTStartTextToSpeechStreamingRequest *)v80 meta_info];
  v53 = [v52 addObjectToBuffer:a3];

  v54 = [(FTStartTextToSpeechStreamingRequest *)v80 context];
  v55 = [v54 addObjectToBuffer:a3];

  v56 = [(FTStartTextToSpeechStreamingRequest *)v80 experiment];
  v70 = [v56 addObjectToBuffer:a3];

  v57 = [(FTStartTextToSpeechStreamingRequest *)v80 feature_flags];
  v69 = [v57 addObjectToBuffer:a3];

  v58 = [(FTStartTextToSpeechStreamingRequest *)v80 debug];
  v68 = [v58 addObjectToBuffer:a3];

  v59 = [(FTStartTextToSpeechStreamingRequest *)v80 profile];
  LODWORD(v58) = [v59 addObjectToBuffer:a3];

  v60 = [(FTStartTextToSpeechStreamingRequest *)v80 dev_config];
  LODWORD(v59) = [v60 addObjectToBuffer:a3];

  v61 = [(FTStartTextToSpeechStreamingRequest *)v80 prosody_config];
  LODWORD(v60) = [v61 addObjectToBuffer:a3];

  v62 = [(FTStartTextToSpeechStreamingRequest *)v80 prosody_control_config];
  v63 = [v62 addObjectToBuffer:a3];

  *(a3 + 70) = 1;
  v67 = *(a3 + 8);
  LODWORD(v62) = *(a3 + 12);
  v81 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v78);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v77);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v76);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 12, v75);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 14, v74);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 16, v73, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 18, v72, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v71);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 22, v50);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 24, v51, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 26, v53);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 28, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 30, v70);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 32, v69);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 34, v68);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 36, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 38, v59);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 40, v60);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 42, v63);
  v64.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v67 - v62 + v81);
  if (v86.__begin_)
  {
    v86.__end_ = v86.__begin_;
    operator delete(v86.__begin_);
  }

  v65 = *MEMORY[0x277D85DE8];
  return v64;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTStartTextToSpeechStreamingRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__51__FTStartTextToSpeechStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x238398150);
  }

  return result;
}

apple::aiml::flatbuffers2::DetachedBuffer *__68__FTStartTextToSpeechStreamingRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
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