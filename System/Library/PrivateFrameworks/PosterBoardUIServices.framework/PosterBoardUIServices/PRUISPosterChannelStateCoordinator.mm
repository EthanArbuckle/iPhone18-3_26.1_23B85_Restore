@interface PRUISPosterChannelStateCoordinator
- (BOOL)applyUpdater:(id)updater error:(id *)error;
- (BOOL)ingestUpdatedDescriptors:(id)descriptors forState:(id)state withMetadata:(id)metadata withPolicy:(unint64_t)policy error:(id *)error;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state;
- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)init;
- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)initWithModelCoordinator:(id)coordinator channelIdentifier:(id)identifier error:(id *)error;
- (_TtP21PosterBoardUIServices42PRUISPosterChannelStateCoordinatorDelegate_)delegate;
- (id)currentPosterConfiguration;
- (id)descriptors;
- (id)descriptorsForState:(id)state;
- (id)galleryMetadataForState:(id)state;
- (id)prepareStateTransitionWithUpdater:(id)updater error:(id *)error;
- (id)snapshotCacheURL;
- (void)invalidate;
- (void)setState:(id)state;
@end

@implementation PRUISPosterChannelStateCoordinator

- (_TtP21PosterBoardUIServices42PRUISPosterChannelStateCoordinatorDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state
{
  v2 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1CAECC0C4(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)setState:(id)state
{
  v4 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  stateCopy = state;
  selfCopy = self;
  os_unfair_lock_lock(v4 + 4);
  sub_1CAECC114();
  os_unfair_lock_unlock(v4 + 4);
}

- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)initWithModelCoordinator:(id)coordinator channelIdentifier:(id)identifier error:(id *)error
{
  v6 = sub_1CAEF9E1C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9DFC();
  return PRUISPosterChannelStateCoordinator.init(modelCoordinator:channelIdentifier:)(coordinator, v8);
}

- (id)snapshotCacheURL
{
  v3 = sub_1CAEF9CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint);
  selfCopy = self;
  sub_1CAEBADC0(v7);

  v9 = sub_1CAEF9C8C();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (id)currentPosterConfiguration
{
  v2 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1CAECC0C4(&v11);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v11;
  v5 = *&v11[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterConfigurationIdentity];
  if (v5)
  {
    v6 = *&v11[OBJC_IVAR____TtC21PosterBoardUIServices23PRUISPosterChannelState_posterVersion];
    v7 = v5;
    v8 = sub_1CAEC22C4(v7, v6);

    v9 = v8;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (BOOL)applyUpdater:(id)updater error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = PRUISPosterChannelStateCoordinator.prepareStateTransitionWithUpdater(_:)(updater);
  sub_1CAEBBDE4(v7);

  swift_unknownObjectRelease();
  return 1;
}

- (id)prepareStateTransitionWithUpdater:(id)updater error:(id *)error
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = PRUISPosterChannelStateCoordinator.prepareStateTransitionWithUpdater(_:)(updater);

  swift_unknownObjectRelease();

  return v7;
}

- (id)descriptors
{
  v2 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  selfCopy = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1CAECC0C4(&v7);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v7;
  v5 = PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(v7);

  return v5;
}

- (id)descriptorsForState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  v6 = PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(stateCopy);

  return v6;
}

- (id)galleryMetadataForState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  v6 = PRUISPosterChannelStateCoordinator.galleryMetadataFor(_:)(stateCopy);

  return v6;
}

- (BOOL)ingestUpdatedDescriptors:(id)descriptors forState:(id)state withMetadata:(id)metadata withPolicy:(unint64_t)policy error:(id *)error
{
  sub_1CAEB33A4(0, &unk_1EC481DA0);
  v11 = sub_1CAEFA49C();
  stateCopy = state;
  metadataCopy = metadata;
  selfCopy = self;
  PRUISPosterChannelStateCoordinator.ingestUpdatedDescriptors(_:state:galleryMetadata:policy:)(v11, stateCopy, metadataCopy, policy);

  return 1;
}

- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)invalidate
{
  selfCopy = self;
  PRUISPosterChannelStateCoordinator.invalidate()();
}

@end