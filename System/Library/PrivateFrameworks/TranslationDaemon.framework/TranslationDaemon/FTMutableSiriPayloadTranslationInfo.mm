@interface FTMutableSiriPayloadTranslationInfo
- (FTMutableSiriPayloadTranslationInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setPost_itn_payload:(id)post_itn_payload;
- (void)setPre_itn_payload:(id)pre_itn_payload;
- (void)setPre_sausage_payload:(id)pre_sausage_payload;
@end

@implementation FTMutableSiriPayloadTranslationInfo

- (FTMutableSiriPayloadTranslationInfo)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSiriPayloadTranslationInfo;
  v2 = [(FTMutableSiriPayloadTranslationInfo *)&v6 init];
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

- (void)setPre_itn_payload:(id)pre_itn_payload
{
  v4 = [pre_itn_payload copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_payload:(id)post_itn_payload
{
  v4 = [post_itn_payload copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_sausage_payload:(id)pre_sausage_payload
{
  v4 = [pre_sausage_payload copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end