@interface OPTTSTextToSpeechRequest
- (BOOL)enable_word_timing_info;
- (NSArray)context_info;
- (NSString)gender;
- (NSString)language;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)text;
- (NSString)voice_name;
- (OPTTSTTSRequestFeatureFlags)feature_flags;
- (OPTTSTextToSpeechRequest)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequest *)a4 verify:(BOOL)a5;
- (OPTTSTextToSpeechRequestContext)context;
- (OPTTSTextToSpeechRequestDebug)debug;
- (OPTTSTextToSpeechRequestDevConfig)dev_config;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (OPTTSTextToSpeechRequestProsodyControlConfig)prosody_control_config;
- (OPTTSTextToSpeechRequestProsodyTransferConfig)prosody_config;
- (OPTTSTextToSpeechUserProfile)profile;
- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)a3;
- (id)context_info_objectAtIndex:(unint64_t)a3;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation OPTTSTextToSpeechRequest

apple::aiml::flatbuffers2::DetachedBuffer *__57__OPTTSTextToSpeechRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

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
  v2.var0 = [(OPTTSTextToSpeechRequest *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__40__OPTTSTextToSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)a3
{
  v75 = *MEMORY[0x1E69E9840];
  v5 = [(OPTTSTextToSpeechRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_1F28C4E90;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v10 = [(OPTTSTextToSpeechRequest *)self session_id];
  v11 = v10;
  if (!v10)
  {
    v10 = &stru_1F28C4E90;
  }

  v12 = [(__CFString *)v10 UTF8String];
  v13 = strlen(v12);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v12, v13);

  v15 = [(OPTTSTextToSpeechRequest *)self language];
  v16 = v15;
  if (!v15)
  {
    v15 = &stru_1F28C4E90;
  }

  v17 = [(__CFString *)v15 UTF8String];
  v18 = strlen(v17);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v17, v18);

  v20 = [(OPTTSTextToSpeechRequest *)self gender];
  v21 = v20;
  if (!v20)
  {
    v20 = &stru_1F28C4E90;
  }

  v22 = [(__CFString *)v20 UTF8String];
  v23 = strlen(v22);
  v65 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v22, v23);

  v24 = [(OPTTSTextToSpeechRequest *)self text];
  v25 = v24;
  if (!v24)
  {
    v24 = &stru_1F28C4E90;
  }

  v26 = [(__CFString *)v24 UTF8String];
  v27 = strlen(v26);
  v64 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v26, v27);

  v63 = [(OPTTSTextToSpeechRequest *)self audio_type];
  v62 = [(OPTTSTextToSpeechRequest *)self enable_word_timing_info];
  v28 = [(OPTTSTextToSpeechRequest *)self voice_name];
  v29 = v28;
  if (!v28)
  {
    v28 = &stru_1F28C4E90;
  }

  v30 = [(__CFString *)v28 UTF8String];
  v31 = strlen(v30);
  v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v30, v31);

  v71 = 0;
  v72 = 0;
  v73 = 0;
  v32 = [(OPTTSTextToSpeechRequest *)self context_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v71, [v32 count]);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v33 = [(OPTTSTextToSpeechRequest *)self context_info];
  v34 = [v33 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v34)
  {
    v35 = *v68;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v68 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v66 = [*(*(&v67 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v71, &v66);
      }

      v34 = [v33 countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v34);
  }

  v37 = v71;
  if (v72 == v71)
  {
    v38 = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>> const&)::t;
  }

  else
  {
    v38 = v71;
  }

  v60 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, v38, (v72 - v71) >> 2);
  v59 = [(OPTTSTextToSpeechRequest *)self preferred_voice_type];
  v39 = [(OPTTSTextToSpeechRequest *)self meta_info];
  v58 = [v39 addObjectToBuffer:a3];

  v40 = [(OPTTSTextToSpeechRequest *)self context];
  v57 = [v40 addObjectToBuffer:a3];

  v41 = [(OPTTSTextToSpeechRequest *)self experiment];
  v56 = [v41 addObjectToBuffer:a3];

  v42 = [(OPTTSTextToSpeechRequest *)self feature_flags];
  v55 = [v42 addObjectToBuffer:a3];

  v43 = [(OPTTSTextToSpeechRequest *)self debug];
  v54 = [v43 addObjectToBuffer:a3];

  v44 = [(OPTTSTextToSpeechRequest *)self profile];
  LODWORD(v43) = [v44 addObjectToBuffer:a3];

  v45 = [(OPTTSTextToSpeechRequest *)self dev_config];
  LODWORD(v44) = [v45 addObjectToBuffer:a3];

  v46 = [(OPTTSTextToSpeechRequest *)self prosody_config];
  LODWORD(v45) = [v46 addObjectToBuffer:a3];

  v47 = [(OPTTSTextToSpeechRequest *)self prosody_control_config];
  v53 = [v47 addObjectToBuffer:a3];

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(a3);
  *(a3 + 70) = 1;
  v48 = *(a3 + 8);
  LODWORD(v47) = *(a3 + 12);
  v52 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 8, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 10, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 12, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 14, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v62);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 18, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 20, v60);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 22, v59);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 24, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 26, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 28, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 30, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 32, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 34, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 36, v44);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 38, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(a3, 40, v53);
  v49.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v48 - v47 + v52);
  if (v37)
  {
    operator delete(v37);
  }

  v50 = *MEMORY[0x1E69E9840];
  return v49;
}

- (OPTTSTextToSpeechRequestProsodyControlConfig)prosody_control_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prosody_control_config"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestProsodyControlConfig alloc];
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

    v3 = [(OPTTSTextToSpeechRequestProsodyControlConfig *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prosody_control_config"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestProsodyTransferConfig)prosody_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prosody_config"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestProsodyTransferConfig alloc];
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

    v3 = [(OPTTSTextToSpeechRequestProsodyTransferConfig *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"prosody_config"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestDevConfig)dev_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"dev_config"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestDevConfig alloc];
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

    v3 = [(OPTTSTextToSpeechRequestDevConfig *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"dev_config"];
  }

  return v3;
}

- (OPTTSTextToSpeechUserProfile)profile
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"profile"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechUserProfile alloc];
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

    v3 = [(OPTTSTextToSpeechUserProfile *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"profile"];
  }

  return v3;
}

- (OPTTSTextToSpeechRequestDebug)debug
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"debug"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestDebug alloc];
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

    v3 = [(OPTTSTextToSpeechRequestDebug *)v4 initWithFlatbuffData:self->_data root:v8 verify:0];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"debug"];
  }

  return v3;
}

- (OPTTSTTSRequestFeatureFlags)feature_flags
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"feature_flags"];
  if (!v3)
  {
    v4 = [OPTTSTTSRequestFeatureFlags alloc];
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
    if (*v6->var0 >= 0x1Du && (v7 = *v6[28].var0) != 0)
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
    if (*v6->var0 >= 0x1Bu && (v7 = *v6[26].var0) != 0)
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
    if (*v6->var0 >= 0x19u && (v7 = *v6[24].var0) != 0)
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
  if (*v3->var0 >= 0x17u && (v4 = *v3[22].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
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
  if (*v10->var0 >= 0x15u)
  {
    v11 = *v10[20].var0;
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
    v6[2] = __40__OPTTSTextToSpeechRequest_context_info__block_invoke;
    v6[3] = &unk_1E7AF3888;
    v3 = v4;
    v7 = v3;
    [(OPTTSTextToSpeechRequest *)self context_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_info"];
  }

  return v3;
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (BOOL)enable_word_timing_info
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

  return v6;
}

- (OPTTSTextToSpeechRequest)initWithFlatbuffData:(id)a3 root:(const TextToSpeechRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v65.receiver = self;
  v65.super_class = OPTTSTextToSpeechRequest;
  v10 = [(OPTTSTextToSpeechRequest *)&v65 init];
  if (v10)
  {
    if (v9 && [v9 length])
    {
      objc_storeStrong(&v10->_data, a3);
      if (!a4)
      {
        v11 = [(NSData *)v10->_data bytes];
        a4 = v11 + *v11;
      }

      v10->_root = a4;
      if (!v5)
      {
        goto LABEL_108;
      }

      v12 = [(NSData *)v10->_data bytes];
      v13 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root >= v12 && root <= v12 + v13)
      {
        v16 = [(NSData *)v10->_data bytes];
        v17 = [(NSData *)v10->_data length];
        v60 = v16;
        v61 = v17;
        v62 = xmmword_1B1C41700;
        v63 = 0;
        v64 = 1;
        if (v17 >= 0x7FFFFFFF)
        {
          __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
        }

        v18 = v10->_root;
        if (!v18)
        {
          goto LABEL_108;
        }

        if (apple::aiml::flatbuffers2::Verifier::VerifyTableStart(&v60, v10->_root->var0) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 4u))
        {
          v19 = (v18 - *v18);
          if (*v19 >= 5u && (v20 = v19[2]) != 0)
          {
            v21 = v18 + v20 + *(v18 + v20);
          }

          else
          {
            v21 = 0;
          }

          if (apple::aiml::flatbuffers2::Verifier::VerifyString(&v60, v21) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 6u))
          {
            v22 = (v18 - *v18);
            if (*v22 >= 7u && (v23 = v22[3]) != 0)
            {
              v24 = v18 + v23 + *(v18 + v23);
            }

            else
            {
              v24 = 0;
            }

            if (apple::aiml::flatbuffers2::Verifier::VerifyString(&v60, v24) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 8u))
            {
              v25 = (v18 - *v18);
              if (*v25 >= 9u && (v26 = v25[4]) != 0)
              {
                v27 = v18 + v26 + *(v18 + v26);
              }

              else
              {
                v27 = 0;
              }

              if (apple::aiml::flatbuffers2::Verifier::VerifyString(&v60, v27) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0xAu))
              {
                v28 = (v18 - *v18);
                if (*v28 >= 0xBu && (v29 = v28[5]) != 0)
                {
                  v30 = v18 + v29 + *(v18 + v29);
                }

                else
                {
                  v30 = 0;
                }

                if (apple::aiml::flatbuffers2::Verifier::VerifyString(&v60, v30) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0xCu))
                {
                  v31 = (v18 - *v18);
                  if (*v31 >= 0xDu && (v32 = v31[6]) != 0)
                  {
                    v33 = v18 + v32 + *(v18 + v32);
                  }

                  else
                  {
                    v33 = 0;
                  }

                  if (apple::aiml::flatbuffers2::Verifier::VerifyString(&v60, v33))
                  {
                    v34 = (v18 - *v18);
                    v35 = *v34;
                    if ((v35 < 0xF || (!v34[7] || v61 >= 5 && v61 - 4 >= v18 + v34[7] - v60) && (v35 < 0x11 || !v34[8] || v61 >= 2 && v61 - 1 >= v18 + v34[8] - v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x12u))
                    {
                      v36 = v35 >= 0x13 && v34[9] ? v18 + v34[9] + *(v18 + v34[9]) : 0;
                      if (apple::aiml::flatbuffers2::Verifier::VerifyString(&v60, v36) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x14u))
                      {
                        v37 = *v18;
                        if (*(v18 - v37) < 0x15u)
                        {
                          goto LABEL_66;
                        }

                        if (*(v18 - v37 + 20))
                        {
                          if (!apple::aiml::flatbuffers2::Verifier::VerifyVectorOrString(&v60, v18 + *(v18 - v37 + 20) + *(v18 + *(v18 - v37 + 20)), 4uLL, 0))
                          {
                            goto LABEL_109;
                          }

                          v37 = *v18;
                          if (*(v18 - v37) < 0x15u)
                          {
                            goto LABEL_66;
                          }
                        }

                        v38 = *(v18 - v37 + 20);
                        if (!v38)
                        {
LABEL_66:
                          v39 = 0;
                        }

                        else
                        {
                          v39 = (v18 + v38 + *(v18 + v38));
                        }

                        if (apple::aiml::flatbuffers2::Verifier::VerifyVectorOfTables<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>(&v60, v39))
                        {
                          v40 = (v18 - *v18);
                          v41 = *v40;
                          if ((v41 < 0x17 || !v40[11] || v61 >= 5 && v61 - 4 >= v18 + v40[11] - v60) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x18u) && (v41 < 0x19 || !v40[12] || siri::speech::schema_fb::TextToSpeechRequestMeta::Verify((v18 + v40[12] + *(v18 + v40[12])), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x1Au))
                          {
                            v42 = (v18 - *v18);
                            if ((*v42 < 0x1Bu || (v43 = v42[13]) == 0 || siri::speech::schema_fb::TextToSpeechRequestContext::Verify((v18 + v43 + *(v18 + v43)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x1Cu))
                            {
                              v44 = (v18 - *v18);
                              if ((*v44 < 0x1Du || (v45 = v44[14]) == 0 || siri::speech::schema_fb::TextToSpeechRequestExperiment::Verify((v18 + v45 + *(v18 + v45)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x1Eu))
                              {
                                v46 = (v18 - *v18);
                                if ((*v46 < 0x1Fu || (v47 = v46[15]) == 0 || siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((v18 + v47 + *(v18 + v47)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x20u))
                                {
                                  v48 = (v18 - *v18);
                                  if ((*v48 < 0x21u || (v49 = v48[16]) == 0 || siri::speech::schema_fb::TTSRequestFeatureFlags::Verify((v18 + v49 + *(v18 + v49)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x22u))
                                  {
                                    v50 = (v18 - *v18);
                                    if ((*v50 < 0x23u || (v51 = v50[17]) == 0 || siri::speech::schema_fb::TextToSpeechUserProfile::Verify((v18 + v51 + *(v18 + v51)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x24u))
                                    {
                                      v52 = (v18 - *v18);
                                      if ((*v52 < 0x25u || (v53 = v52[18]) == 0 || siri::speech::schema_fb::TextToSpeechRequestDevConfig::Verify((v18 + v53 + *(v18 + v53)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x26u))
                                      {
                                        v54 = (v18 - *v18);
                                        if ((*v54 < 0x27u || (v55 = v54[19]) == 0 || siri::speech::schema_fb::TextToSpeechRequestProsodyTransferConfig::Verify((v18 + v55 + *(v18 + v55)), &v60)) && apple::aiml::flatbuffers2::Table::VerifyOffset(v18, &v60, 0x28u))
                                        {
                                          v56 = (v18 - *v18);
                                          if (*v56 < 0x29u)
                                          {
                                            goto LABEL_108;
                                          }

                                          v57 = v56[20];
                                          if (!v57 || siri::speech::schema_fb::TextToSpeechRequestProsodyControlConfig::Verify((v18 + v57 + *(v18 + v57)), &v60))
                                          {
                                            goto LABEL_108;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_109:
    v58 = 0;
    goto LABEL_110;
  }

LABEL_108:
  v58 = v10;
LABEL_110:

  return v58;
}

@end