@interface QSSMutableTextToSpeechResponseDevData
- (BOOL)has_click;
- (QSSMutableTextToSpeechResponseDevData)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setLog:(id)a3;
- (void)setServer_info:(id)a3;
- (void)setWorker_process_type:(id)a3;
@end

@implementation QSSMutableTextToSpeechResponseDevData

- (void)setWorker_process_type:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)has_click
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_click"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setServer_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLog:(id)a3
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

- (QSSMutableTextToSpeechResponseDevData)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechResponseDevData;
  v2 = [(QSSMutableTextToSpeechResponseDevData *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end