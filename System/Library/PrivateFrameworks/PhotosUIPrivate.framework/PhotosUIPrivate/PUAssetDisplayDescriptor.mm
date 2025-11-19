@interface PUAssetDisplayDescriptor
+ (id)assetDisplayDescriptorForSimpleNavigationToAssetReference:(id)a3;
- (PUAssetDisplayDescriptor)init;
- (PUAssetDisplayDescriptor)initWithAssetReference:(id)a3 modifiedAfterDate:(id)a4 videoSeekTime:(id *)a5;
@end

@implementation PUAssetDisplayDescriptor

- (PUAssetDisplayDescriptor)initWithAssetReference:(id)a3 modifiedAfterDate:(id)a4 videoSeekTime:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PUAssetDisplayDescriptor;
  v11 = [(PUAssetDisplayDescriptor *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetReference, a3);
    objc_storeStrong(&v12->_modifiedAfterDate, a4);
    v13 = *&a5->var0;
    v12->_videoSeekTime.epoch = a5->var3;
    *&v12->_videoSeekTime.value = v13;
  }

  return v12;
}

- (PUAssetDisplayDescriptor)init
{
  v3 = *MEMORY[0x1E6960C70];
  v4 = *(MEMORY[0x1E6960C70] + 16);
  return [(PUAssetDisplayDescriptor *)self initWithAssetReference:0 modifiedAfterDate:0 videoSeekTime:&v3];
}

+ (id)assetDisplayDescriptorForSimpleNavigationToAssetReference:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [PUAssetDisplayDescriptor alloc];
    v7 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    v5 = [(PUAssetDisplayDescriptor *)v4 initWithAssetReference:v3 modifiedAfterDate:0 videoSeekTime:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end