@interface PFMediaItemMetadataLoader
- (PFMediaItemMetadataLoader)init;
- (void)keyIdentifiersFromAsset:(id)a3 completion:(id)a4;
@end

@implementation PFMediaItemMetadataLoader

- (PFMediaItemMetadataLoader)init
{
  v6.receiver = self;
  v6.super_class = PFMediaItemMetadataLoader;
  v2 = [(PFMediaItemMetadataLoader *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MTMediaItemMetadataLoader);
    loader = v2->_loader;
    v2->_loader = v3;
  }

  return v2;
}

- (void)keyIdentifiersFromAsset:(id)a3 completion:(id)a4
{
  v6 = a4;
  loader = self->_loader;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__PFMediaItemMetadataLoader_keyIdentifiersFromAsset_completion___block_invoke;
  v9[3] = &unk_1E8569278;
  v10 = v6;
  v8 = v6;
  [(MTMediaItemMetadataLoader *)loader keyIdentifiersFrom:a3 completion:v9];
}

@end