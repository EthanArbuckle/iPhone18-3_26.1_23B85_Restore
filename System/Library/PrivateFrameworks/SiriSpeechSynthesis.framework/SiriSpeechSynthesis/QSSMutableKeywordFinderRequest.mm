@interface QSSMutableKeywordFinderRequest
- (BOOL)enable_sanitization;
- (QSSMutableKeywordFinderRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setKeywords:(id)keywords;
- (void)setLanguage:(id)language;
- (void)setRecognition_result:(id)recognition_result;
- (void)setSession_id:(id)session_id;
- (void)setSpeech_id:(id)speech_id;
@end

@implementation QSSMutableKeywordFinderRequest

- (BOOL)enable_sanitization
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_sanitization"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRecognition_result:(id)recognition_result
{
  v4 = [recognition_result copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setKeywords:(id)keywords
{
  v4 = [keywords copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setLanguage:(id)language
{
  v4 = [language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSpeech_id:(id)speech_id
{
  v4 = [speech_id copy];
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

- (QSSMutableKeywordFinderRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableKeywordFinderRequest;
  v2 = [(QSSMutableKeywordFinderRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end