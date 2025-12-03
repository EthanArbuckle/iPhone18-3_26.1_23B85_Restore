@interface FTMutableTokenProns
- (FTMutableTokenProns)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setNormalized_prons:(id)normalized_prons;
- (void)setOrthography:(id)orthography;
- (void)setProns:(id)prons;
- (void)setSanitized_sequences:(id)sanitized_sequences;
@end

@implementation FTMutableTokenProns

- (FTMutableTokenProns)init
{
  v6.receiver = self;
  v6.super_class = FTMutableTokenProns;
  v2 = [(FTMutableTokenProns *)&v6 init];
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

- (void)setOrthography:(id)orthography
{
  v4 = [orthography copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setSanitized_sequences:(id)sanitized_sequences
{
  v4 = [sanitized_sequences copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setProns:(id)prons
{
  v4 = [prons copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setNormalized_prons:(id)normalized_prons
{
  v4 = [normalized_prons copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end