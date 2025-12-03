@interface PGMusicCuratorContext
+ (id)contextWithPhotoLibrary:(id)library adamIDsWithNegativeUserFeedback:(id)feedback allowExplicitMusicContent:(id)content cache:(id)cache musicBag:(id)bag flexProviderName:(id)name recentlyUsedSongs:(id)songs genre:(id)self0 isMemoryCreationCuration:(id)self1 configuration:(id)self2 error:(id *)self3;
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
- (id)extractSongIdKeywordMappings:(id *)mappings;
- (void)setAllowChillMixElection:(BOOL)election;
- (void)setAllowGetUpMixElection:(BOOL)election;
- (void)setBypassMusicForTopicElection:(BOOL)election;
- (void)setFlexSongProvider:(id)provider;
- (void)setForceShareableInBestSuggestions:(BOOL)suggestions;
- (void)setGenre:(id)genre;
- (void)setIsMemoryCreationCuration:(BOOL)curation;
- (void)setMusicCurationOverrideDictionary:(id)dictionary;
- (void)setRefreshSongMetadata:(BOOL)metadata;
- (void)setUseOnlyMusicForTopicInTopPickSuggestions:(BOOL)suggestions;
@end

@implementation PGMusicCuratorContext

- (BOOL)useOnlyMusicForTopicInTopPickSuggestions
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseOnlyMusicForTopicInTopPickSuggestions:(BOOL)suggestions
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_useOnlyMusicForTopicInTopPickSuggestions;
  swift_beginAccess();
  *(self + v5) = suggestions;
}

- (BOOL)allowChillMixElection
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowChillMixElection:(BOOL)election
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_allowChillMixElection;
  swift_beginAccess();
  *(self + v5) = election;
}

- (BOOL)allowGetUpMixElection
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAllowGetUpMixElection:(BOOL)election
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_allowGetUpMixElection;
  swift_beginAccess();
  *(self + v5) = election;
}

- (BOOL)refreshSongMetadata
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRefreshSongMetadata:(BOOL)metadata
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  *(self + v5) = metadata;
}

- (BOOL)forceShareableInBestSuggestions
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setForceShareableInBestSuggestions:(BOOL)suggestions
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_forceShareableInBestSuggestions;
  swift_beginAccess();
  *(self + v5) = suggestions;
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

- (void)setMusicCurationOverrideDictionary:(id)dictionary
{
  if (dictionary)
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

- (void)setBypassMusicForTopicElection:(BOOL)election
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  *(self + v5) = election;
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

- (void)setGenre:(id)genre
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

- (void)setIsMemoryCreationCuration:(BOOL)curation
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  *(self + v5) = curation;
}

- (PGFlexMusicSongProviderProtocol)flexSongProvider
{
  v3 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setFlexSongProvider:(id)provider
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_flexSongProvider;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = provider;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

+ (id)contextWithPhotoLibrary:(id)library adamIDsWithNegativeUserFeedback:(id)feedback allowExplicitMusicContent:(id)content cache:(id)cache musicBag:(id)bag flexProviderName:(id)name recentlyUsedSongs:(id)songs genre:(id)self0 isMemoryCreationCuration:(id)self1 configuration:(id)self2 error:(id *)self3
{
  if (feedback)
  {
    v33 = sub_22F741420();
    if (name)
    {
      goto LABEL_3;
    }

LABEL_6:
    v30 = 0;
    v32 = 0;
    if (genre)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v33 = 0;
  if (!name)
  {
    goto LABEL_6;
  }

LABEL_3:
  v30 = sub_22F740E20();
  v32 = v18;
  if (genre)
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
  libraryCopy = library;
  contentCopy = content;
  cacheCopy = cache;
  bagCopy = bag;
  songsCopy = songs;
  curationCopy = curation;
  configurationCopy = configuration;
  v31 = sub_22F2AB2F8(libraryCopy, v33, content, cache, bag, v30, v32, songs, v19, v21, curation, configuration);

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
  selfCopy = self;
  MusicCuratorContext.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

- (id)extractSongIdKeywordMappings:(id *)mappings
{
  selfCopy = self;
  MusicCuratorContext.extractSongIdKeywordMappings()();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v4 = sub_22F740C80();

  return v4;
}

@end