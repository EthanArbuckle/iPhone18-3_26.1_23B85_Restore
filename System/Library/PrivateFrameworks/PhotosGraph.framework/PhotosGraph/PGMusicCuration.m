@interface PGMusicCuration
- (BOOL)isEqual:(id)a3;
- (NSNumber)keySongArousal;
- (NSNumber)keySongValence;
- (NSString)description;
- (NSString)keySongAdamID;
- (NSString)keySongArtist;
- (NSString)keySongTitle;
- (PGMusicCuration)init;
- (id)jsonRepresentation;
- (id)replaceBestMusicSuggestionsWithAdamIds:(id)a3;
- (id)replaceFirstSongInBestSongSuggestionsWith:(id)a3;
@end

@implementation PGMusicCuration

- (NSString)description
{
  v2 = self;
  MusicCuration.description.getter();

  v3 = sub_22F740DF0();

  return v3;
}

- (id)jsonRepresentation
{
  v2 = self;
  object = MusicCuration.jsonRepresentation()().value._object;

  if (object)
  {
    v4 = sub_22F740DF0();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (PGMusicCuration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_22F741920();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MusicCuration.isEqual(_:)(v8);

  sub_22F1BCC9C(v8);
  return v6 & 1;
}

- (NSString)keySongAdamID
{
  v2 = *(&self->super.isa + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (*(v2 + 16))
  {
    v3 = *(type metadata accessor for Song() - 8);
    v4 = (v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));
    v5 = *v4;
    v6 = v4[1];

    v7 = sub_22F740DF0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)keySongTitle
{
  v2 = *(&self->super.isa + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (*(v2 + 16) && (v3 = *(type metadata accessor for Song() - 8), v4 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), *(v4 + 24)))
  {
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    v7 = sub_22F740DF0();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)keySongArtist
{
  v2 = *(&self->super.isa + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (*(v2 + 16) && (v3 = *(type metadata accessor for Song() - 8), v4 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), *(v4 + 40)))
  {
    v5 = *(v4 + 32);
    v6 = *(v4 + 40);

    v7 = sub_22F740DF0();

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSNumber)keySongArousal
{
  v2 = self;
  v3 = MusicCuration.keySongArousal.getter();

  return v3;
}

- (NSNumber)keySongValence
{
  v2 = self;
  v3 = MusicCuration.keySongValence.getter();

  return v3;
}

- (id)replaceBestMusicSuggestionsWithAdamIds:(id)a3
{
  v4 = sub_22F741180();
  v5 = self;
  v6 = MusicCuration.replaceBestMusicSuggestions(adamIds:)(v4);

  return v6;
}

- (id)replaceFirstSongInBestSongSuggestionsWith:(id)a3
{
  v4 = sub_22F740E20();
  v6 = v5;
  v7 = self;
  v8 = MusicCuration.replaceFirstSongInBestSongSuggestions(with:)(v4, v6);

  return v8;
}

@end