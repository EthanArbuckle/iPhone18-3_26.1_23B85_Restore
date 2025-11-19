@interface PRUISPosterChannelReaper
- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)init;
- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)initWithModelCoordinator:(id)a3 currentState:(id)a4 currentPosterConfiguration:(id)a5 currentGallery:(id)a6 snapshotCache:(id)a7;
- (id)reapStaleSnapshots;
- (id)reapStaleStateOmittingLast:(unint64_t)a3;
@end

@implementation PRUISPosterChannelReaper

- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)initWithModelCoordinator:(id)a3 currentState:(id)a4 currentPosterConfiguration:(id)a5 currentGallery:(id)a6 snapshotCache:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = sub_1CAED0D08(v11, v12, a5, a6, a7);

  return v16;
}

- (id)reapStaleStateOmittingLast:(unint64_t)a3
{
  v4 = self;
  PRUISPosterChannelReaper.reapStaleState(omittingLast:)(v5, a3);
  v7 = v6;

  return v7;
}

- (id)reapStaleSnapshots
{
  v2 = self;
  v3 = PRUISPosterChannelReaper.reapStaleSnapshots()();

  return v3;
}

- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end