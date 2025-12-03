@interface FTMutableUpdatedAcousticProfile
- (FTMutableUpdatedAcousticProfile)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setReturn_str:(id)return_str;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
- (void)setUpdated_acoustic_profile:(id)updated_acoustic_profile;
@end

@implementation FTMutableUpdatedAcousticProfile

- (FTMutableUpdatedAcousticProfile)init
{
  v6.receiver = self;
  v6.super_class = FTMutableUpdatedAcousticProfile;
  v2 = [(FTMutableUpdatedAcousticProfile *)&v6 init];
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

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setReturn_str:(id)return_str
{
  v4 = [return_str copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUpdated_acoustic_profile:(id)updated_acoustic_profile
{
  v4 = [updated_acoustic_profile copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end