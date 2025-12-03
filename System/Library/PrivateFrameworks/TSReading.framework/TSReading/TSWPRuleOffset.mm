@interface TSWPRuleOffset
+ (id)ruleOffset;
- (BOOL)isEqual:(id)equal;
- (CGPoint)pointValue;
- (CGSize)sizeValue;
- (TSWPRuleOffset)initWithDX:(double)x dY:(double)y;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSWPRuleOffset

+ (id)ruleOffset
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSWPRuleOffset)initWithDX:(double)x dY:(double)y
{
  v7.receiver = self;
  v7.super_class = TSWPRuleOffset;
  result = [(TSWPRuleOffset *)&v7 init];
  if (result)
  {
    result->_dX = x;
    result->_dY = y;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  dX = self->_dX;
  dY = self->_dY;

  return [v4 initWithDX:dX dY:dY];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    v5 = v4;
    dX = self->_dX;
    [v4 dX];
    if (dX == v7)
    {
      dY = self->_dY;
      [v5 dY];
      LOBYTE(v4) = dY == v9;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (CGPoint)pointValue
{
  dX = self->_dX;
  dY = self->_dY;
  result.y = dY;
  result.x = dX;
  return result;
}

- (CGSize)sizeValue
{
  dX = self->_dX;
  dY = self->_dY;
  result.height = dY;
  result.width = dX;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: dY=%+g; dY=%+g>", NSStringFromClass(v4), *&self->_dX, *&self->_dY];
}

@end