@interface SceneWorkspace
- (_TtC13ShellSceneKit14SceneWorkspace)init;
- (void)workspace:(id)workspace didAddScene:(id)scene;
- (void)workspace:(id)workspace didReceiveScene:(id)scene withContext:(id)context fromProcess:(id)process;
- (void)workspace:(id)workspace willRemoveScene:(id)scene;
@end

@implementation SceneWorkspace

- (_TtC13ShellSceneKit14SceneWorkspace)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workspace:(id)workspace didReceiveScene:(id)scene withContext:(id)context fromProcess:(id)process
{
  workspaceCopy = workspace;
  sceneCopy = scene;
  contextCopy = context;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_265FC212C(sceneCopy, context, process);

  swift_unknownObjectRelease();
}

- (void)workspace:(id)workspace didAddScene:(id)scene
{
  swift_getKeyPath();
  sub_265FBFC04();
  selfCopy = self;
  sub_265FEBF30();
}

- (void)workspace:(id)workspace willRemoveScene:(id)scene
{
  swift_getKeyPath();
  sub_265FBFC04();
  sceneCopy = scene;
  selfCopy = self;
  sub_265FEBF30();
}

@end