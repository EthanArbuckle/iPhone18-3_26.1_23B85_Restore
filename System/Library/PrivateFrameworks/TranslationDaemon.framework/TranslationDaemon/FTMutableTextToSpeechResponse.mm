@interface FTMutableTextToSpeechResponse
- (FTMutableTextToSpeechResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)error_code;
- (int)sample_rate;
- (int64_t)audio_type;
- (void)audio:(id)audio;
- (void)setAudio:(id)audio;
- (void)setAudio_type:(int64_t)audio_type;
- (void)setDecoder_description:(id)decoder_description;
- (void)setDev_data:(id)dev_data;
- (void)setError_str:(id)error_str;
- (void)setFeature:(id)feature;
- (void)setMeta_info:(id)meta_info;
- (void)setPlayback_description:(id)playback_description;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setWord_timing_info:(id)word_timing_info;
@end

@implementation FTMutableTextToSpeechResponse

- (FTMutableTextToSpeechResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechResponse;
  v2 = [(FTMutableTextToSpeechResponse *)&v6 init];
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

- (int)error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"error_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setError_str:(id)error_str
{
  v4 = [error_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)audio_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"audio_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAudio_type:(int64_t)audio_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:audio_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)sample_rate
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sample_rate"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setAudio:(id)audio
{
  v4 = [audio copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)audio:(id)audio
{
  audioCopy = audio;
  audio = [(FTMutableTextToSpeechResponse *)self audio];
  bytes = [audio bytes];
  audio2 = [(FTMutableTextToSpeechResponse *)self audio];
  audioCopy[2](audioCopy, bytes, [audio2 length]);
}

- (void)setDecoder_description:(id)decoder_description
{
  v4 = [decoder_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPlayback_description:(id)playback_description
{
  v4 = [playback_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWord_timing_info:(id)word_timing_info
{
  v4 = [word_timing_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMeta_info:(id)meta_info
{
  v4 = [meta_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setFeature:(id)feature
{
  v4 = [feature copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDev_data:(id)dev_data
{
  v4 = [dev_data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end