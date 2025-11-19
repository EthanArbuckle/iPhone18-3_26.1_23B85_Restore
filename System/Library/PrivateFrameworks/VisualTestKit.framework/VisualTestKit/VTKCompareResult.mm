@interface VTKCompareResult
- (VTKCompareResult)initWithComparisonImage:(id)a3 isSuccesfull:(BOOL)a4;
@end

@implementation VTKCompareResult

- (VTKCompareResult)initWithComparisonImage:(id)a3 isSuccesfull:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = VTKCompareResult;
  v8 = [(VTKCompareResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_comparisonImage, a3);
    v9->_succesfull = a4;
  }

  return v9;
}

@end