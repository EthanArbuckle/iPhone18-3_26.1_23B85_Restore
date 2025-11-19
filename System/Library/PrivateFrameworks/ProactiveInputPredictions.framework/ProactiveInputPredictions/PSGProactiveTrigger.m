@interface PSGProactiveTrigger
+ (id)getGivenNameQualifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTrigger:(id)a3;
- (PSGProactiveTrigger)initWithCoder:(id)a3;
- (PSGProactiveTrigger)initWithSourceType:(unint64_t)a3 category:(id)a4 attributes:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PSGProactiveTrigger *)self isEqualToTrigger:v5];
  }

  return v6;
}

- (BOOL)isEqualToTrigger:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4 || self->_triggerSourceType != v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_triggerSourceType;
    v7 = [(NSString *)self->_triggerCategory copyWithZone:a3];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSDictionary *)self->_triggerAttributes copyWithZone:a3];
    v10 = v6[3];
    v6[3] = v9;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  triggerSourceType = self->_triggerSourceType;
  v5 = a3;
  [v5 encodeInt64:triggerSourceType forKey:@"tst"];
  [v5 encodeObject:self->_triggerCategory forKey:@"cat"];
  [v5 encodeObject:self->_triggerAttributes forKey:@"tas"];
}

- (PSGProactiveTrigger)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"cat"];
  v7 = objc_autoreleasePoolPush();
  v8 = objc_alloc(MEMORY[0x277CBEB98]);
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v8 initWithObjects:{v5, v9, v10, v11, objc_opt_class(), 0}];
  objc_autoreleasePoolPop(v7);
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"tas"];

  v14 = 0;
  if (v6 && v13)
  {
    self = -[PSGProactiveTrigger initWithSourceType:category:attributes:](self, "initWithSourceType:category:attributes:", [v4 decodeInt64ForKey:@"tst"], v6, v13);
    v14 = self;
  }

  return v14;
}

- (PSGProactiveTrigger)initWithSourceType:(unint64_t)a3 category:(id)a4 attributes:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PSGProactiveTrigger;
  v11 = [(PSGProactiveTrigger *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_triggerSourceType = a3;
    objc_storeStrong(&v11->_triggerCategory, a4);
    objc_storeStrong(&v12->_triggerAttributes, a5);
  }

  return v12;
}

+ (id)getGivenNameQualifier:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:*MEMORY[0x277D22FF8]];
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