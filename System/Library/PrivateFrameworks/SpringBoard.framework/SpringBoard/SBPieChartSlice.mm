@interface SBPieChartSlice
+ (id)sliceWithValue:(double)value fillColor:(id)color;
- (SBPieChartSlice)initWithValue:(double)value fillColor:(id)color;
@end

@implementation SBPieChartSlice

- (SBPieChartSlice)initWithValue:(double)value fillColor:(id)color
{
  colorCopy = color;
  v12.receiver = self;
  v12.super_class = SBPieChartSlice;
  v8 = [(SBPieChartSlice *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = value;
    objc_storeStrong(&v8->_fillColor, color);
    v10 = v9;
  }

  return v9;
}

+ (id)sliceWithValue:(double)value fillColor:(id)color
{
  colorCopy = color;
  v6 = [[SBPieChartSlice alloc] initWithValue:colorCopy fillColor:value];

  return v6;
}

@end