@interface FTMutableTextToSpeechCacheContainerStreamingV2
- (FTMutableTextToSpeechCacheContainerStreamingV2)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCached_begin_response:(id)cached_begin_response;
- (void)setCached_final_response:(id)cached_final_response;
- (void)setCached_partial_response:(id)cached_partial_response;
- (void)setCached_request:(id)cached_request;
- (void)setOriginal_session_id:(id)original_session_id;
@end

@implementation FTMutableTextToSpeechCacheContainerStreamingV2

- (FTMutableTextToSpeechCacheContainerStreamingV2)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTextToSpeechCacheContainerStreamingV2;
  v2 = [(FTMutableTextToSpeechCacheContainerStreamingV2 *)&v6 init];
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

- (void)setOriginal_session_id:(id)original_session_id
{
  v4 = [original_session_id copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCached_request:(id)cached_request
{
  v4 = [cached_request copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCached_begin_response:(id)cached_begin_response
{
  v4 = [cached_begin_response copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCached_partial_response:(id)cached_partial_response
{
  v4 = [cached_partial_response copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCached_final_response:(id)cached_final_response
{
  v4 = [cached_final_response copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end