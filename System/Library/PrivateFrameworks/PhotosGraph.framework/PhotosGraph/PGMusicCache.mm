@interface PGMusicCache
+ (id)cacheAtURL:(id)l error:(id *)error;
+ (id)cacheWithPhotoLibrary:(id)library error:(id *)error;
- (BOOL)removeAllWithProgressReporter:(id)reporter error:(id *)error;
- (BOOL)removeSongSourcesWithSongSourceCategories:(id)categories progressReporter:(id)reporter error:(id *)error;
- (BOOL)removeSongSourcesWithSongSourceCategory:(id)category progressReporter:(id)reporter error:(id *)error;
- (PGMusicCache)init;
- (id)statusAndReturnError:(id *)error;
@end

@implementation PGMusicCache

+ (id)cacheWithPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v5 = sub_22F1A26E0(libraryCopy);

  return v5;
}

+ (id)cacheAtURL:(id)l error:(id *)error
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

- (BOOL)removeAllWithProgressReporter:(id)reporter error:(id *)error
{
  reporterCopy = reporter;
  selfCopy = self;
  MusicCache.removeAll(progressReporter:)();

  return 1;
}

- (PGMusicCache)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)removeSongSourcesWithSongSourceCategory:(id)category progressReporter:(id)reporter error:(id *)error
{
  v7 = sub_22F740E20();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771340;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  reporterCopy = reporter;
  selfCopy = self;
  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(v10, reporterCopy);

  return 1;
}

- (BOOL)removeSongSourcesWithSongSourceCategories:(id)categories progressReporter:(id)reporter error:(id *)error
{
  v7 = sub_22F741180();
  reporterCopy = reporter;
  selfCopy = self;
  MusicCache.removeSongSources(songSourceCategories:progressReporter:)(v7, reporterCopy);

  return 1;
}

- (id)statusAndReturnError:(id *)error
{
  v3 = *(&self->super.isa + OBJC_IVAR___PGMusicCache_managedObjectContext);
  selfCopy = self;
  sub_22F7417A0();

  v5 = sub_22F740DF0();

  return v5;
}

@end