@interface SMMediaMoment
- (SMArtwork)artwork;
- (SMMediaMoment)init;
- (double)duration;
- (double)startTime;
@end

@implementation SMMediaMoment

- (double)startTime
{
  v2 = self;
  MediaMoment.startTime.getter();
  v4 = v3;

  return v4;
}

- (double)duration
{
  v2 = self;
  MediaMoment.duration.getter();
  v4 = v3;

  return v4;
}

- (SMArtwork)artwork
{
  v3 = type metadata accessor for Artwork();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = self;
  MediaMoment.artwork.getter();
  v8 = type metadata accessor for ArtworkBridge();
  v9 = objc_allocWithZone(v8);
  (*(v4 + 16))(v9 + OBJC_IVAR___SMArtwork_artwork, v6, v3);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = [(SMMediaMoment *)&v12 init];

  (*(v4 + 8))(v6, v3);

  return v10;
}

- (SMMediaMoment)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end