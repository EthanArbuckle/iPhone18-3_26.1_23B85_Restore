@interface FTMutableTextToSpeechResponseDevData
- (BOOL)has_click;
- (FTMutableTextToSpeechResponseDevData)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)engine_error_code;
- (void)setEngine_error_message:(id)a3;
- (void)setLog:(id)a3;
- (void)setServer_info:(id)a3;
- (void)setWorker_process_type:(id)a3;
@end

@implementation FTMutableTextToSpeechResponseDevData

- (FTMutableTextToSpeechResponseDevData)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechResponseDevData;
  v2 = [(FTMutableTextToSpeechResponseDevData *)&v6 init];
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

- (void)setLog:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setServer_info:(id)a3
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

- (void)setWorker_process_type:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)engine_error_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"engine_error_code"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setEngine_error_message:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end