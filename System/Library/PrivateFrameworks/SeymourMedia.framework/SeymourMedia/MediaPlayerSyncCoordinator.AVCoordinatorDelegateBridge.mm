@interface MediaPlayerSyncCoordinator.AVCoordinatorDelegateBridge
- (_TtCC12SeymourMedia26MediaPlayerSyncCoordinatorP33_75A9D0B74F4CEE621C27366C52243E4627AVCoordinatorDelegateBridge)init;
- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator;
- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary;
- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier;
- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation MediaPlayerSyncCoordinator.AVCoordinatorDelegateBridge

- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator
{
  v4 = sub_20C59D4CC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, self + OBJC_IVAR____TtCC12SeymourMedia26MediaPlayerSyncCoordinatorP33_75A9D0B74F4CEE621C27366C52243E4627AVCoordinatorDelegateBridge_localParticipantID, v4, v6);
  v9 = sub_20C59D49C();
  (*(v5 + 8))(v8, v4);

  return v9;
}

- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary
{
  type metadata accessor for AVPlaybackCoordinationParticipantStateKey(0);
  sub_20C50EAB4(&qword_27C7C4358, type metadata accessor for AVPlaybackCoordinationParticipantStateKey);
  sub_20C5A02BC();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for MediaPlayerSyncCoordinator();
    selfCopy = self;
    sub_20C50D114();
    swift_unknownObjectRelease();
  }
}

- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier
{
  type metadata accessor for AVPlaybackCoordinationTransportControlStateKey(0);
  sub_20C50EAB4(&qword_27C7C4348, type metadata accessor for AVPlaybackCoordinationTransportControlStateKey);
  sub_20C5A02BC();
  sub_20C5A039C();
  if (swift_unknownObjectWeakLoadStrong())
  {
    type metadata accessor for MediaPlayerSyncCoordinator();
    selfCopy = self;
    sub_20C50D178();
    swift_unknownObjectRelease();
  }
}

- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = sub_20C5A039C();
  v9 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    _Block_copy(v6);
    selfCopy = self;
    sub_20C50E36C(v7, v9, v11, v6);

    _Block_release(v6);
    _Block_release(v6);

    swift_unknownObjectRelease();
  }

  else
  {

    _Block_release(v6);
  }
}

- (_TtCC12SeymourMedia26MediaPlayerSyncCoordinatorP33_75A9D0B74F4CEE621C27366C52243E4627AVCoordinatorDelegateBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end