@interface TSCHMultiDataChartRepInterpolations
+ (id)interpolationsWithOverallTimingFunction:(id)a3 individualTimingFunction:(id)a4;
- (TSCHMultiDataChartRepInterpolations)initWithOverallTimingFunction:(id)a3 individualTimingFunction:(id)a4;
@end

@implementation TSCHMultiDataChartRepInterpolations

+ (id)interpolationsWithOverallTimingFunction:(id)a3 individualTimingFunction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 alloc];
  v13 = objc_msgSend_initWithOverallTimingFunction_individualTimingFunction_(v8, v9, v10, v11, v12, v7, v6);

  return v13;
}

- (TSCHMultiDataChartRepInterpolations)initWithOverallTimingFunction:(id)a3 individualTimingFunction:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TSCHMultiDataChartRepInterpolations;
  v9 = [(TSCHMultiDataChartRepInterpolations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_overallTimingFunction, a3);
    objc_storeStrong(&v10->_individualTimingFunction, a4);
  }

  return v10;
}

@end