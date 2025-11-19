@interface PGMusicCuratorContext
+ (id)contextWithPhotoLibrary:(id)a3 adamIDsWithNegativeUserFeedback:(id)a4 allowExplicitMusicContent:(id)a5 cache:(id)a6 musicBag:(id)a7 flexProviderName:(id)a8 recentlyUsedSongs:(id)a9 genre:(id)a10 isMemoryCreationCuration:(id)a11 configuration:(id)a12 error:(id *)a13;
- (BOOL)allowChillMixElection;
- (BOOL)allowGetUpMixElection;
- (BOOL)bypassMusicForTopicElection;
- (BOOL)forceShareableInBestSuggestions;
- (BOOL)isMemoryCreationCuration;
- (BOOL)refreshSongMetadata;
- (BOOL)useOnlyMusicForTopicInTopPickSuggestions;
- (NSDictionary)musicCurationOverrideDictionary;
- (NSString)description;
- (NSString)genre;
- (PGFlexMusicSongProviderProtocol)flexSongProvider;
- (PGMusicCuratorContext)init;
- (id)extractSongIdKeywordMappings:(id *)a3;
- (void)setAllowChillMixElection:(BOOL)a3;
- (void)setAllowGetUpMixElection:(BOOL)a3;
- (void)setBypassMusicForTopicElection:(BOOL)a3;
- (void)setFlexSongProvider:(id)a3;
- (void)setForceShareableInBestSuggestions:(BOOL)a3;
- (void)setGenre:(id)a3;
- (void)setIsMemoryCreationCuration:(BOOL)a3;
- (void)setMusicCurationOverrideDictionary:(id)a3;
- (void)setRefreshSongMetadata:(BOOL)a3;
- (void)setUseOnlyMusicForTopicInTopPickSuggestions:(BOOL)a3;
@end

@implementation PGMusicCuratorContext

- (BOOL)useOnlyMusicForTopicInTopPickSuggestions
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseOnlyMusicForTopicInTopPickSuggestions:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowChillMixElection
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowChillMixElection:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)allowGetUpMixElection
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowGetUpMixElection:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)refreshSongMetadata
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRefreshSongMetadata:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (BOOL)forceShareableInBestSuggestions
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setForceShareableInBestSuggestions:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSDictionary)musicCurationOverrideDictionary
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  if (*(self + v3))
  {

    v4 = sub_22F740C80();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setMusicCurationOverrideDictionary:(id)a3
{
  if (a3)
  {
    v4 = sub_22F740CA0();
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = v4;
}

- (BOOL)bypassMusicForTopicElection
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBypassMusicForTopicElection:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (NSString)genre
{
  v2 = (self + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  v5 = sub_22F740DF0();

  return v5;
}

- (void)setGenre:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = (self + OBJC_IVAR___PGMusicCuratorContext_genre);
  swift_beginAccess();
  v8 = v7[1];
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)isMemoryCreationCuration
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsMemoryCreationCuration:(BOOL)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  *(self + v5) = a3;
}

- (PGFlexMusicSongProviderProtocol)flexSongProvider
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setFlexSongProvider:(id)a3
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

+ (id)contextWithPhotoLibrary:(id)a3 adamIDsWithNegativeUserFeedback:(id)a4 allowExplicitMusicContent:(id)a5 cache:(id)a6 musicBag:(id)a7 flexProviderName:(id)a8 recentlyUsedSongs:(id)a9 genre:(id)a10 isMemoryCreationCuration:(id)a11 configuration:(id)a12 error:(id *)a13
{
  if (a4)
  {
    v33 = sub_22F741420();
    if (a8)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    v32 = 0;
    if (a10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v33 = 0;
  if (!a8)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = sub_22F740E20();
  v32 = v18;
  if (a10)
  {
LABEL_4:
    v19 = sub_22F740E20();
    v21 = v20;
    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
  v21 = 0;
LABEL_8:
  v22 = a3;
  v29 = a5;
  v28 = a6;
  v27 = a7;
  v26 = a9;
  v23 = a11;
  v24 = a12;
  v31 = sub_22F2AB2F8(v22, v33, a5, a6, a7, v30, v32, a9, v19, v21, a11, a12);

  return v31;
}

- (PGMusicCuratorContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = self;
  MusicCuratorContext.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

- (id)extractSongIdKeywordMappings:(id *)a3
{
  v3 = self;
  MusicCuratorContext.extractSongIdKeywordMappings()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v4 = sub_22F740C80();

  return v4;
}

@end