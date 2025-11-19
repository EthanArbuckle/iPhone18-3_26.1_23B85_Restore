@interface FTMutableTextToSpeechRequestDevConfig
- (BOOL)return_log;
- (BOOL)return_server_info;
- (FTMutableTextToSpeechRequestDevConfig)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setResource_asset_path:(id)a3;
- (void)setVoice_asset_path:(id)a3;
@end

@implementation FTMutableTextToSpeechRequestDevConfig

- (FTMutableTextToSpeechRequestDevConfig)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechRequestDevConfig;
  v2 = [(FTMutableTextToSpeechRequestDevConfig *)&v6 init];
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

- (BOOL)return_log
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_log"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setVoice_asset_path:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setResource_asset_path:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)return_server_info
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_server_info"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end