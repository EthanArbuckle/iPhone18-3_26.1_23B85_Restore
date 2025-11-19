@interface ObjectComparisonByTokens
+ (BOOL)addComparison:(id)a3 to:(id)a4 ifMinOverlap:(unint64_t)a5;
- (ObjectComparisonByTokens)initWithObj1:(id)a3 obj2:(id)a4 reference:(id)a5;
- (id)description;
- (void)accountForadditionalLength;
- (void)incrementTokensWith:(BOOL)a3;
@end

@implementation ObjectComparisonByTokens

+ (BOOL)addComparison:(id)a3 to:(id)a4 ifMinOverlap:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if (v7 && [v7 sameTokensCount] >= a5)
  {
    [v8 addObject:v7];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (ObjectComparisonByTokens)initWithObj1:(id)a3 obj2:(id)a4 reference:(id)a5
{
  v12.receiver = self;
  v12.super_class = ObjectComparisonByTokens;
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [(ObjectComparisonByTokens *)&v12 init];
  [(ObjectComparisonByTokens *)v10 setObj1:v9, v12.receiver, v12.super_class];

  [(ObjectComparisonByTokens *)v10 setObj2:v8];
  [(ObjectComparisonByTokens *)v10 setReference:v7];

  [(ObjectComparisonByTokens *)v10 setSameTokensCount:0];
  [(ObjectComparisonByTokens *)v10 setDiffTokensCount:0];
  [(ObjectComparisonByTokens *)v10 setDistance:0];
  return v10;
}

- (void)incrementTokensWith:(BOOL)a3
{
  v3 = 16;
  if (a3)
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