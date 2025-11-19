@interface _UIImageSymbolVariant
+ (_UIImageSymbolVariant)variantWithFillVariant:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (_UIImageSymbolVariant)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _UIImageSymbolVariant

+ (_UIImageSymbolVariant)variantWithFillVariant:(int64_t)a3
{
  v4 = objc_opt_new();
  v4[1] = a3;

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_fillVariant == v4->_fillVariant;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  result = objc_opt_new();
  *(result + 1) = self->_fillVariant;
  return result;
}

- (_UIImageSymbolVariant)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolVariant;
  v5 = [(_UIImageSymbolVariant *)&v7 init];
  if (v5)
  {
    v5->_fillVariant = [v4 decodeIntegerForKey:@"fillVariant"];
  }

  return v5;
}

@end