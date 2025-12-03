@interface PXAutoloopVideoInput
+ (id)inputWithAsset:(id)asset imageURL:(id)l;
- (PXAutoloopVideoInput)initWithAsset:(id)asset imageURL:(id)l;
@end

@implementation PXAutoloopVideoInput

- (PXAutoloopVideoInput)initWithAsset:(id)asset imageURL:(id)l
{
  assetCopy = asset;
  lCopy = l;
  v12.receiver = self;
  v12.super_class = PXAutoloopVideoInput;
  v8 = [(PXAutoloopVideoInput *)&v12 init];
  if (v8)
  {
    v9 = [assetCopy copy];
    asset = v8->_asset;
    v8->_asset = v9;

    objc_storeStrong(&v8->_imageURL, l);
  }

  return v8;
}

+ (id)inputWithAsset:(id)asset imageURL:(id)l
{
  lCopy = l;
  assetCopy = asset;
  v7 = [objc_alloc(objc_opt_class()) initWithAsset:assetCopy imageURL:lCopy];

  return v7;
}

@end