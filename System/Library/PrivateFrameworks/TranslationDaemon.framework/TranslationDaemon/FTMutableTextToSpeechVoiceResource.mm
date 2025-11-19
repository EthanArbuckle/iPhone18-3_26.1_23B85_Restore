@interface FTMutableTextToSpeechVoiceResource
- (FTMutableTextToSpeechVoiceResource)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)type;
- (void)data:(id)a3;
- (void)setData:(id)a3;
- (void)setType:(int64_t)a3;
@end

@implementation FTMutableTextToSpeechVoiceResource

- (FTMutableTextToSpeechVoiceResource)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechVoiceResource;
  v2 = [(FTMutableTextToSpeechVoiceResource *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (int64_t)type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"type"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setType:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setData:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)data:(id)a3
{
  v7 = a3;
  v4 = [(FTMutableTextToSpeechVoiceResource *)self data];
  v5 = [v4 bytes];
  v6 = [(FTMutableTextToSpeechVoiceResource *)self data];
  v7[2](v7, v5, [v6 length]);
}

@end