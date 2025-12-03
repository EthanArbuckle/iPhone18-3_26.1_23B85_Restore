@interface SXDebugAdLayout
- (SXDebugAdLayout)initWithMargin:(_SXConvertibleValue)margin;
@end

@implementation SXDebugAdLayout

- (SXDebugAdLayout)initWithMargin:(_SXConvertibleValue)margin
{
  unit = margin.unit;
  value = margin.value;
  v9.receiver = self;
  v9.super_class = SXDebugAdLayout;
  v5 = [(SXDebugAdLayout *)&v9 init];
  if (v5)
  {
    unit = [[SXAutoPlacementMargin alloc] initWithTop:*&value bottom:unit, *&value, unit];
    margin = v5->_margin;
    v5->_margin = unit;
  }

  return v5;
}

@end