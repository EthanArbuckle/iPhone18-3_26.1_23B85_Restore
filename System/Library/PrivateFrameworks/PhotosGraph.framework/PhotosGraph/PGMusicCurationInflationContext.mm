@interface PGMusicCurationInflationContext
+ (id)contextWithMusicCache:(id)cache actionSource:(id)source shouldForceMetadataRefetch:(BOOL)refetch;
- (NSString)actionSource;
- (PGMusicCurationInflationContext)init;
@end

@implementation PGMusicCurationInflationContext

- (NSString)actionSource
{
  v2 = *(self + OBJC_IVAR___PGMusicCurationInflationContext_actionSource);
  v3 = *(self + OBJC_IVAR___PGMusicCurationInflationContext_actionSource + 8);

  v4 = sub_22F740DF0();

  return v4;
}

+ (id)contextWithMusicCache:(id)cache actionSource:(id)source shouldForceMetadataRefetch:(BOOL)refetch
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v8 = sub_22F740E20();
  v10 = v9;
  v11 = objc_allocWithZone(ObjCClassMetadata);
  *&v11[OBJC_IVAR___PGMusicCurationInflationContext_cache] = cache;
  v11[OBJC_IVAR___PGMusicCurationInflationContext_shouldForceMetadataRefetch] = refetch;
  v12 = &v11[OBJC_IVAR___PGMusicCurationInflationContext_actionSource];
  *v12 = v8;
  v12[1] = v10;
  v16.receiver = v11;
  v16.super_class = ObjCClassMetadata;
  cacheCopy = cache;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

- (PGMusicCurationInflationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end