@interface VIACacheHitContextCachedResultQueryIDMapper
- (id)updateBuilder:(id)builder withDictionary:(id)dictionary;
@end

@implementation VIACacheHitContextCachedResultQueryIDMapper

- (id)updateBuilder:(id)builder withDictionary:(id)dictionary
{
  builderCopy = builder;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.cache_hit_context_key.cached_result_query_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.cache_hit_context_key.cached_result_query_id"];

    if (v8)
    {
      v9 = [builderCopy setCachedResultQueryID:{objc_msgSend(v8, "unsignedLongLongValue")}];

      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = VIACacheHitContextMapperError(@"com.apple.argos.cache_hit_context_key.cached_result_query_id", @"NSNumber");
LABEL_6:

  return v10;
}

@end