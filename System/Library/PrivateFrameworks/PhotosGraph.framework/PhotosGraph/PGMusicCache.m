@interface PGMusicCache
+ (id)cacheAtURL:(id)a3 error:(id *)a4;
+ (id)cacheWithPhotoLibrary:(id)a3 error:(id *)a4;
- (BOOL)removeAllWithProgressReporter:(id)a3 error:(id *)a4;
- (BOOL)removeSongSourcesWithSongSourceCategories:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (BOOL)removeSongSourcesWithSongSourceCategory:(id)a3 progressReporter:(id)a4 error:(id *)a5;
- (PGMusicCache)init;
- (id)statusAndReturnError:(id *)a3;
@end

@implementation PGMusicCache

+ (id)cacheWithPhotoLibrary:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = sub_22F1A26E0(v4);

  return v5;
}

+ (id)cacheAtURL:(id)a3 error:(id *)a4
{
  v4 = sub_22F73F470();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F430();
  v9 = sub_22F1A1FCC(v8);
  (*(v5 + 8))(v8, v4);

  return v9;
}

- (BOOL)removeAllWithProgressReporter:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = self;
  MusicCache.removeAll(progressReporter:)();

  return 1;
}

- (PGMusicCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)removeSongSourcesWithSongSourceCategory:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v7 = sub_22F740E20();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771340;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  v11 = a4;
  v12 = self;
  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(v10, v11);

  return 1;
}

- (BOOL)removeSongSourcesWithSongSourceCategories:(id)a3 progressReporter:(id)a4 error:(id *)a5
{
  v7 = sub_22F741180();
  v8 = a4;
  v9 = self;
  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(v7, v8);

  return 1;
}

- (id)statusAndReturnError:(id *)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR___PGMusicCache_managedObjectContext);
  v4 = self;
  sub_22F7417A0();

  v5 = sub_22F740DF0();

  return v5;
}

@end