@interface PISegmentationLoadingResult
- (PISegmentationLoadingResult)initWithObject:(id)a3 success:(BOOL)a4 error:(id)a5;
@end

@implementation PISegmentationLoadingResult

- (PISegmentationLoadingResult)initWithObject:(id)a3 success:(BOOL)a4 error:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PISegmentationLoadingResult;
  v11 = [(PISegmentationLoadingResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, a3);
    v12->_success = a4;
    objc_storeStrong(&v12->_error, a5);
  }

  return v12;
}

@end