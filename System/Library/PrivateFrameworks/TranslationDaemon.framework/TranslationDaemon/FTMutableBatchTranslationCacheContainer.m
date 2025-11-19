@interface FTMutableBatchTranslationCacheContainer
- (BOOL)contains_masked_profanity;
- (FTMutableBatchTranslationCacheContainer)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int)sentence_count;
- (void)setRequest_id:(id)a3;
- (void)setSpans:(id)a3;
- (void)setTranslated_text:(id)a3;
- (void)setTranslated_text_romanized:(id)a3;
@end

@implementation FTMutableBatchTranslationCacheContainer

- (FTMutableBatchTranslationCacheContainer)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationCacheContainer;
  v2 = [(FTMutableBatchTranslationCacheContainer *)&v6 init];
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

- (void)setRequest_id:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_text:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpans:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)sentence_count
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sentence_count"];
  v3 = [v2 intValue];

  return v3;
}

- (void)setTranslated_text_romanized:(id)a3
{
  v4 = [a3 copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)contains_masked_profanity
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"contains_masked_profanity"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end