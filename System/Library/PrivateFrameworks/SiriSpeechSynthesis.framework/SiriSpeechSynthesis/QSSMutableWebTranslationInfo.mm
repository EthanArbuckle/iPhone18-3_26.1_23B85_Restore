@interface QSSMutableWebTranslationInfo
- (QSSMutableWebTranslationInfo)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSpans:(id)spans;
- (void)setText:(id)text;
@end

@implementation QSSMutableWebTranslationInfo

- (void)setSpans:(id)spans
{
  v4 = [spans copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

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

- (QSSMutableWebTranslationInfo)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableWebTranslationInfo;
  v2 = [(QSSMutableWebTranslationInfo *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end