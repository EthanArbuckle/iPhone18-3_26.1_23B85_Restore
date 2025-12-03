@interface SceneDelegate
- (_TtC10prototyped13SceneDelegate)init;
- (void)didSelectDone;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
@end

@implementation SceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sceneCopy = scene;
  sessionCopy = session;
  optionsCopy = options;
  selfCopy = self;
  _s10prototyped13SceneDelegateC5scene_13willConnectTo7optionsySo7UISceneC_So0I7SessionCSo0I17ConnectionOptionsCtF_0(sceneCopy);
}

- (void)didSelectDone
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_100006B28();
}

- (_TtC10prototyped13SceneDelegate)init
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = SceneDelegate.init()();

  return v2;
}

@end