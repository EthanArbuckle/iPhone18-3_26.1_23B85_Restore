@interface PreviewSceneAgentProxy.SceneDelegate
- (_TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate)init;
- (void)scene:(id)a3 didReceiveActions:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6;
- (void)sceneDidInvalidate:(id)a3;
@end

@implementation PreviewSceneAgentProxy.SceneDelegate

- (void)scene:(id)a3 didReceiveActions:(id)a4
{
  sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
  sub_25F0C0358();
  v6 = sub_25F17949C();
  v7 = a3;
  v8 = self;
  sub_25F0BFEAC(v6);
}

- (void)sceneDidInvalidate:(id)a3
{
  swift_getObjectType();
  v4 = sub_25F17813C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  v9 = self;
  sub_25F1792FC();
  sub_25F1792DC();

  v10[1] = v9;
  sub_25F17812C();
  sub_25F0BF2A8(&qword_27FD46CD8, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate);
  sub_25F1780BC();
  (*(v5 + 8))(v8, v4);
}

- (void)scene:(id)a3 didUpdateClientSettingsWithDiff:(id)a4 oldClientSettings:(id)a5 transitionContext:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_25F0C0110(v10, a6);
}

- (_TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end