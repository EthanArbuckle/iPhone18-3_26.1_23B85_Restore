@interface PXVideoProcessingOperationSpec
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation PXVideoProcessingOperationSpec

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  objc_storeStrong(v4 + 1, self->_inputVideoURL);
  return v4;
}

@end