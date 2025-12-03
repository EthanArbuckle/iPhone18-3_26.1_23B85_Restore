@interface OPTTSMutableTextToSpeechRequestProsodyTransferConfig
- (OPTTSMutableTextToSpeechRequestProsodyTransferConfig)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setUser_voice_profile:(id)user_voice_profile;
- (void)setUser_voice_profile_url:(id)user_voice_profile_url;
- (void)setWave_data:(id)wave_data;
@end

@implementation OPTTSMutableTextToSpeechRequestProsodyTransferConfig

- (void)setUser_voice_profile_url:(id)user_voice_profile_url
{
  v4 = [user_voice_profile_url copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUser_voice_profile:(id)user_voice_profile
{
  v4 = [user_voice_profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setWave_data:(id)wave_data
{
  v4 = [wave_data copy];
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

- (OPTTSMutableTextToSpeechRequestProsodyTransferConfig)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechRequestProsodyTransferConfig;
  v2 = [(OPTTSMutableTextToSpeechRequestProsodyTransferConfig *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end