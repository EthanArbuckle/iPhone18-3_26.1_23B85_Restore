@interface FTMutableBatchTranslationRequest_Paragraph
- (FTMutableBatchTranslationRequest_Paragraph)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setParagraph_id:(id)paragraph_id;
- (void)setSpan:(id)span;
- (void)setText:(id)text;
@end

@implementation FTMutableBatchTranslationRequest_Paragraph

- (FTMutableBatchTranslationRequest_Paragraph)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationRequest_Paragraph;
  v2 = [(FTMutableBatchTranslationRequest_Paragraph *)&v6 init];
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

- (void)setParagraph_id:(id)paragraph_id
{
  v4 = [paragraph_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText:(id)text
{
  v4 = [text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpan:(id)span
{
  v4 = [span copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end