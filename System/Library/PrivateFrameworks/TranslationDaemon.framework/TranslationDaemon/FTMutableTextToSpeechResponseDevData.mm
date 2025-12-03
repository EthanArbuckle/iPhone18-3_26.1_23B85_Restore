@interface FTMutableTextToSpeechResponseDevData
- (BOOL)has_click;
- (FTMutableTextToSpeechResponseDevData)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)engine_error_code;
- (void)setEngine_error_message:(id)engine_error_message;
- (void)setLog:(id)log;
- (void)setServer_info:(id)server_info;
- (void)setWorker_process_type:(id)worker_process_type;
@end

@implementation FTMutableTextToSpeechResponseDevData

- (FTMutableTextToSpeechResponseDevData)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechResponseDevData;
  v2 = [(FTMutableTextToSpeechResponseDevData *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (void)setLog:(id)log
{
  v4 = [log copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setServer_info:(id)server_info
{
  v4 = [server_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)has_click
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"has_click"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setWorker_process_type:(id)worker_process_type
{
  v4 = [worker_process_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)engine_error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"engine_error_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setEngine_error_message:(id)engine_error_message
{
  v4 = [engine_error_message copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end