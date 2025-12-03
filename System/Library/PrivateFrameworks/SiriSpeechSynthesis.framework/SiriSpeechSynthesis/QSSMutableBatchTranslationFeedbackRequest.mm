@interface QSSMutableBatchTranslationFeedbackRequest
- (QSSMutableBatchTranslationFeedbackRequest)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setApp_id:(id)app_id;
- (void)setDevice_type:(id)device_type;
- (void)setErrors:(id)errors;
- (void)setOs_version:(id)os_version;
- (void)setSafari_version:(id)safari_version;
- (void)setSession_id:(id)session_id;
- (void)setSource_content:(id)source_content;
- (void)setSource_language:(id)source_language;
- (void)setTarget_language:(id)target_language;
- (void)setTranslated_content:(id)translated_content;
- (void)setUrl:(id)url;
@end

@implementation QSSMutableBatchTranslationFeedbackRequest

- (void)setDevice_type:(id)device_type
{
  v4 = [device_type copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setOs_version:(id)os_version
{
  v4 = [os_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setApp_id:(id)app_id
{
  v4 = [app_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSafari_version:(id)safari_version
{
  v4 = [safari_version copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTarget_language:(id)target_language
{
  v4 = [target_language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_language:(id)source_language
{
  v4 = [source_language copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSession_id:(id)session_id
{
  v4 = [session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setErrors:(id)errors
{
  v4 = [errors copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setUrl:(id)url
{
  v4 = [url copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setTranslated_content:(id)translated_content
{
  v4 = [translated_content copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_content:(id)source_content
{
  v4 = [source_content copy];
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

- (QSSMutableBatchTranslationFeedbackRequest)init
{
  v6.receiver = self;
  v6.super_class = QSSMutableBatchTranslationFeedbackRequest;
  v2 = [(QSSMutableBatchTranslationFeedbackRequest *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = dictionary;
  }

  return v2;
}

@end