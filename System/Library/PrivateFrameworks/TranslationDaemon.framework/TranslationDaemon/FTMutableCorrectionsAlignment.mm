@interface FTMutableCorrectionsAlignment
- (FTMutableCorrectionsAlignment)init;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setCorrected_words:(id)corrected_words;
- (void)setOriginal_words:(id)original_words;
@end

@implementation FTMutableCorrectionsAlignment

- (FTMutableCorrectionsAlignment)init
{
  v6.receiver = self;
  v6.super_class = FTMutableCorrectionsAlignment;
  v2 = [(FTMutableCorrectionsAlignment *)&v6 init];
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

- (void)setOriginal_words:(id)original_words
{
  v4 = [original_words copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setCorrected_words:(id)corrected_words
{
  v4 = [corrected_words copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end