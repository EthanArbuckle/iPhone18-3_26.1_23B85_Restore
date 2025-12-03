@interface _UISuperlayerSecurityAnalysisSceneComponent
- (UIScene)_scene;
- (_UISuperlayerSecurityAnalysisSceneComponent)init;
- (void)contextBinderDidEnrollBindable:(id)bindable;
- (void)contextBinderDidExpellBindable:(id)bindable;
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
  selfCopy = self;
  _scene = [(_UISuperlayerSecurityAnalysisSceneComponent *)selfCopy _scene];
  if (_scene)
  {
    v4 = _scene;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      _contextBinder = [v5 _contextBinder];

      [(UIScene *)_contextBinder removeObserver:selfCopy];
      v4 = _contextBinder;
    }
  }

  v7.receiver = selfCopy;
  v7.super_class = _UISuperlayerSecurityAnalysisSceneComponent;
  [(_UISuperlayerSecurityAnalysisSceneComponent *)&v7 dealloc];
}

- (void)contextBinderDidExpellBindable:(id)bindable
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {

    [v3 _setWantsSuperlayerSecurityAnalysis_];
  }
}

- (void)contextBinderDidEnrollBindable:(id)bindable
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    selfCopy = self;
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