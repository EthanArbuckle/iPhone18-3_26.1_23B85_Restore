@interface VIACacheHitContextApplicationIdentifierMapper
- (id)updateBuilder:(id)builder withDictionary:(id)dictionary;
@end

@implementation VIACacheHitContextApplicationIdentifierMapper

- (id)updateBuilder:(id)builder withDictionary:(id)dictionary
{
  builderCopy = builder;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.cache_hit_context_key.application_id"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"com.apple.argos.cache_hit_context_key.application_id"];

    if (v8)
    {
      v9 = [builderCopy setApplicationIdentifer:v8];

      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = VIACacheHitContextMapperError(@"com.apple.argos.cache_hit_context_key.application_id", @"NSString");
LABEL_6:

  return v10;
}

@end