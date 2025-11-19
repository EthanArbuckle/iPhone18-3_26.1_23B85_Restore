@interface FTMutableTranslationOptions
- (BOOL)disable_payload_logging;
- (BOOL)enable_disambiguation_alternatives;
- (BOOL)mask_profanity;
- (FTMutableTranslationOptions)init;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FTMutableTranslationOptions

- (FTMutableTranslationOptions)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTranslationOptions;
  v2 = [(FTMutableTranslationOptions *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    storage = v2->super._storage;
    v2->super._storage = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(NSMutableDictionary *)self->super._storage copy];
  v6 = v4[1];
  v4[1] = v5;

  return v4;
}

- (BOOL)enable_disambiguation_alternatives
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"enable_disambiguation_alternatives"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)mask_profanity
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"mask_profanity"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)disable_payload_logging
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"disable_payload_logging"];
  v3 = [v2 BOOLValue];

  return v3;
}

@end