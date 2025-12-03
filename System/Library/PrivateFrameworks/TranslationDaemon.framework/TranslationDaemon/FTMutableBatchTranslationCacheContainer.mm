@interface FTMutableBatchTranslationCacheContainer
- (BOOL)contains_masked_profanity;
- (FTMutableBatchTranslationCacheContainer)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)sentence_count;
- (void)setRequest_id:(id)request_id;
- (void)setSpans:(id)spans;
- (void)setTranslated_text:(id)translated_text;
- (void)setTranslated_text_romanized:(id)translated_text_romanized;
@end

@implementation FTMutableBatchTranslationCacheContainer

- (FTMutableBatchTranslationCacheContainer)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationCacheContainer;
  v2 = [(FTMutableBatchTranslationCacheContainer *)&v6 init];
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

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_text:(id)translated_text
{
  v4 = [translated_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpans:(id)spans
{
  v4 = [spans copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)sentence_count
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"sentence_count"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setTranslated_text_romanized:(id)translated_text_romanized
{
  v4 = [translated_text_romanized copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (BOOL)contains_masked_profanity
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"contains_masked_profanity"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

@end