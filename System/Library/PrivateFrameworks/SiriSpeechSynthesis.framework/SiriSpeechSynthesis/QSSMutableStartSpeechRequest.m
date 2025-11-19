@interface QSSMutableStartSpeechRequest
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
- (QSSMutableStartSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)start_audio_bookmark;
- (int)udm_port;
- (int64_t)codec;
- (int64_t)end_point_mode;
- (int64_t)speech_request_source;
- (unint64_t)start_endpointing_at;
- (unint64_t)start_recognition_at;
- (unsigned)initial_recognition_candidate_id;
- (void)setApplication_name:(id)a3;
- (void)setClient_endpointer_model_version:(id)a3;
- (void)setCodec:(int64_t)a3;
- (void)setDevice_os:(id)a3;
- (void)setDevice_type:(id)a3;
- (void)setEnd_point_mode:(int64_t)a3;
- (void)setExperiment_id:(id)a3;
- (void)setFork_id:(id)a3;
- (void)setInitial_recognition_candidate_id:(unsigned int)a3;
- (void)setInput_origin:(id)a3;
- (void)setKeyboard_identifier:(id)a3;
- (void)setLanguage:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setMic_type:(id)a3;
- (void)setRequest_locale:(id)a3;
- (void)setSession_id:(id)a3;
- (void)setSpeech_id:(id)a3;
- (void)setSpeech_request_source:(int64_t)a3;
- (void)setStart_endpointing_at:(unint64_t)a3;
- (void)setStart_recognition_at:(unint64_t)a3;
- (void)setTask_name:(id)a3;
- (void)setUdm_host:(id)a3;
@end

@implementation QSSMutableStartSpeechRequest

- (void)setMetadata:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApplication_name:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFork_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_request_source:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)speech_request_source
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_request_source"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setExperiment_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)keyboard_dictation
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"keyboard_dictation"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)disable_auto_punctuation
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_auto_punctuation"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setInitial_recognition_candidate_id:(unsigned int)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)initial_recognition_candidate_id
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"initial_recognition_candidate_id"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setInput_origin:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKeyboard_identifier:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setClient_endpointer_model_version:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_hybrid_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_hybrid_endpoint"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setStart_endpointing_at:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)start_endpointing_at
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_endpointing_at"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (void)setStart_recognition_at:(unint64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)start_recognition_at
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_recognition_at"];
  v3 = [v2 unsignedLongValue];

  return v3;
}

- (BOOL)enable_endpoint_candidate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_endpoint_candidate"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)enable_utterance_detection
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_utterance_detection"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)is_far_field
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_far_field"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)start_audio_bookmark
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_audio_bookmark"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setEnd_point_mode:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)end_point_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_point_mode"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setRequest_locale:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)stream_unstable_results
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"stream_unstable_results"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)store_audio
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"store_audio"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)tandem_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"tandem_mode"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (int)udm_port
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"udm_port"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setUdm_host:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMic_type:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_os:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_type:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_server_side_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_server_side_endpoint"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)stream_results
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"stream_results"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setCodec:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)codec
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"codec"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setTask_name:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableStartSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableStartSpeechRequest;
  v2 = [(QSSMutableStartSpeechRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end