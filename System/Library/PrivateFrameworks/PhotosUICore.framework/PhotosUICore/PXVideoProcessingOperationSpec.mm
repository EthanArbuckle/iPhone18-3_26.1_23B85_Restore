@interface PXVideoProcessingOperationSpec
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PXVideoProcessingOperationSpec

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_inputVideoURL);
  return v4;
}

@end