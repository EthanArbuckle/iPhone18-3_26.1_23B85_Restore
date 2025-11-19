@interface VFXTextureAsset
- (void)_forceSynchronousLoading;
@end

@implementation VFXTextureAsset

- (void)_forceSynchronousLoading
{
  v4 = objc_msgSend_entityObject(self, a2, v2, v3);

  MEMORY[0x1EEE66B58](v4, sel_makeTextureLoadingSynchronous, v5, v6);
}

@end