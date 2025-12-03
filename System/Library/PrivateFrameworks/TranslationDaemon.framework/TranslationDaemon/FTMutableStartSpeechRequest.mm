@interface FTMutableStartSpeechRequest
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
- (FTMutableStartSpeechRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)start_audio_bookmark;
- (int)udm_port;
- (int64_t)codec;
- (int64_t)end_point_mode;
- (int64_t)speech_request_source;
- (unint64_t)start_endpointing_at;
- (unint64_t)start_recognition_at;
- (unsigned)initial_recognition_candidate_id;
- (unsigned)initial_result_candidate_id;
- (void)setApplication_name:(id)application_name;
- (void)setClient_endpointer_model_version:(id)client_endpointer_model_version;
- (void)setCodec:(int64_t)codec;
- (void)setDevice_os:(id)device_os;
- (void)setDevice_type:(id)device_type;
- (void)setEnd_point_mode:(int64_t)end_point_mode;
- (void)setExperiment_id:(id)experiment_id;
- (void)setFork_id:(id)fork_id;
- (void)setInitial_recognition_candidate_id:(unsigned int)initial_recognition_candidate_id;
- (void)setInitial_result_candidate_id:(unsigned int)initial_result_candidate_id;
- (void)setInput_origin:(id)input_origin;
- (void)setKeyboard_identifier:(id)keyboard_identifier;
- (void)setLanguage:(id)language;
- (void)setMetadata:(id)metadata;
- (void)setMic_type:(id)mic_type;
- (void)setMulti_user_parameters:(id)multi_user_parameters;
- (void)setRequest_locale:(id)request_locale;
- (void)setSelf_session_id:(id)self_session_id;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setSpeech_request_source:(int64_t)speech_request_source;
- (void)setStart_endpointing_at:(unint64_t)start_endpointing_at;
- (void)setStart_recognition_at:(unint64_t)start_recognition_at;
- (void)setTask_name:(id)task_name;
- (void)setUdm_host:(id)udm_host;
@end

@implementation FTMutableStartSpeechRequest

- (FTMutableStartSpeechRequest)init
{
  v6.receiver = self;
  v6.super_class = FTMutableStartSpeechRequest;
  v2 = [(FTMutableStartSpeechRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTask_name:(id)task_name
{
  v4 = [task_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)codec
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"codec"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setCodec:(int64_t)codec
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:codec];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)stream_results
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"stream_results"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enable_server_side_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_server_side_endpoint"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDevice_type:(id)device_type
{
  v4 = [device_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDevice_os:(id)device_os
{
  v4 = [device_os copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMic_type:(id)mic_type
{
  v4 = [mic_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUdm_host:(id)udm_host
{
  v4 = [udm_host copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)udm_port
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"udm_port"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)tandem_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"tandem_mode"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)store_audio
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"store_audio"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)stream_unstable_results
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"stream_unstable_results"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRequest_locale:(id)request_locale
{
  v4 = [request_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)end_point_mode
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"end_point_mode"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setEnd_point_mode:(int64_t)end_point_mode
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:end_point_mode];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)start_audio_bookmark
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_audio_bookmark"];
  intValue = [v2 intValue];

  return intValue;
}

- (BOOL)is_far_field
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_far_field"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enable_utterance_detection
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_utterance_detection"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)enable_endpoint_candidate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_endpoint_candidate"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unint64_t)start_recognition_at
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_recognition_at"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setStart_recognition_at:(unint64_t)start_recognition_at
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:start_recognition_at];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unint64_t)start_endpointing_at
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"start_endpointing_at"];
  unsignedLongValue = [v2 unsignedLongValue];

  return unsignedLongValue;
}

- (void)setStart_endpointing_at:(unint64_t)start_endpointing_at
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLong:start_endpointing_at];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)enable_hybrid_endpoint
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_hybrid_endpoint"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setClient_endpointer_model_version:(id)client_endpointer_model_version
{
  v4 = [client_endpointer_model_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKeyboard_identifier:(id)keyboard_identifier
{
  v4 = [keyboard_identifier copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setInput_origin:(id)input_origin
{
  v4 = [input_origin copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)initial_recognition_candidate_id
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"initial_recognition_candidate_id"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInitial_recognition_candidate_id:(unsigned int)initial_recognition_candidate_id
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:initial_recognition_candidate_id];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)disable_auto_punctuation
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_auto_punctuation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)keyboard_dictation
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"keyboard_dictation"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setExperiment_id:(id)experiment_id
{
  v4 = [experiment_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)speech_request_source
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"speech_request_source"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSpeech_request_source:(int64_t)speech_request_source
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:speech_request_source];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFork_id:(id)fork_id
{
  v4 = [fork_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApplication_name:(id)application_name
{
  v4 = [application_name copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMetadata:(id)metadata
{
  v4 = [metadata copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMulti_user_parameters:(id)multi_user_parameters
{
  v4 = [multi_user_parameters copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (unsigned)initial_result_candidate_id
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"initial_result_candidate_id"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setInitial_result_candidate_id:(unsigned int)initial_result_candidate_id
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:initial_result_candidate_id];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSelf_session_id:(id)self_session_id
{
  v4 = [self_session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end