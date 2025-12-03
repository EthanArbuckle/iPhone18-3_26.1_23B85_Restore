@interface OPTTSMutableTTSNormalizedText
- (OPTTSMutableTTSNormalizedText)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setText:(id)text;
@end

@implementation OPTTSMutableTTSNormalizedText

- (void)setText:(id)text
{
  v4 = [text copy];
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

- (OPTTSMutableTTSNormalizedText)init
{
  v6.receiver = self;
  v6.super_class = OPTTSMutableTTSNormalizedText;
  v2 = [(OPTTSMutableTTSNormalizedText *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end