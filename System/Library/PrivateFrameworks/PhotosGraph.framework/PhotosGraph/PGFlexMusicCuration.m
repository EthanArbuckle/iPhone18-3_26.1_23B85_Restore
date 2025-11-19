@interface PGFlexMusicCuration
- (NSString)description;
- (PGFlexMusicCuration)init;
- (id)replaceBestSongSuggestionsWithFlexSongIds:(id)a3;
- (id)replaceFirstSongInBestSongSuggestionsWith:(id)a3;
@end

@implementation PGFlexMusicCuration

- (NSString)description
{
  v2 = self;
  FlexMusicCuration.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

- (PGFlexMusicCuration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)replaceBestSongSuggestionsWithFlexSongIds:(id)a3
{
  v4 = sub_22F741180();
  v5 = self;
  v6 = FlexMusicCuration.replaceBestSongSuggestions(flexSongIds:)(v4);

  return v6;
}

- (id)replaceFirstSongInBestSongSuggestionsWith:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = self;
  v8 = FlexMusicCuration.replaceFirstSongInBestSongSuggestions(with:)(v4, v6);

  return v8;
}

@end