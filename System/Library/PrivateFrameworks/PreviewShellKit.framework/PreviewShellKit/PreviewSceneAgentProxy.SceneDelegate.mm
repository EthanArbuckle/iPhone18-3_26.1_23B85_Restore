@interface PreviewSceneAgentProxy.SceneDelegate
- (_TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate)init;
- (void)scene:(id)scene didReceiveActions:(id)actions;
- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context;
- (void)sceneDidInvalidate:(id)invalidate;
@end

@implementation PreviewSceneAgentProxy.SceneDelegate

- (void)scene:(id)scene didReceiveActions:(id)actions
{
  sub_25F0C1014(0, &qword_27FD46CE8, 0x277CF0B58);
  sub_25F0C0358();
  v6 = sub_25F17949C();
  sceneCopy = scene;
  selfCopy = self;
  sub_25F0BFEAC(v6);
}

- (void)sceneDidInvalidate:(id)invalidate
{
  swift_getObjectType();
  v4 = sub_25F17813C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F17930C();
  selfCopy = self;
  sub_25F1792FC();
  sub_25F1792DC();

  v10[1] = selfCopy;
  sub_25F17812C();
  sub_25F0BF2A8(&qword_27FD46CD8, type metadata accessor for PreviewSceneAgentProxy.SceneDelegate);
  sub_25F1780BC();
  (*(v5 + 8))(v8, v4);
}

- (void)scene:(id)scene didUpdateClientSettingsWithDiff:(id)diff oldClientSettings:(id)settings transitionContext:(id)context
{
  sceneCopy = scene;
  diffCopy = diff;
  settingsCopy = settings;
  contextCopy = context;
  selfCopy = self;
  sub_25F0C0110(sceneCopy, context);
}

- (_TtCC15PreviewShellKit22PreviewSceneAgentProxyP33_3E64D4B6ABF6A6AD0F98F116D965CFCA13SceneDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end