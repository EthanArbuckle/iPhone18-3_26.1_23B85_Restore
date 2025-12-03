@interface OPTTSMutableTextToSpeechRequestMeta
- (OPTTSMutableTextToSpeechRequestMeta)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)channel_type;
- (void)setApp_id:(id)app_id;
- (void)setChannel_type:(int64_t)channel_type;
@end

@implementation OPTTSMutableTextToSpeechRequestMeta

- (void)setApp_id:(id)app_id
{
  v4 = [app_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setChannel_type:(int64_t)channel_type
{
  v4 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:channel_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)channel_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"channel_type"];
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

- (OPTTSMutableTextToSpeechRequestMeta)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestMeta;
  v2 = [(OPTTSMutableTextToSpeechRequestMeta *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end