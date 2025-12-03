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
- (OPTTSTextToSpeechRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRequest *)root verify:(BOOL)verify;
- (OPTTSTextToSpeechRequestContext)context;
- (OPTTSTextToSpeechRequestDebug)debug;
- (OPTTSTextToSpeechRequestDevConfig)dev_config;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (OPTTSTextToSpeechRequestProsodyControlConfig)prosody_control_config;
- (OPTTSTextToSpeechRequestProsodyTransferConfig)prosody_config;
- (OPTTSTextToSpeechUserProfile)profile;
- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (id)context_info_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)block;
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

- (Offset<siri::speech::schema_fb::TextToSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  v75 = *MEMORY[0x1E69E9840];
  speech_id = [(OPTTSTextToSpeechRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_1F28C4E90;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(OPTTSTextToSpeechRequest *)self session_id];
  v11 = session_id;
  if (!session_id)
  {
    session_id = &stru_1F28C4E90;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v13 = strlen(uTF8String2);
  v14 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v13);

  language = [(OPTTSTextToSpeechRequest *)self language];
  v16 = language;
  if (!language)
  {
    language = &stru_1F28C4E90;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v18 = strlen(uTF8String3);
  v19 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v18);

  gender = [(OPTTSTextToSpeechRequest *)self gender];
  v21 = gender;
  if (!gender)
  {
    gender = &stru_1F28C4E90;
  }

  uTF8String4 = [(__CFString *)gender UTF8String];
  v23 = strlen(uTF8String4);
  v65 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v23);

  text = [(OPTTSTextToSpeechRequest *)self text];
  v25 = text;
  if (!text)
  {
    text = &stru_1F28C4E90;
  }

  uTF8String5 = [(__CFString *)text UTF8String];
  v27 = strlen(uTF8String5);
  v64 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v27);

  audio_type = [(OPTTSTextToSpeechRequest *)self audio_type];
  enable_word_timing_info = [(OPTTSTextToSpeechRequest *)self enable_word_timing_info];
  voice_name = [(OPTTSTextToSpeechRequest *)self voice_name];
  v29 = voice_name;
  if (!voice_name)
  {
    voice_name = &stru_1F28C4E90;
  }

  uTF8String6 = [(__CFString *)voice_name UTF8String];
  v31 = strlen(uTF8String6);
  v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v31);

  v71 = 0;
  v72 = 0;
  v73 = 0;
  context_info = [(OPTTSTextToSpeechRequest *)self context_info];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::reserve(&v71, [context_info count]);

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  context_info2 = [(OPTTSTextToSpeechRequest *)self context_info];
  v34 = [context_info2 countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v34)
  {
    v35 = *v68;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v68 != v35)
        {
          objc_enumerationMutation(context_info2);
        }

        v66 = [*(*(&v67 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>::push_back[abi:ne200100](&v71, &v66);
      }

      v34 = [context_info2 countByEnumeratingWithState:&v67 objects:v74 count:16];
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

  v60 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, v38, (v72 - v71) >> 2);
  preferred_voice_type = [(OPTTSTextToSpeechRequest *)self preferred_voice_type];
  meta_info = [(OPTTSTextToSpeechRequest *)self meta_info];
  v58 = [meta_info addObjectToBuffer:buffer];

  context = [(OPTTSTextToSpeechRequest *)self context];
  v57 = [context addObjectToBuffer:buffer];

  experiment = [(OPTTSTextToSpeechRequest *)self experiment];
  v56 = [experiment addObjectToBuffer:buffer];

  feature_flags = [(OPTTSTextToSpeechRequest *)self feature_flags];
  v55 = [feature_flags addObjectToBuffer:buffer];

  debug = [(OPTTSTextToSpeechRequest *)self debug];
  v54 = [debug addObjectToBuffer:buffer];

  profile = [(OPTTSTextToSpeechRequest *)self profile];
  LODWORD(debug) = [profile addObjectToBuffer:buffer];

  dev_config = [(OPTTSTextToSpeechRequest *)self dev_config];
  LODWORD(profile) = [dev_config addObjectToBuffer:buffer];

  prosody_config = [(OPTTSTextToSpeechRequest *)self prosody_config];
  LODWORD(dev_config) = [prosody_config addObjectToBuffer:buffer];

  prosody_control_config = [(OPTTSTextToSpeechRequest *)self prosody_control_config];
  v53 = [prosody_control_config addObjectToBuffer:buffer];

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v48 = *(buffer + 8);
  LODWORD(prosody_control_config) = *(buffer + 12);
  v52 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 6, v14);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 8, v19);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 10, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 12, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 14, audio_type);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, enable_word_timing_info);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 18, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 20, v60);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, preferred_voice_type);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 24, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 26, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 28, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 30, v55);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 32, v54);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 34, debug);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 36, profile);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 38, dev_config);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 40, v53);
  v49.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v48 - prosody_control_config + v52);
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
          v13 = 4 * v11 - 4;
          v14 = &root[v10 + 4 + v9];
          do
          {
            v15 = [[OPTTSTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
            blockCopy[2](blockCopy, v15, v12, &v18);
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

- (id)context_info_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"context_info"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectAtIndexedSubscript:index];
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
      if (*v12->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      v7 = [[OPTTSTextToSpeechRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
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
    array = [MEMORY[0x1E695DF70] array];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __40__OPTTSTextToSpeechRequest_context_info__block_invoke;
    v6[3] = &unk_1E7AF3888;
    v3 = array;
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

- (OPTTSTextToSpeechRequest)initWithFlatbuffData:(id)data root:(const TextToSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v65.receiver = self;
  v65.super_class = OPTTSTextToSpeechRequest;
  v10 = [(OPTTSTextToSpeechRequest *)&v65 init];
  if (v10)
  {
    if (dataCopy && [dataCopy length])
    {
      objc_storeStrong(&v10->_data, data);
      if (!root)
      {
        bytes = [(NSData *)v10->_data bytes];
        root = bytes + *bytes;
      }

      v10->_root = root;
      if (!verifyCopy)
      {
        goto LABEL_108;
      }

      bytes2 = [(NSData *)v10->_data bytes];
      v13 = [(NSData *)v10->_data length];
      root = v10->_root;
      if (root >= bytes2 && root <= bytes2 + v13)
      {
        bytes3 = [(NSData *)v10->_data bytes];
        v17 = [(NSData *)v10->_data length];
        v60 = bytes3;
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