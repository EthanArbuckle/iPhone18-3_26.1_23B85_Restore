@interface SceneWorkspace
- (_TtC13ShellSceneKit14SceneWorkspace)init;
- (void)workspace:(id)a3 didAddScene:(id)a4;
- (void)workspace:(id)a3 didReceiveScene:(id)a4 withContext:(id)a5 fromProcess:(id)a6;
- (void)workspace:(id)a3 willRemoveScene:(id)a4;
@end

@implementation SceneWorkspace

- (_TtC13ShellSceneKit14SceneWorkspace)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workspace:(id)a3 didReceiveScene:(id)a4 withContext:(id)a5 fromProcess:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = self;
  sub_265FC212C(v11, a5, a6);

  swift_unknownObjectRelease();
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  swift_getKeyPath();
  sub_265FBFC04();
  v5 = self;
  sub_265FEBF30();
}

- (void)workspace:(id)a3 willRemoveScene:(id)a4
{
  swift_getKeyPath();
  sub_265FBFC04();
  v6 = a4;
  v7 = self;
  sub_265FEBF30();
}

@end