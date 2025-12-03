@interface PXSyntheticPerson
- (PXSyntheticPerson)init;
- (id)px_localizedName;
- (int)requestFaceCropImageWithTargetSize:(CGSize)size displayScale:(double)scale cropFactor:(int64_t)factor style:(int64_t)style cacheResult:(BOOL)result synchronous:(BOOL)synchronous resultHandler:(id)handler;
@end

@implementation PXSyntheticPerson

- (int)requestFaceCropImageWithTargetSize:(CGSize)size displayScale:(double)scale cropFactor:(int64_t)factor style:(int64_t)style cacheResult:(BOOL)result synchronous:(BOOL)synchronous resultHandler:(id)handler
{
  v9 = _Block_copy(handler);
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v10 = sub_1A524C3D4();

  v9[2](v9, 0, v10);

  _Block_release(v9);
  return 0;
}

- (id)px_localizedName
{
  if (*(self + OBJC_IVAR___PXSyntheticPerson_name + 8))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

- (PXSyntheticPerson)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end