@interface PXAutoloopVideoInput
+ (id)inputWithAsset:(id)a3 imageURL:(id)a4;
- (PXAutoloopVideoInput)initWithAsset:(id)a3 imageURL:(id)a4;
@end

@implementation PXAutoloopVideoInput

- (PXAutoloopVideoInput)initWithAsset:(id)a3 imageURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = PXAutoloopVideoInput;
  v8 = [(PXAutoloopVideoInput *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    asset = v8->_asset;
    v8->_asset = v9;

    objc_storeStrong(&v8->_imageURL, a4);
  }

  return v8;
}

+ (id)inputWithAsset:(id)a3 imageURL:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initWithAsset:v6 imageURL:v5];

  return v7;
}

@end