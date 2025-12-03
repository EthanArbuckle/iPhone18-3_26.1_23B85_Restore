@interface SXInsertEdgeSpacing
- (_SXConvertibleValue)bottom;
- (_SXConvertibleValue)left;
- (_SXConvertibleValue)right;
- (_SXConvertibleValue)top;
- (void)initWithTop:(uint64_t)top bottom:(uint64_t)bottom;
@end

@implementation SXInsertEdgeSpacing

- (_SXConvertibleValue)top
{
  unit = self->_top.unit;
  value = self->_top.value;
  result.unit = unit;
  result.value = value;
  return result;
}

- (_SXConvertibleValue)right
{
  unit = self->_right.unit;
  value = self->_right.value;
  result.unit = unit;
  result.value = value;
  return result;
}

- (_SXConvertibleValue)bottom
{
  unit = self->_bottom.unit;
  value = self->_bottom.value;
  result.unit = unit;
  result.value = value;
  return result;
}

- (_SXConvertibleValue)left
{
  unit = self->_left.unit;
  value = self->_left.value;
  result.unit = unit;
  result.value = value;
  return result;
}

- (void)initWithTop:(uint64_t)top bottom:(uint64_t)bottom
{
  if (result)
  {
    v9.receiver = result;
    v9.super_class = SXInsertEdgeSpacing;
    result = objc_msgSendSuper2(&v9, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = top;
      result[5] = bottom;
      result[6] = a5;
    }
  }

  return result;
}

@end