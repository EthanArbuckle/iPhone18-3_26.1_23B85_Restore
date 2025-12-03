@interface QSSMutableErrorBlamerRequest
- (QSSMutableErrorBlamerRequest)init;
- (double)latitude;
- (double)longitude;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setAudio_packets:(id)audio_packets;
- (void)setContextual_text:(id)contextual_text;
- (void)setLatitude:(double)latitude;
- (void)setLeft_context:(id)left_context;
- (void)setLongitude:(double)longitude;
- (void)setRef_transcript:(id)ref_transcript;
- (void)setRight_context:(id)right_context;
- (void)setStart_speech_request:(id)start_speech_request;
- (void)setUser_acoustic_profile:(id)user_acoustic_profile;
- (void)setUser_language_profile:(id)user_language_profile;
@end

@implementation QSSMutableErrorBlamerRequest

- (void)setRef_transcript:(id)ref_transcript
{
  v4 = [ref_transcript copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAudio_packets:(id)audio_packets
{
  v4 = [audio_packets copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLongitude:(double)longitude
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:longitude];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)longitude
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"longitude"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setLatitude:(double)latitude
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:latitude];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)latitude
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"latitude"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setUser_acoustic_profile:(id)user_acoustic_profile
{
  v4 = [user_acoustic_profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_language_profile:(id)user_language_profile
{
  v4 = [user_language_profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRight_context:(id)right_context
{
  v4 = [right_context copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLeft_context:(id)left_context
{
  v4 = [left_context copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContextual_text:(id)contextual_text
{
  v4 = [contextual_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStart_speech_request:(id)start_speech_request
{
  v4 = [start_speech_request copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableErrorBlamerRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableErrorBlamerRequest;
  v2 = [(QSSMutableErrorBlamerRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end