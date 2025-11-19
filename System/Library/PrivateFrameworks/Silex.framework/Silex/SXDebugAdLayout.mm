@interface SXDebugAdLayout
- (SXDebugAdLayout)initWithMargin:(_SXConvertibleValue)a3;
@end

@implementation SXDebugAdLayout

- (SXDebugAdLayout)initWithMargin:(_SXConvertibleValue)a3
{
  unit = a3.unit;
  value = a3.value;
  v9.receiver = self;
  v9.super_class = SXDebugAdLayout;
  v5 = [(SXDebugAdLayout *)&v9 init];
  if (v5)
  {
    v6 = [[SXAutoPlacementMargin alloc] initWithTop:*&value bottom:unit, *&value, unit];
    margin = v5->_margin;
    v5->_margin = v6;
  }

  return v5;
}

@end