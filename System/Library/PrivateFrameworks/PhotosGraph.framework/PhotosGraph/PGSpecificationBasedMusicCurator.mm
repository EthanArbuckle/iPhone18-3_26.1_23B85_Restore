@interface PGSpecificationBasedMusicCurator
- (PGSpecificationBasedMusicCurator)init;
- (PGSpecificationBasedMusicCurator)initWithOptions:(id)a3;
- (id)musicCurationAndReturnError:(id *)a3;
@end

@implementation PGSpecificationBasedMusicCurator

- (PGSpecificationBasedMusicCurator)initWithOptions:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PGSpecificationBasedMusicCurator_maxAppleMusicSongs) = 9;
  static MusicKitClient.FetchOptions.all(musicKitSource:)(0xD00000000000001ELL, 0x800000022F779560, self + OBJC_IVAR___PGSpecificationBasedMusicCurator_fetchOptions);
  v6 = a3;
  sub_22F3EAA78(v6, &v12);
  v7 = (self + OBJC_IVAR___PGSpecificationBasedMusicCurator_curationSpecification);
  v8 = v13[0];
  *v7 = v12;
  v7[1] = v8;
  *(v7 + 26) = *(v13 + 10);
  v11.receiver = self;
  v11.super_class = ObjectType;
  v9 = [(PGSpecificationBasedMusicCurator *)&v11 init];

  return v9;
}

- (id)musicCurationAndReturnError:(id *)a3
{
  v3 = self;
  v4 = sub_22F1D05E4();

  return v4;
}

- (PGSpecificationBasedMusicCurator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end