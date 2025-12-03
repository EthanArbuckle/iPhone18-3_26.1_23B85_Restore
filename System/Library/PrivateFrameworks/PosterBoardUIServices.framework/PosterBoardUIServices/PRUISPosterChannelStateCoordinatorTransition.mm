@interface PRUISPosterChannelStateCoordinatorTransition
+ (id)initialTransitionForModelCoordinatorWithModelCoordinator:(id)coordinator channelIdentifier:(id)identifier updater:(id)updater error:(id *)error;
- (BOOL)commitStateTransitionAndReturnError:(id *)error;
- (NSArray)stagedFileSystemURLs;
- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)init;
- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)initWithModelCoordinator:(id)coordinator currentState:(id)state updater:(id)updater error:(id *)error;
@end

@implementation PRUISPosterChannelStateCoordinatorTransition

- (NSArray)stagedFileSystemURLs
{
  sub_1CAEB33A4(0, &qword_1EDE9D108);

  v2 = sub_1CAEFA5CC();

  return v2;
}

+ (id)initialTransitionForModelCoordinatorWithModelCoordinator:(id)coordinator channelIdentifier:(id)identifier updater:(id)updater error:(id *)error
{
  v8 = sub_1CAEF9E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9DFC();
  coordinatorCopy = coordinator;
  swift_unknownObjectRetain();
  v13 = sub_1CAECAD88(coordinatorCopy, v11, updater);
  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();

  return v13;
}

- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)initWithModelCoordinator:(id)coordinator currentState:(id)state updater:(id)updater error:(id *)error
{
  coordinatorCopy = coordinator;
  stateCopy = state;
  swift_unknownObjectRetain();
  return PRUISPosterChannelStateCoordinatorTransition.init(modelCoordinator:currentState:updater:)(coordinatorCopy, stateCopy, updater);
}

- (BOOL)commitStateTransitionAndReturnError:(id *)error
{
  selfCopy = self;
  PRUISPosterChannelStateCoordinatorTransition.commitStateTransition()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_1CAEF9BEC();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end