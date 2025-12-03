@interface FTMutableBatchTranslationResponse
- (BOOL)contains_masked_profanity;
- (FTMutableBatchTranslationResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setParagraph_id:(id)paragraph_id;
- (void)setRequest_id:(id)request_id;
- (void)setReturn_string:(id)return_string;
- (void)setSpan:(id)span;
- (void)setTranslated_sentences:(id)translated_sentences;
- (void)setTranslated_text:(id)translated_text;
- (void)setTranslated_text_romanized:(id)translated_text_romanized;
@end

@implementation FTMutableBatchTranslationResponse

- (FTMutableBatchTranslationResponse)init
{
  v6.receiver = self;
  v6.super_class = FTMutableBatchTranslationResponse;
  v2 = [(FTMutableBatchTranslationResponse *)&v6 init];
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

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setReturn_string:(id)return_string
{
  v4 = [return_string copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setParagraph_id:(id)paragraph_id
{
  v4 = [paragraph_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_text:(id)translated_text
{
  v4 = [translated_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpan:(id)span
{
  v4 = [span copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_sentences:(id)translated_sentences
{
  v4 = [translated_sentences copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
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