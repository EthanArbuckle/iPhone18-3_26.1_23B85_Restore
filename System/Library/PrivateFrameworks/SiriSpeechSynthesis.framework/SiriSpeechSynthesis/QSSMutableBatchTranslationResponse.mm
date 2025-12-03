@interface QSSMutableBatchTranslationResponse
- (QSSMutableBatchTranslationResponse)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)return_code;
- (void)setParagraph_id:(id)paragraph_id;
- (void)setRequest_id:(id)request_id;
- (void)setReturn_string:(id)return_string;
- (void)setSpan:(id)span;
- (void)setTranslated_sentences:(id)translated_sentences;
- (void)setTranslated_text:(id)translated_text;
@end

@implementation QSSMutableBatchTranslationResponse

- (void)setTranslated_sentences:(id)translated_sentences
{
  v4 = [translated_sentences copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpan:(id)span
{
  v4 = [span copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_text:(id)translated_text
{
  v4 = [translated_text copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setParagraph_id:(id)paragraph_id
{
  v4 = [paragraph_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setReturn_string:(id)return_string
{
  v4 = [return_string copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int)return_code
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"return_code"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
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

- (QSSMutableBatchTranslationResponse)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationResponse;
  v2 = [(QSSMutableBatchTranslationResponse *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end