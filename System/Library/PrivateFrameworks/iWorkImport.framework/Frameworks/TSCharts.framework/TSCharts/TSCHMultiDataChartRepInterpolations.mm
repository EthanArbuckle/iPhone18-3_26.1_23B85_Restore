@interface TSCHMultiDataChartRepInterpolations
+ (id)interpolationsWithOverallTimingFunction:(id)function individualTimingFunction:(id)timingFunction;
- (TSCHMultiDataChartRepInterpolations)initWithOverallTimingFunction:(id)function individualTimingFunction:(id)timingFunction;
@end

@implementation TSCHMultiDataChartRepInterpolations

+ (id)interpolationsWithOverallTimingFunction:(id)function individualTimingFunction:(id)timingFunction
{
  timingFunctionCopy = timingFunction;
  functionCopy = function;
  v8 = [self alloc];
  v13 = objc_msgSend_initWithOverallTimingFunction_individualTimingFunction_(v8, v9, v10, v11, v12, functionCopy, timingFunctionCopy);

  return v13;
}

- (TSCHMultiDataChartRepInterpolations)initWithOverallTimingFunction:(id)function individualTimingFunction:(id)timingFunction
{
  functionCopy = function;
  timingFunctionCopy = timingFunction;
  v12.receiver = self;
  v12.super_class = TSCHMultiDataChartRepInterpolations;
  v9 = [(TSCHMultiDataChartRepInterpolations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_overallTimingFunction, function);
    objc_storeStrong(&v10->_individualTimingFunction, timingFunction);
  }

  return v10;
}

@end