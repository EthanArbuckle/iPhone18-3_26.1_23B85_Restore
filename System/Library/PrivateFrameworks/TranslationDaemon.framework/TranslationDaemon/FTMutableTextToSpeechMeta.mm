@interface FTMutableTextToSpeechMeta
- (FTMutableTextToSpeechMeta)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setResource:(id)resource;
- (void)setServer_info:(id)server_info;
- (void)setVoice:(id)voice;
@end

@implementation FTMutableTextToSpeechMeta

- (FTMutableTextToSpeechMeta)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechMeta;
  v2 = [(FTMutableTextToSpeechMeta *)&v6 init];
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

- (void)setVoice:(id)voice
{
  v4 = [voice copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setResource:(id)resource
{
  v4 = [resource copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setServer_info:(id)server_info
{
  v4 = [server_info copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end