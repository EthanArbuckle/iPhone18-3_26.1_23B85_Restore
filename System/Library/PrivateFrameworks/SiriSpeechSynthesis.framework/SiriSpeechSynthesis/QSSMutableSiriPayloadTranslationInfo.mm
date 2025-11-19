@interface QSSMutableSiriPayloadTranslationInfo
- (QSSMutableSiriPayloadTranslationInfo)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setPost_itn_payload:(id)a3;
- (void)setPre_itn_payload:(id)a3;
- (void)setPre_sausage_payload:(id)a3;
@end

@implementation QSSMutableSiriPayloadTranslationInfo

- (void)setPre_sausage_payload:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPost_itn_payload:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setPre_itn_payload:(id)a3
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

- (QSSMutableSiriPayloadTranslationInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableSiriPayloadTranslationInfo;
  v2 = [(QSSMutableSiriPayloadTranslationInfo *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end