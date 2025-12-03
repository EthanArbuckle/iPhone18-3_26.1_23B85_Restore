@interface FTStartSpeechRequest
- (BOOL)disable_auto_punctuation;
- (BOOL)enable_endpoint_candidate;
- (BOOL)enable_hybrid_endpoint;
- (BOOL)enable_server_side_endpoint;
- (BOOL)enable_utterance_detection;
- (BOOL)is_far_field;
- (BOOL)keyboard_dictation;
- (BOOL)store_audio;
- (BOOL)stream_results;
- (BOOL)stream_unstable_results;
- (BOOL)tandem_mode;
- (FTStartSpeechRequest)initWithFlatbuffData:(id)data root:(const StartSpeechRequest *)root verify:(BOOL)verify;
- (NSArray)multi_user_parameters;
- (NSString)application_name;
- (NSString)client_endpointer_model_version;
- (NSString)device_os;
- (NSString)device_type;
- (NSString)experiment_id;
- (NSString)fork_id;
- (NSString)input_origin;
- (NSString)keyboard_identifier;
- (NSString)language;
- (NSString)metadata;
- (NSString)mic_type;
- (NSString)request_locale;
- (NSString)self_session_id;
- (NSString)session_id;
- (NSString)speech_id;
- (NSString)task_name;
- (NSString)udm_host;
- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)buffer;
- (id)flatbuffData;
- (id)multi_user_parameters_objectAtIndex:(unint64_t)index;
- (int)start_audio_bookmark;
- (int)udm_port;
- (int64_t)codec;
- (int64_t)end_point_mode;
- (int64_t)speech_request_source;
- (unint64_t)multi_user_parameters_count;
- (unint64_t)start_endpointing_at;
- (unint64_t)start_recognition_at;
- (unsigned)initial_recognition_candidate_id;
- (unsigned)initial_result_candidate_id;
- (void)multi_user_parameters_enumerateObjectsUsingBlock:(id)block;
@end

@implementation FTStartSpeechRequest

- (FTStartSpeechRequest)initWithFlatbuffData:(id)data root:(const StartSpeechRequest *)root verify:(BOOL)verify
{
  verifyCopy = verify;
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = FTStartSpeechRequest;
  v10 = [(FTStartSpeechRequest *)&v25 init];
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

  if (!siri::speech::schema_fb::StartSpeechRequest::Verify(v18, v21))
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

- (NSString)task_name
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

- (int64_t)codec
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0xDu && (v4 = *v3[12].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)stream_results
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0xFu && (v4 = *v3[14].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)enable_server_side_endpoint
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x11u && (v4 = *v3[16].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)device_type
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

- (NSString)device_os
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

- (NSString)mic_type
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 22].var0;
  if (*root[-v3 + 22].var0)
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

- (NSString)udm_host
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 24].var0;
  if (*root[-v3 + 24].var0)
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

- (int)udm_port
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x1Bu && (v4 = *v3[26].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)tandem_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Du && (v4 = *v3[28].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)store_audio
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x1Fu && (v4 = *v3[30].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)stream_unstable_results
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x21u && (v4 = *v3[32].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)request_locale
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 34].var0;
  if (*root[-v3 + 34].var0)
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

- (int64_t)end_point_mode
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x25u && (v4 = *v3[36].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (int)start_audio_bookmark
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x27u && (v4 = *v3[38].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)is_far_field
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x29u && (v4 = *v3[40].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)enable_utterance_detection
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x2Bu && (v4 = *v3[42].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)enable_endpoint_candidate
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x2Du && (v4 = *v3[44].var0) != 0 && root[v4].var0[0] != 0;
}

- (unint64_t)start_recognition_at
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x2Fu && (v4 = *v3[46].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)start_endpointing_at
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x31u && (v4 = *v3[48].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)enable_hybrid_endpoint
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x33u && (v4 = *v3[50].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)client_endpointer_model_version
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 52].var0;
  if (*root[-v3 + 52].var0)
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

- (NSString)keyboard_identifier
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 54].var0;
  if (*root[-v3 + 54].var0)
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

- (NSString)input_origin
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 56].var0;
  if (*root[-v3 + 56].var0)
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

- (unsigned)initial_recognition_candidate_id
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x3Bu && (v4 = *v3[58].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (BOOL)disable_auto_punctuation
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x3Du && (v4 = *v3[60].var0) != 0 && root[v4].var0[0] != 0;
}

- (BOOL)keyboard_dictation
{
  root = self->_root;
  v3 = &root[-*root->var0];
  return *v3->var0 >= 0x3Fu && (v4 = *v3[62].var0) != 0 && root[v4].var0[0] != 0;
}

- (NSString)experiment_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 64].var0;
  if (*root[-v3 + 64].var0)
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

- (int64_t)speech_request_source
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x43u && (v4 = *v3[66].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)fork_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 68].var0;
  if (*root[-v3 + 68].var0)
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

- (NSString)application_name
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 70].var0;
  if (*root[-v3 + 70].var0)
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

- (NSString)metadata
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 72].var0;
  if (*root[-v3 + 72].var0)
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

- (NSArray)multi_user_parameters
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"multi_user_parameters"];
  if (!v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTStartSpeechRequest_multi_user_parameters__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = array;
    v7 = v3;
    [(FTStartSpeechRequest *)self multi_user_parameters_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"multi_user_parameters"];
  }

  return v3;
}

- (id)multi_user_parameters_objectAtIndex:(unint64_t)index
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"multi_user_parameters"];
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
  if (*v10->var0 >= 0x4Bu)
  {
    v11 = *v10[74].var0;
    if (v11)
    {
      v12 = &root[4 * index + v11 + *root[v11].var0];
      v7 = [[FTUserParameters alloc] initWithFlatbuffData:self->_data root:v12 + 4 + *(v12 + 4) verify:0];
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_8:

  return v8;
}

- (unint64_t)multi_user_parameters_count
{
  v3 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"multi_user_parameters"];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 count];
  }

  else
  {
    root = self->_root;
    v7 = &root[-*root->var0];
    if (*v7->var0 >= 0x4Bu && (v8 = *v7[74].var0) != 0)
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

- (void)multi_user_parameters_enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"multi_user_parameters"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:blockCopy];
  }

  else
  {
    root = self->_root;
    v8 = &root[-*root->var0];
    if (*v8->var0 >= 0x4Bu)
    {
      v9 = *v8[74].var0;
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
            v15 = [[FTUserParameters alloc] initWithFlatbuffData:self->_data root:&v13[*v13->var0] verify:0];
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

- (unsigned)initial_result_candidate_id
{
  root = self->_root;
  v3 = &root[-*root->var0];
  if (*v3->var0 >= 0x4Du && (v4 = *v3[76].var0) != 0)
  {
    return *root[v4].var0;
  }

  else
  {
    return 0;
  }
}

- (NSString)self_session_id
{
  root = self->_root;
  v3 = *root->var0;
  v4 = *root[-v3 + 78].var0;
  if (*root[-v3 + 78].var0)
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

- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)buffer
{
  v129 = *MEMORY[0x277D85DE8];
  speech_id = [(FTStartSpeechRequest *)self speech_id];
  v6 = speech_id;
  if (!speech_id)
  {
    speech_id = &stru_284834138;
  }

  uTF8String = [(__CFString *)speech_id UTF8String];
  v8 = strlen(uTF8String);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String, v8);

  session_id = [(FTStartSpeechRequest *)self session_id];
  v10 = session_id;
  if (!session_id)
  {
    session_id = &stru_284834138;
  }

  uTF8String2 = [(__CFString *)session_id UTF8String];
  v12 = strlen(uTF8String2);
  v120 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String2, v12);

  language = [(FTStartSpeechRequest *)self language];
  v14 = language;
  if (!language)
  {
    language = &stru_284834138;
  }

  uTF8String3 = [(__CFString *)language UTF8String];
  v16 = strlen(uTF8String3);
  v119 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String3, v16);

  task_name = [(FTStartSpeechRequest *)self task_name];
  v18 = task_name;
  if (!task_name)
  {
    task_name = &stru_284834138;
  }

  uTF8String4 = [(__CFString *)task_name UTF8String];
  v20 = strlen(uTF8String4);
  v118 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String4, v20);

  codec = [(FTStartSpeechRequest *)self codec];
  stream_results = [(FTStartSpeechRequest *)self stream_results];
  enable_server_side_endpoint = [(FTStartSpeechRequest *)self enable_server_side_endpoint];
  device_type = [(FTStartSpeechRequest *)self device_type];
  v22 = device_type;
  if (!device_type)
  {
    device_type = &stru_284834138;
  }

  uTF8String5 = [(__CFString *)device_type UTF8String];
  v24 = strlen(uTF8String5);
  v114 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String5, v24);

  device_os = [(FTStartSpeechRequest *)self device_os];
  v26 = device_os;
  if (!device_os)
  {
    device_os = &stru_284834138;
  }

  uTF8String6 = [(__CFString *)device_os UTF8String];
  v28 = strlen(uTF8String6);
  v113 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String6, v28);

  mic_type = [(FTStartSpeechRequest *)self mic_type];
  v30 = mic_type;
  if (!mic_type)
  {
    mic_type = &stru_284834138;
  }

  uTF8String7 = [(__CFString *)mic_type UTF8String];
  v32 = strlen(uTF8String7);
  v112 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String7, v32);

  udm_host = [(FTStartSpeechRequest *)self udm_host];
  v34 = udm_host;
  if (!udm_host)
  {
    udm_host = &stru_284834138;
  }

  uTF8String8 = [(__CFString *)udm_host UTF8String];
  v36 = strlen(uTF8String8);
  v111 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String8, v36);

  udm_port = [(FTStartSpeechRequest *)self udm_port];
  tandem_mode = [(FTStartSpeechRequest *)self tandem_mode];
  store_audio = [(FTStartSpeechRequest *)self store_audio];
  stream_unstable_results = [(FTStartSpeechRequest *)self stream_unstable_results];
  request_locale = [(FTStartSpeechRequest *)self request_locale];
  v38 = request_locale;
  if (!request_locale)
  {
    request_locale = &stru_284834138;
  }

  uTF8String9 = [(__CFString *)request_locale UTF8String];
  v40 = strlen(uTF8String9);
  v106 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String9, v40);

  end_point_mode = [(FTStartSpeechRequest *)self end_point_mode];
  start_audio_bookmark = [(FTStartSpeechRequest *)self start_audio_bookmark];
  is_far_field = [(FTStartSpeechRequest *)self is_far_field];
  enable_utterance_detection = [(FTStartSpeechRequest *)self enable_utterance_detection];
  enable_endpoint_candidate = [(FTStartSpeechRequest *)self enable_endpoint_candidate];
  start_recognition_at = [(FTStartSpeechRequest *)self start_recognition_at];
  start_endpointing_at = [(FTStartSpeechRequest *)self start_endpointing_at];
  enable_hybrid_endpoint = [(FTStartSpeechRequest *)self enable_hybrid_endpoint];
  client_endpointer_model_version = [(FTStartSpeechRequest *)self client_endpointer_model_version];
  v42 = client_endpointer_model_version;
  if (!client_endpointer_model_version)
  {
    client_endpointer_model_version = &stru_284834138;
  }

  uTF8String10 = [(__CFString *)client_endpointer_model_version UTF8String];
  v44 = strlen(uTF8String10);
  v97 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String10, v44);

  keyboard_identifier = [(FTStartSpeechRequest *)self keyboard_identifier];
  v46 = keyboard_identifier;
  if (!keyboard_identifier)
  {
    keyboard_identifier = &stru_284834138;
  }

  uTF8String11 = [(__CFString *)keyboard_identifier UTF8String];
  v48 = strlen(uTF8String11);
  v96 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String11, v48);

  input_origin = [(FTStartSpeechRequest *)self input_origin];
  v50 = input_origin;
  if (!input_origin)
  {
    input_origin = &stru_284834138;
  }

  uTF8String12 = [(__CFString *)input_origin UTF8String];
  v52 = strlen(uTF8String12);
  v95 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String12, v52);

  initial_recognition_candidate_id = [(FTStartSpeechRequest *)self initial_recognition_candidate_id];
  disable_auto_punctuation = [(FTStartSpeechRequest *)self disable_auto_punctuation];
  keyboard_dictation = [(FTStartSpeechRequest *)self keyboard_dictation];
  experiment_id = [(FTStartSpeechRequest *)self experiment_id];
  v54 = experiment_id;
  if (!experiment_id)
  {
    experiment_id = &stru_284834138;
  }

  uTF8String13 = [(__CFString *)experiment_id UTF8String];
  v56 = strlen(uTF8String13);
  v91 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String13, v56);

  speech_request_source = [(FTStartSpeechRequest *)self speech_request_source];
  fork_id = [(FTStartSpeechRequest *)self fork_id];
  v58 = fork_id;
  if (!fork_id)
  {
    fork_id = &stru_284834138;
  }

  uTF8String14 = [(__CFString *)fork_id UTF8String];
  v60 = strlen(uTF8String14);
  v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String14, v60);

  application_name = [(FTStartSpeechRequest *)self application_name];
  v63 = application_name;
  if (!application_name)
  {
    application_name = &stru_284834138;
  }

  uTF8String15 = [(__CFString *)application_name UTF8String];
  v65 = strlen(uTF8String15);
  v66 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String15, v65);

  metadata = [(FTStartSpeechRequest *)self metadata];
  v68 = metadata;
  if (!metadata)
  {
    metadata = &stru_284834138;
  }

  uTF8String16 = [(__CFString *)metadata UTF8String];
  v70 = strlen(uTF8String16);
  v71 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String16, v70);

  memset(&v127, 0, sizeof(v127));
  multi_user_parameters = [(FTStartSpeechRequest *)self multi_user_parameters];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v127, [multi_user_parameters count]);

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  multi_user_parameters2 = [(FTStartSpeechRequest *)self multi_user_parameters];
  v74 = [multi_user_parameters2 countByEnumeratingWithState:&v123 objects:v128 count:16];
  if (v74)
  {
    v75 = *v124;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v124 != v75)
        {
          objc_enumerationMutation(multi_user_parameters2);
        }

        v122 = [*(*(&v123 + 1) + 8 * i) addObjectToBuffer:buffer];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v127.__begin_, &v122);
      }

      v74 = [multi_user_parameters2 countByEnumeratingWithState:&v123 objects:v128 count:16];
    }

    while (v74);
  }

  if (v127.__end_ == v127.__begin_)
  {
    begin = &apple::aiml::flatbuffers2::data<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::UserParameters>,std::allocator<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::UserParameters>>>(std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::UserParameters>> const&)::t;
  }

  else
  {
    begin = v127.__begin_;
  }

  v78 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(buffer, begin, v127.__end_ - v127.__begin_);
  initial_result_candidate_id = [(FTStartSpeechRequest *)self initial_result_candidate_id];
  self_session_id = [(FTStartSpeechRequest *)self self_session_id];
  v81 = self_session_id;
  if (!self_session_id)
  {
    self_session_id = &stru_284834138;
  }

  uTF8String17 = [(__CFString *)self_session_id UTF8String];
  v83 = strlen(uTF8String17);
  LODWORD(uTF8String17) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(buffer, uTF8String17, v83);

  *(buffer + 70) = 1;
  v84 = *(buffer + 8);
  v85 = *(buffer + 12);
  v86 = *(buffer + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 6, v120);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 8, v119);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 10, v118);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 12, codec, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 14, stream_results, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 16, enable_server_side_endpoint, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 18, v114);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 20, v113);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 22, v112);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 24, v111);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 26, udm_port, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 28, tandem_mode, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 30, store_audio, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 32, stream_unstable_results, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 34, v106);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 36, end_point_mode, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 38, start_audio_bookmark, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 40, is_far_field, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 42, enable_utterance_detection, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 44, enable_endpoint_candidate, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 46, start_recognition_at, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(buffer, 48, start_endpointing_at, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 50, enable_hybrid_endpoint, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 52, v97);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 54, v96);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 56, v95);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 58, initial_recognition_candidate_id, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 60, disable_auto_punctuation, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(buffer, 62, keyboard_dictation, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 64, v91);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 66, speech_request_source, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 68, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 70, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 72, v71);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 74, v78);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(buffer, 76, initial_result_candidate_id, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(buffer, 78, uTF8String17);
  v87.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(buffer, v84 - v85 + v86);
  if (v127.__begin_)
  {
    v127.__end_ = v127.__begin_;
    operator delete(v127.__begin_);
  }

  v88 = *MEMORY[0x277D85DE8];
  return v87;
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
  apple::aiml::flatbuffers2::FlatBufferBuilder::Finish(&v3, [(FTStartSpeechRequest *)self addObjectToBuffer:&v3], 0, 0);
  operator new();
}

apple::aiml::flatbuffers2::DetachedBuffer *__36__FTStartSpeechRequest_flatbuffData__block_invoke(uint64_t a1)
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