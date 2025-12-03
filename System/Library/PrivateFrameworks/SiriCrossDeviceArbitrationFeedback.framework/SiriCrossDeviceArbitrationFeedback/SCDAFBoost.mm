@interface SCDAFBoost
+ (id)arrayDictionaryRepresentation:(id)representation;
+ (id)boostsArrayWithDictionaryRepresentation:(id)representation;
- (SCDAFBoost)initWithCoder:(id)coder;
- (SCDAFBoost)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCDAFBoost

- (SCDAFBoost)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boostKind"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"boostValue"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"currentDecay"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDecay"];

  v10 = objc_alloc_init(SCDAFBoost);
  -[SCDAFBoost setType:](v10, "setType:", [v5 integerValue]);
  -[SCDAFBoost setKind:](v10, "setKind:", [v6 integerValue]);
  [v7 floatValue];
  [(SCDAFBoost *)v10 setBoostValue:v11];
  -[SCDAFBoost setCurrentDecay:](v10, "setCurrentDecay:", [v8 longLongValue]);
  -[SCDAFBoost setTotalDecay:](v10, "setTotalDecay:", [v9 longLongValue]);

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCABB0];
  type = self->_type;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:type];
  [coderCopy encodeObject:v7 forKey:@"type"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_kind];
  [coderCopy encodeObject:v8 forKey:@"boostKind"];

  v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_boostValue];
  [coderCopy encodeObject:v9 forKey:@"boostValue"];

  v10 = [MEMORY[0x277CCABB0] numberWithDouble:self->_currentDecay];
  [coderCopy encodeObject:v10 forKey:@"currentDecay"];

  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_totalDecay];
  [coderCopy encodeObject:v11 forKey:@"totalDecay"];
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCDAFBoost type](self, "type")}];
  [dictionary setObject:v4 forKeyedSubscript:@"type"];

  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SCDAFBoost kind](self, "kind")}];
  [dictionary setObject:v5 forKeyedSubscript:@"boostKind"];

  v6 = MEMORY[0x277CCABB0];
  [(SCDAFBoost *)self boostValue];
  v7 = [v6 numberWithDouble:?];
  [dictionary setObject:v7 forKeyedSubscript:@"boostValue"];

  v8 = MEMORY[0x277CCABB0];
  [(SCDAFBoost *)self currentDecay];
  v9 = [v8 numberWithDouble:?];
  [dictionary setObject:v9 forKeyedSubscript:@"currentDecay"];

  v10 = MEMORY[0x277CCABB0];
  [(SCDAFBoost *)self totalDecay];
  v11 = [v10 numberWithDouble:?];
  [dictionary setObject:v11 forKeyedSubscript:@"totalDecay"];

  v12 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v12;
}

- (SCDAFBoost)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = SCDAFBoost;
  v5 = [(SCDAFBoost *)&v13 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"type"];
    v5->_type = [v6 integerValue];

    v7 = [representationCopy objectForKeyedSubscript:@"boostKind"];
    v5->_kind = [v7 integerValue];

    v8 = [representationCopy objectForKeyedSubscript:@"boostValue"];
    [v8 floatValue];
    v5->_boostValue = v9;

    v10 = [representationCopy objectForKeyedSubscript:@"currentDecay"];
    v5->_currentDecay = [v10 longLongValue];

    v11 = [representationCopy objectForKeyedSubscript:@"totalDecay"];
    v5->_totalDecay = [v11 longLongValue];
  }

  return v5;
}

+ (id)boostsArrayWithDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CBEB18];
  representationCopy = representation;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__SCDAFBoost_boostsArrayWithDictionaryRepresentation___block_invoke;
  v8[3] = &unk_279BD9E30;
  v6 = array;
  v9 = v6;
  [representationCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __54__SCDAFBoost_boostsArrayWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SCDAFBoost alloc] initWithDictionaryRepresentation:v3];

  [*(a1 + 32) addObject:v4];
}

+ (id)arrayDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CBEB18];
  representationCopy = representation;
  array = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__SCDAFBoost_arrayDictionaryRepresentation___block_invoke;
  v9[3] = &unk_279BD9E08;
  v10 = array;
  v6 = array;
  [representationCopy enumerateObjectsUsingBlock:v9];

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