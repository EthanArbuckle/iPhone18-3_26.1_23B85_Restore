@interface PXAnimatedImageRequestOptions
- (PXAnimatedImageRequestOptions)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)photoKitRequestOptions;
@end

@implementation PXAnimatedImageRequestOptions

- (id)photoKitRequestOptions
{
  v3 = objc_alloc_init(MEMORY[0x1E6978620]);
  [(PXImageRequestOptions *)self copyPropertiesToPhotoKitOptions:v3];
  [v3 setAllowPreCaching:{-[PXAnimatedImageRequestOptions allowPreCaching](self, "allowPreCaching")}];
  [v3 setUseSharedImageDecoding:{-[PXAnimatedImageRequestOptions useSharedImageDecoding](self, "useSharedImageDecoding")}];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  v6.receiver = self;
  v6.super_class = PXAnimatedImageRequestOptions;
  [(PXAnimatedImageRequestOptions *)&v6 copyPropertiesToOptions:v4];
  [v4 setAllowPreCaching:self->_allowPreCaching];
  [v4 setUseSharedImageDecoding:self->_useSharedImageDecoding];
  return v4;
}

- (PXAnimatedImageRequestOptions)init
{
  v3.receiver = self;
  v3.super_class = PXAnimatedImageRequestOptions;
  result = [(PXAnimatedImageRequestOptions *)&v3 init];
  if (result)
  {
    result->_allowPreCaching = 1;
  }

  return result;
}

@end