@interface PRUISPosterChannelReaper
- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)init;
- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)initWithModelCoordinator:(id)coordinator currentState:(id)state currentPosterConfiguration:(id)configuration currentGallery:(id)gallery snapshotCache:(id)cache;
- (id)reapStaleSnapshots;
- (id)reapStaleStateOmittingLast:(unint64_t)last;
@end

@implementation PRUISPosterChannelReaper

- (_TtC21PosterBoardUIServices24PRUISPosterChannelReaper)initWithModelCoordinator:(id)coordinator currentState:(id)state currentPosterConfiguration:(id)configuration currentGallery:(id)gallery snapshotCache:(id)cache
{
  coordinatorCopy = coordinator;
  stateCopy = state;
  configurationCopy = configuration;
  galleryCopy = gallery;
  cacheCopy = cache;
  v16 = sub_1CAED0D08(coordinatorCopy, stateCopy, configuration, gallery, cache);

  return v16;
}

- (id)reapStaleStateOmittingLast:(unint64_t)last
{
  selfCopy = self;
  PRUISPosterChannelReaper.reapStaleState(omittingLast:)(v5, last);
  v7 = v6;

  return v7;
}

- (id)reapStaleSnapshots
{
  selfCopy = self;
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