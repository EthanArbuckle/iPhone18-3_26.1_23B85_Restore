@interface QSSMutableRequestStatsResponse
- (QSSMutableRequestStatsResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setBool_stats:(id)bool_stats;
- (void)setDouble_stats:(id)double_stats;
- (void)setInt32_stats:(id)int32_stats;
- (void)setLanguage:(id)language;
- (void)setRequest_locale:(id)request_locale;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutableRequestStatsResponse

- (void)setRequest_locale:(id)request_locale
{
  v4 = [request_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setDouble_stats:(id)double_stats
{
  v4 = [double_stats copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setInt32_stats:(id)int32_stats
{
  v4 = [int32_stats copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setBool_stats:(id)bool_stats
{
  v4 = [bool_stats copy];
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

- (QSSMutableRequestStatsResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableRequestStatsResponse;
  v2 = [(QSSMutableRequestStatsResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end