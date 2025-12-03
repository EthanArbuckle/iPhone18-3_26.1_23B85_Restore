@interface SXInsertComponentLayout
- (SXInsertComponentLayout)initWithColumnRange:(_NSRange)range;
- (_NSRange)columnRange;
- (_SXConvertibleValue)maximumContentWidth;
- (_SXConvertibleValue)minimumHeight;
- (_SXConvertibleValue)suggestedHeight;
@end

@implementation SXInsertComponentLayout

- (SXInsertComponentLayout)initWithColumnRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v6.receiver = self;
  v6.super_class = SXInsertComponentLayout;
  result = [(SXInsertComponentLayout *)&v6 init];
  if (result)
  {
    result->_columnRange.location = location;
    result->_columnRange.length = length;
  }

  return result;
}

- (_NSRange)columnRange
{
  length = self->_columnRange.length;
  location = self->_columnRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_SXConvertibleValue)minimumHeight
{
  unit = self->_minimumHeight.unit;
  value = self->_minimumHeight.value;
  result.unit = unit;
  result.value = value;
  return result;
}

- (_SXConvertibleValue)maximumContentWidth
{
  unit = self->_maximumContentWidth.unit;
  value = self->_maximumContentWidth.value;
  result.unit = unit;
  result.value = value;
  return result;
}

- (_SXConvertibleValue)suggestedHeight
{
  unit = self->_suggestedHeight.unit;
  value = self->_suggestedHeight.value;
  result.unit = unit;
  result.value = value;
  return result;
}

@end