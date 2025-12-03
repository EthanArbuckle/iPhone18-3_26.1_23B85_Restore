@interface OPTTSMutableTextToSpeechMeta
- (OPTTSMutableTextToSpeechMeta)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setResource:(id)resource;
- (void)setVoice:(id)voice;
@end

@implementation OPTTSMutableTextToSpeechMeta

- (void)setResource:(id)resource
{
  v4 = [resource copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setVoice:(id)voice
{
  v4 = [voice copy];
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

- (OPTTSMutableTextToSpeechMeta)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTextToSpeechMeta;
  v2 = [(OPTTSMutableTextToSpeechMeta *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end