@interface ObjectComparisonByTokens
+ (BOOL)addComparison:(id)comparison to:(id)to ifMinOverlap:(unint64_t)overlap;
- (ObjectComparisonByTokens)initWithObj1:(id)obj1 obj2:(id)obj2 reference:(id)reference;
- (id)description;
- (void)accountForadditionalLength;
- (void)incrementTokensWith:(BOOL)with;
@end

@implementation ObjectComparisonByTokens

+ (BOOL)addComparison:(id)comparison to:(id)to ifMinOverlap:(unint64_t)overlap
{
  comparisonCopy = comparison;
  toCopy = to;
  if (comparisonCopy && [comparisonCopy sameTokensCount] >= overlap)
  {
    [toCopy addObject:comparisonCopy];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ObjectComparisonByTokens)initWithObj1:(id)obj1 obj2:(id)obj2 reference:(id)reference
{
  v12.receiver = self;
  v12.super_class = ObjectComparisonByTokens;
  referenceCopy = reference;
  obj2Copy = obj2;
  obj1Copy = obj1;
  v10 = [(ObjectComparisonByTokens *)&v12 init];
  [(ObjectComparisonByTokens *)v10 setObj1:obj1Copy, v12.receiver, v12.super_class];

  [(ObjectComparisonByTokens *)v10 setObj2:obj2Copy];
  [(ObjectComparisonByTokens *)v10 setReference:referenceCopy];

  [(ObjectComparisonByTokens *)v10 setSameTokensCount:0];
  [(ObjectComparisonByTokens *)v10 setDiffTokensCount:0];
  [(ObjectComparisonByTokens *)v10 setDistance:0];
  return v10;
}

- (void)incrementTokensWith:(BOOL)with
{
  v3 = 16;
  if (with)
  {
    v3 = 8;
  }

  ++*(&self->super.isa + v3);
}

- (void)accountForadditionalLength
{
  v3 = [self->_obj1 length];
  v4 = [self->_obj2 length];
  if (v3 <= v4)
  {
    v5 = 40;
  }

  else
  {
    v5 = 32;
  }

  if (v3 <= v4)
  {
    v6 = 32;
  }

  else
  {
    v6 = 40;
  }

  v7 = [*(&self->super.isa + v5) length];
  self->_diffTokensCount += v7 - [*(&self->super.isa + v6) length];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  reference = self->_reference;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:self->_reference encoding:4];
  }

  else
  {
    v6 = &stru_28487EF20;
  }

  v7 = *&self->_obj1;
  v8 = [v3 stringWithFormat:@"[%@ %@] %@ <> %@ overlap:%lu diff:%lu distance:%lu", reference, v6, self->_obj1, self->_obj2, self->_sameTokensCount, self->_diffTokensCount, self->_distance];
  if (isKindOfClass)
  {
  }

  return v8;
}

@end