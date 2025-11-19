@interface QSSMutableErrorBlamerRequest
- (QSSMutableErrorBlamerRequest)init;
- (double)latitude;
- (double)longitude;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAudio_packets:(id)a3;
- (void)setContextual_text:(id)a3;
- (void)setLatitude:(double)a3;
- (void)setLeft_context:(id)a3;
- (void)setLongitude:(double)a3;
- (void)setRef_transcript:(id)a3;
- (void)setRight_context:(id)a3;
- (void)setStart_speech_request:(id)a3;
- (void)setUser_acoustic_profile:(id)a3;
- (void)setUser_language_profile:(id)a3;
@end

@implementation QSSMutableErrorBlamerRequest

- (void)setRef_transcript:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setAudio_packets:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLongitude:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)longitude
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"longitude"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setLatitude:(double)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (double)latitude
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"latitude"];
  [v2 doubleValue];
  v4 = v3;

  return v4;
}

- (void)setUser_acoustic_profile:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_language_profile:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRight_context:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLeft_context:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setContextual_text:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setStart_speech_request:(id)a3
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

- (QSSMutableErrorBlamerRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableErrorBlamerRequest;
  v2 = [(QSSMutableErrorBlamerRequest *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end