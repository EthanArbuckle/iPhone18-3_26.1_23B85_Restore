@interface SBPieChartSlice
+ (id)sliceWithValue:(double)a3 fillColor:(id)a4;
- (SBPieChartSlice)initWithValue:(double)a3 fillColor:(id)a4;
@end

@implementation SBPieChartSlice

- (SBPieChartSlice)initWithValue:(double)a3 fillColor:(id)a4
{
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBPieChartSlice;
  v8 = [(SBPieChartSlice *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_value = a3;
    objc_storeStrong(&v8->_fillColor, a4);
    v10 = v9;
  }

  return v9;
}

+ (id)sliceWithValue:(double)a3 fillColor:(id)a4
{
  v5 = a4;
  v6 = [[SBPieChartSlice alloc] initWithValue:v5 fillColor:a3];

  return v6;
}

@end