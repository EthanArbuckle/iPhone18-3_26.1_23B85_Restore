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
- (FTStartSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechRequest *)a4 verify:(BOOL)a5;
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
- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)a3;
- (id)flatbuffData;
- (id)multi_user_parameters_objectAtIndex:(unint64_t)a3;
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
- (void)multi_user_parameters_enumerateObjectsUsingBlock:(id)a3;
@end

@implementation FTStartSpeechRequest

- (FTStartSpeechRequest)initWithFlatbuffData:(id)a3 root:(const StartSpeechRequest *)a4 verify:(BOOL)a5
{
  v5 = a5;
  v9 = a3;
  v25.receiver = self;
  v25.super_class = FTStartSpeechRequest;
  v10 = [(FTStartSpeechRequest *)&v25 init];
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
    v4 = [MEMORY[0x277CBEB18] array];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __45__FTStartSpeechRequest_multi_user_parameters__block_invoke;
    v6[3] = &unk_2789B8AD8;
    v3 = v4;
    v7 = v3;
    [(FTStartSpeechRequest *)self multi_user_parameters_enumerateObjectsUsingBlock:v6];
    [(NSMutableDictionary *)self->_storage setObject:v3 forKeyedSubscript:@"multi_user_parameters"];
  }

  return v3;
}

- (id)multi_user_parameters_objectAtIndex:(unint64_t)a3
{
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"multi_user_parameters"];
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
  if (*v10->var0 >= 0x4Bu)
  {
    v11 = *v10[74].var0;
    if (v11)
    {
      v12 = &root[4 * a3 + v11 + *root[v11].var0];
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

- (void)multi_user_parameters_enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_storage objectForKeyedSubscript:@"multi_user_parameters"];
  v6 = v5;
  if (v5)
  {
    [v5 enumerateObjectsUsingBlock:v4];
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

- (Offset<siri::speech::schema_fb::StartSpeechRequest>)addObjectToBuffer:(void *)a3
{
  v129 = *MEMORY[0x277D85DE8];
  v5 = [(FTStartSpeechRequest *)self speech_id];
  v6 = v5;
  if (!v5)
  {
    v5 = &stru_284834138;
  }

  v7 = [(__CFString *)v5 UTF8String];
  v8 = strlen(v7);
  String = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v7, v8);

  v9 = [(FTStartSpeechRequest *)self session_id];
  v10 = v9;
  if (!v9)
  {
    v9 = &stru_284834138;
  }

  v11 = [(__CFString *)v9 UTF8String];
  v12 = strlen(v11);
  v120 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v11, v12);

  v13 = [(FTStartSpeechRequest *)self language];
  v14 = v13;
  if (!v13)
  {
    v13 = &stru_284834138;
  }

  v15 = [(__CFString *)v13 UTF8String];
  v16 = strlen(v15);
  v119 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v15, v16);

  v17 = [(FTStartSpeechRequest *)self task_name];
  v18 = v17;
  if (!v17)
  {
    v17 = &stru_284834138;
  }

  v19 = [(__CFString *)v17 UTF8String];
  v20 = strlen(v19);
  v118 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v19, v20);

  v117 = [(FTStartSpeechRequest *)self codec];
  v116 = [(FTStartSpeechRequest *)self stream_results];
  v115 = [(FTStartSpeechRequest *)self enable_server_side_endpoint];
  v21 = [(FTStartSpeechRequest *)self device_type];
  v22 = v21;
  if (!v21)
  {
    v21 = &stru_284834138;
  }

  v23 = [(__CFString *)v21 UTF8String];
  v24 = strlen(v23);
  v114 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v23, v24);

  v25 = [(FTStartSpeechRequest *)self device_os];
  v26 = v25;
  if (!v25)
  {
    v25 = &stru_284834138;
  }

  v27 = [(__CFString *)v25 UTF8String];
  v28 = strlen(v27);
  v113 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v27, v28);

  v29 = [(FTStartSpeechRequest *)self mic_type];
  v30 = v29;
  if (!v29)
  {
    v29 = &stru_284834138;
  }

  v31 = [(__CFString *)v29 UTF8String];
  v32 = strlen(v31);
  v112 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v31, v32);

  v33 = [(FTStartSpeechRequest *)self udm_host];
  v34 = v33;
  if (!v33)
  {
    v33 = &stru_284834138;
  }

  v35 = [(__CFString *)v33 UTF8String];
  v36 = strlen(v35);
  v111 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v35, v36);

  v110 = [(FTStartSpeechRequest *)self udm_port];
  v109 = [(FTStartSpeechRequest *)self tandem_mode];
  v108 = [(FTStartSpeechRequest *)self store_audio];
  v107 = [(FTStartSpeechRequest *)self stream_unstable_results];
  v37 = [(FTStartSpeechRequest *)self request_locale];
  v38 = v37;
  if (!v37)
  {
    v37 = &stru_284834138;
  }

  v39 = [(__CFString *)v37 UTF8String];
  v40 = strlen(v39);
  v106 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v39, v40);

  v105 = [(FTStartSpeechRequest *)self end_point_mode];
  v104 = [(FTStartSpeechRequest *)self start_audio_bookmark];
  v103 = [(FTStartSpeechRequest *)self is_far_field];
  v102 = [(FTStartSpeechRequest *)self enable_utterance_detection];
  v101 = [(FTStartSpeechRequest *)self enable_endpoint_candidate];
  v100 = [(FTStartSpeechRequest *)self start_recognition_at];
  v99 = [(FTStartSpeechRequest *)self start_endpointing_at];
  v98 = [(FTStartSpeechRequest *)self enable_hybrid_endpoint];
  v41 = [(FTStartSpeechRequest *)self client_endpointer_model_version];
  v42 = v41;
  if (!v41)
  {
    v41 = &stru_284834138;
  }

  v43 = [(__CFString *)v41 UTF8String];
  v44 = strlen(v43);
  v97 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v43, v44);

  v45 = [(FTStartSpeechRequest *)self keyboard_identifier];
  v46 = v45;
  if (!v45)
  {
    v45 = &stru_284834138;
  }

  v47 = [(__CFString *)v45 UTF8String];
  v48 = strlen(v47);
  v96 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v47, v48);

  v49 = [(FTStartSpeechRequest *)self input_origin];
  v50 = v49;
  if (!v49)
  {
    v49 = &stru_284834138;
  }

  v51 = [(__CFString *)v49 UTF8String];
  v52 = strlen(v51);
  v95 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v51, v52);

  v94 = [(FTStartSpeechRequest *)self initial_recognition_candidate_id];
  v93 = [(FTStartSpeechRequest *)self disable_auto_punctuation];
  v92 = [(FTStartSpeechRequest *)self keyboard_dictation];
  v53 = [(FTStartSpeechRequest *)self experiment_id];
  v54 = v53;
  if (!v53)
  {
    v53 = &stru_284834138;
  }

  v55 = [(__CFString *)v53 UTF8String];
  v56 = strlen(v55);
  v91 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v55, v56);

  v90 = [(FTStartSpeechRequest *)self speech_request_source];
  v57 = [(FTStartSpeechRequest *)self fork_id];
  v58 = v57;
  if (!v57)
  {
    v57 = &stru_284834138;
  }

  v59 = [(__CFString *)v57 UTF8String];
  v60 = strlen(v59);
  v61 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v59, v60);

  v62 = [(FTStartSpeechRequest *)self application_name];
  v63 = v62;
  if (!v62)
  {
    v62 = &stru_284834138;
  }

  v64 = [(__CFString *)v62 UTF8String];
  v65 = strlen(v64);
  v66 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v64, v65);

  v67 = [(FTStartSpeechRequest *)self metadata];
  v68 = v67;
  if (!v67)
  {
    v67 = &stru_284834138;
  }

  v69 = [(__CFString *)v67 UTF8String];
  v70 = strlen(v69);
  v71 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v69, v70);

  memset(&v127, 0, sizeof(v127));
  v72 = [(FTStartSpeechRequest *)self multi_user_parameters];
  std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::reserve(&v127, [v72 count]);

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v73 = [(FTStartSpeechRequest *)self multi_user_parameters];
  v74 = [v73 countByEnumeratingWithState:&v123 objects:v128 count:16];
  if (v74)
  {
    v75 = *v124;
    do
    {
      for (i = 0; i != v74; ++i)
      {
        if (*v124 != v75)
        {
          objc_enumerationMutation(v73);
        }

        v122 = [*(*(&v123 + 1) + 8 * i) addObjectToBuffer:a3];
        std::vector<apple::aiml::flatbuffers2::Offset<siri::speech::schema_fb::RecognitionToken>>::push_back[abi:ne200100](&v127.__begin_, &v122);
      }

      v74 = [v73 countByEnumeratingWithState:&v123 objects:v128 count:16];
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

  v78 = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateVector<apple::aiml::flatbuffers2::String>(a3, begin, v127.__end_ - v127.__begin_);
  v79 = [(FTStartSpeechRequest *)self initial_result_candidate_id];
  v80 = [(FTStartSpeechRequest *)self self_session_id];
  v81 = v80;
  if (!v80)
  {
    v80 = &stru_284834138;
  }

  v82 = [(__CFString *)v80 UTF8String];
  v83 = strlen(v82);
  LODWORD(v82) = apple::aiml::flatbuffers2::FlatBufferBuilder::CreateString(a3, v82, v83);

  *(a3 + 70) = 1;
  v84 = *(a3 + 8);
  v85 = *(a3 + 12);
  v86 = *(a3 + 10);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 4, String);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 6, v120);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 8, v119);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 10, v118);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 12, v117, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 14, v116, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 16, v115, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 18, v114);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 20, v113);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 22, v112);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 24, v111);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 26, v110, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 28, v109, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 30, v108, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 32, v107, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 34, v106);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 36, v105, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 38, v104, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 40, v103, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 42, v102, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 44, v101, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 46, v100, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned long long>(a3, 48, v99, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 50, v98, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 52, v97);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 54, v96);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 56, v95);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 58, v94, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 60, v93, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned char>(a3, 62, v92, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 64, v91);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 66, v90, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 68, v61);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 70, v66);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 72, v71);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 74, v78);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddElement<unsigned int>(a3, 76, v79, 0);
  apple::aiml::flatbuffers2::FlatBufferBuilder::AddOffset<apple::aiml::flatbuffers2::String>(a3, 78, v82);
  v87.var0 = apple::aiml::flatbuffers2::FlatBufferBuilder::EndTable(a3, v84 - v85 + v86);
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