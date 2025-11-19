@interface QSSMutableTextToSpeechRequestMeta
- (BOOL)is_synthesis;
- (QSSMutableTextToSpeechRequestMeta)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)channel_type;
- (void)setApp_id:(id)a3;
- (void)setChannel_type:(int64_t)a3;
@end

@implementation QSSMutableTextToSpeechRequestMeta

- (BOOL)is_synthesis
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"is_synthesis"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setApp_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setChannel_type:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)channel_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"channel_type"];
  v3 = [v2 integerValue];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableTextToSpeechRequestMeta)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechRequestMeta;
  v2 = [(QSSMutableTextToSpeechRequestMeta *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end