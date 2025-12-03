@interface FTMutableMTAlternativeDescription
- (FTMutableMTAlternativeDescription)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)alternative_type;
- (void)setAlternative_type:(int64_t)alternative_type;
- (void)setGender_description:(id)gender_description;
- (void)setMeaning_description:(id)meaning_description;
@end

@implementation FTMutableMTAlternativeDescription

- (FTMutableMTAlternativeDescription)init
{
  v6.receiver = self;
  v6.super_class = FTMutableMTAlternativeDescription;
  v2 = [(FTMutableMTAlternativeDescription *)&v6 init];
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

- (int64_t)alternative_type
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"alternative_type"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAlternative_type:(int64_t)alternative_type
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:alternative_type];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setGender_description:(id)gender_description
{
  v4 = [gender_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (void)setMeaning_description:(id)meaning_description
{
  v4 = [meaning_description copy];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end