@interface PRUISPosterChannelStateCoordinator
- (BOOL)applyUpdater:(id)a3 error:(id *)a4;
- (BOOL)ingestUpdatedDescriptors:(id)a3 forState:(id)a4 withMetadata:(id)a5 withPolicy:(unint64_t)a6 error:(id *)a7;
- (_TtC21PosterBoardUIServices23PRUISPosterChannelState)state;
- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)init;
- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)initWithModelCoordinator:(id)a3 channelIdentifier:(id)a4 error:(id *)a5;
- (_TtP21PosterBoardUIServices42PRUISPosterChannelStateCoordinatorDelegate_)delegate;
- (id)currentPosterConfiguration;
- (id)descriptors;
- (id)descriptorsForState:(id)a3;
- (id)galleryMetadataForState:(id)a3;
- (id)prepareStateTransitionWithUpdater:(id)a3 error:(id *)a4;
- (id)snapshotCacheURL;
- (void)invalidate;
- (void)setState:(id)a3;
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
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1CAECC0C4(&v6);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v6;

  return v4;
}

- (void)setState:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  v5 = a3;
  v6 = self;
  os_unfair_lock_lock(v4 + 4);
  sub_1CAECC114();
  os_unfair_lock_unlock(v4 + 4);
}

- (_TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator)initWithModelCoordinator:(id)a3 channelIdentifier:(id)a4 error:(id *)a5
{
  v6 = sub_1CAEF9E1C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9DFC();
  return PRUISPosterChannelStateCoordinator.init(modelCoordinator:channelIdentifier:)(a3, v8);
}

- (id)snapshotCacheURL
{
  v3 = sub_1CAEF9CFC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_rootChannelURLEndpoint);
  v8 = self;
  sub_1CAEBADC0(v7);

  v9 = sub_1CAEF9C8C();
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (id)currentPosterConfiguration
{
  v2 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  v3 = self;
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

- (BOOL)applyUpdater:(id)a3 error:(id *)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = PRUISPosterChannelStateCoordinator.prepareStateTransitionWithUpdater(_:)(a3);
  sub_1CAEBBDE4(v7);

  swift_unknownObjectRelease();
  return 1;
}

- (id)prepareStateTransitionWithUpdater:(id)a3 error:(id *)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = PRUISPosterChannelStateCoordinator.prepareStateTransitionWithUpdater(_:)(a3);

  swift_unknownObjectRelease();

  return v7;
}

- (id)descriptors
{
  v2 = *(self + OBJC_IVAR____TtC21PosterBoardUIServices34PRUISPosterChannelStateCoordinator_lock);
  v3 = self;
  os_unfair_lock_lock(v2 + 4);
  sub_1CAECC0C4(&v7);
  os_unfair_lock_unlock(v2 + 4);
  v4 = v7;
  v5 = PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(v7);

  return v5;
}

- (id)descriptorsForState:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PRUISPosterChannelStateCoordinator.descriptorsFor(_:)(v4);

  return v6;
}

- (id)galleryMetadataForState:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = PRUISPosterChannelStateCoordinator.galleryMetadataFor(_:)(v4);

  return v6;
}

- (BOOL)ingestUpdatedDescriptors:(id)a3 forState:(id)a4 withMetadata:(id)a5 withPolicy:(unint64_t)a6 error:(id *)a7
{
  sub_1CAEB33A4(0, &unk_1EC481DA0);
  v11 = sub_1CAEFA49C();
  v12 = a4;
  v13 = a5;
  v14 = self;
  PRUISPosterChannelStateCoordinator.ingestUpdatedDescriptors(_:state:galleryMetadata:policy:)(v11, v12, v13, a6);

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
  v2 = self;
  PRUISPosterChannelStateCoordinator.invalidate()();
}

@end