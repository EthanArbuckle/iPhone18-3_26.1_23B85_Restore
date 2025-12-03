@interface QSSMutableTextToSpeechRequest_ContextInfoEntry
- (QSSMutableTextToSpeechRequest_ContextInfoEntry)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKey:(id)key;
- (void)setValue:(id)value;
@end

@implementation QSSMutableTextToSpeechRequest_ContextInfoEntry

- (void)setValue:(id)value
{
  v4 = [value copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKey:(id)key
{
  v4 = [key copy];
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

- (QSSMutableTextToSpeechRequest_ContextInfoEntry)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableTextToSpeechRequest_ContextInfoEntry;
  v2 = [(QSSMutableTextToSpeechRequest_ContextInfoEntry *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end