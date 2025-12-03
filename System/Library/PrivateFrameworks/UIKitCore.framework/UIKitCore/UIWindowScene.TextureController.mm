@interface UIWindowScene.TextureController
- (UIScene)_scene;
- (_TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController)init;
- (_TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController)initWithScene:(id)scene;
- (void)_sceneWillInvalidate:(id)invalidate;
@end

@implementation UIWindowScene.TextureController

- (UIScene)_scene
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController)initWithScene:(id)scene
{
  sceneCopy = scene;
  v4 = sub_188F167B8();

  return v4;
}

- (void)_sceneWillInvalidate:(id)invalidate
{
  swift_unknownObjectWeakAssign();
  v4 = *(self + OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow);
  *(self + OBJC_IVAR____TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController__textureWindow) = 0;
}

- (_TtCE5UIKitCSo13UIWindowSceneP33_FDF62CE22547DB2BF49759240B89F9C117TextureController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end