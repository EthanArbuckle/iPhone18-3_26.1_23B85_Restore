@interface OPTTSMutableTextToSpeechVoiceResource
- (OPTTSMutableTextToSpeechVoiceResource)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)type;
- (void)data:(id)data;
- (void)setData:(id)data;
- (void)setType:(int64_t)type;
@end

@implementation OPTTSMutableTextToSpeechVoiceResource

- (void)data:(id)data
{
  dataCopy = data;
  data = [(OPTTSMutableTextToSpeechVoiceResource *)self data];
  bytes = [data bytes];
  data2 = [(OPTTSMutableTextToSpeechVoiceResource *)self data];
  dataCopy[2](dataCopy, bytes, [data2 length]);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setType:(int64_t)type
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechVoiceResource)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechVoiceResource;
  v2 = [(OPTTSMutableTextToSpeechVoiceResource *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end