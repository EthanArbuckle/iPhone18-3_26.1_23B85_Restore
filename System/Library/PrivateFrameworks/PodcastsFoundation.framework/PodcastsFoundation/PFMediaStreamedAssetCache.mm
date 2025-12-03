@interface PFMediaStreamedAssetCache
- (BOOL)clearAndReturnError:(id *)error;
- (BOOL)completeAndReturnError:(id *)error;
- (NSString)pathExtension;
- (PFMediaStreamedAssetCache)init;
- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l;
- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l cacheLocation:(id)location purgeability:(int)purgeability;
- (id)cachedAssetURL;
- (id)persistentFileURL;
- (id)streamCacheURLAndReturnError:(id *)error;
- (void)dealloc;
@end

@implementation PFMediaStreamedAssetCache

- (NSString)pathExtension
{
  v2 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
  v3 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);

  v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v4;
}

- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  sub_1D9176B9C();
  v12 = sub_1D9176B1C();
  streamedMediaAssetURL = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v14 = sub_1D9176B1C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v16 = [(PFMediaStreamedAssetCache *)self initWithSourceURL:v12 cacheLocation:v14 purgeability:512];

  v15(v11, v4);
  return v16;
}

- (PFMediaStreamedAssetCache)initWithSourceURL:(id)l cacheLocation:(id)location purgeability:(int)purgeability
{
  v6 = sub_1D9176C2C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1D9176B9C();
  sub_1D9176B9C();
  return MediaStreamedAssetCache.init(sourceURL:cacheLocation:purgeability:)(v12, v9, purgeability);
}

- (id)cachedAssetURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v14 - v5;
  selfCopy = self;
  MediaStreamedAssetCache.cachedAssetURL()(v6);

  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_1D9176B1C();
    (*(v9 + 8))(v6, v8);
    v11 = v12;
  }

  return v11;
}

- (id)streamCacheURLAndReturnError:(id *)error
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  selfCopy = self;
  v10 = *(*v9 + *MEMORY[0x1E69E6B68] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy2 = self;
  os_unfair_lock_lock((v9 + v11));
  sub_1D8E6A76C(v9 + v10, v8);
  os_unfair_lock_unlock((v9 + v11));

  v13 = sub_1D9176B1C();
  (*(v5 + 8))(v8, v4);

  return v13;
}

- (BOOL)completeAndReturnError:(id *)error
{
  v3 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v3 + v5));
  sub_1D8E6A754(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));

  return 1;
}

- (BOOL)clearAndReturnError:(id *)error
{
  v3 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;
  os_unfair_lock_lock((v3 + v5));
  sub_1D8E68FE0(v3 + v4);
  os_unfair_lock_unlock((v3 + v5));

  return 1;
}

- (id)persistentFileURL
{
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5);
  v12 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_sourceURLMD5 + 8);
  selfCopy = self;
  sub_1D9176B3C();
  v14 = *(selfCopy + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension);
  v15 = *(selfCopy + OBJC_IVAR___PFMediaStreamedAssetCache_pathExtension + 8);
  sub_1D9176B4C();
  v16 = *(v4 + 8);
  v16(v7, v3);

  v17 = sub_1D9176B1C();
  v16(v10, v3);

  return v17;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(self + OBJC_IVAR___PFMediaStreamedAssetCache_phase);
  v5 = *(*v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
  selfCopy = self;

  os_unfair_lock_lock((v4 + v6));
  sub_1D8E69B90(v4 + v5);
  os_unfair_lock_unlock((v4 + v6));

  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(PFMediaStreamedAssetCache *)&v8 dealloc];
}

- (PFMediaStreamedAssetCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end