@interface PUAssetDisplayDescriptor
+ (id)assetDisplayDescriptorForSimpleNavigationToAssetReference:(id)reference;
- (PUAssetDisplayDescriptor)init;
- (PUAssetDisplayDescriptor)initWithAssetReference:(id)reference modifiedAfterDate:(id)date videoSeekTime:(id *)time;
@end

@implementation PUAssetDisplayDescriptor

- (PUAssetDisplayDescriptor)initWithAssetReference:(id)reference modifiedAfterDate:(id)date videoSeekTime:(id *)time
{
  referenceCopy = reference;
  dateCopy = date;
  v15.receiver = self;
  v15.super_class = PUAssetDisplayDescriptor;
  v11 = [(PUAssetDisplayDescriptor *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_assetReference, reference);
    objc_storeStrong(&v12->_modifiedAfterDate, date);
    v13 = *&time->var0;
    v12->_videoSeekTime.epoch = time->var3;
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

+ (id)assetDisplayDescriptorForSimpleNavigationToAssetReference:(id)reference
{
  if (reference)
  {
    referenceCopy = reference;
    v4 = [PUAssetDisplayDescriptor alloc];
    v7 = *MEMORY[0x1E6960C70];
    v8 = *(MEMORY[0x1E6960C70] + 16);
    v5 = [(PUAssetDisplayDescriptor *)v4 initWithAssetReference:referenceCopy modifiedAfterDate:0 videoSeekTime:&v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end