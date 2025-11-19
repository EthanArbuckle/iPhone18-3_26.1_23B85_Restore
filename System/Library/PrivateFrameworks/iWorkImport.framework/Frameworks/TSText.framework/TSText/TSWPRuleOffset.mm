@interface TSWPRuleOffset
+ (id)instanceWithArchive:(const Message *)a3 unarchiver:(id)a4;
+ (id)ruleOffset;
+ (id)ruleOffsetWithDX:(double)a3 dY:(double)a4;
- (BOOL)isEqual:(id)a3;
- (CGPoint)pointValue;
- (CGSize)sizeValue;
- (TSWPRuleOffset)initWithDX:(double)a3 dY:(double)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation TSWPRuleOffset

+ (id)ruleOffset
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (id)ruleOffsetWithDX:(double)a3 dY:(double)a4
{
  v6 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_initWithDX_dY_(v6, v7, v8, a3, a4);

  return v9;
}

- (TSWPRuleOffset)initWithDX:(double)a3 dY:(double)a4
{
  v7.receiver = self;
  v7.super_class = TSWPRuleOffset;
  result = [(TSWPRuleOffset *)&v7 init];
  if (result)
  {
    result->_dX = a3;
    result->_dY = a4;
  }

  return result;
}

+ (id)instanceWithArchive:(const Message *)a3 unarchiver:(id)a4
{
  v5 = a4;
  v6 = [TSWPRuleOffset alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, a3, v5);

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  dX = self->_dX;
  dY = self->_dY;

  return objc_msgSend_initWithDX_dY_(v4, v5, v6, dX, dY);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = TSUDynamicCast();
  v8 = v5;
  if (v5 && ((dX = self->_dX, objc_msgSend_dX(v5, v6, v7), dX == v12) || vabdd_f64(dX, v12) < 0.00999999978))
  {
    dY = self->_dY;
    objc_msgSend_dY(v8, v10, v11);
    v13 = vabdd_f64(dY, v15) < 0.00999999978 || dY == v15;
  }

  else
  {
    v13 = 0;
  }

  return v13;
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
  v5 = NSStringFromClass(v4);
  v7 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@: dY=%+g dY=%+g>", v5, *&self->_dX, *&self->_dY);;

  return v7;
}

@end