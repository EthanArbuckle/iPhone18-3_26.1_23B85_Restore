@interface SCDAFBoost
+ (id)arrayDictionaryRepresentation:(id)a3;
+ (id)boostsArrayWithDictionaryRepresentation:(id)a3;
- (SCDAFBoost)initWithCoder:(id)a3;
- (SCDAFBoost)initWithDictionaryRepresentation:(id)a3;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCDAFBoost

- (SCDAFBoost)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boostKind"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"boostValue"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"currentDecay"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDecay"];

  v10 = objc_alloc_init(SCDAFBoost);
  -[SCDAFBoost setType:](v10, "setType:", [v5 integerValue]);
  -[SCDAFBoost setKind:](v10, "setKind:", [v6 integerValue]);
  [v7 floatValue];
  [(SCDAFBoost *)v10 setBoostValue:v11];
  -[SCDAFBoost setCurrentDecay:](v10, "setCurrentDecay:", [v8 longLongValue]);
  -[SCDAFBoost setTotalDecay:](v10, "setTotalDecay:", [v9 longLongValue]);

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  v6 = a3;
  v7 = [v4 numberWithInteger:type];
  [v6 encodeObject:v7 forKey:@"type"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_kind];
  [v6 encodeObject:v8 forKey:@"boostKind"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_boostValue];
  [v6 encodeObject:v9 forKey:@"boostValue"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentDecay];
  [v6 encodeObject:v10 forKey:@"currentDecay"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDecay];
  [v6 encodeObject:v11 forKey:@"totalDecay"];
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCDAFBoost type](self, "type")}];
  [v3 setObject:v4 forKeyedSubscript:@"type"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCDAFBoost kind](self, "kind")}];
  [v3 setObject:v5 forKeyedSubscript:@"boostKind"];

  v6 = MEMORY[0x277CCABB0];
  [(SCDAFBoost *)self boostValue];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"boostValue"];

  v8 = MEMORY[0x277CCABB0];
  [(SCDAFBoost *)self currentDecay];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"currentDecay"];

  v10 = MEMORY[0x277CCABB0];
  [(SCDAFBoost *)self totalDecay];
  v11 = [v10 numberWithDouble:?];
  [v3 setObject:v11 forKeyedSubscript:@"totalDecay"];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v3];

  return v12;
}

- (SCDAFBoost)initWithDictionaryRepresentation:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = SCDAFBoost;
  v5 = [(SCDAFBoost *)&v13 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [v4 objectForKeyedSubscript:@"boostKind"];
    v5->_kind = [v7 integerValue];

    v8 = [v4 objectForKeyedSubscript:@"boostValue"];
    [v8 floatValue];
    v5->_boostValue = v9;

    v10 = [v4 objectForKeyedSubscript:@"currentDecay"];
    v5->_currentDecay = [v10 longLongValue];

    v11 = [v4 objectForKeyedSubscript:@"totalDecay"];
    v5->_totalDecay = [v11 longLongValue];
  }

  return v5;
}

+ (id)boostsArrayWithDictionaryRepresentation:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SCDAFBoost_boostsArrayWithDictionaryRepresentation___block_invoke;
  v8[3] = &unk_279BD9E30;
  v6 = v5;
  v9 = v6;
  [v4 enumerateObjectsUsingBlock:v8];

  return v6;
}

void __54__SCDAFBoost_boostsArrayWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SCDAFBoost alloc] initWithDictionaryRepresentation:v3];

  [*(a1 + 32) addObject:v4];
}

+ (id)arrayDictionaryRepresentation:(id)a3
{
  v3 = MEMORY[0x277CBEB18];
  v4 = a3;
  v5 = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SCDAFBoost_arrayDictionaryRepresentation___block_invoke;
  v9[3] = &unk_279BD9E08;
  v10 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:v9];

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v6];

  return v7;
}

uint64_t __44__SCDAFBoost_arrayDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryRepresentation];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

@end