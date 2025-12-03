@interface FTMutableSpeechTranslationServerEndpointFeatures
- (FTMutableSpeechTranslationServerEndpointFeatures)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setConversation_id:(id)conversation_id;
- (void)setRequest_id:(id)request_id;
- (void)setServer_endpoint_features:(id)server_endpoint_features;
- (void)setSource_locale:(id)source_locale;
@end

@implementation FTMutableSpeechTranslationServerEndpointFeatures

- (FTMutableSpeechTranslationServerEndpointFeatures)init
{
  v6.receiver = self;
  v6.super_class = FTMutableSpeechTranslationServerEndpointFeatures;
  v2 = [(FTMutableSpeechTranslationServerEndpointFeatures *)&v6 init];
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

- (void)setConversation_id:(id)conversation_id
{
  v4 = [conversation_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setRequest_id:(id)request_id
{
  v4 = [request_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSource_locale:(id)source_locale
{
  v4 = [source_locale copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setServer_endpoint_features:(id)server_endpoint_features
{
  v4 = [server_endpoint_features copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end