@interface FTMutableTextToSpeechMeta
- (FTMutableTextToSpeechMeta)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setResource:(id)a3;
- (void)setServer_info:(id)a3;
- (void)setVoice:(id)a3;
@end

@implementation FTMutableTextToSpeechMeta

- (FTMutableTextToSpeechMeta)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechMeta;
  v2 = [(FTMutableTextToSpeechMeta *)&v6 init];
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

- (void)setVoice:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setResource:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setServer_info:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end