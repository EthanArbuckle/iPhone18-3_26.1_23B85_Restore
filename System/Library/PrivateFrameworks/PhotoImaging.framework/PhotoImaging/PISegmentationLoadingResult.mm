@interface PISegmentationLoadingResult
- (PISegmentationLoadingResult)initWithObject:(id)object success:(BOOL)success error:(id)error;
@end

@implementation PISegmentationLoadingResult

- (PISegmentationLoadingResult)initWithObject:(id)object success:(BOOL)success error:(id)error
{
  objectCopy = object;
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = PISegmentationLoadingResult;
  v11 = [(PISegmentationLoadingResult *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_object, object);
    v12->_success = success;
    objc_storeStrong(&v12->_error, error);
  }

  return v12;
}

@end