@interface PSGProactiveTrigger
+ (id)getGivenNameQualifier:(id)qualifier;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToTrigger:(id)trigger;
- (PSGProactiveTrigger)initWithCoder:(id)coder;
- (PSGProactiveTrigger)initWithSourceType:(unint64_t)type category:(id)category attributes:(id)attributes;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSGProactiveTrigger

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<PSGProactiveTrigger tst:%tu cat: %@ tas:{", self->_triggerSourceType, self->_triggerCategory];
  v5 = [v3 stringWithString:v4];

  triggerAttributes = self->_triggerAttributes;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__PSGProactiveTrigger_description__block_invoke;
  v9[3] = &unk_279ABCFF0;
  v7 = v5;
  v10 = v7;
  [(NSDictionary *)triggerAttributes enumerateKeysAndObjectsUsingBlock:v9];
  [v7 appendString:@"}>"];

  return v7;
}

void __34__PSGProactiveTrigger_description__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"%@=%@; ", v7, v6];

  [v4 appendString:v8];
}

- (unint64_t)hash
{
  triggerSourceType = self->_triggerSourceType;
  v4 = [(NSString *)self->_triggerCategory hash]- triggerSourceType + 32 * triggerSourceType;
  return [(NSDictionary *)self->_triggerAttributes hash]- v4 + 32 * v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGProactiveTrigger *)self isEqualToTrigger:v5];
  }

  return v6;
}

- (BOOL)isEqualToTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (!triggerCopy || self->_triggerSourceType != triggerCopy[1])
  {
    goto LABEL_5;
  }

  v6 = self->_triggerCategory;
  v7 = v6;
  if (v6 == v5[2])
  {
  }

  else
  {
    v8 = [(NSString *)v6 isEqual:?];

    if ((v8 & 1) == 0)
    {
LABEL_5:
      v9 = 0;
      goto LABEL_11;
    }
  }

  v10 = self->_triggerAttributes;
  v11 = v10;
  if (v10 == v5[3])
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NSDictionary *)v10 isEqual:?];
  }

LABEL_11:
  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_triggerSourceType;
    v7 = [(NSString *)self->_triggerCategory copyWithZone:zone];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSDictionary *)self->_triggerAttributes copyWithZone:zone];
    v10 = v6[3];
    v6[3] = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  triggerSourceType = self->_triggerSourceType;
  coderCopy = coder;
  [coderCopy encodeInt64:triggerSourceType forKey:@"tst"];
  [coderCopy encodeObject:self->_triggerCategory forKey:@"cat"];
  [coderCopy encodeObject:self->_triggerAttributes forKey:@"tas"];
}

- (PSGProactiveTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"cat"];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 initWithObjects:{v5, v9, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"tas"];

  selfCopy = 0;
  if (v6 && v13)
  {
    self = -[PSGProactiveTrigger initWithSourceType:category:attributes:](self, "initWithSourceType:category:attributes:", [coderCopy decodeInt64ForKey:@"tst"], v6, v13);
    selfCopy = self;
  }

  return selfCopy;
}

- (PSGProactiveTrigger)initWithSourceType:(unint64_t)type category:(id)category attributes:(id)attributes
{
  categoryCopy = category;
  attributesCopy = attributes;
  v14.receiver = self;
  v14.super_class = PSGProactiveTrigger;
  v11 = [(PSGProactiveTrigger *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_triggerSourceType = type;
    objc_storeStrong(&v11->_triggerCategory, category);
    objc_storeStrong(&v12->_triggerAttributes, attributes);
  }

  return v12;
}

+ (id)getGivenNameQualifier:(id)qualifier
{
  v3 = [qualifier objectForKeyedSubscript:*MEMORY[0x277D22FF8]];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277D22F80]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end