@interface QSSMutablePronChoice
- (QSSMutablePronChoice)init;
- (float)log_weight;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setLog_weight:(float)log_weight;
- (void)setPron_sequence:(id)pron_sequence;
@end

@implementation QSSMutablePronChoice

- (void)setLog_weight:(float)log_weight
{
  v5 = objc_alloc(MEMORY[0x277CCABB0]);
  *&v6 = log_weight;
  v7 = [v5 initWithFloat:v6];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (float)log_weight
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"log_weight"];
  [v2 floatValue];
  v4 = v3;

  return v4;
}

- (void)setPron_sequence:(id)pron_sequence
{
  v4 = [pron_sequence copy];
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

- (QSSMutablePronChoice)init
{
  v6.receiver = self;
  v6.super_class = QSSMutablePronChoice;
  v2 = [(QSSMutablePronChoice *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end