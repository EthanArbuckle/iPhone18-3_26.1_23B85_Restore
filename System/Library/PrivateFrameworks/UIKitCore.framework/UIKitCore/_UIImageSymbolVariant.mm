@interface _UIImageSymbolVariant
+ (_UIImageSymbolVariant)variantWithFillVariant:(int64_t)variant;
- (BOOL)isEqual:(id)equal;
- (_UIImageSymbolVariant)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _UIImageSymbolVariant

+ (_UIImageSymbolVariant)variantWithFillVariant:(int64_t)variant
{
  v4 = objc_opt_new();
  v4[1] = variant;

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && self->_fillVariant == equalCopy->_fillVariant;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  result = objc_opt_new();
  *(result + 1) = self->_fillVariant;
  return result;
}

- (_UIImageSymbolVariant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _UIImageSymbolVariant;
  v5 = [(_UIImageSymbolVariant *)&v7 init];
  if (v5)
  {
    v5->_fillVariant = [coderCopy decodeIntegerForKey:@"fillVariant"];
  }

  return v5;
}

@end