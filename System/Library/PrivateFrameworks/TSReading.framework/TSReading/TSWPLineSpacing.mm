@interface TSWPLineSpacing
+ (id)lineSpacing;
- (BOOL)isEqual:(id)equal;
- (TSWPLineSpacing)initWithMode:(int)mode amount:(double)amount baselineRule:(double)rule;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation TSWPLineSpacing

+ (id)lineSpacing
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (TSWPLineSpacing)initWithMode:(int)mode amount:(double)amount baselineRule:(double)rule
{
  v9.receiver = self;
  v9.super_class = TSWPLineSpacing;
  result = [(TSWPLineSpacing *)&v9 init];
  if (result)
  {
    result->_mode = mode;
    result->_amount = amount;
    result->_baselineRule = rule;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  mode = self->_mode;
  amount = self->_amount;
  baselineRule = self->_baselineRule;

  return [v4 initWithMode:mode amount:amount baselineRule:baselineRule];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  v4 = TSUDynamicCast();
  if (v4)
  {
    LOBYTE(v4) = self->_mode == *(v4 + 8) && self->_amount == *(v4 + 16) && self->_baselineRule == *(v4 + 24);
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: mode=%d; amount=%f; baselineRule=%f>", NSStringFromClass(v4), self->_mode, *&self->_amount, *&self->_baselineRule];
}

@end