@interface TPCategoryRule
+ (id)ruleWithPrefix:(id)a3 category:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCategoryRule:(id)a3;
- (TPCategoryRule)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TPCategoryRule

- (TPCategoryRule)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TPCategoryRule;
  v5 = [(TPCategoryRule *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prefix"];
    prefix = v5->_prefix;
    v5->_prefix = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(TPCategoryRule *)self prefix];
  [v4 encodeObject:v5 forKey:@"prefix"];

  v6 = [(TPCategoryRule *)self category];
  [v4 encodeObject:v6 forKey:@"category"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(TPCategoryRule *)self prefix];
  v5 = [(TPCategoryRule *)self category];
  v6 = [v3 stringWithFormat:@"<TPCategoryRule: %@:%@>", v4, v5];

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TPCategoryRule *)self prefix];
  v4 = [v3 hash];
  v5 = [(TPCategoryRule *)self category];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPCategoryRule *)self isEqualToCategoryRule:v4];
  }

  return v5;
}

- (BOOL)isEqualToCategoryRule:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    v5 = [(TPCategoryRule *)self prefix];
    v6 = [(TPCategoryRule *)v4 prefix];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(TPCategoryRule *)self category];
      v8 = [(TPCategoryRule *)v4 category];
      v9 = [v7 isEqualToString:v8];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)ruleWithPrefix:(id)a3 category:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(TPCategoryRule);
  [(TPCategoryRule *)v7 setPrefix:v6];

  [(TPCategoryRule *)v7 setCategory:v5];

  return v7;
}

@end