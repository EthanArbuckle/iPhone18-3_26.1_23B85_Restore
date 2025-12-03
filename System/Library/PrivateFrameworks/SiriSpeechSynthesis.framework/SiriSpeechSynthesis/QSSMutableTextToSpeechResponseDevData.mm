@interface QSSMutableTextToSpeechResponseDevData
- (BOOL)has_click;
- (QSSMutableTextToSpeechResponseDevData)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLog:(id)log;
- (void)setServer_info:(id)server_info;
- (void)setWorker_process_type:(id)worker_process_type;
@end

@implementation QSSMutableTextToSpeechResponseDevData

- (void)setWorker_process_type:(id)worker_process_type
{
  v4 = [worker_process_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)has_click
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_click"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setServer_info:(id)server_info
{
  v4 = [server_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLog:(id)log
{
  v4 = [log copy];
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

- (QSSMutableTextToSpeechResponseDevData)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechResponseDevData;
  v2 = [(QSSMutableTextToSpeechResponseDevData *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end