@interface _UISuperlayerSecurityAnalysisSceneComponent
- (UIScene)_scene;
- (_UISuperlayerSecurityAnalysisSceneComponent)init;
- (void)contextBinderDidEnrollBindable:(id)a3;
- (void)contextBinderDidExpellBindable:(id)a3;
- (void)dealloc;
@end

@implementation _UISuperlayerSecurityAnalysisSceneComponent

- (UIScene)_scene
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  v2 = self;
  v3 = [(_UISuperlayerSecurityAnalysisSceneComponent *)v2 _scene];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 _contextBinder];

      [(UIScene *)v6 removeObserver:v2];
      v4 = v6;
    }
  }

  v7.receiver = v2;
  v7.super_class = _UISuperlayerSecurityAnalysisSceneComponent;
  [(_UISuperlayerSecurityAnalysisSceneComponent *)&v7 dealloc];
}

- (void)contextBinderDidExpellBindable:(id)a3
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {

    [v3 _setWantsSuperlayerSecurityAnalysis_];
  }
}

- (void)contextBinderDidEnrollBindable:(id)a3
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    v6 = self;
    [v5 _setWantsSuperlayerSecurityAnalysis_];
    swift_unknownObjectRelease();
  }
}

- (_UISuperlayerSecurityAnalysisSceneComponent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end