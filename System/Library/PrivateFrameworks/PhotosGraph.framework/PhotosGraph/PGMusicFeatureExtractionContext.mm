@interface PGMusicFeatureExtractionContext
+ (id)appleMusicFeatureExtractionContextWithCuratorContext:(id)a3;
+ (id)flexMusicFeatureExtractionContextWithCuratorContext:(id)a3;
- (NSString)flexSongProvider;
- (PGMusicFeatureExtractionContext)init;
@end

@implementation PGMusicFeatureExtractionContext

- (NSString)flexSongProvider
{
  if (*(self + OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider + 8))
  {
    v2 = *(self + OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider);
    v3 = *(self + OBJC_IVAR___PGMusicFeatureExtractionContext_flexSongProvider + 8);

    v4 = sub_22F740DF0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PGMusicFeatureExtractionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)appleMusicFeatureExtractionContextWithCuratorContext:(id)a3
{
  v3 = a3;
  v4 = _s11PhotosGraph29MusicFeatureExtractionContextC05applecdeF04withAcA0c7CuratorF0C_tFZ_0(v3);

  return v4;
}

+ (id)flexMusicFeatureExtractionContextWithCuratorContext:(id)a3
{
  v3 = a3;
  v4 = _s11PhotosGraph29MusicFeatureExtractionContextC04flexcdeF04withAcA0c7CuratorF0C_tFZ_0(v3);

  return v4;
}

@end