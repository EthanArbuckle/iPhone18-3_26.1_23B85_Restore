@interface QSSMutableTextToSpeechVoiceResource
- (QSSMutableTextToSpeechVoiceResource)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)type;
- (void)data:(id)data;
- (void)setData:(id)data;
- (void)setType:(int64_t)type;
@end

@implementation QSSMutableTextToSpeechVoiceResource

- (void)data:(id)data
{
  dataCopy = data;
  data = [(QSSMutableTextToSpeechVoiceResource *)self data];
  bytes = [data bytes];
  data2 = [(QSSMutableTextToSpeechVoiceResource *)self data];
  dataCopy[2](dataCopy, bytes, [data2 length]);
}

- (void)setData:(id)data
{
  v4 = [data copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setType:(int64_t)type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:type];
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

- (QSSMutableTextToSpeechVoiceResource)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechVoiceResource;
  v2 = [(QSSMutableTextToSpeechVoiceResource *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end