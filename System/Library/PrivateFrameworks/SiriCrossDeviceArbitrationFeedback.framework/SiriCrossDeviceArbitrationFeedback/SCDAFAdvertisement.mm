@interface SCDAFAdvertisement
+ (id)advertisementsArrayWithDictionaryRepresentation:(id)representation;
+ (id)arrayDictionaryRepresentation:(id)representation;
- (NSString)identifier;
- (SCDAFAdvertisement)initWithCoder:(id)coder;
- (SCDAFAdvertisement)initWithDictionaryRepresentation:(id)representation;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCDAFAdvertisement

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(SCDAFAdvertisement *)self identifier];
  v5 = [identifier length];

  if (v5)
  {
    identifier2 = [(SCDAFAdvertisement *)self identifier];
    [dictionary setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement confidence](self, "confidence")}];
  [dictionary setObject:v7 forKeyedSubscript:@"confidence"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement deviceClass](self, "deviceClass")}];
  [dictionary setObject:v8 forKeyedSubscript:@"deviceClass"];

  advertHash = [(SCDAFAdvertisement *)self advertHash];
  [dictionary setObject:advertHash forKeyedSubscript:@"advertHash"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement productType](self, "productType")}];
  [dictionary setObject:v10 forKeyedSubscript:@"productType"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement tieBreaker](self, "tieBreaker")}];
  [dictionary setObject:v11 forKeyedSubscript:@"tieBreaker"];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement goodnessScore](self, "goodnessScore")}];
  [dictionary setObject:v12 forKeyedSubscript:@"goodnessScore"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement deviceGroup](self, "deviceGroup")}];
  [dictionary setObject:v13 forKeyedSubscript:@"deviceGroup"];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];

  return v14;
}

- (NSString)identifier
{
  v3 = MEMORY[0x277CCACA8];
  advertHash = [(SCDAFAdvertisement *)self advertHash];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement confidence](self, "confidence")}];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement deviceClass](self, "deviceClass")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement productType](self, "productType")}];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCDAFAdvertisement deviceGroup](self, "deviceGroup")}];
  v9 = [v3 stringWithFormat:@"%@-%@-%@-%@-%@", advertHash, v5, v6, v7, v8];

  return v9;
}

- (SCDAFAdvertisement)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidence"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceClass"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"advertHash"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productType"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"tieBreaker"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"goodnessScore"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceGroup"];

  v13 = objc_alloc_init(SCDAFAdvertisement);
  [(SCDAFAdvertisement *)v13 setIdentifier:v5];
  -[SCDAFAdvertisement setConfidence:](v13, "setConfidence:", [v6 integerValue]);
  -[SCDAFAdvertisement setDeviceClass:](v13, "setDeviceClass:", [v7 integerValue]);
  [(SCDAFAdvertisement *)v13 setAdvertHash:v8];
  -[SCDAFAdvertisement setProductType:](v13, "setProductType:", [v9 integerValue]);
  -[SCDAFAdvertisement setTieBreaker:](v13, "setTieBreaker:", [v10 integerValue]);
  -[SCDAFAdvertisement setGoodnessScore:](v13, "setGoodnessScore:", [v11 integerValue]);
  -[SCDAFAdvertisement setDeviceGroup:](v13, "setDeviceGroup:", [v12 integerValue]);

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_confidence];
  [coderCopy encodeObject:v6 forKey:@"confidence"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceClass];
  [coderCopy encodeObject:v7 forKey:@"deviceClass"];

  [coderCopy encodeObject:self->_advertHash forKey:@"advertHash"];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_productType];
  [coderCopy encodeObject:v8 forKey:@"productType"];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_tieBreaker];
  [coderCopy encodeObject:v9 forKey:@"tieBreaker"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_goodnessScore];
  [coderCopy encodeObject:v10 forKey:@"goodnessScore"];

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_deviceGroup];
  [coderCopy encodeObject:v11 forKey:@"deviceGroup"];
}

- (SCDAFAdvertisement)initWithDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v18.receiver = self;
  v18.super_class = SCDAFAdvertisement;
  v5 = [(SCDAFAdvertisement *)&v18 init];
  if (v5)
  {
    v6 = [representationCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 length])
    {
      objc_storeStrong(&v5->_identifier, v6);
    }

    v7 = [representationCopy objectForKeyedSubscript:@"confidence"];
    v5->_confidence = [v7 integerValue];

    v8 = [representationCopy objectForKeyedSubscript:@"deviceClass"];
    v5->_deviceClass = [v8 integerValue];

    v9 = [representationCopy objectForKeyedSubscript:@"advertHash"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v11 = [representationCopy objectForKeyedSubscript:@"advertHash"];
      advertHash = v5->_advertHash;
      v5->_advertHash = v11;
    }

    v13 = [representationCopy objectForKeyedSubscript:@"productType"];
    v5->_productType = [v13 integerValue];

    v14 = [representationCopy objectForKeyedSubscript:@"tieBreaker"];
    v5->_tieBreaker = [v14 integerValue];

    v15 = [representationCopy objectForKeyedSubscript:@"goodnessScore"];
    v5->_goodnessScore = [v15 integerValue];

    v16 = [representationCopy objectForKeyedSubscript:@"deviceGroup"];
    v5->_deviceGroup = [v16 integerValue];
  }

  return v5;
}

+ (id)arrayDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CBEB18];
  representationCopy = representation;
  array = [v3 array];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__SCDAFAdvertisement_arrayDictionaryRepresentation___block_invoke;
  v9[3] = &unk_279BD9E58;
  v10 = array;
  v6 = array;
  [representationCopy enumerateObjectsUsingBlock:v9];

  v7 = [MEMORY[0x277CBEA60] arrayWithArray:v6];

  return v7;
}

uint64_t __52__SCDAFAdvertisement_arrayDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dictionaryRepresentation];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

+ (id)advertisementsArrayWithDictionaryRepresentation:(id)representation
{
  v3 = MEMORY[0x277CBEB18];
  representationCopy = representation;
  array = [v3 array];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__SCDAFAdvertisement_advertisementsArrayWithDictionaryRepresentation___block_invoke;
  v8[3] = &unk_279BD9E30;
  v6 = array;
  v9 = v6;
  [representationCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __70__SCDAFAdvertisement_advertisementsArrayWithDictionaryRepresentation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[SCDAFAdvertisement alloc] initWithDictionaryRepresentation:v3];

  [*(a1 + 32) addObject:v4];
}

@end