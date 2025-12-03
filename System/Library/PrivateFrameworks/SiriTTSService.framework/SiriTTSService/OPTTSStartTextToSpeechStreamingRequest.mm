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
- (OPTTSTextToSpeechRequestDebug)debug;
- (OPTTSTextToSpeechRequestDevConfig)dev_config;
- (OPTTSTextToSpeechRequestExperiment)experiment;
- (OPTTSTextToSpeechRequestMeta)meta_info;
- (OPTTSTextToSpeechRequestProsodyControlConfig)prosody_control_config;
- (OPTTSTextToSpeechRequestProsodyTransferConfig)prosody_config;
- (OPTTSTextToSpeechUserProfile)profile;
- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)buffer;
- (id)context_info_objectAtIndex:(unint64_t)index;
- (id)flatbuffData;
- (int64_t)audio_type;
- (int64_t)preferred_voice_type;
- (unint64_t)context_info_count;
- (void)context_info_enumerateObjectsUsingBlock:(id)block;
@end

@implementation OPTTSStartTextToSpeechStreamingRequest

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
  v2.var0 = [(OPTTSStartTextToSpeechStreamingRequest *)self addObjectToBuffer:&v5];
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v5, v2.var0, v3);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__54__OPTTSStartTextToSpeechStreamingRequest_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
}

- (Offset<siri::speech::schema_fb::StartTextToSpeechStreamingRequest>)addObjectToBuffer:(void *)buffer
{
  v77 = *MEMORY[0x1E69E9840];
  speech_id = [(OPTTSStartTextToSpeechStreamingRequest *)self speech_id];
  v5 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_1F28C4E90;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v7 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v7);

  session_id = [(OPTTSStartTextToSpeechStreamingRequest *)self session_id];
  v9 = session_id;
  if (!session_id)
  {
    session_id = &stru_1F28C4E90;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v11 = strlen(uTF8String2);
  v67 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v11);

  stream_id = [(OPTTSStartTextToSpeechStreamingRequest *)self stream_id];
  v13 = stream_id;
  if (!stream_id)
  {
    stream_id = &stru_1F28C4E90;
  }

  uTF8String3 = [(__CFString *)stream_id UTF8String];
  v15 = strlen(uTF8String3);
  v66 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v15);

  language = [(OPTTSStartTextToSpeechStreamingRequest *)self language];
  v17 = language;
  if (!language)
  {
    language = &stru_1F28C4E90;
  }

  uTF8String4 = [(__CFString *)language UTF8String];
  v19 = strlen(uTF8String4);
  v65 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v19);

  gender = [(OPTTSStartTextToSpeechStreamingRequest *)self gender];
  v21 = gender;
  if (!gender)
  {
    gender = &stru_1F28C4E90;
  }

  uTF8String5 = [(__CFString *)gender UTF8String];
  v23 = strlen(uTF8String5);
  v64 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v23);

  text = [(OPTTSStartTextToSpeechStreamingRequest *)self text];
  v25 = text;
  if (!text)
  {
    text = &stru_1F28C4E90;
  }

  uTF8String6 = [(__CFString *)text UTF8String];
  v27 = strlen(uTF8String6);
  v63 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v27);

  audio_type = [(OPTTSStartTextToSpeechStreamingRequest *)self audio_type];
  enable_word_timing_info = [(OPTTSStartTextToSpeechStreamingRequest *)self enable_word_timing_info];
  voice_name = [(OPTTSStartTextToSpeechStreamingRequest *)self voice_name];
  v29 = voice_name;
  if (!voice_name)
  {
    voice_name = &stru_1F28C4E90;
  }

  uTF8String7 = [(__CFString *)voice_name UTF8String];
  v31 = strlen(uTF8String7);
  v60 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String7, v31);

  context_info = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  v33 = [context_info count];
  if (v33)
  {
    if (!(v33 >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(v33);
    }

    std::vector<short>::__throw_length_error[abi:ne200100]();
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  context_info2 = [(OPTTSStartTextToSpeechStreamingRequest *)self context_info];
  if ([context_info2 countByEnumeratingWithState:&v72 objects:v76 count:16])
  {
    *v73;
    *v73;
    [**(&v72 + 1) addObjectToBuffer:buffer];
    std::__allocate_at_least[abi:ne200100]<std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::TextToSpeechRequest_::ContextInfoEntry>>>(1uLL);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::StartVector(buffer, 0, 4uLL);
  v70 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndVector(buffer, 0);
  preferred_voice_type = [(OPTTSStartTextToSpeechStreamingRequest *)self preferred_voice_type];
  meta_info = [(OPTTSStartTextToSpeechStreamingRequest *)self meta_info];
  v58 = [meta_info addObjectToBuffer:buffer];

  context = [(OPTTSStartTextToSpeechStreamingRequest *)self context];
  v57 = [context addObjectToBuffer:buffer];

  experiment = [(OPTTSStartTextToSpeechStreamingRequest *)self experiment];
  v56 = [experiment addObjectToBuffer:buffer];

  feature_flags = [(OPTTSStartTextToSpeechStreamingRequest *)self feature_flags];
  v39 = [feature_flags addObjectToBuffer:buffer];

  debug = [(OPTTSStartTextToSpeechStreamingRequest *)self debug];
  v41 = [debug addObjectToBuffer:buffer];

  profile = [(OPTTSStartTextToSpeechStreamingRequest *)self profile];
  v43 = [profile addObjectToBuffer:buffer];

  dev_config = [(OPTTSStartTextToSpeechStreamingRequest *)self dev_config];
  v45 = [dev_config addObjectToBuffer:buffer];

  prosody_config = [(OPTTSStartTextToSpeechStreamingRequest *)self prosody_config];
  v47 = [prosody_config addObjectToBuffer:buffer];

  prosody_control_config = [(OPTTSStartTextToSpeechStreamingRequest *)self prosody_control_config];
  v69 = [prosody_control_config addObjectToBuffer:buffer];

  apple::aiml::flatbuffers2::FlatBufferBuilder::NotNested(buffer);
  *(buffer + 70) = 1;
  v49 = *(buffer + 8);
  v50 = *(buffer + 12);
  v51 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 6, v67);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 8, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 10, v65);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 12, v64);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 14, v63);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 16, audio_type);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 18, enable_word_timing_info);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 20, v60);
  if (v70)
  {
    v52 = apple::aiml::flatbuffers2::FlatBufferBuilder::ReferTo(buffer, v70);
    apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 22, v52);
  }

  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 24, preferred_voice_type);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 26, v58);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 28, v57);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 30, v56);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 32, v39);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 34, v41);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 36, v43);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 38, v45);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 40, v47);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::Vector<unsigned char>>(buffer, 42, v69);
  v53.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v49 - v50 + v51);
  v54 = *MEMORY[0x1E69E9840];
  return v53;
}

- (OPTTSTextToSpeechRequestProsodyControlConfig)prosody_control_config
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"prosody_control_config"];
  if (!v3)
  {
    v4 = [OPTTSTextToSpeechRequestProsodyControlConfig alloc];
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
    if (*v6->var0 >= 0x29u && (v7 = *v6[40].var0) != 0)
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
    if (*v6->var0 >= 0x27u && (v7 = *v6[38].var0) != 0)
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
    if (*v6->var0 >= 0x25u && (v7 = *v6[36].var0) != 0)
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
    if (*v6->var0 >= 0x23u && (v7 = *v6[34].var0) != 0)
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
          v13 = 4 * v11 - 4;
          v14 = &root[v10 + 4 + v9];
          do
          {
            v15 = [[OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v14[*v14->var0] verify:0];
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

apple::aiml::flatbuffers2::DetachedBuffer *__71__OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry_flatbuffData__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    apple::aiml::flatbuffers2::DetachedBuffer::~DetachedBuffer(result);

    JUMPOUT(0x1B27394E0);
  }

  return result;
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
  if (*v10->var0 >= 0x17u)
  {
    v11 = *v10[22].var0;
    if (v11)
    {
      v12 = &root[v11 + *root[v11].var0];
      if (*v12->var0 <= index)
      {
        __assert_rtn("Get", "flatbuffers.h", 275, "i < size()");
      }

      v7 = [[OPTTSStartTextToSpeechStreamingRequest_ContextInfoEntry alloc] initWithFlatbuffData:self->_data root:&v12[4 * index + 4 + *v12[4 * index + 4].var0] verify:0];
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
    v6[2] = __54__OPTTSStartTextToSpeechStreamingRequest_context_info__block_invoke;
    v6[3] = &unk_1E7AF3888;
    v3 = array;
    v7 = v3;
    [(OPTTSStartTextToSpeechStreamingRequest *)self context_info_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"context_info"];
  }

  return v3;
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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:&v5[4] length:*root[v4 + v3].var0 encoding:4];

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

- (OPTTSStartTextToSpeechStreamingRequest)initWithFlatbuffData:(id)data root:(const StartTextToSpeechStreamingRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = OPTTSStartTextToSpeechStreamingRequest;
  v10 = [(OPTTSStartTextToSpeechStreamingRequest *)&v25 init];
  if (!v10)
  {
    goto LABEL_14;
  }

  if (!dataCopy || ![dataCopy length])
  {
    goto LABEL_15;
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
    goto LABEL_14;
  }

  bytes2 = [(NSData *)v10->_data bytes];
  v13 = [(NSData *)v10->_data length];
  root = v10->_root;
  if (root < bytes2 || root > bytes2 + v13)
  {
    goto LABEL_15;
  }

  bytes3 = [(NSData *)v10->_data bytes];
  v17 = [(NSData *)v10->_data length];
  v21[0] = bytes3;
  v21[1] = v17;
  v22 = xmmword_1B1C41700;
  v23 = 0;
  v24 = 1;
  if (v17 >= 0x7FFFFFFF)
  {
    __assert_rtn("Verifier", "flatbuffers.h", 2285, "size_ < FLATBUFFERS_MAX_BUFFER_SIZE");
  }

  v18 = v10->_root;
  if (v18 && !siri::speech::schema_fb::StartTextToSpeechStreamingRequest::Verify(v18, v21))
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