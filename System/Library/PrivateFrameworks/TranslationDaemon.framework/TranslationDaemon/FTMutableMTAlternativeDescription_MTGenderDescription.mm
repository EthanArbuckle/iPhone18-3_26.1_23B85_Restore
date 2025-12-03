@interface FTMutableMTAlternativeDescription_MTGenderDescription
- (FTMutableMTAlternativeDescription_MTGenderDescription)init;
- (id)copyWithZone:(_NSZone *)zone;
- (int64_t)default_gender;
- (int64_t)gender;
- (void)setDefault_gender:(int64_t)default_gender;
- (void)setGender:(int64_t)gender;
@end

@implementation FTMutableMTAlternativeDescription_MTGenderDescription

- (FTMutableMTAlternativeDescription_MTGenderDescription)init
{
  v6.receiver = self;
  v6.super_class = FTMutableMTAlternativeDescription_MTGenderDescription;
  v2 = [(FTMutableMTAlternativeDescription_MTGenderDescription *)&v6 init];
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

- (int64_t)gender
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"gender"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setGender:(int64_t)gender
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:gender];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)default_gender
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"default_gender"];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setDefault_gender:(int64_t)default_gender
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:default_gender];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end