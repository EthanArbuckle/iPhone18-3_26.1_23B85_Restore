@interface SXAutoPlacementMargin
- (SXAutoPlacementMargin)initWithTop:(_SXConvertibleValue)a3 bottom:(_SXConvertibleValue)a4;
- (_SXConvertibleValue)bottom;
- (_SXConvertibleValue)left;
- (_SXConvertibleValue)right;
- (_SXConvertibleValue)top;
@end

@implementation SXAutoPlacementMargin

- (SXAutoPlacementMargin)initWithTop:(_SXConvertibleValue)a3 bottom:(_SXConvertibleValue)a4
{
  unit = a4.unit;
  value = a4.value;
  v6 = a3.unit;
  v7 = a3.value;
  v9.receiver = self;
  v9.super_class = SXAutoPlacementMargin;
  result = [(SXAutoPlacementMargin *)&v9 init];
  if (result)
  {
    result->_top.value = v7;
    result->_top.unit = v6;
    result->_bottom.value = value;
    result->_bottom.unit = unit;
  }

  return result;
}

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

@end