@interface FTMutableWord
- (FTMutableWord)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int)frequency;
- (void)pronunciations:(id)pronunciations;
- (void)setOrthography:(id)orthography;
- (void)setPronunciations:(id)pronunciations;
- (void)setTag:(id)tag;
@end

@implementation FTMutableWord

- (FTMutableWord)init
{
  v6.receiver = self;
  v6.super_class = FTMutableWord;
  v2 = [(FTMutableWord *)&v6 init];
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

- (void)setPronunciations:(id)pronunciations
{
  v4 = [pronunciations copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)pronunciations:(id)pronunciations
{
  pronunciationsCopy = pronunciations;
  pronunciations = [(FTMutableWord *)self pronunciations];
  bytes = [pronunciations bytes];
  pronunciations2 = [(FTMutableWord *)self pronunciations];
  pronunciationsCopy[2](pronunciationsCopy, bytes, [pronunciations2 length]);
}

- (int)frequency
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"frequency"];
  intValue = [v2 intValue];

  return intValue;
}

- (void)setTag:(id)tag
{
  v4 = [tag copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end