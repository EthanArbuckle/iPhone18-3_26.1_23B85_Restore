@interface PRUISPosterChannelStateCoordinatorTransition
+ (id)initialTransitionForModelCoordinatorWithModelCoordinator:(id)a3 channelIdentifier:(id)a4 updater:(id)a5 error:(id *)a6;
- (BOOL)commitStateTransitionAndReturnError:(id *)a3;
- (NSArray)stagedFileSystemURLs;
- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)init;
- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)initWithModelCoordinator:(id)a3 currentState:(id)a4 updater:(id)a5 error:(id *)a6;
@end

@implementation PRUISPosterChannelStateCoordinatorTransition

- (NSArray)stagedFileSystemURLs
{
  sub_1CAEB33A4(0, &qword_1EDE9D108);

  v2 = sub_1CAEFA5CC();

  return v2;
}

+ (id)initialTransitionForModelCoordinatorWithModelCoordinator:(id)a3 channelIdentifier:(id)a4 updater:(id)a5 error:(id *)a6
{
  v8 = sub_1CAEF9E1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CAEF9DFC();
  v12 = a3;
  swift_unknownObjectRetain();
  v13 = sub_1CAECAD88(v12, v11, a5);
  (*(v9 + 8))(v11, v8);
  swift_unknownObjectRelease();

  return v13;
}

- (_TtC21PosterBoardUIServices44PRUISPosterChannelStateCoordinatorTransition)initWithModelCoordinator:(id)a3 currentState:(id)a4 updater:(id)a5 error:(id *)a6
{
  v8 = a3;
  v9 = a4;
  swift_unknownObjectRetain();
  return PRUISPosterChannelStateCoordinatorTransition.init(modelCoordinator:currentState:updater:)(v8, v9, a5);
}

- (BOOL)commitStateTransitionAndReturnError:(id *)a3
{
  v4 = self;
  PRUISPosterChannelStateCoordinatorTransition.commitStateTransition()();

  if (v5)
  {
    if (a3)
    {
      v6 = sub_1CAEF9BEC();

      v7 = v6;
      *a3 = v6;
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