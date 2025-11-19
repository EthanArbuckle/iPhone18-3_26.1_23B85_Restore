@interface FTMutableMTAlternativeDescription_MTGenderDescription
- (FTMutableMTAlternativeDescription_MTGenderDescription)init;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)default_gender;
- (int64_t)gender;
- (void)setDefault_gender:(int64_t)a3;
- (void)setGender:(int64_t)a3;
@end

@implementation FTMutableMTAlternativeDescription_MTGenderDescription

- (FTMutableMTAlternativeDescription_MTGenderDescription)init
{
  v6.receiver = self;
  v6.super_class = FTMutableMTAlternativeDescription_MTGenderDescription;
  v2 = [(FTMutableMTAlternativeDescription_MTGenderDescription *)&v6 init];
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

- (int64_t)gender
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"gender"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setGender:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

- (int64_t)default_gender
{
  v2 = [(NSMutableDictionary *)self->super._storage objectForKeyedSubscript:@"default_gender"];
  v3 = [v2 integerValue];

  return v3;
}

- (void)setDefault_gender:(int64_t)a3
{
  v4 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:a3];
  [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
}

@end