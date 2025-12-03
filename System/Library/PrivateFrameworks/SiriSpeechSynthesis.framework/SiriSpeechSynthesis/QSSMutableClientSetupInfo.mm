@interface QSSMutableClientSetupInfo
- (BOOL)endpoint_extra_delay;
- (QSSMutableClientSetupInfo)init;
- (float)endpoint_threshold;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setEndpoint_threshold:(float)endpoint_threshold;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutableClientSetupInfo

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)endpoint_extra_delay
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"endpoint_extra_delay"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setEndpoint_threshold:(float)endpoint_threshold
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = endpoint_threshold;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)endpoint_threshold
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"endpoint_threshold"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (QSSMutableClientSetupInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableClientSetupInfo;
  v2 = [(QSSMutableClientSetupInfo *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end