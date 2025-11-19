@interface VIACacheHitContextQueryIDMapper
- (id)updateBuilder:(id)a3 withDictionary:(id)a4;
@end

@implementation VIACacheHitContextQueryIDMapper

- (id)updateBuilder:(id)a3 withDictionary:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"com.apple.argos.cache_hit_context_key.query_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 objectForKeyedSubscript:@"com.apple.argos.cache_hit_context_key.query_id"];

    if (v8)
    {
      v9 = [v5 setQueryID:{objc_msgSend(v8, "unsignedLongLongValue")}];

      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = VIACacheHitContextMapperError(@"com.apple.argos.cache_hit_context_key.query_id", @"NSNumber");
LABEL_6:

  return v10;
}

@end