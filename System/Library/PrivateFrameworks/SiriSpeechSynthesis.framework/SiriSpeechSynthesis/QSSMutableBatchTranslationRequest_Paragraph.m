@interface QSSMutableBatchTranslationRequest_Paragraph
- (QSSMutableBatchTranslationRequest_Paragraph)init;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setParagraph_id:(id)a3;
- (void)setSpan:(id)a3;
- (void)setText:(id)a3;
@end

@implementation QSSMutableBatchTranslationRequest_Paragraph

- (void)setSpan:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setText:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setParagraph_id:(id)a3
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

- (QSSMutableBatchTranslationRequest_Paragraph)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationRequest_Paragraph;
  v2 = [(QSSMutableBatchTranslationRequest_Paragraph *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

@end