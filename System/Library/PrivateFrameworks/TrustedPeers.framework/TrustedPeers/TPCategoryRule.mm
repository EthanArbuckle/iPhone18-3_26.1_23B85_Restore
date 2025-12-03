@interface TPCategoryRule
+ (id)ruleWithPrefix:(id)prefix category:(id)category;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCategoryRule:(id)rule;
- (TPCategoryRule)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TPCategoryRule

- (TPCategoryRule)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = TPCategoryRule;
  v5 = [(TPCategoryRule *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prefix"];
    prefix = v5->_prefix;
    v5->_prefix = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  prefix = [(TPCategoryRule *)self prefix];
  [coderCopy encodeObject:prefix forKey:@"prefix"];

  category = [(TPCategoryRule *)self category];
  [coderCopy encodeObject:category forKey:@"category"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  prefix = [(TPCategoryRule *)self prefix];
  category = [(TPCategoryRule *)self category];
  v6 = [v3 stringWithFormat:@"<TPCategoryRule: %@:%@>", prefix, category];

  return v6;
}

- (unint64_t)hash
{
  prefix = [(TPCategoryRule *)self prefix];
  v4 = [prefix hash];
  category = [(TPCategoryRule *)self category];
  v6 = [category hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TPCategoryRule *)self isEqualToCategoryRule:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToCategoryRule:(id)rule
{
  ruleCopy = rule;
  if (ruleCopy == self)
  {
    v9 = 1;
  }

  else
  {
    prefix = [(TPCategoryRule *)self prefix];
    prefix2 = [(TPCategoryRule *)ruleCopy prefix];
    if ([prefix isEqualToString:prefix2])
    {
      category = [(TPCategoryRule *)self category];
      category2 = [(TPCategoryRule *)ruleCopy category];
      v9 = [category isEqualToString:category2];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)ruleWithPrefix:(id)prefix category:(id)category
{
  categoryCopy = category;
  prefixCopy = prefix;
  v7 = objc_alloc_init(TPCategoryRule);
  [(TPCategoryRule *)v7 setPrefix:prefixCopy];

  [(TPCategoryRule *)v7 setCategory:categoryCopy];

  return v7;
}

@end