@interface PXSyntheticPerson
- (PXSyntheticPerson)init;
- (id)px_localizedName;
- (int)requestFaceCropImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 cropFactor:(int64_t)a5 style:(int64_t)a6 cacheResult:(BOOL)a7 synchronous:(BOOL)a8 resultHandler:(id)a9;
@end

@implementation PXSyntheticPerson

- (int)requestFaceCropImageWithTargetSize:(CGSize)a3 displayScale:(double)a4 cropFactor:(int64_t)a5 style:(int64_t)a6 cacheResult:(BOOL)a7 synchronous:(BOOL)a8 resultHandler:(id)a9
{
  v9 = _Block_copy(a9);
  sub_1A3DAED90(MEMORY[0x1E69E7CC0]);
  v10 = sub_1A524C3D4();

  v9[2](v9, 0, v10);

  _Block_release(v9);
  return 0;
}

- (id)px_localizedName
{
  if (*(a1 + OBJC_IVAR___PXSyntheticPerson_name + 8))
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