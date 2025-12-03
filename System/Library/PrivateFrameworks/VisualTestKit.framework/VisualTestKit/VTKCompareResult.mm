@interface VTKCompareResult
- (VTKCompareResult)initWithComparisonImage:(id)image isSuccesfull:(BOOL)succesfull;
@end

@implementation VTKCompareResult

- (VTKCompareResult)initWithComparisonImage:(id)image isSuccesfull:(BOOL)succesfull
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = VTKCompareResult;
  v8 = [(VTKCompareResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_comparisonImage, image);
    v9->_succesfull = succesfull;
  }

  return v9;
}

@end