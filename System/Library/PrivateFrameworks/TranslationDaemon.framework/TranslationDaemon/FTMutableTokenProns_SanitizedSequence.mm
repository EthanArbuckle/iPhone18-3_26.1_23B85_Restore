@interface FTMutableTokenProns_SanitizedSequence
- (FTMutableTokenProns_SanitizedSequence)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSanitized_tokens:(id)sanitized_tokens;
@end

@implementation FTMutableTokenProns_SanitizedSequence

- (FTMutableTokenProns_SanitizedSequence)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTokenProns_SanitizedSequence;
  v2 = [(FTMutableTokenProns_SanitizedSequence *)&v6 init];
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

- (void)setSanitized_tokens:(id)sanitized_tokens
{
  v4 = [sanitized_tokens copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end