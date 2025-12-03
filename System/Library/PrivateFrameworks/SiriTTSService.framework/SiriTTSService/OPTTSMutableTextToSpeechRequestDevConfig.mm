@interface OPTTSMutableTextToSpeechRequestDevConfig
- (BOOL)return_log;
- (BOOL)return_server_info;
- (OPTTSMutableTextToSpeechRequestDevConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setResource_asset_path:(id)resource_asset_path;
- (void)setVoice_asset_path:(id)voice_asset_path;
@end

@implementation OPTTSMutableTextToSpeechRequestDevConfig

- (BOOL)return_server_info
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_server_info"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setResource_asset_path:(id)resource_asset_path
{
  v4 = [resource_asset_path copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVoice_asset_path:(id)voice_asset_path
{
  v4 = [voice_asset_path copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)return_log
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_log"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (OPTTSMutableTextToSpeechRequestDevConfig)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestDevConfig;
  v2 = [(OPTTSMutableTextToSpeechRequestDevConfig *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end